# 📦 Week 2 Assignment Solution

## ✨ Features

### 🔢 Core Data Types
- **Favorite Number** (`uint256`): Stores a user’s favorite number privately.
- **Favorite Numbers Array** (`uint256[]`): Holds multiple favorite numbers dynamically.
- **Person Struct** 👤: Stores a person’s name and favorite number.
- **People Array** 👥: Manages a list of `Person` structs.

### 🔄 State Management
- **Contract State** 🎛️: An `enum` with `Active` and `Inactive` states to control the contract’s operational state.
- **State Functions**:
  - `activateContract` ✅: Sets the state to active.
  - `deactivateContract` ❌: Sets the state to inactive.
  - `isActive` 🔍: Checks if the contract is active.

### 🔧 Key Functions
- **storeNumber**: Saves a number as the favorite.
- **getFavoriteNumber**: Returns the stored favorite number.
- **isGreaterThan**: Checks if the favorite number is larger than a given value.
- **sumToFavoriteNumber** ➕: Loops to sum numbers from `1` to `favoriteNumber`.

### 🔐 Visibility Specifiers
- **Internal & External Functions**:
  - `internalFunction` 🔒: Internal-only message.
  - `externalFunction` 🌐: External-only message, called by `testExternalFunction`.

### 🔗 Dynamic Arrays & Structs
- **addFavoriteNumber** ➕: Adds a number to `favoriteNumbers`.
- **addPerson** 👤: Adds a person with name and favorite number to the `people` list.

## 🛠️ Setup Instructions

1. **Compile**: Open `SimpleStorage.sol` in Remix and compile.
2. **Deploy**: Deploy locally or on a testnet.
3. **Test**: Use Remix’s UI to interact with and test all functions.
