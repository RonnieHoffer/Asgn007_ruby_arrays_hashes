def chase_squirrel(dogs)
    dogs.map! do |dog|
        dog[:position] += 5
        dog
    end
    return dogs
end



def get_absent_dogs(dogs)
    return absent_list = dogs.select {|dog| dog[:position] > 10}
end



def call_absent_dogs(absent_dogs)
    absent_dogs.each do |absent_dog|
        puts "Come back #{absent_dog[:name]}!"
    end
end



def round_up_dogs(dogs)
    dogs.map! do |dog|
        dog[:position] = 0
        dog
    end
    return dogs
end



my_dogs = [
  { :name => "Ralph", :position => 7 },
  { :name => "Cindy", :position => 15 },
  { :name => "Jade", :position => 11 },
]


absent_dogs = get_absent_dogs(chase_squirrel(my_dogs))
puts "The following dogs are absent from my dogs: #{absent_dogs}"
call_absent_dogs(absent_dogs)
puts "\n"
home_dogs = round_up_dogs(my_dogs)
puts "The dogs have come home."
puts home_dogs





























# her_dogs = [
#   { :name => 'Bentley', :position => 12 },
#   { :name => 'Bogie', :position => 8 },
#   { :name => 'Bernie', :position => 4 },
# ]


# absent_dogs = get_absent_dogs(her_dogs)
# puts "The following dogs are absent from her dogs: #{absent_dogs}"
# call_absent_dogs(absent_dogs)