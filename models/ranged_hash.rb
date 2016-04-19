class RangedHash
  def initialize(hash_or_array)
    if hash_or_array.is_a?(Array)
      @ranges = {}
      hash_or_array.each_with_index do |value, index|
        @ranges[index + 1] = value
      end
    else
      @ranges = hash_or_array
    end
  end

  def [](key)
    @ranges.each do |range, value|
      return value if Array(range).include?(key)
    end
    nil
  end

  def max
    @ranges.keys.map { |key| Array(key).max }.max
  end

  def values
    @ranges.values
  end
end
