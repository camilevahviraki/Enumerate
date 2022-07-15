module MyEnumerable
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
  
  def filter
    arr = []
    @list.each do |l|
      if yield l
        arr.push(l)
      end
    end
    arr
  end
end
