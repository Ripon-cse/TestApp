
import UIKit

class DemoAboutViewController: UIViewController{

    @IBAction func actionTwitter(_ sender: AnyObject) {
        url("https://web.facebook.com/ImaginaryPlanet")
    }
    @IBAction func actionLinkedin(_ sender: AnyObject) {
        url("www.linkedin.com/in/riponsaha")
    }
    @IBAction func actionGithub(_ sender: AnyObject) {
        url("http://codeforces.com/profile/Ripon_CSE")
    }
    
    func url(_ urlString:String){
        UIApplication.shared.openURL(URL(string: urlString)!)
    }
}
