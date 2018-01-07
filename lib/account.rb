class Account
  attr_accessor :id, :login, :email, :person

  def initialize(id, login, email, person)
    @id = id
    @login = login
    @email = email
    @person = person
  end

  def to_s
    "#{login} #{email} #{person}"
  end
end
