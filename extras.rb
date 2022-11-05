require_relative './stack'

class Extras < Stack

  def mean
    @sum / @stack.length
  end
end
