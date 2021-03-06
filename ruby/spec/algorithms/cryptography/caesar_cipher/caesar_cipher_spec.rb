    
xdescribe caesarCipher do
  it 'should not change a string with zero shift' do
    expect(caesarCipherEncrypt('abcd', 0)).to eq 'abcd'
    expect(caesarCipherDecrypt('abcd', 0)).to eq 'abcd'
  end

    
  it 'should cipher a string with different shifts' do
    expect(caesarCipherEncrypt('abcde', 3)).to eq 'defgh'
    expect(caesarCipherDecrypt('defgh', 3)).to eq 'abcde'
    
    expect(caesarCipherEncrypt('abcde', 1)).to eq 'bcdef'
    expect(caesarCipherDecrypt('bcdef', 1)).to eq 'abcde'
    
    expect(caesarCipherEncrypt('xyz', 1)).to eq 'yza'
    expect(caesarCipherDecrypt('yza', 1)).to eq 'xyz'
  end

    
  it 'should be case insensitive' do
    expect(caesarCipherEncrypt('ABCDE', 3)).to eq 'defgh'
  end

    
  it 'should correctly handle an empty strings' do
    expect(caesarCipherEncrypt('', 3)).to eq ''
  end

    
  it 'should not cipher unknown chars' do
    expect(caesarCipherEncrypt('ab2cde', 3)).to eq 'de2fgh'
    expect(caesarCipherDecrypt('de2fgh', 3)).to eq 'ab2cde'
  end

    
  it 'should encrypt and decrypt full phrases' do
    expect(caesarCipherEncrypt('THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG', 23))

    .toBe('qeb nrfzh yoltk clu grjmp lsbo qeb ixwv ald');

    
    expect(caesarCipherDecrypt('qeb nrfzh yoltk clu grjmp lsbo qeb ixwv ald', 23))

    .toBe('the quick brown fox jumps over the lazy dog');

  end

end
