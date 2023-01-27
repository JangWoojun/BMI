import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiTextLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    var bmi: String?
    var bmiText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UISetUp()
    }
    
    func UISetUp() {
        bmiLabel.text = bmi
        bmiTextLabel.text = bmiText
    }

    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
