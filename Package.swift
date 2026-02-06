// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "SharedDependencies",
  platforms: [
    .iOS(.v12),
  ],
  products: [
    // Expose binary targets as products so they can be imported
    .library(name: "CryptoSwift", targets: ["CryptoSwift"]),
    .library(name: "SwiftyRSA", targets: ["SwiftyRSA"]),
  ],
  dependencies: [],
  targets: [
    // Define binary targets once - shared by all consumers
    .binaryTarget(
      name: "CryptoSwift",
      url: "https://github.com/bangnguyengrab/CryptoSwift/releases/download/1.7.1+LibEvolution/CryptoSwift.xcframework.zip",
      checksum: "bdc15a5034890ffeddc26de1d5bb09241f31e5d35bbcd6ba5fb034f8863a7ebc"
    ),
    .binaryTarget(
      name: "SwiftyRSA",
      url: "https://github.com/bangnguyengrab/SwiftyRSA/releases/download/1.8.0+libEvolution/SwiftyRSA.xcframework.zip",
      checksum: "c04e79ea111143d03f2def2a5b81764007aba7bc92e079cc90249c3bffe6bf90"
    ),
  ]
)
