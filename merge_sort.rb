def merge_sort(arr)
  return arr unless arr.size > 1 # an empty array or an array with only one element will be returned, otherwise method continues

  mid = arr.size/2 # this is the index where the first division will occur, being half of the array length

  a, b, sorted = merge_sort(arr[0...mid]), merge_sort(arr[mid..-1]), [] 
      
      # this is where the recursive method calls are implemented, with "a" starting on the first half, and "b" on the second half
      # as the call is recursive, it means that the initial "a" will be split again into two parts, and repeated until a single element array remains (each arr.size = 1)
      # an empty array is assigned to "sorted" to be used once the merging begins

  sorted << (a[0] < b[0] ? a.shift : b.shift) while [a,b].none?(&:empty?)

  p sorted # added by author of comments for output display purposes only

    # these sub-arrays can be re-assembled (merged) by comparing their first elements, and moving the smaller value into the sorted array
    # this will continue while it is true that a or b still has elements that need to be merged

  sorted + a + b

  # once one of the sub-arrays no longer has elements then the sorted array (currently merged values) can be concatenated with the arrays "a" and "b"
  # It should be noted that "a" or "b" will be an empty array, and the other will be the sorted values that are higher than those in "sorted"
  # this means that concatenating the arrays at this stage will still retain the sorted order

end

unsorted_array = [20, 21, 4, 8, 21, 3, 1, 70, 10]
sorted_array = merge_sort(unsorted_array)
puts "Sorted array is #{sorted_array}"