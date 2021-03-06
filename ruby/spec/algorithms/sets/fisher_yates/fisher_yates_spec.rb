    
xdescribe fisherYates do
  it 'should shuffle small arrays' do
    expect(fisherYates([])).to eq []
    expect(fisherYates([1])).to eq [1]
  end

    
  it 'should shuffle array randomly' do
    shuffledArray = fisherYates(sortedArr)
    sorter = QuickSort.new()
    
    expect(shuffledArray.length).to eq sortedArr.length
    expect(shuffledArray).not.toEqual(sortedArr);

    expect(sorter.sort(shuffledArray)).to eq sortedArr
  end

end
