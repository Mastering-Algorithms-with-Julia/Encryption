struct RSAPubKey
  e::Int
  n::Int
end

struct RSAPriKey
  d::Int
  n::Int
end

function modexp(a::Int, b::Int, n::Int)
  y = 1
  while b != 0
    if b & 1 != 0
      y = (y * a) % n
    end
    a = (a * a) % n
    b = b >> 1
  end

  return y
end

function rsaencipher(plaintext::Int, pubkey::RSAPubKey)
  ciphertext = modexp(plaintext, pubkey.e, pubkey.n)
  return ciphertext
end

function rsadecipher(ciphertext::Int, prikey::RSAPriKey)
  plaintext = modexp(ciphertext, prikey.d, prikey.n)
  return plaintext
end