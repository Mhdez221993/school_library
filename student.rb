require_relative 'person'

class Student < Person
  attr_reader :classroom
  attr_accessor :id

  def initialize(classroom, age, name = 'Unknown', parent_permission = 'true')
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def to_s
    "[Student] #{super}"
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'id' => id,
      'age' => age,
      'name' => name,
      'parent_permission' => parent_permission
    }.to_json(*args)
  end
end
