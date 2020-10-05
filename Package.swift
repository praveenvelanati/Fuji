// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Fuji",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "Fuji", targets: ["Fuji"]),
        .library(name: "SportsThemeFoundation", targets: ["SportsThemeFoundation"]),
        .library(name: "SportsTheme", targets: ["SportsTheme"]),
        .library(name: "ArtsThemeFoundation", targets: ["ArtsThemeFoundation"]),
        .library(name: "ArtsTheme", targets: ["ArtsTheme"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "FujiCoreVisual"),
        .target(name: "Fuji",
            dependencies: ["FujiCoreVisual"]),
        .target(name: "SportsThemeFoundation",
                dependencies: ["FujiCoreVisual"]),
        .target(name: "SportsTheme",
                dependencies: ["Fuji", "FujiCoreVisual", "SportsThemeFoundation"]),
        .target(name: "ArtsThemeFoundation",
                dependencies: ["Fuji", "FujiCoreVisual"]),
        .target(name: "ArtsTheme",
                dependencies: ["Fuji", "FujiCoreVisual", "ArtsThemeFoundation"]),
        .testTarget(
            name: "FujiTests",
            dependencies: ["Fuji"]),
    ]
)
