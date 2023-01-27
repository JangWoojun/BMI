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
    }

    @IBAction func mainButtonTapped(_ sender: UIButton) {
        
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

