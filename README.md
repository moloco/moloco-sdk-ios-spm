# Moloco SDK for iOS

Swift Package Manager distribution for the Moloco Mobile SDK.

For full documentation, guides, and API reference, visit: **https://moloco.github.io/ios-sdk-docs/**

---

## Requirements

- iOS 12.0+
- Xcode 13+
- Swift 5.6+

## Installation

### Swift Package Manager (Xcode)

1. In Xcode, go to **File > Add Package Dependencies...**
2. Enter the repository URL:
   ```
   https://github.com/moloco/moloco-sdk-ios-spm
   ```
3. Select the version rule (e.g. **Up to Next Major**) and click **Add Package**.
4. Select the **MolocoSDK** library and add it to your target.

### Swift Package Manager (Package.swift)

Add the dependency to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/moloco/moloco-sdk-ios-spm", .upToNextMajor(from: "4.5.0"))
]
```

> Check the [release notes](https://moloco.github.io/documentation/molocosdk/releasenotes) for the latest version.

## Usage

Import the SDK in your Swift files:

```swift
import MolocoSDK
```

For initialization, configuration, and API usage, refer to the [full documentation](https://moloco.github.io/ios-sdk-docs/).

## Versioning

This repository follows semantic versioning. Each tag corresponds to a MolocoSDK release. See [releases](https://github.com/moloco/moloco-sdk-ios-spm/releases) for the changelog.

## Support

For integration help and support, visit the [documentation](https://moloco.github.io/ios-sdk-docs/) or contact your Moloco account representative.
