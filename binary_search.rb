def binary_search(array, searched_value)

  low_index = 0
  high_index = (array.length - 1)

  while low_index <= high_index

    mid_index = (low_index + high_index) / 2 # this returns the index that is positioned midway between the lower end and higher end
    puts "Index being checked is #{mid_index}" # added for output display purposes only

    if array[mid_index] == searched_value
        return "Searched value '#{searched_value}' first located at index #{mid_index}"
    
    elsif array[mid_index] < searched_value
        low_index = mid_index + 1 # this addition is because the value at the mid-index has already been checked

    else
        high_index = mid_index - 1 # this subtraction is because the value at the mid-index has already been checked
    end
  end
  return "Searched value not found in provided array"
end


array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
searched_value = 10

# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
# searched_value = 14

# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
# searched_value = 32

result = binary_search(array, searched_value)
puts result