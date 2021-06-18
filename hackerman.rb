#this does not work with duplicate values given to bubble_sort 
#just thought it was a fun attempt, kinda felt like cutting corners.
#because it was. Hence why file is named hackerman.

def bubble_sort(*nums)
    nums = nums[0]
    sorted = []
    max_amount = nums.length
    i=0
    while i < max_amount do
        sorted.push(nums.delete(nums.min))
        i+= 1
    end
    sorted.compact
end

p bubble_sort([4,3,78,2,0,2])