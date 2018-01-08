class Operations
  attr_accessor :person, :account, :car, :renting

  @@tperson = []
  @@taccount = []
  @@tcar = []
  @@trenting = []

  def add_person(name, lastname, phone)
    size = @@tperson.size
    id = 0
    id += 1 while id < size && !@@tperson[id].nil?
    person = Person.new(id, name, lastname, phone)
    @@tperson.insert(id, person)
    puts "Added new person:
    id- #{@@tperson[id].id} ,
    name- #{@@tperson[id].name} ,
    lastname- #{@@tperson[id].lastname} ,
    phone- #{@@tperson[id].phone}."
  end
 def add_account(login, email, person)
    size = @@taccount.size
    id = 0
    id += 1 while id < size && !@@taccount[id].nil?
    account = Account.new(id, login, email, person)
    @@taccount.insert(id, account)
    puts "Added new account:
    login - #{login},
    email - #{email}."
  end
end
