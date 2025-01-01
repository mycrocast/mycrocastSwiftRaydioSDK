// swift-tools-version: 5.7.2

import PackageDescription

let package = Package(
    name: "SwiftRaydioSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "SwiftRaydioSDK",
            targets: ["SwiftRaydioSDK"]
        )
    ],
    dependencies: [
        .package(
            name: "Socket.IO-Client-Swift",
            url: "https://github.com/socketio/socket.io-client-swift",
            from: "16.0.0"
        ),
        .package(url: "https://github.com/mycrocast/mycrocastSwiftMediasoup", exact: "1.0.1")
    ],
    targets: [
        .binaryTarget(
            name: "SwiftRaydioSDK",
            path: "SwiftRaydioSDK.xcframework"
        )
    ]
)
