//
//  ViewController.swift
//  hostingController
//
//  Created by Randimal Geeganage on 2021-05-04.
//  Copyright © 2021 com.sample. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    let contentView = UIHostingController(rootView: ContentView())

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.setTitle("Show SwiftUI", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton() {
        let vc = UIHostingController(rootView: ContentView())
        present(vc, animated: true)
    }
}

