class Tenant

  attr_accessor :nickname, :occupation

  def initialize(f_name, l_name, born_on, gender)
    @f_name = f_name
    @l_name = l_name
    @born_on = born_on
    @gender = gender
  end

  def full_name
    "#{@f_name} #{" ' " + nickname + " ' " if nickname} #{@l_name}"
  end
end

p1 = Tenant.new "Calvin", "Clifford", "male", "December 21, 1929"
p1.nickname ="Bud"
p1.full_name


puts p1
