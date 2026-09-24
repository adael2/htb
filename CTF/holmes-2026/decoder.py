from pathlib import Path

cipher = bytes.fromhex(
    "560c325bdd0aeea2cd2690a2ed1c1b4a28deca7ac2a40ce8d2725d539a950ca8"
    "f4a4bcf375806c36532258a0cf16c19c12989e0aa0e25a72be241da7d2f74cfa"
    "2c4c4e1bbfc6204207fe5c801d201f5af84864f0"
)
key = bytes.fromhex(
    "3460743bb1ce2e6209e65e8ee3023f8414bc8416aef842b69c2a318bcef952f4"
)
MAGIC, ROT = 0x42, 7
out = bytearray(len(cipher))
for i, b in enumerate(cipher):
    s1 = b ^ key[i % len(key)]
    s2 = ((s1 << ROT) | (s1 >> (8 - ROT))) & 0xFF
    out[i] = s2 ^ MAGIC
print(out.decode("utf-8"))