//
//  BaseViewController.swift
//  ZSProject
//
//  Created by zhoushuai on 17/6/26.
//
//

import UIKit

let delayTimeBackVC:CGFloat = 2.0 //延迟两秒退出Pop视图控制器


class BaseViewController: UIViewController{
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置默认背景色
        self.view.backgroundColor = UIColor.lightGray
        //添加导航栏按钮
        let leftBtn = UIButton(frame:CGRect(x: 0, y: 0, width: 20, height: 20))
        leftBtn.setImage(UIImage(named:"sz_bank_icon"), for: UIControlState.normal)
        leftBtn.addTarget(self, action: #selector(doBackAction(btn:)), for: UIControlEvents.touchUpInside)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftBtn)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    //MARK: - Event Response
    //延迟退出视图控制器
    func delayPopVCWithDelayTime(delayTime:CGFloat){
        self.perform(#selector(doBackAction(btn:)), with: nil, afterDelay: TimeInterval(delayTime))
    }
    
    func doBackAction(btn:UIButton){
        self.navigationController?.popViewController(animated: true)
    }
}
