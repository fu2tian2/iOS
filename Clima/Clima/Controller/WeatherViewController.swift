import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {
    
    var weatherManager = WeatherManager()

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextField.delegate=self //textfield communicate with the viewcontroller.
    }

    @IBAction func searchPressed(_ sender: UIButton) {
        searchTextField.endEditing(true) //dismiss the keyboard
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(searchTextField.text!)
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if (textField.text != ""){
            return true
        }
        else{
            textField.placeholder = "Type something"
            return false
        }
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let city = searchTextField.text {
            weatherManager.fetchWeather(cityName:city)
        }
        searchTextField.text=""
    }
}

