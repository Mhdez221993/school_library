#!/usr/bin/env ruby
# require_relative 'books'
# require_relative 'person'
# require_relative 'student'
# require_relative 'teacher'
require_relative 'handlers'

class App
  include Handlers

  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def run
    display_welcome
    input = user_input(1, 7)
    user_request(input)
  end

  def user_input(range1, range2)
    input = gets.chomp
    input = Integer(input) if Integer(input)
    unless (range1..range2).include?(input)
      puts 'Please choose a valid option'
      user_input
    end
    input
  end

  def user_request(request)
    case request
    when 1
      list_books
    when 2
      list_people
    when 3
      create_person
    when 4
      create_book
    when 5
      create_rental
    when 6
      list_rental_by_id
    else
      !exit
    end
  end

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
end

def main
  app = App.new
  app.run
end

main
