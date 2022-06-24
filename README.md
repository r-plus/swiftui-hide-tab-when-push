### SwiftUI hide tab when push

`TabView` and `NavigationView` of SwiftUI components have not ability to hide/show tab bar when push to next view like `hidesBottomBarWhenPushed` property in UIKit.

This example bring back that ability to SwiftUI app, but I'm not recommended use this code because usual navigation by `NavigationLink` will probably broken when `NavigationView` and `NavigationLink` get out of dependence on UIKit in the future OS version.

https://user-images.githubusercontent.com/425216/175552759-ad5f01af-2d84-42ed-b2b7-b1cd98053989.mov

----

### Nice references
- https://github.com/TreatTrick/Hide-TabBar-In-SwiftUI
