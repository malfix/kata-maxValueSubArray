class Exercise

  def initialize(k)
    @k = k
    @elements = []
  end

  def max_length(elements)
    max = []
    elements.each_with_index do |el, i_el|
      (@k-1).downto(0) do |i_k|
        current_index = i_el - i_k
        if check_lower_bound(current_index) && check_upper_bound(current_index, elements)
          max[current_index] = [(max[current_index] || 0) , el].max
        end
      end
    end
    max
  end

  def check_lower_bound(current_index)
    current_index  >= 0
  end

  def check_upper_bound(current_index, elements)
    current_index  <= elements.size - @k
  end
end
