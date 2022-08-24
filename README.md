# google\_maps\_flutter\_ios

Fork of the official plugin
- [google_maps_flutter_ios](https://github.com/flutter/plugins/tree/main/packages/google_maps_flutter/google_maps_flutter_ios)

It uses a beta version of `GoogleMaps` pod (you will find the exact version number in the `Cartfile` inside `ios`
directory).

This allows you to run your Flutter app that depends
on [google_maps_flutter](https://pub.dev/packages/google_maps_flutter) using arm64 architecture on ios simulator.

## Usage

**⚠️ Tested with `google_maps_flutter` version `2.1.12`**

1. Inside `ios/Runner/AppDelegate.swift` enable Metal renderer for GoogleMaps if one is available:

```swift
    let device = MTLCreateSystemDefaultDevice();
    if (device != nil) {
        GMSServices.setMetalRendererEnabled(true);
    }
```

2. Override `google_maps_flutter_ios`

```yaml
dependency_overrides:
  google_maps_flutter_ios:
    git:
      url: https://github.com/XperiTech/google_maps_flutter_ios
      ref: <insert hash of last commit>
```