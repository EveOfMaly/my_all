require 'pry'


#build the all? method 
def my_all?(collection)
    i = 0
    block_return_value = []
    while i < collection.length
        block_return_value << yield(collection[i])
        i = i + 1 
    end 

    if block_return_value.include?(false)
        false
    else
        true
    end
end



#build the none? method 

collection = [2,3]
def none?(collection)
    i = 0 
    none = []
    while i < collection.length
        none << yield(collection[i])
        i += 1
  
    end
    
    if none.include?(true)
        false
    else
        true
    end
end


#build the any? method 

def any?(collection)
    i = 0 
    any = []
    while i < collection.length
        any << yield(collection[i])
        i += 1
  
    end
    
    if any.include?(true)
        true
    else
        false
    end
end


#building the find/detech method 
#will return all elements from the original collection that cause the block
# to evaluate to true, #detect will only return the first element that makes the block true.

def my_find(collection)
    i = 0 
    find = []
    while i < collection.length
        return collection[i] if yield(collection[i])
        i += 1
    end
end
