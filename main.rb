
def display_welcome
  puts 'Welcome to School Library App!'
  puts "\n"
  puts 'Please chsoose and aption by enterin a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
end


# rubocop:enable Metrics/CyclomaticComplexity

def main
  peoples = []
  books = []
  rentals = []
  loop do
    display_welcome
    run(peoples, books, rentals)
  end
end

main
