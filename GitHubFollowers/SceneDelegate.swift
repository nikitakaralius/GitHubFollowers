import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window!.windowScene = windowScene
        window!.rootViewController = createTabBar()
        window!.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }

    private func createTabBar() -> UITabBarController {
        UITabBar.appearance().tintColor = .systemGreen

        let tabBar = UITabBarController()
        tabBar.viewControllers = [createSearchNC(), createFavoritesNC()]

        return tabBar
    }

    private func createSearchNC() -> UINavigationController {
        let searchViewController = SearchVC()
        searchViewController.title = "Search"
        searchViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)

        return UINavigationController(rootViewController: searchViewController)
    }

    private func createFavoritesNC() -> UINavigationController {
        let favoritesViewController = FavoritesVC()
        favoritesViewController.title = "Favorites"
        favoritesViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)

        return UINavigationController(rootViewController: favoritesViewController)
    }
}
