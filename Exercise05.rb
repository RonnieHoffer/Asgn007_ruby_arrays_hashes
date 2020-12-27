def chase_squirrel(dogs)
    dogs.map! {|dog| dog[:name] && dog[:position] + 5}
    puts "#{dogs}"
    return dogs
end

def get_absent_dogs(dogs)
    dogs.select! {|dog| dog[:position] > 10}
    absent_list = []
    dogs.each do |dog|
        absent_list.push(dog[:name])
    end
    return absent_list
end

def call_absent_dogs(absent_dogs)
    absent_dogs.each do |absent_dog|
        puts "Come back #{absent_dog}!"
    end
end

my_dogs = [
  { :name => "Ralph", :position => 7 },
  { :name => "Cindy", :position => 15 },
  { :name => "Jade", :position => 11 },
]

# her_dogs = [
#   { :name => 'Bentley', :position => 12 },
#   { :name => 'Bogie', :position => 8 },
#   { :name => 'Bernie', :position => 4 },
# ]

chase_squirrel(my_dogs)

# absent_dogs = get_absent_dogs(chase_squirrel(my_dogs))
# puts "The following dogs are absent from my dogs: #{absent_dogs}"
# call_absent_dogs(absent_dogs)
# puts "\n"

# absent_dogs = get_absent_dogs(her_dogs)
# puts "The following dogs are absent from her dogs: #{absent_dogs}"
# call_absent_dogs(absent_dogs)