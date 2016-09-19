class Calculator
  def add(left, right)
    right.times do
      left += 1
    end
    left
  end

  def new_add(left, right)
    result = left

    right.times { result += 1 }
    result
  end
end
