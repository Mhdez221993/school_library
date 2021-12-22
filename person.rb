require_relative 'corrector'
require_relative 'book'
require_relative 'rental'
require_relative 'student'
require_relative 'teacher'

class Person
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..10.000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rentals = []
  end

  def can_use_services?
    of_age or @parent_permission
  end

  def validate_name
    @name = @corrector.correct_name(@name)
  end

  def add_rental(date, book)
    Rental.new(date, self, book)
  end

  private

  def of_age?
    @age >= 18
  end
end
