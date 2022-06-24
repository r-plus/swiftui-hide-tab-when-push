import UIKit
import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        TabController {
            [
                AnyView(
                    NavigationLink {
                        Button {
                            let v = UIHostingController(rootView: Text("3: tab invisible"))
                            v.hidesBottomBarWhenPushed = true
                            navigationControllers[0].pushViewController(v, animated: true)
                        } label: {
                            Text("2: tab visible")
                        }
                    } label: {
                        Text("1: tab visible")
                    }
                ),
                AnyView(Text("some tab"))
            ]
        }
        .ignoresSafeArea()
    }
}

// MARK: - UITabBarController Wrapper

var navigationControllers: [UINavigationController] = []

struct TabController: UIViewControllerRepresentable {
    typealias UIViewControllerType = UITabBarController

    var content: [AnyView]

    init(content: () -> [AnyView]) {
        self.content = content()
    }

    func makeUIViewController(context: Context) -> UITabBarController {
        let tab = UITabBarController.init()
        let vcs = content.map { v -> UIViewController in
            let h = UIHostingController(rootView: v)
            let n = UINavigationController(rootViewController: h)
            navigationControllers.append(n)
            n.tabBarItem = UITabBarItem(title: "A", image: UIImage(systemName: "book.circle"), selectedImage: nil)
            return n
        }
        tab.viewControllers = vcs
        return tab
    }

    func updateUIViewController(_ uiViewController: UITabBarController, context: Context) {}
}

// MARK: - Preview

let ContentView_Previews = ContentView()
let vc = UIHostingController(rootView: ContentView_Previews)
PlaygroundPage.current.liveView = vc
