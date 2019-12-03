require 'roda_helper'
require 'revision'
require 'tempfile'

RSpec.describe Revision do
  context 'with file' do
    before :each do
      @rev_file = Tempfile.new('rev')
      @rev_file.write('decafbaddeadbeef')
      @rev_file.rewind
    end

    after :each do
      @rev_file.close
      @rev_file.unlink
    end

    it 'can be instantiated' do
      expect { described_class.new(@rev_file.path) }.to_not raise_error
    end

    it 'returns a string' do
      revision = described_class.new(@rev_file.path)
      expect(revision.to_s).to eq 'decafbadde'
    end
  end

  context 'without file' do
    it 'can be instantiated' do
      expect { described_class.new('/nonexistent') }.to_not raise_error
    end

    it 'calls the block' do
      expect { |b| described_class.new('/nonexistent', &b).to_s }.to yield_control
    end
  end

  context 'with ENV' do
    around do |example|
      ClimateControl.modify HEROKU_SLUG_COMMIT: 'deadbeefdecafbad' do
        example.run
      end
    end

    it 'can be instantiated' do
      expect { described_class.new('/nonexistent') }.to_not raise_error
    end

    it 'returns the truncated env variable' do
      revision = described_class.new('/nonexistent')
      expect(revision.to_s).to eq 'deadbeefde'
    end
  end
end
