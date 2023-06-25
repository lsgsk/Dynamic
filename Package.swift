// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Dynamic",
    products: [
        .executable(name: "1.1", targets: ["1.1"]),
        .executable(name: "1.2", targets: ["1.2"]),
        .executable(name: "1.3", targets: ["1.3"]),
    ],
    targets: [
        .executableTarget(name: "1.1"),
        .executableTarget(name: "1.2"),
        .executableTarget(name: "1.3"),
    ]
)
