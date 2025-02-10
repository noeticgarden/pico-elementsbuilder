## Noetic Garden: Picos

<img src="Docs/Picos.png" width="72" height="72" alt="" />

[Noetic Garden is a dream by millenomi.](https://noetic.garden)

Noetic Garden Picos are tiny packages of small, oft-repeated functionality that I carry project to project. Feel free to use them in yours. Picos are tested on Apple OSes, Linux, and Windows.

# ElementsBuilder

The ElementsBuilder package includes `ElementsBuilder`, a protocol to quickly build result builders that collect multiple values into an array.

To quickly make a new result builder type, just create one that conforms to this protocol and sets the `Element` typealias appropriately. For example:

```swift
@resultBuilder
struct IntsBuilder: ElementsBuilder {
    typealias Element = Int
}
```

You can then use the result builder like this:

```
@IntsBuilder var ints: [Int] {
    4
    8
    for int in [15, 16] {
        int
    }
    if jokeGoesTheFullDistance {
        23
        42
    }
}
```

Customize the builder by adding your own `buildExpression` and `buildFinalResult` methods to your type. For example:

```swift
@resultBuilder
struct IntsBuilder: ElementsBuilder {
    typealias Element = Int
    
    static func buildFinalResult(_ component: [Self.Element]) -> MyIntPackType {
        return .init(numbers: component)
    }
}

// …

@IntsBuilder var ints: MyIntPackType { … }
```

### Using this Package:

Add this repository as a Swift Package Manager dependency:

```swift
.package(url: "https://github.com/noeticgarden/pico-elementsbuilder.git", from: "1.0.0"),
```

Then, use the `ElementsBuilder` module:

```
dependencies: [
    .product("ElementsBuilder", package: "pico-elementsbuilder"),
]
```

### Issues and Support

Use this repository's Issues tab to report issues. Pull requests are welcome with owner review. All support and PR acceptance is best-effort and not guaranteed. Please be kind.
