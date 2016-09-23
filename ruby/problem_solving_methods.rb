arr = [24, 22, 8, 9, 11]

def search_array(arr, num)
    for i in 0..arr.length
        if arr[i] == num
            return i
        end
    end
    return nil
end
p search_array(arr, 90)

def fib(num)
    fibarr = [0, 1]
        for i in 0...num-2
            fibarr.push(fibarr[i] + fibarr[i + 1])
        end
    fibarr.last
end
p fib(100) == 218922995834555169026



def insert(array)
    final = [array[0]]
    array.delete_at(0)
        for i in array
            final_index = 0
            while final_index < final.length
                if i <= final[final_index]
                    final.insert(final_index,i)
                    break
                elsif final_index == final.length-1
                    final.insert(final_index+1, i)
                    break
                end
                final_index+=1
            end
        end
    p final
end

arr = [1, 8, 7, 2, 5, 6, 7]
insert(arr)