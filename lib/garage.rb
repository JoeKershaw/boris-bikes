require './lib/container'
class Garage
  include Container

  def accept_bike(bike)
    @bikes << bike
    p "garage accepted bike"
    sleep(0.3)
    apply_knowledge
  end

  def release_bike
    p "garage released bike"
    @bikes.pop
  end

  def apply_knowledge
    @bikes[0].fix
    p "bike is getting knowledge applied"
    4.times do
      print "."
      sleep(0.3)
    end
    puts
    release_bike
  end
end
