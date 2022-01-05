require_relative '../student'

describe Student do
  student = Student.new(27, 'MhdezCoronado')

  it('Shoud check if student is instance of Student') do
    expect(student).to be_instance_of(Student)
  end
end
