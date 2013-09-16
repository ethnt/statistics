module Statistics
  class Summary
    extend Statistics::Quantitative

    # Generate a five number summary for a data set.
    # Includes:
    #   - minimum
    #   - 1st quartile
    #   - median
    #   - 3rd quartile
    #   - maximum
    def self.five_number_summary(data)
      summary = {
        minimum: minimum(data),
        q1: q1(data),
        median: median(data),
        q3: q3(data),
        maximum: maximum(data)
      }

      return summary
    end

    # Generate an extended summary for a data set.
    # Includes:
    #   - minimum
    #   - 1st quartile
    #   - median
    #   - 3rd quartile
    #   - maximum
    #   - range
    #   - mean
    #   - interquartile range
    #   - fences
    #   - outliers
    #   - variance
    #   - standard deviation
    #   - sum
    #   - count
    def self.extended_summary(data)
      summary = self.five_number_summary(data)
      summary = summary.merge({
        range:    range(data),
        mean:     mean(data),
        iqr:      iqr(data),
        fences:   fences(data),
        outliers: outliers(data),
        variance: variance(data),
        std_dev:  standard_deviation(data),
        sum:      sum(data),
        count:    count(data)
      })

      return summary
    end
  end
end
