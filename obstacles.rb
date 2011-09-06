class Obstacle
  def ride(bike)
    if succeeded_ride?(bike)
      puts "You made it!"
    else
      puts "You ate shit!"
    end
  end
end

class MtTabor < Obstacle
  def intro_message
    "You're about to climb the only volcano within a U.S. city!"
  end

  def succeeded_ride?(bike)
    case bike.class
    when Cruiser
      false
    when Commuter
      true 
    when CarbonRoadRacer
      true
    when DoubleSuspensionMountainBike 
      false
    end
  end
end

class EastbankEsplanade < Obstacle
  def intro_message
    "You're about to ride the Eastbank Esplanade. Beware of pedestrians and recumbants!"
  end

  def succeeded_ride?(bike)
    true
  end
end

class BurnsideBridge < Obstacle
  def intro_message
    "Cross the Burnside Bridge, but don't get run over by some drunk dude from Gresham driving home from the Barrel Room!"
  end
  def succeeded_ride?(bike)
    true
  end
end

class I205Bridge < Obstacle
  def intro_message
    "Watch out for cars! You're about to cross the I-205 bridge!"
  end
  def succeeded_ride?(bike)
    true
  end
end

class RockyButte < Obstacle
  def intro_message
    "Majestic Rocky Butte. Get into your lowest gear. Giddy up!"
  end
  def succeeded_ride?(bike)
    false 
  end
end

class ForestPark < Obstacle
  def intro_message
    "Forest Park is the largest city park in the country. GIT READY TO GIT MUDDAY."
  end
  def succeeded_ride?(bike)
    false 
  end
end

