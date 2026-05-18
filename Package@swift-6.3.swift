// swift-tools-version: 6.3

import PackageDescription

let package = Package(
    name: "ElementsBuilder",
    platforms: [
        .macOS(.v14),
    ],
    products: [
        .library(
            name: "ElementsBuilder",
            targets: ["ElementsBuilder"]
        ),
    ],
    traits: [
        .default(enabledTraits: []),
        .trait(name: "Embedded"),
    ],
    targets: [
        .target(
            name: "ElementsBuilder",
            swiftSettings: [
                .enableExperimentalFeature("Embedded", .when(traits: ["Embedded"])),
            ],
        ),
    ]
)
