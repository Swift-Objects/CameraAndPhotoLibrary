//
//  ViewController.swift
//  0019-CameraAndPhotoLibrary
//
//  Created by lemo on 2018/4/13.
//  Copyright © 2018年 wangli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: 100, y: 100, width: 200, height: 40)
        btn.backgroundColor = .orange
        btn.setTitle("打开相机相册", for: .normal)
        btn.addTarget(self, action: #selector(openCameraOrPhotoLibrary), for: .touchUpInside)
        self.view.addSubview(btn)
    }
    
    @objc func openCameraOrPhotoLibrary() {
        //使用打开相册和相机
        CameraHandler.shared.showActionSheet(vc: self)
        CameraHandler.shared.imagePickedBlock = {(image) in
            self.imageView.image = image

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

