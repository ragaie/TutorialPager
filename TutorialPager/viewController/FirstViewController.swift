//
//  FirstViewController.swift
//  TutorialPager
//
//  Created by Ragaie on 1/14/19.
//  Copyright © 2019 Ragaie alfy. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var buttonAction: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonAction.addTarget(self, action: #selector(FirstViewController.showMe(_:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  @objc   func showMe(_ sender: Any) {
        print("print first view controller")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
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
