//
//  ViewController.swift
//  HowToUseActionSheet
//
//  Created by TDCIAN on 2021/01/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        // Do any additional setup after loading the view.
    }
    @IBAction func UseActionSheet(_ sender: UIButton) {
        print("버튼 성능 확실하구만")
        showActionSheet()
    }
    
    func showActionSheet() {
        let actionSheet = UIAlertController(title: "액숀시트 이름", message: "나는 액션시트입니다", preferredStyle: .actionSheet)
        
        let first = UIAlertAction(title: "첫번째 선택지", style: .default) { action in
            print("첫번째 선택지를 선택했습니다.")
        }
        
        let second = UIAlertAction(title: "두번째 선택지", style: .default) { action in
            print("두번째 선택지를 선택했습니다.")
        }
        
        let third = UIAlertAction(title: "세번째 선택지", style: .default) { action in
            print("세번째 선택지를 선택했습니다.")
        }
        
        let cancel = UIAlertAction(title: "취소", style: .cancel) { action in
            print("취소를 선택했습니다.")
        }
        
        actionSheet.addAction(first)
        actionSheet.addAction(second)
        actionSheet.addAction(third)
        actionSheet.addAction(cancel)
        
        // 글씨 색상을 변경하고 싶다면
        actionSheet.view.tintColor = .systemPurple
        
        present(actionSheet, animated: true, completion: nil)
    }
}

