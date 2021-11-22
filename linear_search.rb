def linear_search(array, searched_value)

  i = 0
  while i < array.length

    if array[i] == searched_value
      puts "Index being checked is #{i}" # added for output display purposes only
      return "Searched value '#{searched_value}' first located at index #{i}"
    else
      puts "Index being checked is #{i}" # added for output display purposes only
      i += 1 # if the value is not found, then iterate to the next index in the array
    end
  end
  return "Searched value not found in provided array" # return once every element in the array is exhausted in the search
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
searched_value = 10

result = linear_search(array, searched_value)
puts result