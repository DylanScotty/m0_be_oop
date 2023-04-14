# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
    attr_reader :name, :color
    def initialize(name, color = 'silver')
        @name = name
        @color = "silver"
    end
    def say(statement)
        "*~* #{statement} *~*"
    end
end


unicorn1 = Unicorn.new("Bobby")

p unicorn1

p unicorn1.say "Look at me"

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
    attr_reader :name, :pet, :thirsty
    def initialize(name, pet="bat", thirsty=true)
        @name = name
        @pet = pet
        @thirsty = thirsty
    end

    def drink
        @thirsty = false
    end
end

vampire1 = Vampire.new("Brian")
p vampire1
vampire2 = Vampire.new("Kenny", "Owl")
p vampire2
vampire2.drink
p vampire2

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
    attr_reader :name, :rider, :color
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
        @food = 0
    end
    def eats
        @food += 1
        if @food >=4
            @is_hungry = false
        end
    end
end 

dragon1 = Dragon.new("Boba", "Cinderella", "Purple")
p dragon1
dragon1.eats
p dragon1
dragon1.eats
p dragon1
dragon1.eats
p dragon1
dragon1.eats
p dragon1
#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class Hobbit
    attr_reader :name, :disposition
    def initialize(name, disposition)
        @name = name
        @disposition = disposition
        @age = 0
        @is_adult = false
        @is_old = false
    end
    def celebrate_birthday
        @age += 1
        if @age >= 33
            @is_adult = true
        end
        if @age >= 101
            @is_old = true
        end
    end
    def has_ring?
        @name == 'Frodo'
    end
end

hobbit1 = Hobbit.new("Sam", "Brave")
hobbit2 = Hobbit.new("Frodo", "Sad")
hobbit1.celebrate_birthday
33.times do 
    hobbit1.celebrate_birthday
end
p hobbit1
p hobbit2
p hobbit1.has_ring?
p hobbit2.has_ring?
