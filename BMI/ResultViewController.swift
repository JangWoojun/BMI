import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiTextLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var bmi: Double?
    var bmiText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UISetUp()
    }
    
    func UISetUp() {
        bmiLabel.text = String(format: "%.1f", bmi!)
        bmiTextLabel.text = bmiText
        
        bmiLabel.layer.cornerRadius = 8
        bmiLabel.clipsToBounds = true
        
        if bmi! < 18.5 {
            bmiLabel.backgroundColor = .cyan
        } else if bmi! < 23 {
            bmiLabel.backgroundColor = .systemGreen
        } else if bmi! < 25 {
            bmiLabel.backgroundColor = .systemOrange
        } else {
            bmiLabel.backgroundColor = .systemRed
        }
        
        backButton.clipsToBounds = true
        backButton.layer.cornerRadius = 10
        
    }

    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
