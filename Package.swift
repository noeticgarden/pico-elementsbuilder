// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "ElementsBuilder",
    products: [
        .library(
            name: "ElementsBuilder",
            targets: ["ElementsBuilder"]),
    ],
    targets: [
        .target(
            name: "ElementsBuilder"),
    ]
)
