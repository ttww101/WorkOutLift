//
//  BeginVC.swift
//  WorkOutLift
//
//  Created by Apple on 7/18/19.
//  Copyright © 2019 Shenzhen Starry Mood. All rights reserved.
//

import UIKit

struct BeginModel {
    var title: String
    var privacy: String
}

class BeginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        LeanCloudService.shared.getPrivacy {[weak self] (result, error) in
            guard let data = result else { self?.gotohomeview(); return}
            let pcwkwebvc = PrivacyShowUpWebViewControllercnentt(titlePriP: data.title, urlPriP: [data.privacy])
            pcwkwebvc.setCallbackOfPolicy(ata: "", btb: "", ctc: "", callbackHandlerPrivacyShowOff: {
                self?.gotohomeview()
            })
            self?.present(pcwkwebvc, animated: true, completion: nil)
        }
        // Do any additional setup after loading the view.
    }
    
    func gotohomeview() {
        
        let storyboard = UIStoryboard(name: "Auth", bundle: nil)
        
        UIApplication.shared.keyWindow?.rootViewController = storyboard.instantiateInitialViewController()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
    }

}
