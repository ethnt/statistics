module Statistics
  module Quantitative

    # Get the minimum value of a data set.
    def minimum(data)
      data.sort[0]
    end

    # Get the first quartile of a data set.
    def q1(data)
      data.sort[(data.length + 1) / 4]
    end

    # Get the median of a data set.
    def median(data)
      len  = data.length
      sorted = data.sort
      if len % 2 == 1
        sorted[len/2]
      else
        ((sorted[(len / 2) - 1] + sorted[len / 2]).to_f) / 2
      end
    end

    # Get the third quartile of a data set.
    def q3(data)
      #sort in descending order
      data.sort{|x, y| y <=> x }[(data.length + 1) / 4]
    end

    # Get the maximum value of a data set.
    def maximum(data)
      data.sort[-1]
    end

    # Get a count of numbers in a data set.
    def count(data)
      data.length
    end

    # Get a sum of all numbers in a data set.
    def sum(data)
      data.inject{ |sum, n| sum + n }
    end

    # Get the range of a data set.
    def range(data)
      minimum(data)..maximum(data)
    end

    # Get the mean of a data set.
    def mean(data)
      sum(data) / count(data).to_f
    end

    # Get the interquartile range of a data set.
    def iqr(data)
      q3(data) - q1(data)
    end

    # Get the lower bound of data (for calculating outliers) of a data set.
    def lower_bound(data)
      q1(data) - (1.5 * iqr(data))
    end

    # Get the upper bound of data (for calculating outliers) of a data set.
    def upper_bound(data)
      q3(data) + (1.5 * iqr(data))
    end

    # Get the fences for calculating the outliers of a data set.
    def fences(data)
      lower_bound(data)..upper_bound(data)
    end

    # Get an Array of outliers in a data set.
    def outliers(data)
      fences = fences(data)
      data.select {|x| !fences.include? x}
    end

    # Get the variance of a data set.
    def variance(data)
      m = mean(data)
      data.inject(0){|squares, n| squares + (n-m)**2} / (data.size - 1)
    end

    # Get the standard deviation of a data set.
    def standard_deviation(data)
      Math.sqrt(variance(data))
    end
  end
end
