### SwiftUI hide tab when push

`TabView` and `NavigationView` of SwiftUI components have not ability to hide/show tab bar when push to next view like `hidesBottomBarWhenPushed` property in UIKit.

This example bring back that ability to SwiftUI app, but I'm not recommended use this code because usual navigation by `NavigationLink` will probably broken when `NavigationView` and `NavigationLink` get out of dependence on UIKit in the future OS version.
