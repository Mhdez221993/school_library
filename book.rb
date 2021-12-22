class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_students(student)
    @student.push(student)
    student.classroom = self
  end
end
