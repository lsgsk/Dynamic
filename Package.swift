// swift-tools-version: 5.8
import PackageDescription

var plugins = [Target.PluginUsage.plugin(name: "SwiftLint")]

let package = Package(
    name: "Dynamic",
    products: [
        .executable(name: "Part1.1", targets: ["Part1.1"]),
        .executable(name: "Part1.2", targets: ["Part1.2"]),
        .executable(name: "Part1.3", targets: ["Part1.3"]),
        .executable(name: "Part1.4", targets: ["Part1.4"]),
        .executable(name: "Exc1.1", targets: ["Exc1.1"]),
        .executable(name: "Exc1.2", targets: ["Exc1.2"]),
        .executable(name: "Exc1.4", targets: ["Exc1.4"]), //# не решена
        .executable(name: "Exc1.5", targets: ["Exc1.5"])
    ],
    targets: [
        .plugin(name: "SwiftLint", capability: .buildTool(), dependencies: ["SwiftLintBinary"]),
        .binaryTarget(name: "SwiftLintBinary", path: "Plugins/SwiftLintBinary.artifactbundle"),
        .target(name: "Matrix", plugins: plugins),
        .executableTarget(name: "Part1.1", plugins: plugins),
        .executableTarget(name: "Part1.2", plugins: plugins),
        .executableTarget(name: "Part1.3", dependencies: ["Matrix"], plugins: plugins),
        .testTarget(name: "Tests1.3", dependencies: ["Part1.3", "Matrix"]),
        .executableTarget(name: "Part1.4", dependencies: ["Matrix"], plugins: plugins),
        .testTarget(name: "Tests1.4", dependencies: ["Part1.4", "Matrix"]),
        .executableTarget(name: "Exc1.1", dependencies: ["Matrix"], plugins: plugins),
        .testTarget(name: "TestsExc1.1", dependencies: ["Exc1.1", "Matrix"]),
        .executableTarget(name: "Exc1.2", dependencies: ["Matrix"], plugins: plugins),
        .testTarget(name: "TestsExc1.2", dependencies: ["Exc1.2", "Matrix"]),
        .executableTarget(name: "Exc1.4", plugins: plugins),
        .executableTarget(name: "Exc1.5", plugins: plugins),
        .testTarget(name: "TestsExc1.5", dependencies: ["Exc1.5"]),
    ]
)
