    
describe sieveOfEratosthenes do
  it 'should find all primes less than or equal to n' do
    expect(sieveOfEratosthenes(5)).to eq [2, 3, 5]
    expect(sieveOfEratosthenes(10)).to eq [2, 3, 5, 7]
    expect(sieveOfEratosthenes(100)).toEqual([

    2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41,

    43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97,

    ]);

  end

end
