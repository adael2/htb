from web3 import Web3

# 1. Configurar la conexión a la red de pruebas Sepolia
# Reemplaza con tu propia URL de RPC (Infura, Alchemy, QuickNode, etc.)
SEPOLIA_RPC_URL = "https://ethereum-sepolia-rpc.publicnode.com" 
w3 = Web3(Web3.HTTPProvider(SEPOLIA_RPC_URL))

if not w3.is_connected():
    raise Exception("No se pudo conectar a la red Sepolia")

# 2. Calcular la dirección requerida por x7() mediante XOR en Python
x2 = 0x7ccb3a440e383635148b237df8bb22dff0b594425beae88d6e1623df0bc7669b
x3 = 0x7ccb3a440e383635148b237d13473c069ba9ffd6545c58ee37e969b87d181c01

# Operación XOR matemática y conversión a dirección Ethereum de 160 bits (20 bytes)
x7_address_int = x2 ^ x3
x7_address = w3.to_checksum_address(f"{x7_address_int:040x}")
print(f"Dirección calculada (x7): {x7_address}")

# 3. Datos del contrato en Sepolia
contract_address = "0x69Bf5b7aBA51C3Ee8bF169aB47479ba95DBF709D"

# ABI mínimo necesario para interactuar con la función x9
abi = [
    {
        "inputs": [{"internalType": "address", "name": "x10", "type": "address"}],
        "name": "x9",
        "outputs": [{"internalType": "string", "name": "", "type": "string"}],
        "stateMutability": "view",
        "type": "function"
    }
]

# Instanciar el contrato
contract = w3.eth.contract(address=contract_address, abi=abi)

# 4. Llamar a la función x9 pasando la dirección correcta
try:
    print("Llamando a la función x9 en el contrato...")
    flag_resultado = contract.functions.x9(x7_address).call()
    print("\n🎉 ¡Éxito! El mensaje/flag secreto es:")
    print(flag_resultado)
except Exception as e:
    print(f"\n❌ Error al llamar al contrato: {e}")
    print("Nota: Asegúrate de que la función x4() ya haya sido ejecutada previamente en el contrato para almacenar los datos cifrados.")
