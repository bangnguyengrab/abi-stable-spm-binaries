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
      checksum: "de34c8de5e5d7957a925984bb8562678712354920ffc39cf4db017b76c28df4f"
    ),
    .binaryTarget(
      name: "SwiftyRSA",
      url: "https://github.com/bangnguyengrab/SwiftyRSA/releases/download/1.8.0+libEvolution/SwiftyRSA.xcframework.zip",
      checksum: "3e3cef720b7cbcf576d8d4c73a45eb156dd7f7922b19fa8c90e33743c02ffb61"
    ),
  ]
)
