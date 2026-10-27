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
      url: "https://moloco-ios-build.s3.amazonaws.com/moloco-sdk/MolocoSDK-4.11.1.zip",
      checksum: "784b8c7654e7133310f5134cf92c038e3a8ddd546947f31d351fd23fe2312987"
    ),
    .binaryTarget(
      name: "MolocoCustomAdapter",
      url: "https://moloco-ios-build.s3.amazonaws.com/moloco-sdk/MolocoCustomAdapter-4.11.1.0.zip",
      checksum: "2fe4a4f0fabaf7d11c84782ef1e684236abe417285c0c5e808ed708081567b94"
    ),
    // A binary target cannot declare dependencies, so this target links the
    // custom adapter together with the MolocoSDK binary it is built against.
    .target(
      name: "MolocoCustomAdapterWrapper",
      dependencies: ["MolocoSDK", "MolocoCustomAdapter"]
    )
  ]
)
