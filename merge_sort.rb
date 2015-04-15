def merge_sort(unsorted_array)
  return unsorted_array if unsorted_array.length <= 1

  half = unsorted_array.length/2
  left = merge_sort(unsorted_array[0...half])
  right = merge_sort(unsorted_array[half..-1])

  merge(left, right)
end

def merge(left, right)
  return right if left.empty?
  return left if right.empty?

  if left.first < right.first
    return [left.first] + merge(left[1..-1], right)
  else
    return [right.first] + merge(left, right[1..-1])
  end
end

