def get_absent_dogs(dog_list)
    absent_list = []
    counter = 0
    while counter < dog_list.length
        if dog_list[counter][:position] > 10
            absent_list.push(dog_list[counter][:name])
        end
        counter += 1
    end
    return absent_list
end

def call_absent_dogs(absent_dogs)
    counter = 0
    while counter < absent_dogs.length
        puts "Come back #{absent_dogs[counter]}!"
        counter += 1
    end
end

my_dogs = [
  { :name => 'Ralph', :position => 5 },
  { :name => 'Cindy', :position => 15 },
  { :name => 'Jade', :position => 11 },
]

her_dogs = [
  { :name => 'Bentley', :position => 12 },
  { :name => 'Bogie', :position => 8 },
  { :name => 'Bernie', :position => 4 },
]

absent_dogs = get_absent_dogs(my_dogs)
puts "The following dogs are absent from my dogs: #{absent_dogs}"
call_absent_dogs(absent_dogs)
puts "\n"

absent_dogs = get_absent_dogs(her_dogs)
puts "The following dogs are absent from her dogs: #{absent_dogs}"
call_absent_dogs(absent_dogs)