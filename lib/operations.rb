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

 def add_renting(date, days, car, account)
    size = @@trenting.size
    id = 0
    id += 1 while id < size && !@@trenting[id].nil?
    renting = Renting.new(id, date, days, car, account)
    @@trenting.insert(id, renting)
    puts "Added new renting:
    date - #{date},
    days - #{days}."
  end

  def add_car(brand, model, price)
    id = 0
    size = @@tcar.size
    id += 1 while id < size && !@@tcar[id].nil?
    car = Car.new(id, brand, model, price)
    @@tcar.insert(id, car)
    puts "Added new car:
    id- #{@@tcar[id].id},
    brand- #{@@tcar[id].brand},
    model- #{@@tcar[id].model},
    price- #{@@tcar[id].price}."
  end

  def show_person(id)
    if !@@tperson.at(id).nil?
      puts "Person with id = #{id}: #{@@tperson[id]}"
      return @@tperson[id]
    else
      puts "Person with id = #{id} does not exist."
      return false
    end
  end

  def show_all_person
    return @@tperson
  end

  def show_account(id)
    if !@@taccount.at(id).nil?
      puts "Account with id = #{id}: #{@@taccount[id]}"
      return @@taccount[id]
    else
      puts "Account with id = #{id} does not exist."
      return false
    end
  end

  def show_all_account
    return @@taccount
  end

  def show_car(id)
    if !@@tcar.at(id).nil?
      puts "Car with id = #{id}: #{@@tcar[id]}"
      return @@tcar[id]
    else
      puts "Car with id = #{id} does not exist."
      return false
    end
  end

  def show_all_car
    return @@tcar
  end

  def show_renting(id)
    if !@@trenting.at(id).nil?
      puts "Renting with id = #{id}: #{@@trenting[id]}"
      return @@trenting[id]
    else
      puts "Renting with id = #{id} does not exist."
      return false
    end
  end

  def show_all_renting
    return @@trenting
  end
end
