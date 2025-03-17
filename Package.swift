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
        .package(url: "https://github.com/gematik/ref-OpenHealthCardKit", from: "5.11.0"),
        .package(url: "https://github.com/gematik/ASN1Kit.git", from: "1.2.0"),
        .package(url: "https://github.com/gematik/OpenSSL-Swift", from: "4.2.0"),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.3.0"),
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
