import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var mainButton: UIButton!
    
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
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
    }

    @IBAction func mainButtonTapped(_ sender: UIButton) {
        guard let resultVC = storyboard?.instantiateViewController(withIdentifier: "ResultVC") as? ResultViewController else {
            return
        }
        
        if let height = Double(heightTextField.text!), let weight = Double(weightTextField.text!) {
                
            let bmi = weight / ((height * 0.01) * (height * 0.01))
            
            resultVC.bmi = String(format: "%.1f", bmi)
            
            if bmi < 18.5 {
                resultVC.bmiText = "저체중으로 체중 증량이 필요합니다"
            } else if bmi < 23 {
                resultVC.bmiText = "정상 체중입니다"
            } else if bmi < 25 {
                resultVC.bmiText = "과체중으로 약간에 체중 감량이 필요합니다"
            } else {
                resultVC.bmiText = "비만으로 체중 감량이 필요합니다"
            }
            
            present(resultVC, animated: true)
        
        }
                
    }
    
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

