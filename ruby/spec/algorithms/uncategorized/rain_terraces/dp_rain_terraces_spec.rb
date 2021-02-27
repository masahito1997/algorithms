    
describe dpRainTerraces do
  it 'should find the amount of water collected after raining' do
    expect(dpRainTerraces([1])).to be 0
    expect(dpRainTerraces([1, 0])).to be 0
    expect(dpRainTerraces([0, 1])).to be 0
    expect(dpRainTerraces([0, 1, 0])).to be 0
    expect(dpRainTerraces([0, 1, 0, 0])).to be 0
    expect(dpRainTerraces([0, 1, 0, 0, 1, 0])).to be 2
    expect(dpRainTerraces([0, 2, 0, 0, 1, 0])).to be 2
    expect(dpRainTerraces([2, 0, 2])).to be 2
    expect(dpRainTerraces([2, 0, 5])).to be 2
    expect(dpRainTerraces([3, 0, 0, 2, 0, 4])).to be 10
    expect(dpRainTerraces([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1])).to be 6
    expect(dpRainTerraces([1, 1, 1, 1, 1])).to be 0
    expect(dpRainTerraces([1, 2, 3, 4, 5])).to be 0
    expect(dpRainTerraces([4, 1, 3, 1, 2, 1, 2, 1])).to be 4
    expect(dpRainTerraces([0, 2, 4, 3, 4, 2, 4, 0, 8, 7, 0])).to be 7
  end

end
