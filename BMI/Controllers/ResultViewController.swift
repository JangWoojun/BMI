import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiTextLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var bmi: Double?
    var bmiText: String?
    var bmiColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UISetUp()
    }
    
    func UISetUp() {
        bmiLabel.text = String(format: "%.1f", bmi!)
        bmiTextLabel.text = bmiText
        
        bmiLabel.layer.cornerRadius = 8
        bmiLabel.clipsToBounds = true
        
        backButton.clipsToBounds = true
        backButton.layer.cornerRadius = 10
        
        bmiLabel.backgroundColor = bmiColor
        
        
    }

    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
