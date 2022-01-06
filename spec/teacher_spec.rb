require_relative '../teacher'

describe Teacher do
  before(:each) do
    @teacher = Teacher.new('teacher', 27, 'MhdezCoronado')
  end

  it('Shoud check if teacher is instance of Teacher') do
    expect(@teacher).to be_instance_of(Teacher)
  end

  it('Shoud check if name is MhdezCoronado') do
    expect(@teacher.name).to eq('MhdezCoronado')
  end
end
