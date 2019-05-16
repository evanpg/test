def sum_to(n)
    return 1 if n <= 1
    n += sum_to(n-1)
end

# p sum_to(5)  # => returns 15
# sum_to(1)  # => returns 1
# sum_to(9)  # => returns 45
# sum_to(-8)  # => returns nil

def add_numbers(nums_array)
    return [] if nums_array.length == 0
    nums_array[0] += add_numbers(nums_array[1..-1]) 
end

# p add_numbers([1,2,3,4]) # => returns 10
# add_numbers([3]) # => returns 3
# add_numbers([-80,34,7]) # => returns -39
# add_numbers([]) # => returns nil


def gamma_fnc

end

# gamma_fnc(0)  # => returns nil
# gamma_fnc(1)  # => returns 1
# gamma_fnc(4)  # => returns 6
# gamma_fnc(8)  # => returns 5040


def ice_cream_shop(flavors, favorite)
    return false if flavors.empty?
    if flavors[0] != favorite
        ice_cream_shop(flavors[1..-1], favorite) 
    else
        return true
    end
end

#  p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
#  p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
#  p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
# ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
# ice_cream_shop([], 'honey lavender')  # => returns false


def reverse(str)
    return "" if str.length == 0
    reverse(str[1..-1]) + str[0]
end

# p reverse("house") # => "esuoh"
# reverse("dog") # => "god"
# reverse("atom") # => "mota"
# reverse("q") # => "q"
# reverse("id") # => "di"
# reverse("") # => ""