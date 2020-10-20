class Garage

attr_reader :storage
  def initialize
  end
  def accept_bike(bike)
    p "garage accepted bike"
    sleep(0.3)
    apply_knowledge(bike)
  end
  def release_bike(bike)
    p "garage released bike"
    bike
  end
  def apply_knowledge(bike)
    bike.fix
    p "bike is getting knowledge applied"
    10.times do
      print "."
      sleep(0.3)
    end
    puts
    release_bike(bike)
  end
end
