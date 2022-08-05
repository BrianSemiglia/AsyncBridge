# AsyncBridge
Execute callback-based and sync functions without rewriting their definitions.

```swift
// Callback Conversion

// Before:
foo.bar("baz", completion: { (result: Int) in })

// After:
async let result: Int = await foo.bar >>> ("baz")
```

```swift
// Sync Conversion

// Before:
let result: Int = foo.bar("baz")

// After:
async let result: Int = await foo.bar >>> ("baz")
```
