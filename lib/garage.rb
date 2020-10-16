class Garage

attr_reader :storage
  def initialize
    @storage = []
  end
  def accept_bike(bike)
    bike.fix if !bike.working?
    @storage << bike
  end
  def release_bike
    @storage.pop
  end
  # def apply_knowledge(bike)
  #   bike.fix
  # end
end
