// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "speex-binary-xcframework",
	platforms: [
		.macOS(.v10_15),
		.iOS(.v14),
	],
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "speex",
			targets: [
				"speex",
			]),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.binaryTarget(
			name: "speex",
			url: "https://github.com/sbooth/speex-binary-xcframework/releases/download/0.1.0/speex.xcframework.zip",
			checksum: "f165507705f1ec4a8bc57bcfb5d3fd690820fe75a214819587ee7a9d750b9f15"),
	]
)
