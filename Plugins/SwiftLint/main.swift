import PackagePlugin

@main
struct SwiftLintPlugin: BuildToolPlugin {
    func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
        return [
            .buildCommand(
                displayName: "Running SwiftLint for \(target.name)",
                executable: try context.tool(named: "swiftlint").path,
                arguments: [
                    "lint",
                    "--cache-path",
                    "\(context.pluginWorkDirectory.string)/cache",
                    target.directory.string,
                    "--quiet"
                ],
                environment: [:]
            )
        ]
    }
}
