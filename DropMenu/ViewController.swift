//
//  ViewController.swift
//  DropMenu
//
//  Created by Ahmed Ragab on 26/04/2022.
//

import UIKit
import DropDown
class ViewController: UIViewController {
    let dropDownValues = [ "low to height","height to low"]
    @IBOutlet weak var vwDropDown: UIButton!
    let dropDown = DropDown()
    
   
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dropDown.cellNib = UINib(nibName: "MyCell", bundle: nil)

           dropDown.customCellConfiguration = { (index: Index, item: String, cell: DropDownCell) -> Void in
              guard let cell = cell as? MyCell else { return }

              // Setup your custom UI components
              cell.logoImageView.image = UIImage(systemName: "bookmark")
        
        // Do any additional setup after loading the view.
    }
    }
    @IBAction func Filter(_ sender: Any) {
        dropDown.anchorView = vwDropDown
        dropDown.dataSource = dropDownValues
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.topOffset = CGPoint(x: 0, y:-(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.direction = .bottom
        // Action triggered on selection
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            print("Selected item: \(item) at index: \(index)")
            if index == 0{
                print("ahmed")
            }
            else{
                print("mohamed")
            }
            //  self.status = item
        }
        self.dropDown.show()
        
    }
}

