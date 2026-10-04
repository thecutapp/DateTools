// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DateToolsSwift",
    platforms: [.iOS(.v12), .macOS(.v10_13)],
    products: [.library(name: "DateToolsSwift", targets: ["DateToolsSwift"])],
    targets: [
        .target(
            name: "DateToolsSwift",
            path: "DateToolsSwift/DateTools",
            resources: [.copy("DateTools.bundle")]
        ),
        .testTarget(name: "DateToolsPackageTests", dependencies: ["DateToolsSwift"], path: "PackageTests")
    ],
    swiftLanguageVersions: [.v5]
)
