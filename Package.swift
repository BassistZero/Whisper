// swift-tools-version: 5.4

import PackageDescription

let name = "Whisper"
let path = "Sources"
let defaultLocalization = "en"

let package = Package(
    name: name,
    defaultLocalization: LanguageTag(rawValue: defaultLocalization),
    products: [
        .library(
            name: name,
            targets: [name]
        ),
    ],
    targets: [
        .target(
            name: name,
            path: path
        )
    ]
)
