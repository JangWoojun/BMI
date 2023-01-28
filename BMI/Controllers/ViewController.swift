import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var mainButton: UIButton!
    
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    private var bmiManager = BMICalculatorManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UISetUp()
    }
    
    func UISetUp() {
        heightTextField.delegate = self
        weightTextField.delegate = self
        
        heightTextField.borderStyle = .roundedRect
        weightTextField.borderStyle = .roundedRect
        
        heightTextField.keyboardType = .numberPad
        weightTextField.keyboardType = .numberPad
        
        mainButton.clipsToBounds = true
        mainButton.layer.cornerRadius = 10
    }
    
    @IBAction func mainButtonTapped(_ sender: UIButton) {
        guard let resultVC = storyboard?.instantiateViewController(withIdentifier: "ResultVC") as? ResultViewController else {
            return
        }
        
        if let height = Double(heightTextField.text!), let weight = Double(weightTextField.text!) {
            
            resultVC.bmi = bmiManager.returnBMI(weight: weight, height: height)
            
            present(resultVC, animated: true)
            
            weightTextField.text = ""
            heightTextField.text = ""
            
        }
        
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        view.backgroundColor = .systemGray4
        heightTextField.backgroundColor = .systemGray4
        weightTextField.backgroundColor = .systemGray4
        
        textField.backgroundColor = .white
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        view.backgroundColor = .white
        heightTextField.backgroundColor = .white
        weightTextField.backgroundColor = .white
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
}
