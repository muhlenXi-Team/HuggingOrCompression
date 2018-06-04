//
//  ViewController.swift
//  ExSnapKit
//
//  Created by muhlenXi on 2018/6/4.
//  Copyright © 2018 muhlenXi. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupSubviews()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupSubviews() {
        self.view.backgroundColor = UIColor.white
        let label1 = UILabel()
        label1.backgroundColor = UIColor.yellow
        label1.text = "北国风光，千里冰封，万里雪飘。"
        
        let label2 = UILabel()
        label2.backgroundColor = UIColor.green
        label2.text = "锄禾日当午，汗滴禾下土。谁知盘中餐，粒粒吉辛苦。"
        
        self.view.addSubview(label1)
        self.view.addSubview(label2)
        
        
        //label1.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 755), for: .horizontal)
        label1.snp.makeConstraints { (maker) in
            maker.leading.equalTo(10)
            maker.top.equalTo(200)
            maker.height.equalTo(20)
            maker.trailing.equalTo(label2.snp.leading).offset(-6)
           
        }
       
        label2.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 250), for: .horizontal)
        label2.snp.makeConstraints { (maker) in
            maker.leading.equalTo(label1.snp.trailing).offset(6)
            maker.trailing.equalTo(-10)
            maker.height.equalTo(label1)
            maker.top.equalTo(label1)
        }
        
    }
}

