# your code goes here
class Person 
    attr_accessor :bank_account, :hygiene
    attr_reader :name, :happiness

    def initialize(name)
        @name = name 
        @bank_account = 25 
        @happiness = 8 
        @hygiene = 8
    
    end 

    def happiness=(num)
        if num > 10
            @happiness = 10
        elsif num < 0
            @happiness = 0
        else
            @happiness = num
        end
        # num > 10 ? @happiness = 10 : @happiness = num
    end
     
    def hygiene=(num)
        if num > 10 
            @hygiene = 10 
        elsif num < 0 
            @hygiene = 0
        else 
            @hygiene = num 
        end 
    end 





    def happy? 
    #  if @happiness > 7 
    #     return true 
    #  else 
    #     return false 
    #  end 
     @happiness > 7
    end 

    def clean?
        # if @clean > 7 
        #     return true 
        # else 
        #     return false 
        # end
        @hygiene > 7
    end 
    
    def take_bath
        self.hygiene=(@hygiene + 4)
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end 

    def work_out 
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        '♪ another one bites the dust ♫'
    end


    def get_paid(salary)
        @bank_account += salary
        'all about the benjamins'
    end

    def call_friend(friend)
        self.happiness=(@happiness + 3)
        friend.happiness=(friend.happiness + 3)
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == 'politics'
            self.happiness=(@happiness - 2)
            friend.happiness=(friend.happiness - 2)
            return 'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness=(@happiness + 1)
            friend.happiness=(friend.happiness + 1)
            return "blah blah sun blah rain"
        else
            return 'blah blah blah blah blah'
        end
    end

end

person = Person.new('penelope')
p person.hygiene
p person.take_bath
p person.hygiene
