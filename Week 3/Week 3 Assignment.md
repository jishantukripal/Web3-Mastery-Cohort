# 📦 Week 3 Assignment

## 🚀 Features

- **Mappings** 🗺️: 
  We use a mapping `nameToFavoriteNumber` to connect people’s names with their favorite numbers, making retrieval fast and efficient. Every time a person is added via `addPerson`, this mapping is updated, enhancing data accessibility.

- **Events** 📣: 
  The contract emits a `NumberUpdated` event whenever `favoriteNumber` changes. This allows easy tracking of updates, making integration with off-chain applications smoother.

- **Data Locations** 🗄️:
  - **Storage**: `favoriteNumber` is persistently stored on the blockchain, retaining its value across interactions.
  - **Memory**: `temporaryCalculation` demonstrates temporary data storage with a memory variable.
  - **Calldata**: `processCalldataString` leverages `calldata` for efficient, read-only access to external inputs, reducing gas costs.

## 🛠️ Challenges & Solutions

- **Data Location Selection**: Choosing between `storage`, `memory`, and `calldata` was challenging initially. Through testing, we ensured each variable type was optimally placed for gas efficiency and functionality.
  
- The `favoriteNumber` variable in the code already acts as a persistent storage variable since it’s defined as a `uint256` type at the contract level. This makes it a storage variable by default, stored permanently on the blockchain and retaining its value between function calls.
  
- **Event Integration**: Determining when to emit `NumberUpdated` was crucial for clean logging. We achieved this by carefully setting it to trigger only when `favoriteNumber` is updated, enhancing clarity and reliability.
