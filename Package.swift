// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HereFrameworkPackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "HereFrameworkPackage",
            targets: ["HereFrameworkPackage", "heresdk","HereFramework"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "HereFrameworkPackage",
            dependencies: []),
        .binaryTarget(name: "heresdk", url: "https://www.dropbox.com/s/s0b0d58quunnvql/heresdk.xcframework.zip?dl=1", checksum: "70f9f8e2fb725ceac0414cd3d4f754ab5d6ec1e99def3d7bf0fa7152ad6fc9ef"),
        .binaryTarget(name: "HereFramework", url: "https://www.dropbox.com/s/mckr51pf3kid1wp/HereFramework.xcframework.zip?dl=1", checksum: "3c79a9a7c0ebd55ecde2300c9f23e968f028916f622c23b87d4354527173bf56")
    ]
)
