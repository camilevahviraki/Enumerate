module MyEnumerable
  def all?
    @list.each do |el|
      return true unless block_given?

      true_false = yield el
      return false unless true_false
    end
    true
  end

  def any?
    @list.each do |l|
      return true if yield l
    end
    false
  end

  def filter
    arr = []
    @list.each do |l|
      arr.push(l) if yield l
    end
    arr
  end
end
