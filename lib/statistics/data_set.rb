module Statistics
  class DataSet
    extend Statistics::Quantitative

    def initialize(set = [])
      @set = set
    end

    def add(num)
      for i in 0..(@set.length - 1)
        @set[i] = @set[i] + num
      end

      return @set
    end

    def multiply(num)
      for i in 0..(@set.length - 1)
        @set[i] = @set[i] + num
      end

      return @set
    end

    def subtract(num)
      for i in 0..(@set.length - 1)
        @set[i] = @set[i] - num
      end

      return @set
    end

    def divide(num)
      for i in 0..(@set.length - 1)
        @set[i] = @set[i] / num
      end

      return @set
    end
  end
end
