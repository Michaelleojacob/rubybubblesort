def sort_machine(arr)
    arr.each_with_index.map do |i, index|
        unless arr[index + 1] == nil
            i > arr[index+1] ? (arr[index], arr[index+1] = arr[index+1], arr[index]) : next
        end
    end
end

def bubble_sort (*nums)
    nums.flatten!
    i=0
    while i < nums.length-1 do
        sort_machine(nums)
        i+=1
    end
    nums.compact
end

p bubble_sort([4,3,78,2,0,2])

