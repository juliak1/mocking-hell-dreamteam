require_relative 'person'
require_relative 'account'
require_relative 'car'
require_relative 'renting'
require_relative 'operations'


class Program
  def initialize
    @operations = start
    loop do
      case gets.chomp
      when '1'
        case gets.chomp
        when '1'
          system 'clear'
          gets.chomp
        when '2'
          system 'clear'
          gets.chomp
        when '3'
          system 'clear'
          gets.chomp
        when '4'
          system 'clear'
          gets.chomp
        when '5'
          system 'clear'
          gets.chomp
        else
          puts ('Choose number 1-5')
        end
      when '2'
        case gets.chomp
        when '1'
          system 'clear'
          gets.chomp
        when '2'
          system 'clear'
          gets.chomp
        when '3'
          system 'clear'
          gets.chomp
        when '4'
          system 'clear'
          gets.chomp
        when '5'
          system 'clear'
          gets.chomp
        else
          puts ('Choose number 1-5')
        end
      when '3'
        case gets.chomp
        when '1'
          system 'clear'
          gets.chomp
        when '2'
          system 'clear'
          gets.chomp
        when '3'
          system 'clear'
          gets.chomp
        when '4'
          system 'clear'
          gets.chomp
        when '5'
          system 'clear'
          gets.chomp
        else
          puts ('Choose number 1-5')
        end
      when '4'
        case gets.chomp
        when '1'
          system 'clear'
          gets.chomp
        when '2'
          system 'clear'
          gets.chomp
        when '3'
          system 'clear'
          gets.chomp
        when '4'
          system 'clear'
          gets.chomp
        when '5'
          system 'clear'
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
