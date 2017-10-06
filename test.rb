require './test_setup'
require './number_summary'

describe 'number_summary' do
	describe 'mean' do
		it 'three values avg equals 50/3' do
			mean([15, 10, 25]).must_equal(50/3)
		end
	end
end