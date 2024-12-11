// swift-tools-version: 5.4

import PackageDescription

let name = "Whisper"
let testName = "WhisperTests"

let package = Package(
    name: name,
    products: [
        .library(
            name: name,
            targets: [name]
        ),
    ],
    targets: [
        .target(
            name: name
        ),
        .testTarget(
            name: testName,
            dependencies: [Target.Dependency(stringLiteral: name)]
        ),
    ]
)
