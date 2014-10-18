import UIKit

class MoreController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func dismissBtnTapped(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
