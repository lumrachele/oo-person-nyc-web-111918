class Person
attr_reader :name, :topic
attr_accessor :bank_account, :happiness, :hygiene


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  #- The happiness and hygiene points
  #should be able to change, however the
  #maximum and minimum points for both happiness
  #and hygiene should be 10 and  0 respectively

  def happiness=(num)
    @happiness = num
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
  end

  def hygiene=(num)
    @hygiene = num
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0

    end
    #(hint: use the custom #hygiene= method
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end


  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end


  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      friend.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      friend.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end


  end

end
