import numpy as np

print(np.uint8(1))
print(np.uint8(255)) # u stands for unsigned 

print(np.uint8(1) + np.uint8(255)) # normally it would come out to be 256
print(np.uint32(1) - np.uint32(5)) # normally it would come out to be -4

# We have 4 ether
# transfer(5) -> -1 ether 
# For this reason you need to use SafeMath.sol instead of naive math functions



