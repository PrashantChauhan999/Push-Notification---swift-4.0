//
//  SplashVC.swift
//  PushNotification
//
//  Created by weblink on 10/09/18.
//  Copyright © 2018 weblink. All rights reserved.
//

import UIKit

class SplashVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if(UserDefaults.standard.string(forKey: "notification") == "notification")
        {
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "NotificationViewController") as? NotificationViewController
            self.navigationController?.pushViewController(vc!, animated: true)
        }
        else
        {
            if (UserDefaults.standard.string(forKey:"notification")) != nil
            {
                print("Value:::",(UserDefaults.standard.string(forKey:"notification"))!)
            }
        }
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
