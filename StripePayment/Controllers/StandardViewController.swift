//
//  StandardViewController.swift
//  StripePayment
//
//  Created by MAC on 05/03/21.
//

import UIKit
import Stripe
class StandardViewController: UIViewController,STPAddCardViewControllerDelegate {
    
    @IBOutlet weak var payBTN: UIButton!
    @IBOutlet weak var Desc: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Desc.text = "Hello \n I Am Meet Budheliya"
        self.payBTN.layer.cornerRadius = 15
        self.navigationItem.title = "Standard"
    }
    @IBAction func PayBTNClicked(_ sender: UIButton) {
        //Setup card View Controller
        let addCardVC = STPAddCardViewController()
        addCardVC.delegate = self
        
        //Present card View Controller
        let navVC = UINavigationController(rootViewController: addCardVC)
        self.present(navVC, animated: true)
    }
    func addCardViewControllerDidCancel(_ addCardViewController: STPAddCardViewController) {
        self.dismiss(animated: true)
    }
    
    private func addCardViewController(_ addCardViewController: STPAddCardViewController, didCreateToken token:STPToken , completion: @escaping STPErrorBlock) {
        self.dismiss(animated: true)
        print("Printing Stripe Response :\(token.allResponseFields)\n \n")
        print("Printing Stripe Token :\(token.tokenId)")
        self.Desc.text = "Transactin Success! \n\n Here Is The Token: \(token.tokenId)\n Card Type :\(token.card?.funding.rawValue)\n\n Send Thins Token or Detail to Your backend Server To Complete This Payment"
        
    }
    
    func addCardViewController(_ addCardViewController: STPAddCardViewController, didCreatePaymentMethod paymentMethod: STPPaymentMethod, completion: @escaping STPErrorBlock) {
        print(paymentMethod.card?.funding)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
