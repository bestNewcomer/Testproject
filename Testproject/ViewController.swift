
import UIKit

extension DateFormatter {
    static let logDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        return dateFormatter
    }()
}
   
class ViewController: UIViewController {
    let logDate = DateFormatter.logDateFormatter.string(from: Date())
    
    @IBOutlet private weak var logTextView: UITextView!
    
    @IBOutlet private weak var counterLabel: UILabel!
    private var counter: Int = 0
    
    @IBAction private func pressPlusButton(_ sender: Any) {
        counter += 1
        counterLabel.text = "Значение счетчика: \(counter)"
        logTextView.text += "\n\(logDate): значение изменено на +1"
    }
    
    @IBAction private func pressMinusButton(_ sender: Any) {
        counter -= 1
        if counter < 0 {
            counter = 0
            counterLabel.text = "Значение счетчика: \(counter)"
            logTextView.text += "\n\(logDate): попытка уменьшить значение счётчика ниже 0"
        }else{
            counterLabel.text = "Значение счетчика: \(counter)"
            logTextView.text += "\n\(logDate): значение изменено на -1"
        }
    }
    
    @IBAction private func pressClearButton(_ sender: Any) {
        counter = 0
        counterLabel.text = "Значение счетчика: \(counter)"
        logTextView.text += "\n\(logDate): значение сброшено"
    }
}
kjdbvosdvhodvhnsldvnsldvnlsdknvlskdnv
kdsjvbskdjbfksbvskdvb

