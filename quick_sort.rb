def quick_sort(array)
  return array if array.length <= 1
  pivot = array.delete_at((array.length * rand(0.25..0.75)).floor)
  pivot_index = 0
  array.each_with_index do |el, i|
    if el < pivot
      array[i], array[pivot_index] = array[pivot_index], array[i]
      pivot_index += 1
    end
  end
  (quick_sort(array[0...pivot_index]) + [pivot] + quick_sort(array[pivot_index...array.length]))
end

