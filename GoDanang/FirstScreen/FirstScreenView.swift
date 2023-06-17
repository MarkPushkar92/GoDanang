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
        view.toAutoLayout()
        view.isEditable = false
        view.isSelectable = false
        view.text = CommonStrings.danangGenInfo
        view.font = UIFont.italicSystemFont(ofSize: 18)
        view.contentInsetAdjustmentBehavior = .scrollableAxes
        view.textColor = .label
        view.backgroundColor = .clear
        return view
    }()
    
    private let layout = UICollectionViewFlowLayout()
    
    lazy var collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    
    private func setupViews() {
        self.toAutoLayout()
        self.addSubviews(textView)

        let constraints = [
            
            textView.topAnchor.constraint(equalTo: self.topAnchor),
            textView.bottomAnchor.constraint(equalTo: self.centerYAnchor),
            textView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: self.trailingAnchor),

         
            
                    
            
           
            
            

        ]
        NSLayoutConstraint.activate(constraints)

    
        collectionView.alwaysBounceHorizontal = true
        layout.scrollDirection = .horizontal
        collectionView.toAutoLayout()
        collectionView.backgroundColor = UIColor(red: 0.961, green: 0.961, blue: 0.961, alpha: 1)
        collectionView.register(PlacesToVisitCell.self, forCellWithReuseIdentifier: String(describing: PlacesToVisitCell.self))
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    
    init() {
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: Collection Extension

extension FirstScreenView: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: PlacesToVisitCell.self), for: indexPath) as! PlacesToVisitCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      
    }
}

extension FirstScreenView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let width: CGFloat = 114
        let height: CGFloat = 170
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
    }
}





//    private let imageView: UIImageView = {
//        let view = UIImageView()
//        view.toAutoLayout()
//        view.image = UIImage(named: "back")
//        view.contentMode = .scaleAspectFill
//        return view
//    }()
