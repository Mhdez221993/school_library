require 'json'
require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'classroom'
require_relative 'rental'

module HandlersFile
  def load_peoples
    file = 'peoples.json'
    if File.exist? file
      JSON.parse(File.read(file)).map do |people|
        if people['instance'] == 'teacher'
          teacher = Teacher.new(people['specialization'], people['age'], people['name'])
          teacher.id = people['id']
          teacher
        else
          parent_permission = people['permission'] && true
          student = Student.new('Microverse', people['age'], people['name'], parent_permission)
          student.id = people['id']
          student
        end
      end
    else
      []
    end
  end

  def load_books
    file = 'books.json'
    if File.exist? file
      JSON.parse(File.read(file)).map do |book|
        Book.new(book['title'], book['author'])
      end
    else
      []
    end
  end
end
