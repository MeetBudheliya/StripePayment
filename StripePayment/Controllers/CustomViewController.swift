//
//  CustomViewController.swift
//  StripePayment
//
//  Created by MAC on 05/03/21.
//

import UIKit
import Stripe
class CustomViewController: UIViewController{
  
    
    
    @IBOutlet weak var CardHolderTXT: UITextField!
    @IBOutlet weak var CardNumberTXT: UITextField!
    @IBOutlet weak var ExpiryTXT: UITextField!
    @IBOutlet weak var CVVTXT: UITextField!
    @IBOutlet weak var payBTN: UIButton!
    @IBOutlet weak var descriptionTXT: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.descriptionTXT.text = "Hello \n I Am Meet Budheliya"
        self.navigationItem.title = "Custom(Card)"
        self.payBTN.layer.cornerRadius = 15
    }
    @IBAction func PayBTNClicked(_ sender: UIButton) {
       
    }
   
    
}
