class Car #=> Car is a {Class}
  def initialize(color) #=> initialize is the {constructor} of the Car class
    @color = color #=> @color is an {instance variable}, it's a variable of an instance of Car, it characterizes the instance
    @running = false #=> @running is an {instance variable}, it's a variable of an instance of Car, it characterizes the instance
    # => instance variables are also called {STATES} of the instance of Car
  end

  def start_engine #=> start_engine is an {instance method}, it is a method that is called on an instance of Car
    @running = true
  end
  # => instance methods are also called {BEHAVIOUR} of the instance of Car

  def self.parts #=> parts is a {class method}, it is a method that is called on the class Car
    ["wheels", "engine", "seats", "body"]
  end
end

ferrari = Car.new("red") #=> ferrari is an {instance} of Car
ferrari.start_engine #=> we can call start_engine on the instance ferrari because it is an {instance method}

Car.parts #=> we can only call parts on the class Car because it is a {class method}
