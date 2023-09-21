# google\_maps\_flutter\_ios

Fork of the official plugin
- [google_maps_flutter_ios](https://github.com/flutter/plugins/tree/main/packages/google_maps_flutter/google_maps_flutter_ios)

This allows you to run your Flutter app that depends
on [google_maps_flutter](https://pub.dev/packages/google_maps_flutter) using arm64 architecture on ios simulator.

It uses the latest version of Google Maps SDK downloaded from map configuration documentation (link in the section about updating below).

Current Google Maps SDK version: `8.2.0`

## Usage

**⚠️ Tested with `google_maps_flutter` version `2.5.0`**

1. Inside `ios/Runner/AppDelegate.swift` enable Metal renderer for GoogleMaps if one is available:

```swift
    GeneratedPluginRegistrant.register(with: self)
    GMSServices.provideAPIKey(mapsApiKey)

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

## Updating maps version this package provides

1. Go to https://developers.google.com/maps/documentation/ios-sdk/config#install-the-xcframework and download the SDK source files.
2. Find `GoogleMaps`, `GoogleMapsBase` and `GoogleMapsCore` xcframeworks and copy them over to `Frameworks` directory
