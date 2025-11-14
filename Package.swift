// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "IoTSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "IoTSDK",
            targets: ["IoTSDK"]
        ),
    ],
    targets: [
        .target(
            name: "IoTSDK",
            path: "Sources/IoTSDK"
        )
    ]
)
