describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  describe '#factorial' do
    it('should check the sum of factorial') do
      expect(@solver.factorial(3)).to eq 6
    end
  end

  describe '#fizzbuzz' do
    it 'Should verify if the number is multiple of 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq 'fizzbuzz'
    end

    it 'Should verify if the number is multiple of 3' do
      expect(@solver.fizzbuzz(6)).to eq 'fizz'
    end

    it 'Should verify if the number is multiple of 5' do
      expect(@solver.fizzbuzz(10)).to eq 'buzz'
    end
  end
end
