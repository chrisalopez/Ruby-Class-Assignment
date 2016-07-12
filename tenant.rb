class Tenant

  attr_accessor :nickname, :occupation

  def initialized(:f_name, :l_name, :born_on, :gender)
    @f_name = f_name
    @l_name = l_name
    @born_on = born_on
    @gender = gender
  end

end
