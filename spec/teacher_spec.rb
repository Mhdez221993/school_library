require_relative '../teacher'

describe Teacher do
  teacher = Teacher.new(27, 'MhdezCoronado')

  it('Shoud check if teacher is instance of Teacher') do
    expect(teacher).to be_instance_of(Teacher)
  end
end
