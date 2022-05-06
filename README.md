# react-native-ar-viewer

AR viewer for react native that uses Sceneform on Android and ARKit on iOS

## Installation

```sh
npm install react-native-ar-viewer
```

### Android
Required AR features:

Add <meta-data android:name="com.google.ar.core" android:value="required" tools:replace="android:value" />
in your AndroidManifest.xml

If you already have <meta-data android:name="com.google.ar.core" android:value="required" /> don't forget to add the tools:replace="android:value" attribute and check that your <manifest> tag contains xmlns:tools="http://schemas.android.com/tools" attribute


## Usage

```js
import { ArViewerView } from "react-native-ar-viewer";
import { Platform } from 'react-native';
// ...

<ArViewerView 
    style={{flex: 1}}
    model={Platform.OS === 'android' ? 'https://github.com/KhronosGroup/glTF-Sample-Models/blob/master/2.0/Box/glTF-Binary/Box.glb?raw=true' : 'https://github.com/raphpap/assets/blob/master/egg.usdz?raw=true'}
    lightEstimation
    allowRotate
    allowScale
    allowTranslate
    disableInstantPlacement
    planeOrientation="both" />
```

### Customize instructions

#### Android
Add/Merge and customize the following lines in your android/src/main/res/values/strings.xml
```
<resources>
    <string name="sceneview_searching_planes">Searching for surfaces...</string>
    <string name="sceneview_tap_on_surface">Tap on a surface to place an object.</string>
    <string name="sceneview_insufficient_features_message">Can\'t find anything.\n\nAim device at a surface with more texture or color.</string>
    <string name="sceneview_excessive_motion_message">Moving too fast.\n\nSlow down</string>
    <string name="sceneview_insufficient_light_message">Too dark.\n\nTry moving to a well-lit area.</string>
    <string name="sceneview_insufficient_light_android_s_message">Too dark. Try moving to a well-lit area.\n\nAlso, make sure the Block Camera is set to off in system settings.</string>
    <string name="sceneview_bad_state_message">Tracking lost due to bad internal state.\n\nPlease try restarting the AR experience.</string>
    <string name="sceneview_camera_unavailable_message">Another app is using the camera.\n\nTap on this app or try closing the other one.</string>
    <string name="sceneview_unknown_tracking_failure">Unknown tracking failure reason: %1$s</string>
    <string name="sceneview_camera_permission_required">Camera permission required</string>
</resources>
```


## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT
