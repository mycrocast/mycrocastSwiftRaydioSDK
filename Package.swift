// swift-tools-version: 5.7.2

import PackageDescription

// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "SwiftRaydioSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "SwiftRaydioSDKWrapper",
            targets: ["SwiftRaydioSDKWrapper"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/socketio/socket.io-client-swift",
            from: "16.0.0"
        ),
        .package(
            url: "https://github.com/mycrocast/mycrocastSwiftMediasoup",
            exact: "1.0.1"
        ),
        .package(url: "https://github.com/mycrocast/mycrocastSwiftWebRTC.git", exact: "1.0.1")
    ],
    targets: [
        .binaryTarget(
            name: "SwiftRaydioSDK",
            path: "SwiftRaydioSDK.xcframework"
        ),
        .target(
            name: "SwiftRaydioSDKWrapper",
            dependencies: [
                "SwiftRaydioSDK",
                .product(name: "SocketIO", package: "socket.io-client-swift"),
                .product(name: "Mediasoup", package: "mycrocastSwiftMediasoup"),
                .product(name: "WebRTC", package: "mycrocastSwiftWebRTC")
            ],
            path: "Sources/SwiftRaydioSDKWrapper"
        )
    ]
)
