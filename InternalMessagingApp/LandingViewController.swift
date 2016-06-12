//
//  LandingViewController.swift
//  InternalMessagingApp
//
//  Created by Chris Motz on 6/10/16.
//  Copyright © 2016 iXperience. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {

    let fvc = FireViewController(nibName: "FireViewController", bundle: nil)
    let ivc = IceViewController(nibName: "IceViewController", bundle: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "A Song of Ice and Fire"

        
        fvc.delegate = ivc
        ivc.delegate = fvc

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func iceButtonTapped(sender: AnyObject) {
        self.navigationController?.pushViewController(ivc, animated: true)
    }

    @IBAction func fireButtonTapped(sender: AnyObject) {
        self.navigationController?.pushViewController(fvc, animated: true)
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
