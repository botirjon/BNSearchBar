// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "BNSearchBar",
    platforms: [
        .iOS(.v12), // You can adjust this based on your library requirements
    ],
    products: [
        .library(
            name: "BNSearchBar",
            targets: ["BNSearchBar"]
        ),
    ],
    targets: [
        .target(
            name: "BNSearchBar",
            path: "Sources"
        ),
    ]
)
