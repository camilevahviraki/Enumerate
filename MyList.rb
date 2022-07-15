class MyList
  def initialize(*args)
    @list = args
  end

  def all?
    @list.each do |el|
      return true unless block_given?
      true_false = yield el
      return false unless true_false
    end
    return true
  end
  
  def any?
    @list.each do |l|
      if yield l
        return true
      end
    end
    false
  end        
end

list = MyList.new(1,2,3,4)

# test cases
p list.all? {|e| e < 5}
p list.all? {|e| e > 5}
p list.any? {|e| e == 2}
p list.any? {|e| e == 5}
# p list.filter {|e| e.even?}
