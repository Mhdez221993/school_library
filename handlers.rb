require_relative 'book'
require_relative 'person'
require_relative 'rental'
require_relative 'student'
require_relative 'teacher'
require_relative 'classroom'

module Handlers
  def list_books
    @book.each { |book| puts book }
  end

  def list_people
    @person.each { |person| puts person }
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

  def create_student
    puts 'Age:'
    age = gets.chomp
    puts 'Name:'
    name = gets.chomp
    puts 'Has parent permission? [Y/N]:'
    parent_permission = gets.chomp.downcase == 'y'
    classroom = Classroom.new('Microverse')
    student = Student.new(age, classroom, name, parent_permission)
    @people.push(student)
  end

  def create_teacher
    puts 'Age:'
    age = gets.chomp
    puts 'Name:'
    name = gets.chomp
    puts 'Specialization '
    specialization = gets.chomp
    teacher = Teacher.new(specialization, age, name)
    @people.push(teacher)
  end

  def create_book
    puts 'Title:'
    title = gets.chomp
    puts 'Author'
    author = gets.chomp
    book = book.new(title, author)
    @books.puts(book)
    puts 'The book was successfully created!'
  end

  def create_rental
    puts 'Date:'
    date = gets.chomp
    puts 'Person:'
    person = gets.chomp
    puts 'Books:'
    book = gets.chomp
    rental = Rental.new(date, person, book)
    @rentals.push(rental)
  end

  def list_rental_by_id
    puts 'User'
    id = gets.chomp
    @rentals.each { |rentals| puts rentals if rentals.person.ide == id.to_i }
  end
end
