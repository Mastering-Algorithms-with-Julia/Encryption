const DesTransform = [
  57,49,41,33,25,17,9,1,58,50,42,34,26,18,
  10,2,59,51,43,35,27,19,11,3,60,52,44,36,
  63,55,47,39,31,23,15,7,62,54,46,38,30,22,
  14,6,61,53,45,37,29,21,13,5,28,20,12,4
]

const DesRotations = [
  1,1,2,2,2,2,2,2,1,2,2,2,2,2,2,1
]

const DesPermuted = [
  14,17,11,24,1,5,3,28,15,6,21,10,
  23,19,12,4,26,8,16,7,27,20,13,2,
  41,52,31,37,47,55,30,40,51,45,33,48,
  44,49,39,56,34,53,46,42,50,36,29,32    
]

const DesInitial = [
  58,50,42,34,26,18,10,2,60,52,44,36,28,20,12,4,
  62,54,46,38,30,22,14,6,64,56,48,40,32,24,16,8,
  57,49,41,33,25,17,9,1,59,51,43,35,27,19,11,3,
  61,53,45,37,29,21,13,5,63,55,47,39,31,23,15,7
]

const DesExpansion = [
  32,1,2,3,4,5,4,5,6,7,8,9,
  8,9,10,11,12,13,12,13,14,15,16,17,
  16,17,18,19,20,21,22,23,24,25,
  24,25,26,27,28,29,28,29,30,31,32,1
]

const DesSbox = [
  [
    [14,4,13,1,2,15,11,8,3,10,6,12,5,9,0,7],
    [0,15,7,4,14,2,13,1,10,6,12,11,9,5,3,8],
    [4,1,14,8,13,6,2,11,15,12,9,7,3,10,5,0],
    [15,12,8,2,4,9,1,7,5,11,3,14,10,0,6,13],
  ],
  [
    [15,1,8,14,6,11,3,4,9,7,2,13,12,0,5,10],
    [3,13,4,7,15,2,8,14,12,0,1,10,6,9,11,5],
    [0,14,7,11,10,4,13,1,5,8,12,6,9,3,2,15],
    [13,8,10,1,3,15,4,2,11,6,7,12,0,5,14,9],
  ],
  [
    [10,0,9,14,6,3,15,5,1,13,12,7,11,4,2,8],
    [13,7,0,9,3,4,6,10,2,8,5,14,12,11,15,1],
    [13,6,4,9,8,15,3,0,11,1,2,12,5,10,14,7],
    [1,10,13,0,6,9,8,7,4,15,14,3,11,5,2,12],
  ],
  [
    [7,13,14,3,0,6,9,10,1,2,8,5,11,12,4,15],
    [13,8,11,5,6,15,0,3,4,7,2,12,1,10,14,9],
    [10,6,9,0,12,11,7,13,15,1,3,14,5,2,8,4],
    [3,15,0,6,10,1,13,8,9,4,5,11,12,7,2,14],
  ],
  [
    [2,12,4,1,7,10,11,6,8,5,3,15,13,0,14,9],
    [14,11,2,12,4,7,13,1,5,0,15,10,3,9,8,6],
    [4,2,1,11,10,13,7,8,15,9,12,5,6,3,0,14],
    [11,8,12,7,1,14,2,13,6,15,0,9,10,4,5,3],
  ],
  [
    [12,1,10,15,9,2,6,8,0,13,3,4,14,7,5,11],
    [10,15,4,2,7,12,9,5,6,1,13,14,0,11,3,8],
    [9,14,15,5,2,8,12,3,7,0,4,10,1,13,11,6],
    [4,3,2,12,9,5,15,10,11,14,1,7,6,0,8,13],
  ],
  [
    [4,11,2,14,15,0,8,13,3,12,9,7,5,10,6,1],
    [13,0,11,7,4,9,1,10,14,3,5,12,2,15,8,6],
    [1,4,11,13,12,3,7,14,10,15,6,8,0,5,9,2],
    [6,11,13,8,1,4,10,7,9,5,0,15,14,2,3,12],
  ],
  [
    [13,2,8,4,6,15,11,1,10,9,3,14,5,0,12,7],
    [1,15,13,8,10,3,7,4,12,5,6,11,0,14,9,2],
    [7,11,4,1,9,12,14,2,0,6,10,13,15,3,5,8],
    [2,1,14,7,4,10,8,13,15,12,9,0,3,5,6,11],
  ]
]

const DesPbox = [
  16, 7, 20, 21, 29, 12, 28, 17, 1, 15, 23, 26, 5, 18, 31, 10,
  2, 8, 24, 14, 32, 27, 3, 9, 19, 13, 39, 6, 22, 11, 4, 25
]

const DesFinal = [
  40, 8, 48, 16, 56, 24, 64, 32, 39, 7, 47, 15, 55, 23, 63, 31,
  38, 6, 46, 14, 54, 22, 62, 30, 37, 5, 45, 13, 53, 21, 61, 29,
  36, 4, 44, 12, 52, 20, 60, 28, 35, 3, 43, 11, 51, 19, 59, 27,
  34, 2, 42, 10, 50, 18, 58, 26, 33, 1, 41, 9, 49, 17, 57, 25
]

@enum DesEorDirection begin
  encipher
  decipher
end

function permute(bits::Vector{UInt8}, mapping::Vector{Int}, n::Int)
  temparray = Vector{UInt8}(undef, 8)

  for index in 1:ceil(Int, n / 8)
    temparray[index] = 0
  end

  for index in 1:n
    bitset!(temparray, index, bitget(bits, mapping[index] - 1))
  end

  for index in 1:ceil(Int, n / 8)
    bits[index] = temparray[index]
  end
end

function desmain(source::Vector{UInt8}, key::Vector{UInt8}, target::Vector{UInt8}, direction::DesEorDirection)
  subkeys = repeat([zeros(UInt8, 7)], 16)
  temparray = Vector{UInt8}(undef, 8)
  lkey = Vector{UInt8}(undef, 4)
  rkey = Vector{UInt8}(undef, 4)
  lblk = Vector{UInt8}(undef, 6)
  rblk = Vector{UInt8}(undef, 6)
  fblk = Vector{UInt8}(undef, 6)
  xblk = Vector{UInt8}(undef, 6)
  sblk = 'a'
  row, col = 0, 0
  for index in 1:8
    temparray[index] = key[index]
  end

  permute(temparray, DesTransform, 56)

  for index in 1:4
    lkey[index] = 0
    rkey[index] = 0
  end

  for index in 1:28
    bitset!(lkey, index, bitget(temparray, index))
    bitset!(rkey, index, bitget(temparray, index + 28))
  end

  for index in 1:16
    bitrotateleft!(lkey, 28, DesRotations[index])
    bitrotateleft!(rkey, 28, DesRotations[index])

    for j = 1:28
      bitset!(subkeys[index], j, bitget(lkey, j))
      # bitset!(subkeys[index], j + 28, bitget(rkey, j))
      bitset!(subkeys[index], j + 28, bitget(rkey, j))
    end

    permute(subkeys[index], DesPermuted, 48)
  end

  for index in 1:8
    temparray[index] = source[index]
  end

  permute(temparray, DesInitial, 64)

  for index in 1:4
    lblk[index] = temparray[index]
  end

  for index in 1:4
    rblk[index] = temparray[index + 4]
  end

  for index in 1:16
    for index in 1:4
      fblk[index] = rblk[index]
    end

    permute(fblk, DesExpansion, 48)

    if direction == encipher
      xblk = bitxor(fblk, subkeys[index], 48)

      for index in 1:6
        fblk[index] = xblk[index]
      end
    else
      xblk = bitxor(fblk, subkeys[16 - i], 48)
      for index in 1:6
        fblk[index] = xblk[index]
      end
    end

    p = 0
    for j in 1:8
      # STUB
      row = bitget(fblk, (6j + 0 + 6) * 2) + bitget(fblk, (6j + 5 + 6)) * 1
      col = bitget(fblk, (6j + 1 + 6) * 8) + bitget(fblk, (6j + 2 + 6)) * 4 +
        bitget(fblk, (6j + 3 + 6) * 2 + bitget(fblk, (6j + 4 + 6)) * 1)

      sblk = DesSbox[j][row][col]

      for k in 5:8
        bitset!(fblk, p, bitget(Vector{UInt8}(sblk), k))
        p += 1
      end
    end

    permute(fblk, DesPbox, 32)
    xblk = bitxor(lblk, fblk, 32)

    for _index in 1:4
      lblk[_index] = rblk[_index]
    end

    for _index in 1:4
      rblk[_index] = xblk[_index]
    end
  end



  for index in 1:4
    target[index] = rblk[index]
  end

  for index in 1:4
    target[index + 4] = lblk[index]
  end

  permute(target, DesFinal, 64)
end

function desencipher(plaintext::Vector{UInt8}, key::Vector{UInt8})
  target = Vector{UInt8}(undef, 64)
  desmain(plaintext, key, target, encipher)

  return target
end

function desdecipher(ciphertext::Vector{UInt8}, key::Vector{UInt8})
  target = Vector{UInt8}(undef, 64)
  desmain(ciphertext, key, target, decipher)

  return target
end
