// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "Sciendishealthcardkit",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "SciendisHealthCardKit",
            targets: ["SciendisHealthCardKit"]),  
    ],
    dependencies: [
        .package(url: "https://github.com/sciendis/ref-OpenHealthCardKit", from: "1.0.0"),
        .package(url: "https://github.com/gematik/OpenSSL-Swift", from: "4.2.0"),
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
