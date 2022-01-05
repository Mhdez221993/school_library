require_relative '../classroom'

describe Classroom do
  classroom = Classroom.new('Microverse 2.0')
  it('Shoud chec if Classroom is instance of Classroom') do
    expect(classroom).to be_instance_of(Classroom)
  end
end
