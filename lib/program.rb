require_relative 'person'
require_relative 'account'
require_relative 'car'
require_relative 'renting'
require_relative 'operations'


class Program
  def initialize
    @operations = start
    loop do
      #menu
      #choose
      case gets.chomp
      when '1'
        #menu2
        #choose
        case gets.chomp
        when '1'
          system 'clear'
          people = @operations.show_all_person
          i=0
          while i < people.size
            unless people.at(i).nil?
              puts("id #{i}: #{people[i]}")
            end
            i += 1
          end
          gets.chomp
        when '2'
          system 'clear'
          print ('Enter ID: ')
          id = gets.chomp
          person = @operations.show_person(id.to_i)
          gets.chomp
        when '3'
          system 'clear'
          print ('Name: ')
          name = gets.chomp
          print ('Lastname: ')
          lastname = gets.chomp
          print ('Phone: ')
          phone = gets.chomp
          @operations.add_person(name,lastname,phone)
          gets.chomp
        when '4'
          system 'clear'
          print ('Enter ID: ')
          id = gets.chomp
          person = @operations.remove_person(id.to_i)
          gets.chomp
        when '5'
          system 'clear'
          people = @operations.show_all_person
          i=0
          while i < people.size
            unless people.at(i).nil?
              puts("id #{i}: #{people[i]}")
            end
            i += 1
          end
          print ('Enter ID: ')
          id = gets.chomp
          print ('Name: ')
          name = gets.chomp
          print ('Lastname: ')
          lastname = gets.chomp
          print ('Phone: ')
          phone = gets.chomp
          person = @operations.edit_person(id.to_i, name, lastname, phone)
          gets.chomp
        else
          puts ('Choose number 1-5')
        end
      when '2'
        #menu2
        #choose
        case gets.chomp
        when '1'
          system 'clear'
          accounts = @operations.show_all_account
          i=0
          while i < accounts.size
            unless accounts.at(i).nil?
              puts("id #{i}: #{accounts[i]}")
            end
            i += 1
          end
          gets.chomp
        when '2'
          system 'clear'
          print ('Enter ID: ')
          id = gets.chomp
          account = @operations.show_account(id.to_i)
          gets.chomp
        when '3'
          system 'clear'
          print ('Login: ')
          login = gets.chomp
          print ('Email: ')
          email = gets.chomp
          print ('Name: ')
          name = gets.chomp
          print ('Lastname: ')
          lastname = gets.chomp
          print ('Phone: ')
          phone = gets.chomp
          @operations.add_account(login, email, @operations.add_person(name,lastname,phone))
          gets.chomp
        when '4'
          system 'clear'
          print ('Enter ID: ')
          id = gets.chomp
          person = @operations.remove_account(id.to_i)
          gets.chomp
        when '5'
          system 'clear'
	#edit_account
          gets.chomp
        else
          puts ('Choose number 1-5')
        end
      when '3'
	#menu2
        #choose
        case gets.chomp
        when '1'
          system 'clear'
	#show_all_car
          gets.chomp
        when '2'
          system 'clear'
	#show_car
          gets.chomp
        when '3'
          system 'clear'
	#add_car
          gets.chomp
        when '4'
          system 'clear'
	#remove_car
          gets.chomp
        when '5'
          system 'clear'
	#edit_car
          gets.chomp
        else
          puts ('Choose number 1-5')
        end
      when '4'
	#menu2
        #choose
        case gets.chomp
        when '1'
          system 'clear'
	#show_all_renting
          gets.chomp
        when '2'
          system 'clear'
	#show_renting
          gets.chomp
        when '3'
          system 'clear'
	#add_renting
          gets.chomp
        when '4'
          system 'clear'
	#remove_renting
          gets.chomp
        when '5'
          system 'clear'
	#edit_renting
          gets.chomp
        else
          puts ('Choose number 1-5')
        end
      when '5'
        exit
      else
        puts ('Choose number 1-5')
        gets.chomp
      end
      puts
    end
    exit
  end


  def start
    @program = Operations.new
    @program

  end
end
