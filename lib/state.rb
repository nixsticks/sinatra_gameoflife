class Alive
  def flip_state(living)
    living == 2 || living == 3 ? self : Dead.new
  end
end

class Dead
  def flip_state(living)
    living == 3 ? Alive.new : self
  end
end