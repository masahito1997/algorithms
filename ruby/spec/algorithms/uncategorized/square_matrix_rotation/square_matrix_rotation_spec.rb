    
describe squareMatrixRotation do
  it 'should rotate matrix #0 in-place' do
    matrix = [[1]]
    
    rotatedMatrix = [[1]]
    
    expect(squareMatrixRotation(matrix)).to eq rotatedMatrix
  end

    
  it 'should rotate matrix #1 in-place' do
    const matrix = [

    [1, 2],

    [3, 4],

    ];

    
    const rotatedMatrix = [

    [3, 1],

    [4, 2],

    ];

    
    expect(squareMatrixRotation(matrix)).to eq rotatedMatrix
  end

    
  it 'should rotate matrix #2 in-place' do
    const matrix = [

    [1, 2, 3],

    [4, 5, 6],

    [7, 8, 9],

    ];

    
    const rotatedMatrix = [

    [7, 4, 1],

    [8, 5, 2],

    [9, 6, 3],

    ];

    
    expect(squareMatrixRotation(matrix)).to eq rotatedMatrix
  end

    
  it 'should rotate matrix #3 in-place' do
    const matrix = [

    [5, 1, 9, 11],

    [2, 4, 8, 10],

    [13, 3, 6, 7],

    [15, 14, 12, 16],

    ];

    
    const rotatedMatrix = [

    [15, 13, 2, 5],

    [14, 3, 4, 1],

    [12, 6, 8, 9],

    [16, 7, 10, 11],

    ];

    
    expect(squareMatrixRotation(matrix)).to eq rotatedMatrix
  end

end
