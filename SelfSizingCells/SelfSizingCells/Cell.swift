import UIKit

class Cell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    var labelText : String? {
        set (newText) {
            label.text = newText
        }
        get {
            return label.text
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
