#Build a method #bubble_sort that takes an array and returns a sorted array.


#For each element in the array
#check if the value on the left is greater or less than the one on the right

#if no, goes to the next element in array 
#if yes, then make a switch of those two elements without affecting others yet
#loop through the whole array length

def bubble_sort(array)
    n = array.length
    array.each do
      i = 0
      while i < n - 1
        if array[i] > array[i + 1]
          #set up a holding position for the left element
          holding_pos = array[i]
          array[i] = array[i + 1]
          #switch
          array[i + 1] = holding_pos
        end
        #if no, goes to the next elment in array
        i += 1
      end
    end
    #return the array after the codes exit the while loop
    array
  end
  
  p bubble_sort([11,5,7,6,15])