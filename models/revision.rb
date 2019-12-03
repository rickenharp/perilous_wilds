class Revision
  attr_reader :rev_file, :block

  def initialize(rev_file = 'REVISION', &block)
    @rev_file = rev_file
    @block = block || -> { `git rev-parse HEAD` }
  end

  def to_s
    (try_env || try_file || call_block).to_s.slice(0, 10)
  end

  private

  def try_env
    ENV.fetch('HEROKU_SLUG_COMMIT', false)
  end

  def try_file
    File.exist?(rev_file) ? File.read(rev_file) : false
  end

  def call_block
    block.call
  end
end
