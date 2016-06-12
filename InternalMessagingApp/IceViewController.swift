//
//  IceViewController.swift
//  InternalMessagingApp
//
//  Created by Chris Motz on 6/9/16.
//  Copyright © 2016 iXperience. All rights reserved.
//

import UIKit


class IceViewController: UIViewController, ChangeLabel {

    @IBOutlet weak var iceLabel: UILabel!
    @IBOutlet weak var iceTextField: UITextField!
    
    var message:String?
    var delegate:ChangeLabel? = ChangeLabel?()
    
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
            iceLabel.text = message
        }
    }
    
    @IBAction func targaryenButtonTapped(sender: AnyObject) {
        if let delegate = self.delegate {
        print("hello from the other side")
            delegate.changeLabel(self.iceTextField.text)
        }
    }

    
    func changeLabel(message: String?) {
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
