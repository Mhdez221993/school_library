#!/usr/bin/env ruby
require_relative 'book'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'classroom'

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

def create_student
  puts 'Age:'
  age = gets.chomp
  puts 'Name:'
  name = gets.chomp
  puts 'Has parent permission? [Y/N]:'
  parent_permission = gets.chomp.downcase == 'y'
  Student.new(age, name, parent_permission)
end

def create_teacher
  puts 'Age:'
  age = gets.chomp
  puts 'Name:'
  name = gets.chomp
  puts 'Specialization '
  specialization = gets.chomp
  Teacher.new(specialization, age, name)
end

def create_person
  puts 'Do you want to create (1) a student or teacher (2) : '
  person = gets.chomp
  case person
  when '1'
    create_student
  when '2'
    create_teacher
  end
end

def create_book
  puts 'Title:'
  title = gets.chomp
  puts 'Author'
  author = gets.chomp
  puts 'The book was successfully created!'
  Book.new(title, author)
end

def create_rental(books, peoples)
  date = Time.new.strftime('%Y-%m-%d %H:%M:%S')
  person = get_person(peoples)
  book = get_book(books)
  Rental.new(date, person, book)
end

def list_rental(rentals)
  rentals.each { |rental| puts rental.date, rental.book, rental.person }
end

def main
  peoples = []
  books = []
  rentals = []
  loop do
    display_welcome
    case gets.chomp
    when '1'
      books.each { |book| puts book.title }
    when '2'
      peoples.each { |people| puts people.name }
    when '3'
      peoples.push(create_person)
    when '4'
      books.push(create_book)
    when '5'
      rentals.push(create_rental(books, peoples))
    when '6'
      list_rental(rentals)
    when '7'
      !exit
    end
  end
end

main
