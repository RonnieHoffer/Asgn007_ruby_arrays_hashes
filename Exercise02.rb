def print_list(list)
    list.delete("salmon")
    length = list.length
    puts "Number of items on list = #{length}"
    puts "The second itme on the list (before sorting) is #{list[1]}"
    counter = 0
    bananas = false
    
    while counter < length
        puts "* #{list[counter]}"
        if list[counter] == "bananas"
            bananas = true
        end
        counter += 1
    end

    if bananas == false
        puts "You do not need to pick up bananas today"
    elsif bananas == true
        puts "You need to pick up bananas"
    end
end

groceries = ["salmon", "almonds", "green beans", "squash"]
print_list(groceries.sort)
puts "\n"

groceries.push("rice")
print_list(groceries.sort)
puts "\n"