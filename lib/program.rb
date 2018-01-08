require_relative 'person'
require_relative 'account'
require_relative 'car'
require_relative 'renting'
require_relative 'operations'

class Program
  def initialize
    @operations = start
    loop do
      menu
      choose
      case gets.chomp
      when '1'
        menu2
        choose
        case gets.chomp
        when '1'
          system 'clear'
          people = @operations.show_all_person
          i = 0
          while i < people.size
            puts("id #{i}: #{people[i]}") unless people.at(i).nil?
            i += 1
          end
          gets.chomp
        when '2'
          system 'clear'
          print 'Enter ID: '
          id = gets.chomp
          @operations.show_person(id.to_i)
          gets.chomp
        when '3'
          system 'clear'
          print 'Name: '
          name = gets.chomp
          print 'Lastname: '
          lastname = gets.chomp
          print 'Phone: '
          phone = gets.chomp
          @operations.add_person(name, lastname, phone)
          gets.chomp
        when '4'
          system 'clear'
          people = @operations.show_all_person
          i = 0
          while i < people.size
            puts("id #{i}: #{people[i]}") unless people.at(i).nil?
            i += 1
          end
          print 'Enter ID: '
          id = gets.chomp
          @operations.remove_person(id.to_i)
          gets.chomp
        when '5'
          system 'clear'
          people = @operations.show_all_person
          i = 0
          while i < people.size
            puts("id #{i}: #{people[i]}") unless people.at(i).nil?
            i += 1
          end
          print 'Enter ID: '
          id = gets.chomp
          print 'Name: '
          name = gets.chomp
          print 'Lastname: '
          lastname = gets.chomp
          print 'Phone: '
          phone = gets.chomp
          @operations.edit_person(id.to_i, name, lastname, phone)
          gets.chomp
        else
          puts 'Choose number 1-5'
        end
      when '2'
        menu2
        choose
        case gets.chomp
        when '1'
          system 'clear'
          accounts = @operations.show_all_account
          i = 0
          while i < accounts.size
            puts("id #{i}: #{accounts[i]}") unless accounts.at(i).nil?
            i += 1
          end
          gets.chomp
        when '2'
          system 'clear'
          print 'Enter ID: '
          id = gets.chomp
          @operations.show_account(id.to_i)
          gets.chomp
        when '3'
          system 'clear'
          print 'Login: '
          login = gets.chomp
          print 'Email: '
          email = gets.chomp
          print 'Name: '
          name = gets.chomp
          print 'Lastname: '
          lastname = gets.chomp
          print 'Phone: '
          phone = gets.chomp
          @operations.add_account(login, email, @operations.add_person(name, lastname, phone))
          gets.chomp
        when '4'
          system 'clear'
          accounts = @operations.show_all_account
          i = 0
          while i < accounts.size
            puts("id #{i}: #{accounts[i]}") unless accounts.at(i).nil?
            i += 1
          end
          print 'Enter ID: '
          id = gets.chomp
          @operations.remove_account(id.to_i)
          gets.chomp
        when '5'
          system 'clear'
          accounts = @operations.show_all_account
          i = 0
          while i < accounts.size
            puts("id #{i}: #{accounts[i]}") unless accounts.at(i).nil?
            i += 1
          end
          print 'Enter ID: '
          id = gets.chomp
          print 'Login: '
          login = gets.chomp
          print 'Email: '
          email = gets.chomp
          @operations.edit_account(id.to_i, login, email)
          gets.chomp
        else
          puts 'Choose number 1-5'
        end
      when '3'
        menu2
        choose
        case gets.chomp
        when '1'
          system 'clear'
          cars = @operations.show_all_car
          i = 0
          while i < cars.size
            puts("id #{i}: #{cars[i]}") unless cars.at(i).nil?
            i += 1
          end
          gets.chomp
        when '2'
          system 'clear'
          print 'Enter ID: '
          id = gets.chomp
          @operations.show_car(id.to_i)
          gets.chomp
        when '3'
          system 'clear'
          print 'Brand: '
          brand = gets.chomp
          print 'Model: '
          model = gets.chomp
          print 'Price: '
          price = gets.chomp
          @operations.add_car(brand, model, price)
          gets.chomp
        when '4'
          system 'clear'
          cars = @operations.show_all_car
          i = 0
          while i < cars.size
            puts("id #{i}: #{cars[i]}") unless cars.at(i).nil?
            i += 1
          end
          print 'Enter ID: '
          id = gets.chomp
          @operations.remove_car(id.to_i)
          gets.chomp
        when '5'
          system 'clear'
          cars = @operations.show_all_car
          i = 0
          while i < cars.size
            puts("id #{i}: #{cars[i]}") unless cars.at(i).nil?
            i += 1
          end
          print 'Enter ID: '
          id = gets.chomp
          print 'Brand: '
          brand = gets.chomp
          print 'Model: '
          model = gets.chomp
          print 'Price: '
          price = gets.chomp
          @operations.edit_car(id.to_i, brand, model, price)
          gets.chomp
        else
          puts 'Choose number 1-5'
        end
      when '4'
        menu2
        choose
        case gets.chomp
        when '1'
          system 'clear'
          rentings = @operations.show_all_renting
          i = 0
          while i < rentings.size
            puts("id #{i}: #{rentings[i]}") unless rentings.at(i).nil?
            i += 1
          end
          gets.chomp
        when '2'
          system 'clear'
          print 'Enter ID: '
          id = gets.chomp
          @operations.show_renting(id.to_i)
          gets.chomp
        when '3'
          system 'clear'
          print 'Date: '
          date = gets.chomp
          print 'Days: '
          days = gets.chomp
          print 'Brand: '
          brand = gets.chomp
          print 'Model: '
          model = gets.chomp
          print 'Price: '
          price = gets.chomp
          print 'Login: '
          login = gets.chomp
          print 'Email: '
          email = gets.chomp
          print 'Name: '
          name = gets.chomp
          print 'Lastname: '
          lastname = gets.chomp
          print 'Phone: '
          phone = gets.chomp

          @operations.add_renting(date, days, @operations.add_car(brand, model, price), @operations.add_account(login, email, @operations.add_person(name, lastname, phone)))
          gets.chomp
        when '4'
          system 'clear'
          rentings = @operations.show_all_renting
          i = 0
          while i < rentings.size
            puts("id #{i}: #{rentings[i]}") unless rentings.at(i).nil?
            i += 1
          end
          print 'Enter ID: '
          id = gets.chomp
          @operations.remove_renting(id.to_i)
          gets.chomp
        when '5'
          system 'clear'
          rentings = @operations.show_all_renting
          i = 0
          while i < rentings.size
            puts("id #{i}: #{rentings[i]}") unless rentings.at(i).nil?
            i += 1
          end
          print 'Enter ID: '
          id = gets.chomp
          print 'Date: '
          date = gets.chomp
          print 'Days: '
          days = gets.chomp
          @operations.edit_renting(id.to_i, date, days)
          gets.chomp
        else
          puts 'Choose number 1-5'
        end
      when '5'
        exit
      else
        puts 'Choose number 1-5'
        gets.chomp
      end
      puts
    end
    exit
  end

  def choose
    puts
    print 'Choose: '
  end

  def menu
    system 'clear'
    puts('            ______                         ______       ')
    puts('       ____//__][_\     CAR RENTAL    ____//__][_\ ')
    puts('      [o _ |  -| _ \                 [o _ |  -| _ \  ')
    puts('       `(_)-----(_)-`                 `(_)-----(_)-`   ')
    puts
    puts '1.Person     2.Account      3.Car      4.Renting     5.Exit'
  end

  def menu2
    menu
    print '   1.Show all   2.Show one   3.Add    4.Remove    5.Edit    '
  end

  def start
    @program = Operations.new
    @program.add_account('jkowalski', 'jkowalski@gmail.com', @program.add_person('Jan', 'Kowalski', '123456789'))
    @program.add_person('Marek', 'Nowak', '987654321')
    @program.add_car('Peugeot', '206', '50')
    @program.add_renting('2018-01-09', '7', @program.add_car('Nissan', 'GT-R', '200'), @program.add_account('piotrk', 'piotrk@gmail.com', @program.add_person('Piotr', 'Kowal', '981234765')))
    @program
  end
end
