// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ColorSlider",
    platforms: [
        .iOS(.v17),
        .macCatalyst(.v17),
        .macOS(.v15),
    ],
    products: [
        .library( name: "ColorSlider", targets: ["ColorSlider"] )
    ],
    targets: [
        .target( name: "ColorSlider" )
    ]
)
