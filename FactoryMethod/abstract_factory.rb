
class AbstractFactory

  @@instance = nil

  def self.register(instance)
    @@instance = instance
  end

  def self.instance
    return @@instance
  end

end