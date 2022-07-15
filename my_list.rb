require_relative 'my_enumerable'

class MyList
  # include module
  include MyEnumerable

  def initialize(*args)
    @list = args
  end
end

list = MyList.new(1, 2, 3, 4)

# test cases
p(list.all? { |e| e < 5 })
p(list.all? { |e| e > 5 })
p(list.any? { |e| e == 2 })
p(list.any? { |e| e == 5 })
# p(list.filter { |e| e.even? })
