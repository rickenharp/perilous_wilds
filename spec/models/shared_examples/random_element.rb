shared_examples 'a random element' do
  describe '#initialize' do
    it 'takes an optional parameter' do
      expect { described_class.new(1) }.to_not raise_error
    end

    it 'works with no parameter' do
      expect { described_class.new }.to_not raise_error
    end
  end

  describe '#to_s' do
    it 'returns one of the OPTIONS' do
      rendered_options = described_class::OPTIONS.map do |string|
        template = Tilt::ERBTemplate.new { string }
        template.render(subject)
      end
      expect(rendered_options).to include(subject.to_s)
    end

    it 'always returns the same string' do
      expect(subject.to_s).to eq subject.to_s
    end

    it 'gets interpolated' do
      expect(subject.to_s).to_not include('<%=')
    end
  end
end
