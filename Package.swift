// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DJiRData",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DJiRData",
            targets: ["DJiRData"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/drjackyl/DJEncoding.git", .exact(Version(0, 1, 3))),
        .package(url: "https://github.com/drjackyl/DJiRDataTestResources.git", .exact(Version(0, 1, 5))),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DJiRData",
            dependencies: ["DJEncoding"]),
        .testTarget(
            name: "DJiRDataTests",
            dependencies: ["DJiRData", "DJEncoding", "DJiRDataTestResources"]),
    ]
)
