class MyList
    def initialize(array)
        @List = array
    end

    def all?
        @List.each do |el|
            return true unless block_given?
            true_false = yield el
            return false unless true_false
        end
        return true      
    end
    
    def any?
        @List.each do |el|
            yield el
               .map block_given?
            # return true unless el. = block_given?
            # return false
        end   
        # true_false = @List.include? (block_given?)
        # return true unless true_false
        # return false
        # p block_given?
    end        
end

myClass = MyList.new([1,2,3,4])

p myClass.all? { |x| x > 0 }

p myClass.any? { |x| x > 9 }