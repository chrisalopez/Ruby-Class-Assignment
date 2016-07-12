require_relative 'tenant'

class Apartment
  attr_reader :unit, :num_beds, :num_baths, :tenant


  def initialize(unit, num_beds, num_baths)
    @unit = unit
    @num_beds = num_beds
    @num_baths = num_baths
    @tenants = []
  end

  def price
    "$#{@num_beds * 1000 + @num_baths * 500}"
  end

  def studio?
    @num_beds == 1
  end
  # def studio?
  #   if @num_beds <= 1
  #     return true
  #   else
  #     return false
  #   end
  # end

  def move_in(tenant)
    if full?
      "We're full! #{tenant.fullname} can't move in"
    else
    @tenants << tenant
    end
  end

  def empty?
    @tenants.length === 0
    @tenants == []
  end

  def full?
    @tenants.length == @num_beds
  end

end
