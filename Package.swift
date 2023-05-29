// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Silica",
    products: [
        .library(name: "Silica", targets: ["Silica"])
    ],
    dependencies: [
        .package(url: "https://github.com/AgentFeeble/Cairo.git", .branch("pango")),
        .package(url: "https://github.com/AgentFeeble/PangoSwift", .branch("main")),
    ],
    targets: [
        .target(name: "Silica", dependencies: [
            "Cairo",
            .productItem(name: "Pango", package: "PangoSwift")
        ]),
        .testTarget(name: "SilicaTests", dependencies: ["Silica"])
    ]
)
