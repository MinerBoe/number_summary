require './test_setup'
require './number_summary'

describe 'number_summary' do
	describe 'mean' do
		it 'three values avg equals 50/3' do
			mean([15, 10, 25]).must_equal(50/3)
		end
	end

	describe 'median' do
		it 'one value is the median' do
			median([15, 10, 25]).must_equal(15)
		end
		it 'testing one median with more values' do
			median([12, 13, 14, 15, 16]).must_equal(14)
		end
		it 'average of middle two values' do
			median([10, 14, 16, 20]).must_equal(15)
		end
		it 'two values are the same' do
			median([10, 15, 15, 20]).must_equal(15)
		end
	end

	describe 'standard_deviation' do
		it 'deviation should equal about 1.87' do
			standard_deviation([6, 2, 3, 1]).must_equal(1.87)
		end
	end

	describe 'mode' do
		it 'one value is the most often' do
			mode([1, 2, 3, 4, 4]).must_equal(4)
		end
		it 'multiple values are the most often' do
			mode([1, 2, 2, 5, 5]).must_equal([2, 5])
		end
	end
end