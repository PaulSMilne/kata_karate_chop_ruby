class KarateChop

    def chop(num, array)
        chop_length = array.length
        case chop_length
            when 0
                return -1
            when 1
                if num == array[0]
                    return num
                else
                    return -1
                end
            else

        end
    end

end
