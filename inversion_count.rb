class Sorter
  attr_reader :inversions
  def initialize(array)
    @number_array = array
    @inversions = 0
  end

  def sort(number_array = @number_array)
    return number_array if number_array.length <= 1
    halved = number_array.each_slice((number_array.size/2.0).round).to_a
    halved.map!{ |half| sort(half) }
    merge(halved)
  end

  def merge(arrays)
    output = []
    while !arrays[0].empty? && !arrays[1].empty?
      if arrays[0].first < arrays[1].first
        output.push(arrays[0].shift)
      else
        output.push(arrays[1].shift)
        @inversions += arrays[0].length
      end
    end
    output + arrays[0] + arrays[1]
  end
end