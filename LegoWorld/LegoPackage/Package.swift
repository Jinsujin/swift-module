// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LegoPackage",
    platforms: [.iOS(.v15)],
    products: [
//        .library(
//            name: "LegoPackage",
//            targets: ["DesignSystem"]),
        .library(
            name: "LocalStorage",
            type: .dynamic,
            targets: ["LocalStorage"]),
        .library(
            name: "StorageManager",
            type: .dynamic,
            targets: ["StorageManager"]),
        .library(
            name: "DesignSystem",
            targets: ["DesignSystem"]),
    ],
    dependencies: [
        .package(url: "https://github.com/realm/realm-swift.git", .upToNextMajor(from: "10.35.0")),
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture.git", .upToNextMajor(from: "0.50.0")),
    ],
    targets: [
        .target(name: "DesignSystem"),
        .target(name: "LocalStorage"),
        .target(name: "StorageManager", dependencies: ["LocalStorage"]),
    ]
)
