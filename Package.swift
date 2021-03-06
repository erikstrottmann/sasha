// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Sasha",
    dependencies: [
        .package(url: "https://github.com/johnsundell/files.git", from: "2.0.0"),
        .package(url: "https://github.com/apple/swift-package-manager.git", from: "0.1.0")
        ],
    targets: [
        .target(
            name: "Sasha",
            dependencies: ["SashaCore"]),
        .target(
            name: "SashaCore",
            dependencies: ["Files", "Utility"])
        ]
)
