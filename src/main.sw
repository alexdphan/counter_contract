contract;

storage {
    counter: u64 = 0,
}

abi Counter {
    #[storage(read, write)]
    fn increment();

    #[storage(read)]
    fn counter() -> u64;
}

impl Counter for Contract {
    #[storage(read)]
    fn counter() -> u64 {
      return storage.counter;
    }
    #[storage(read, write)]
    fn increment() {
        storage.counter = storage.counter + 1;
    }
}

//   Fetching git+https://github.com/fuellabs/sway?tag=v0.24.5#e695606d8884a18664f6231681333a784e623bc9
//   Creating a new `Forc.lock` file. (Cause: lock file did not match manifest)
//   Removing core
//   Removing std git+https://github.com/fuellabs/sway?tag=v0.26.0#e7674f704f2706e22f77c0ed32df9c89302e5e7e
//     Adding core
//     Adding std git+https://github.com/fuellabs/sway?tag=v0.24.5#e695606d8884a18664f6231681333a784e623bc9
//    Created new lock file at /Users/alexanderphan_1/Developer/counter_contract/Forc.lock
//   Compiled library "core".
//   Compiled library "std".
//   Compiled contract "counter_contract".
//   Bytecode size is 224 bytes.
// Contract id: 0x0b8bf603c5aca6879508faeed9d964c3fc7bc3af003ac3407e332488feb8d313
// Logs:
// TransactionId(HexFormatted(1968dc9ee310fd886c0f4e42c5c38ac213af08a0d772e0e589dc7a61b87532a3))
