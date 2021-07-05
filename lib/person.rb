# your code goes here
class Person 

    attr_accessor :happiness, :hygiene, :bank_account
    attr_reader :name

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name 
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(x)
        if x > 10
            @happiness = 10
        elsif x < 0 
            @happiness = 0
        else 
            @happiness = x
        end
    end

    def hygiene=(y)
        if y > 10
            @hygiene = 10
        elsif y < 0
            @hygiene = 0
        else 
            @hygiene = y
        end
    end



    def clean? 
        if hygiene > 7 
            return true 
        else 
            return false 
        end
    end

    def happy? 
        if happiness > 7 
            return true 
        else 
            return false
        end
    end

    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"
    end

    def take_bath 
       self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{name}. How are you?"
    end
    
    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end



end

