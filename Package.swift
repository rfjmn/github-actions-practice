// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "github-actions-practice",
    dependencies: [
        .package(url:"https://github.com/apple/swift-algorithms", from: "1.2.0"),
        .package(url:"https://github.com/apple/swift-collections", from: "1.1.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "github-actions-practice",
            dependencies: [
                .product(name: "Algorithms", package: "swift-algorithms"),
                .product(name: "Collections", package: "swift-collections")
            ]
        ),
        .testTarget(
            name: "github-actions-practiceTests",
            dependencies: ["github-actions-practice"]
        )
    ]
)
