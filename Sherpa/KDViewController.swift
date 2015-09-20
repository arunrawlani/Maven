import UIKit

class KDViewController: UIViewController {
    
    
    @IBOutlet weak var circularProgressView: KDCircularProgress!
    var currentCount = 0.0
    let maxCount = 5.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        circularProgressView.angle = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func newAngle() -> Int {
        return Int(360 * (currentCount / maxCount))
    }
    

}
