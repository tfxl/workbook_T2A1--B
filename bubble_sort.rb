def bubble_sort(array)
  return array if array.length < 2 # instantly returns any empty array, or any single-element array

  max_index = (array.length - 2) # max_index is the upper range of the index, i, required for comparison (recalling that i compares with i+1)

  loop do
    swap_occurred = false

    0.upto(max_index) do |i|

      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i] # single line to swap values
        swap_occurred = true 
      end

    end

  break unless swap_occurred # if no swap occurred, array is sorted, can break loop and return array
  p array # added for output display only

  end
  array
end

unsorted_array = [20, 21, 4, 8, 21, 3, 1, 70, 10]
sorted_array = bubble_sort(unsorted_array)
# p sorted_array
puts "Sorted array is #{sorted_array}"