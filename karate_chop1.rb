class KarateChop

    def chop(num, array)

        case array.length
            when 0
                return -1
            when 1
                if num == array[0]
                    return 0
                else
                    return -1
                end
            else
                counter = array.length
                until counter=0
                    do_search(num,array)
                    counter -= 1
                end
        end
    end

    def do_search (search_term,array)
        half_way_point = array.length/2
        checkpoint = half_way_point-1
        case
        when search_term == array[checkpoint]
            return checkpoint
        when num > checkpoint
        when num < checkpoint
        end
    end

end
