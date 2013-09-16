module Statistics
  module Quantitative

    # Get the minimum value of a data set.
    def minimum(data)
      data = data.sort

      return data[0]
    end

    # Get the first quartile of a data set.
    def q1(data)
      data = data.sort

      return data[(data.length + 1) / 4]
    end

    # Get the median of a data set.
    def median(data)
      data = data.sort
      len  = data.length

      if len % 2 == 1
        return data[len/2]
      else
        return ((data[(len / 2) - 1] + data[len / 2]).to_f) / 2
      end
    end

    # Get the third quartile of a data set.
    def q3(data)
      data = data.sort { |x, y| y <=> x }

      return data[(data.length + 1) / 4]
    end

    # Get the maximum value of a data set.
    def maximum(data)
      data = data.sort

      return data.pop
    end

    # Get a count of numbers in a data set.
    def count(data)
      return data.length
    end

    # Get a sum of all numbers in a data set.
    def sum(data)
      return data.inject{ |sum, n| sum + n }
    end

    # Get the range of a data set.
    def range(data)
      return (minimum(data)..maximum(data))
    end

    # Get the mean of a data set.
    def mean(data)
      return (sum(data) / count(data)).to_f
    end

    # Get the interquartile range of a data set.
    def iqr(data)
      return q3(data) - q1(data)
    end

    # Get the lower bound of data (for calculating outliers) of a data set.
    def lower_bound(data)
      return (q1(data) - (1.5 * iqr(data))).to_f
    end

    # Get the upper bound of data (for calculating outliers) of a data set.
    def upper_bound(data)
      return (q3(data) + (1.5 * iqr(data))).to_f
    end

    # Get the fences for calculating the outliers of a data set.
    def fences(data)
      return lower_bound(data)..upper_bound(data)
    end

    # Get an Array of outliers in a data set.
    def outliers(data)
      fences = fences(data)

      outliers = []
      data.each do |n|
        unless fences.include?(n)
          outliers << n
        end
      end

      return outliers
    end

    # Get the variance of a data set.
    def variance(data)
      m = mean(data)

      squares = 0
      data.each do |n|
        squares = squares + (n - m)**2
      end

      return squares / (count(data) - 1)
    end

    # Get the standard deviation of a data set.
    def standard_deviation(data)
      return Math.sqrt(variance(data))
    end
  end
end
