module Statistics
  class DataSet
    extend Statistics::Quantitative

    def initialize(set = [])
      @set = set
    end

    def add(num)
      @set = @set.map{|x| x + num}
    end

    def multiply(num)
      @set = @set.map{|x| x * num}
    end

    def subtract(num)
      @set = @set.map{|x| x - num}
    end

    def divide(num)
      @set = @set.map{|x| x / num}
    end
  end
end
