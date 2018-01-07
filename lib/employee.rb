class Employee
  attr_accessor :id, :name, :lastname, :phone

  def initialize(id, name, lastname, phone)
    @id = id
    @name = name
    @lastname = lastname
    @phone = phone
  end

  def to_s
    "#{name} #{lastname} #{phone}"
  end
end
