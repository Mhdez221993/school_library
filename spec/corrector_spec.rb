require_relative '../corrector'

describe Corrector do
  corrector = Corrector.new
  it('Shoud chec if Corrector is instance of Corrector') do
    expect(corrector).to be_instance_of(Corrector)
  end
end
