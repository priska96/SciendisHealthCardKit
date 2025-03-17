// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "SciendisHealthCardKit",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "SciendisHealthCardKit",
            targets: ["SciendisHealthCardKit"]),  
    ],
    dependencies: [
        .package(url: "https://github.com/sciendis/ref-OpenHealthCardKit.git", branch:"dev"),
    ],
    targets: [
        .target(
            name: "SciendisHealthCardKit",
            dependencies: [
                .product(name: "NFCCardReaderProvider", package: "ref-OpenHealthCardKit"),
                .product(name: "HealthCardControl", package: "ref-OpenHealthCardKit"),
                .product(name: "HealthCardAccess", package: "ref-OpenHealthCardKit"),
                .product(name: "CardReaderProviderApi", package: "ref-OpenHealthCardKit"),
                .product(name: "Helper", package: "ref-OpenHealthCardKit")
            ]
        )
    ]
)
