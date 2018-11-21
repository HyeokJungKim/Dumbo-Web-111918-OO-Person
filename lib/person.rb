require 'pry'
class Person
  attr_reader :hygiene, :name, :happiness
  # attr_writer :happiness
  #def happiness = (num)
    #@happiness = num
  #end
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @hygiene = 8
    @happiness = 8
    @bank_account = 25
  end
  #Writer (Allows us to overwrite instance variables)
  def happiness=(num)
    if num > 10
      @happiness = 10
    elsif num < 0
      @happiness = 0
    else
      @happiness = num
    end
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
    # if @happines > 7
    #   return true
    # end
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    num = self.hygiene + 4
    @hygiene=(num)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness=(self.happiness+2)
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end








end
