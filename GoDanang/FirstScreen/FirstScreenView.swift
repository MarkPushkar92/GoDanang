//
//  FirstScreenView.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 16.06.2023.
//

import UIKit

class FirstScreenView: UIView {
    
    private let textView: UITextView = {
        let view = UITextView()
        return view
    }()
    
    private func setupViews() {
        self.toAutoLayout()
  //      self.addSubviews()

        
//        let constraints = [
//
//
//
//        ]
//        NSLayoutConstraint.activate(constraints)
//
    
    }
    
    
    init() {
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

