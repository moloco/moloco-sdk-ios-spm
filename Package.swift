// swift-tools-version: 5.6
import PackageDescription

let package = Package(
  name: "MolocoSDK",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "MolocoSDK", targets: ["MolocoSDK"]),
    .library(name: "MolocoCustomAdapter", targets: ["MolocoCustomAdapterWrapper"])
  ],
  targets: [
    .binaryTarget(
      name: "MolocoSDK",
      url: "https://moloco-ios-build.s3.amazonaws.com/moloco-sdk/MolocoSDK-4.13.0.zip",
      checksum: "0dfd0ac2db592413f08ad22d2ad538c244617c9dc17995cd80f4a4fad54f0a2f"
    ),
    .binaryTarget(
      name: "MolocoCustomAdapter",
      url: "https://moloco-ios-build.s3.amazonaws.com/moloco-sdk/MolocoCustomAdapter-4.13.0.0.zip",
      checksum: "4c1b3ae18eb403df1491b01c7068df700b5ae8080213be15cc3a45f226a9fd1f"
    ),
    // A binary target cannot declare dependencies, so this target links the
    // custom adapter together with the MolocoSDK binary it is built against.
    .target(
      name: "MolocoCustomAdapterWrapper",
      dependencies: ["MolocoSDK", "MolocoCustomAdapter"]
    )
  ]
)
