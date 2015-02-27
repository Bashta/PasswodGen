

import UIKit
import Crashlytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	
	var window: UIWindow?
	
	
	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
		//Analytics setup
		self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
	   Crashlytics.startWithAPIKey("9f18d825f4d4e77735b5bc9e3bed78959c905ec4")
		var passwordViewController:PPasswordViewController = PPasswordViewController()
		var navigationController:UINavigationController = UINavigationController(rootViewController: passwordViewController);

		self.window!.rootViewController = navigationController;
		self.window!.backgroundColor = UIColor.whiteColor()
		self.window!.makeKeyAndVisible()

		var navigationBar:UINavigationBar = UINavigationBar.appearance()
		navigationBar.barTintColor = UIColor.appTabColor()
		navigationBar.tintColor = UIColor(white: 1.0, alpha: 0.5)
		//navigationBar.titleTextAttributes  = [NSForegroundColorAttributeName:UIColor.whiteColor(),
		// NSFontAttributeName:UIFont(name: "Avenir-Heavy", size: 20.0)]

		UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent

		return true
	}

	func applicationWillResignActive(application: UIApplication) {}
	
	func applicationDidEnterBackground(application: UIApplication) {}
	
	func applicationWillEnterForeground(application: UIApplication) {}
	
	func applicationDidBecomeActive(application: UIApplication) {}
	
	func applicationWillTerminate(application: UIApplication) {}
	
	
}

extension UIFont {
	
	class func mediumFontWithSize(size: CGFloat) -> UIFont {
		return UIFont(name: "Avenir-Medium", size: size)!
	}
	
}

extension Array {
	
	func combine(separator: String) -> String {
		var string: String = ""
		for (index, item) in enumerate(self) {
			string += "\(item)"
			if index < self.count - 1 {
				string += separator
			}
		}
		return string
	}
	
}

//Extensions UIColor
extension UIColor {
	
	class func passwordTextColor() -> UIColor {
		return UIColor(red: 124.0 / 255.0, green: 137.0 / 255.0, blue: 147.0 / 255.0, alpha: 1.0)
	}
	
	class func passwordItemColor() -> UIColor {
		return UIColor(red: 250.0 / 255.0, green: 250.0 / 255.0, blue: 250.0 / 255.0, alpha: 1.0)
	}
	
	class func passwordMainColor() -> UIColor {
		//return UIColor(hue: 0.52, saturation: 0.65, brightness: 0.79, alpha: 1.00)
		return UIColor(red:25.0 / 255.0, green:118.0 / 255.0, blue:210.0 / 255.0 ,alpha:1.0)
	}
	
	class func passwordNumbersColor() -> UIColor {
		return UIColor(red:76.0 / 255.0, green:90.0 / 255.0, blue:100.0 / 255.0 ,alpha:1.0)
	}

	class func appTabColor() -> UIColor {
		return UIColor(red:25.0 / 255.0, green:118.0 / 255.0, blue:210.0 / 255.0 ,alpha:1.0)
	}

	class func appElementColor() -> UIColor {
		return UIColor(red:0.0 / 255.0, green:188.0 / 255.0, blue:212.0 / 255.0 ,alpha:1.0)
	}
}
