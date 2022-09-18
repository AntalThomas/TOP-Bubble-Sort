def bubble_sort(numArray)
    while true
        numArray.each_with_index do |num, index|
            # puts "num #{num}  index #{index}"
            originalNum = 0
            
            puts "Comparing #{numArray[index]} and #{numArray[index + 1]}"

            if index + 1 >= numArray.length()
                next
            elsif numArray[index] > numArray[index + 1]
                originalNum = numArray[index + 1]
                numArray[index + 1] = numArray[index]
                numArray[index] = originalNum
            end
        end

        if numArray == numArray.sort
            break
        end
    end
    p numArray
end

bubble_sort([4,3,78,2,0,2])