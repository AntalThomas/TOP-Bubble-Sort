def bubble_sort(num_array)
  while true
    num_array.each_with_index do |num, index|
      puts "Comparing #{num_array[index]} and #{num_array[index + 1]}"

      if index + 1 >= num_array.length
        next
      elsif num_array[index] > num_array[index + 1]
        original_num = num_array[index + 1]
        num_array[index + 1] = num_array[index]
        num_array[index] = original_num
      end
    end

    if num_array == num_array.sort
      break
    end
  end
  p num_array
end

bubble_sort([4, 3, 78, 2, 0, 2])
