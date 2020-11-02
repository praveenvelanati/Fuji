// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Fuji",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "Fuji", type: .dynamic, targets: ["Fuji"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "FujiCoreVisual", url: "https://github.com/praveenvelanati/FujiCoreVisual.git", .branch("main"))
    ],
    targets: [
        .target(name: "Fuji",
                dependencies: [.product(name: "FujiCoreVisual", package: "FujiCoreVisual")])
    ]
)
