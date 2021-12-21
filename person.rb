require_relative 'student'
require_relative 'teacher'
require_relative 'corrector'

class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..10.000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
  end

  def can_use_services?
    is_of_age or @parent_permission
  end

  def validate_name
    @corrector.correct_name(@name)
  end

  private

  def of_age?
    @age >= 18
  end
end
