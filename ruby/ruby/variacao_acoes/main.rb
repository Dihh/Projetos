require_relative './menu'

def main
  menu = Menu.new
  option = ''
  puts menu.print_options
  while option != '0'
    puts "\nDigite uma opção:"
    option = gets.strip
    system 'clear'
    puts menu.print_options
    puts "\n\n"
    menu.execute_option option if option != '0'
  end
  # rescue StandardError => e
  # puts e.message
end

main
