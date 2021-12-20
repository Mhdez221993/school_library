require_relative 'student'
require_relative 'teacher'

class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..10.000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    is_of_age or @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
