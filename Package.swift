// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SuperVision",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "SuperVision",targets: ["SuperVision"]),
    ],
    dependencies: [
        .package(name: "Mixpanel", url: "https://github.com/mixpanel/mixpanel-swift.git", from: "2.0.0"),
        .package(name: "Sentry", url: "https://github.com/getsentry/sentry-cocoa", from: "6.2.1"),
    ],
    targets: [
        .target(name: "SuperVision", dependencies: ["Mixpanel", "Sentry"]),
        .testTarget(name: "SuperVisionTests", dependencies: ["SuperVision"]),
    ]
)
