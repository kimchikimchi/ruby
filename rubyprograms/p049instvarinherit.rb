# p049instvarinherit.rb
class C
  def initialize
    @n = 100
  end
  
  def increase_n
    @n *= 20
  end
end

class D < C
  def initialize
    super
  end

  def show_n
    puts "self is an instance of #{self.class}"
    puts "n is #{@n}"
  end
end

d = D.new
d.show_n
d.increase_n
d.show_n
