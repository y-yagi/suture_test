require 'test_helper'

class PointCardTest < ActiveSupport::TestCase
  def test_validate_old_add
    calc = Calculator.new
    Suture.verify :add, subject: calc.method(:add)
  end

  def test_validate_new_add
    calc = Calculator.new
    Suture.verify :add, subject: calc.method(:new_add)
  end
end
