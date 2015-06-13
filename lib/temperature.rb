# Temperature is comfortable when it's room temperature.
# Figure out what the range for room temperature is based on
# the spec. Additionally, try to use ranges or a case statement.

# The Temperature class should accept the current temperature
# and respond_to a status method.

class Temperature

  def initialize(temp)
    @temp = temp
  end

  def status

    if @temp < 22 && @temp > 14
      "comfortable"
    elsif @temp <= 14
      "cold"
    else
      "hot"
    end
        
  end
end