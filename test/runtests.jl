using Encryption, Test

@testset "test encryption" begin
  # key is 64 bit
  # message is 64 bit

  # key = Vector{UInt8}(1:64)
  # message = Vector{UInt8}(rand(1:100, 64))

  # @show desencipher(key, message)

  # key = Vector{UInt8}(1:8)
  # message = Vector{UInt8}(rand(1:100, 1))
  # @show desencipher(key, message)

  key = "hello world"
  message = "fuck you"
  encipher = desencipher(key, message)
  @show encipher
  @show desdecipher(key, encipher)
  
end