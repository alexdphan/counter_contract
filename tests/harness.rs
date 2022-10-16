#[tokio::test]
async fn can_get_contract_instance() {
    // Increment the counter
    let _result = instance.increment().call().await.unwrap();

    // Get the current value of the counter
    let result = instance.counter().call().await.unwrap();
    assert!(result.value > 0);
}

// Sway unit testing is not yet implemented. Track progress at the following link:

// https://github.com/FuelLabs/sway/issues/1832

// NOTE: Previously this command was used to support Rust integration testing,
// however the provided behaviour served no benefit over running `cargo test`
// directly. The proposal to change the behaviour to support unit testing can be
// found at the following link:
