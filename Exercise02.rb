def print_list(groceries)
    
    groceries.delete("salmon")
    length = groceries.length
    puts "Number of items on list = #{length}"
    puts "The second itme on the list (before sorting) is #{groceries[1]}"
    bananas = false
    
    # counter = 0
    # while counter < length
    #     puts "* #{groceries[counter]}"
    #     if groceries[counter] == "bananas"
    #         bananas = true
    #     end
    #     counter += 1
    # end

    groceries.each do |grocery|
        puts "* #{grocery}"
        if grocery == "bananas" || grocery == "banana"
            bananas = true
        end
    end

    if bananas == false
        puts "You do not need to pick up bananas today"
    elsif bananas == true
        puts "You need to pick up bananas"
    end

end

my_list = ["salmon", "almonds", "green beans", "squash"]
print_list(my_list.sort)
puts "\n"

my_list.push("rice")
print_list(my_list.sort)
puts "\n"