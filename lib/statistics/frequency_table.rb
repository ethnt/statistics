module Statistics
  class FrequencyTable

    # Create a flat array for a two-dimensional frequency table.
    # E.g.:
    #   [
    #     [a, b]
    #   ]
    def initialize(freq_table)
      flat = []

      freq_table.each do |pair|
        pair[1].times { flat << pair[0] }
      end

      @flat = flat
    end
  end
end
