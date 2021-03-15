# your code goes here
require 'pry'
class Person

    # attr_writer :people=
    attr_reader :name

    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @balance = 25

    end

    # def bank_account(balance=25)
    #     @balance = balance
    # end

    def bank_account=(balance)
        @balance = balance
    end



    def happiness=(happiness)
        @happiness = happiness
    end

    def happiness        
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
        @happiness
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
    end

    def hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
        @hygiene
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def bank_account
        @balance
     end

    def get_paid(salary) 
        @balance += salary
        "all about the benjamins"
    end

    def take_bath
        # @hygiene += 4
        # hygiene=(hygiene+4)
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(people, topic)
        if topic == "politics"
            people.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"  
        elsif topic == "weather"
            
            people.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end  
    end


end