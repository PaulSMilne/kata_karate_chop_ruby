class KarateChop

    def chop(value, array, from=0, to=nil)



        if to == nil #if nothing is passed, then we are starting at the beginning and to is set as the full length of the array
            to = array.length - 1
        else #if to has a value, then this is a nested function. If the number is not in the array, it will keep taking -1 away from to unless stopped when it matches from, ie is down to one element.
            return -1 if from > to
        end


        if array.length == 0 #if there is nothing in the array, return -1
            return -1

        elsif array.length == 1 #if there is one thing in the array, return 0 as first indexed position if it matches search term. If it doesn't match, return -1
            if value == array[0]
                return 0
            else
                return -1
            end

        else #if array is longer than 1 element
        mid = (from + to) / 2 #finds the mid point by adding the from index value to the to index value

            if value < array[mid] #if the search term is less than the value at the mid index point
                return chop value, array, from, mid - 1 #run the function again with the to point reassigned to the mid index value minus one
            elsif value > array[mid] #if the search term is greater than the value at the mid index point
                return chop value, array, mid + 1, to # run the function again with the from value reassigned to the mid point plus one
            else # if the search term matches the value at the mid point
                return mid
            end

        end

    end

end
