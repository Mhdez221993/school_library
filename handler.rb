require_relative 'book'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'classroom'
require_relative 'rental'

module Handlers
  def list_books
    @books.each { |book| puts book }
    puts "\n"
  end

  def list_all_peoples
    @peoples.each { |people| puts people }
    puts "\n"
  end

  def list_rental
    print 'Id of person: '
    id = gets.chomp
    puts 'Rentals:'
    @rentals.each { |rental| puts rental if rental.person.id == id.to_i }
    puts "\n"
  end

  def create_student
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp.downcase == 'y'
    classroom = Classroom.new('Microverse')
    Student.new(classroom, age, name, parent_permission)
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    Teacher.new(specialization, age, name)
  end

  def create_person
    print 'Do you want to create (1) a student or teacher (2)? [Input the number]: '
    person = gets.chomp

    case person
    when '1'
      create_student
    when '2'
      create_teacher
    end
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    print 'The book was successfully created! '
  end

  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index do |book, i|
      puts "#{i}) #{book}"
    end
    book = @books[gets.chomp.to_i]

    puts 'Select a person from the following list by number (not id)'
    @peoples.each_with_index do |person, i|
      puts "#{i}) #{person}"
    end
    person = @peoples[gets.chomp.to_i]

    print 'Date: '
    date = gets.chomp

    Rental.new(date, person, book)
  end
end
