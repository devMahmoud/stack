class Stack
  
  def initialize
    @stack = []
    @max_stack = []
    @sum = 0
  end

  def push(num)
    max_number = num
    peek_index = @max_stack.length - 1
    if(!@max_stack.empty? && max_number < @max_stack[peek_index])
      max_number = @max_stack[peek_index]
    end
    @sum += num
    @stack << num
    @max_stack << max_number
  end

  def pop
    @sum -= @stack[@stack.length - 1]
    @stack.pop
    @max_stack.pop
  end

  def max
    @max_stack[@max_stack.length - 1]
  end
end
