//
//  FireViewController.swift
//  InternalMessagingApp
//
//  Created by Chris Motz on 6/9/16.
//  Copyright © 2016 iXperience. All rights reserved.
//

import UIKit

protocol ChangeLabel {
    func changeLabel(_: String?)
}

class FireViewController: UIViewController, ChangeLabel {

    var delegate:ChangeLabel? = ChangeLabel?()
    var message:String?
    
    @IBOutlet weak var fireLabel: UILabel!
    @IBOutlet weak var fireTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        if (message != nil) {
            self.fireLabel.text = message
        print(message)
        }
    }
    
    
    @IBAction func starkButtonTapped(sender: AnyObject) {
        if let delegate = self.delegate {
            delegate.changeLabel(self.fireTextField.text)
        }
    }
        
    func changeLabel(message: String?) {
        print("sending message to dany")
        if (message != nil) {
            self.message = message
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
