// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CloseChannel",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "CloseChannel",
            targets: ["CloseChannelBinaryTarget", "CloseChannelBinaryWrapperTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/TakeScoop/SwiftyRSA", from: "1.8.0"),
    ],
    
    targets: [
        .binaryTarget(
            name: "CloseChannelBinaryTarget",
            url: "https://github.com/close-dev-team/mobile-close-channel-sdk-binary-ios/archive/refs/tags/1.7.3.zip",
            checksum: "42f00a055d9ae83ebef7ef931a46a9df8d257550732c6b1d2eed2b5d6f1bf7af"
        ),
        .target(
            name: "CloseChannelBinaryWrapperTarget",
            dependencies: [
                .product(name: "SwiftyRSA", package: "SwiftyRSA"),
            ],
            path: "./Sources/CloseChannelBinaryWrapper/"
        )
    ]
)
