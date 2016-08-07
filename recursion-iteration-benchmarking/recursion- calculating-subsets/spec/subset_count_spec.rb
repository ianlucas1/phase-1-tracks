require_relative '../subset_count'

describe 'calculating the number of subsets' do
  it 'zero subsets if zero options to choose from' do
    expect(subset_count(0, 5)).to be_zero
  end

  it 'one subset of size zero' do
    expect(subset_count(5, 0)).to eq 1
  end

  it 'number of size-one subsets is equal to the number of options' do
    expect(subset_count(18, 1)).to eq 18
  end

  it '20 subsets of 3 from group of 20 objects' do
    expect(subset_count(6, 3)).to eq 20
  end

  it '10626 subsets of 4 from group of 24 objects' do
    expect(subset_count(24, 4)).to eq 10626
  end

  # this is a test of iteratively running the recursive subset algorithm
  let (:n) { 3 }
  it '2^n unique combinations of a group of n objects when n = 3' do
    expect(total_subset_count(n)).to eq 2 ** n
  end

  # this is a test of iteratively running the recursive subset algorithm
  let (:n) { 5 }
  it '2^n unique combinations of a group of n objects when n = 5' do
    expect(total_subset_count(n)).to eq 2 ** n
  end

end
