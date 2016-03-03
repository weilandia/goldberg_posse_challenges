require 'pry'
class TuringTower
  attr_reader :stack2, :stack2, :stack3

  def initialize(disc_num)
    @stack1 = (0..(disc_num-1)).to_a.reverse
    #0 is at the top of the stack and represents the largest disc
    @stack2 = []
    @stack3 = []
    #when we did 6 discs (even) if we placed the first move onto stack2
    #then we end up with the stack on stack3
    #when we did odd discs and move to stack 3
    #when we have an even number and the first move is to stack 3
    #then the stack finished on stack 2
    #if its even we have to make the first move onto stack 2
    #if its odd we have to make the first move onto stack 3
  end

  def move
    #stack1 = [2, 1, 0]
    @stack3 << @stack1.pop
    #stack1 = [2, 1]
    #stack3 = [0]
    @stack2 << @stack1.pop
    #stack1 = [2]
    #stack2 = [1]
    #stack3 = [0]
    @stack2 << @stack3.pop
    #stack1 = [2]
    #stack2 = [1, 0]
    #stack3 = []
    @stack3 << @stack1.pop
    #stack1 = []
    #stack2 = [1, 0]
    #stack3 = [2]
    @stack1 << @stack2.pop
      #stack1 = [0]
        #stack2 = [1]
        #stack3 = [2]
    @stack3 << @stack2.pop
          #stack1 = [0]
            #stack2 = []
            #stack3 = [2, 1]
    @stack3 << @stack1.pop
          #stack1 = []
            #stack2 = []
            #stack3 = [2, 1, 0]
  end


end

tt = TuringTower.new(3)
