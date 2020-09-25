#go through each element, comparing with the one next to it (unless you're at last element)
#skip the last n elements, where n is the number of passes previously done
#repeat until either all elements in array are smaller than the one to the right of it, or no sorts needed, whichever comes first

def bubble_sort(array)
  passes = 0
  sorts = 0
  is_done = false
  
  until is_done do

    for i in 0 ... array.length - 1 - passes #up to 2nd to the last, not counting elements we're sure are sorted
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i] #swap
        sorts += 1
      end
    end

    passes += 1

    if sorts == 0
      is_done = true
    end
    sorts = 0

  end
  return array
end

p bubble_sort([4,3,78,2,0,2])
