class Dog 
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name 
    # @@all << self
    save #puts method into initialize
  end
  def self.all #when use .all will show @@all array
    @@all
  end 
  
  def self.clear_all #clears the array
    @@all.clear
  end
  
  def self.print_all #iterates through array and prints each dogs name. 
   @@all.map do |dog_name|
    puts  dog_name.name
  end
end

  def save
    @@all.push(self) #instance method that adds new dog to @@all array
  end
  
  
end
# fido = Dog.new("Fido")
# sam = Dog.new("Sam")
# ghost = Dog.new("Ghost")
# Dog.print_all
