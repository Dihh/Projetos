def read_file(file)
    File.write(file, '', mode: 'w') if File.file?('log.txt')
    File.read(file)
end

def write_file(values, file, dolar_values)
    dolar_values += "{\"date\": \"#{values[0]}\", \"price\": \"#{values[1]}\"}"
    dolar_file = File.write(file, dolar_values, mode: 'a')
end

def get_user_inputs()
    puts 'Digite a data:'
    date = gets.strip
    puts 'Digite o valor:'
    dolar_price = gets.strip
    [date, dolar_price]
end

file = 'dolar.json'
dolar_values = read_file(file)
values = get_user_inputs
write_file(values, file, dolar_values)
