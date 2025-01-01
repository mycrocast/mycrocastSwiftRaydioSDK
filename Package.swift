// swift-tools-version:5.4
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
    ],
    targets: [
        .binaryTarget(
            name: "SwiftRaydioSDKBinary",
            path: "./SwiftRaydioSDK.xcframework"
        ),
        .binaryTarget(
            name: "Mediasoup",
            path: "./deps/Mediasoup.xcframework"
        ),
        .binaryTarget(
            name: "WebRTC",
            path: "./deps/WebRTC.xcframework"
        ),
        .target(
                name: "SwiftRaydioSDK",
                dependencies: [
                    "SwiftRaydioSDKBinary",
                    "Mediasoup",
                    "WebRTC",
                    .product(name: "SocketIO", package: "Socket.IO-Client-Swift")
                ],
                path: "./Sources/SwiftRaydioSDKWrapper" // This directory can be empty
            )
    ]
)
