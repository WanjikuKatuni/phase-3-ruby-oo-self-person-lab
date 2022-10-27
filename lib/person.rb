# your code goes here

require 'pry'


class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(amount)
        @happiness = condition(amount)
    end

    def hygiene=(amount)
        @hygiene = condition(amount)
    end


    def condition(num)
        if num > 10
           return 10
        elsif num < 0
          return  0
        end
        return num
    end

    def happy?
        @happiness>7
    end

    def clean?
        @hygiene>7
    end

    def get_paid(amount)
        self.bank_account+=amount
        "all about the benjamins"

    end
    
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -=3
        self.happiness +=2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness +=3
        friend.happiness +=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"

    end

    def start_conversation(friend, topic)
        object = [self, friend]
        case topic
        when "politics"
            object.each {|person| person.happiness -=2}
            "blah blah partisan blah lobbyist"
        when "weather"
            object.each {|person| person.happiness +=1}
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end


end


# binding.pry
