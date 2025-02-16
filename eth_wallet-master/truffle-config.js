//require('babel-register');
//require('babel-polyfill');

module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*" // Match any network id
    },
  },
  contracts_directory: './src/contracts/',
  contracts_build_directory: './src/abis/',
  compilers: {
    solc: {
      version: "0.8.20", // Specify the version you want to use
      // You can also set other options here
      settings: {
        optimizer: {
          enabled: true,
          runs: 200
        }
      }
    }
  }
}
