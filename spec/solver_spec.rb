# we are creating this file first because in TDD we start with the test first

# and it will show up in the commit history ...

require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe 'valid solver operations' do
    it 'factorial takes N as integer and returns the factorial' do
      expect(@solver.factorial(4)).to eq(24)
    end

    it 'factorial should raise exception when value is negative' do
      expect { @solver.factorial(-1) }.to raise_error(RuntimeError, 'Argument given is negative!')
    end

    it 'factorial should return 0 when input is 1' do
      expect(@solver.factorial(1)).to eq(0)
    end

    it 'reverse should return there reversed strint of input' do
      expect(@solver.reverse('hello')).to eq('olleh')
    end

    it 'fizzbuzz should return fizz when N divisible by 3' do
      expect(@solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'fizzbuzz should return buzz when N divisible by 5' do
      expect(@solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'fizzbuzz should return fizzbuzz when N divisible by 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'fizzbuzz should return N as string for any other case' do
      expect(@solver.fizzbuzz(7)).to eq(7)
    end
  end
end
