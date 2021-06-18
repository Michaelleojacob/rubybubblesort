#! this is actually not a fail. it successfully put 78 at the end.
def bubble_sort (*nums)
    nums = nums[0]
    nums.each_with_index.map do |i, index|
        unless nums[index + 1] == nil
            nums[index] > nums[index + 1] ? (nums[index], nums[index+1] = nums[index+1], nums[index]) : nums
        end
    end
    nums.compact
    nums
end

# bubble_sort([4,3])
# p bubble_sort([4,3])
p bubble_sort([4,3,78,2,0,2])

# 3 4
# 3 78
# 78 2
# 3 4 2 78 0 2
# 78 0
# 3 4 2 0 78 2
# 78 2
# 3 4 2 0 2 78


#! fav solution without comments
def bubble_sort(arr)
    for i in 0...arr.length
    sorted = true

    for k in 0...(arr.length - i - 1)
        if arr[k] > arr[k + 1]
        arr[k], arr[k + 1] = arr[k + 1], arr[k]
        sorted = false
        end
    end

    break if sorted
    end
    arr
end

data = [10, 2, 6, 2, 1, 5, 8, 6, 0, 2, 8, 9]

p bubble_sort(data)
# => [0, 1, 2, 2, 2, 5, 6, 6, 8, 8, 9, 10]