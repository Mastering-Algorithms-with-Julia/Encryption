using Encryption, Test

@testset "test encryption" begin
  # key is 64 bit
  # message is 64 bit

  key = Vector{UInt8}(1:64)
  message = Vector{UInt8}(rand(1:100, 64))

  @show desencipher(key, message)

  key = Vector{UInt8}(1:8)
  message = Vector{UInt8}(rand(1:100, 7))
  @show desencipher(key, message)
end