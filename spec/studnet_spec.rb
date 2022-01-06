require_relative '../student'

describe Student do
  before(:each) do
    @student = Student.new(27, 'MhdezCoronado')
  end

  it('Shoud check if student is instance of Student') do
    expect(@student).to be_instance_of(Student)
  end
end
