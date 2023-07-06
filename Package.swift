// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "Dynamic",
    products: [
        .executable(name: "Part1.1", targets: ["Part1.1"]),
        .executable(name: "Part1.2", targets: ["Part1.2"]),
        .executable(name: "Part1.3", targets: ["Part1.3"]),
        .executable(name: "Part1.4", targets: ["Part1.4"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Matrix"),
        .executableTarget(name: "Part1.1"),
        .executableTarget(name: "Part1.2"),
        .executableTarget(name: "Part1.3", dependencies: ["Matrix"]),
        .testTarget(name: "Tests1.3", dependencies: ["Part1.3", "Matrix"]),
        .executableTarget(name: "Part1.4", dependencies: ["Matrix"]),
        .testTarget(name: "Tests1.4", dependencies: ["Part1.4", "Matrix"]),
    ]
)
