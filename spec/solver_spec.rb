describe Solver do
  before(:each) do
    @solver = Solver.new
    
  end

 
  it('should check the sum of factorial') do
    expect(@solver.factorial(3)).to eq 18
  end
end