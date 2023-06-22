//
//  DetailsScreenVIew.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 21.06.2023.
//


import UIKit

class DetailsScreenVIew: UIView {
            
    let details: POIdetaisl
    
    private let imageView: UIImageView = {
        let view = UIImageView()
        view.toAutoLayout()
        view.image = UIImage(named: "back")
        view.contentMode = .scaleAspectFill
        return view
    }()

    private let textView: UITextView = {
        let view = UITextView()
        view.toAutoLayout()
        view.isEditable = false
        view.isSelectable = false
        view.font = .systemFont(ofSize: 20)
        view.contentInsetAdjustmentBehavior = .scrollableAxes
        view.textColor = .lightGray
        view.backgroundColor = UIColor(red: 0.17, green: 0.22, blue: 0.24, alpha: 1)
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 2
        view.layer.cornerRadius = 15
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        return view
    }()
    
    private let layout = UICollectionViewFlowLayout()
    
    lazy var collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    
    private func setupViews() {
        
        self.backgroundColor = UIColor(red: 0.17, green: 0.22, blue: 0.24, alpha: 1)

        self.toAutoLayout()
        self.addSubviews(textView, collectionView)

        let constraints = [

            collectionView.topAnchor.constraint(equalTo: self.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: self.centerYAnchor),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            textView.topAnchor.constraint(equalTo: collectionView.bottomAnchor),
            textView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            textView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: self.trailingAnchor),



        ]
        NSLayoutConstraint.activate(constraints)
        
        // collectionView setUp

        collectionView.alwaysBounceHorizontal = true
        layout.scrollDirection = .horizontal
        collectionView.toAutoLayout()
        collectionView.backgroundColor = UIColor(red: 0.961, green: 0.961, blue: 0.961, alpha: 1)
        collectionView.register(PlacesToVisitCell.self, forCellWithReuseIdentifier: String(describing: PlacesToVisitCell.self))
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundView = imageView
        
        collectionView.layer.borderColor = UIColor.black.cgColor
        collectionView.layer.borderWidth = 2
        collectionView.layer.cornerRadius = 15
        collectionView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    
    
    init(details: POIdetaisl) {
        self.details = details
        super.init(frame: .zero)
        setupViews()
        textView.text = details.description
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: Collection Extension

extension DetailsScreenVIew: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return details.photoURLs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: PlacesToVisitCell.self), for: indexPath) as! PlacesToVisitCell
        
        guard let urlString = details.photoURLs[indexPath.row] else { return cell }
        if let url = URL(string: urlString) {
            cell.image.load(url: url)
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      
    }
}

extension DetailsScreenVIew: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width: CGFloat = collectionView.frame.height * 0.8
        let height: CGFloat = collectionView.frame.width * 0.8
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)

    }
    
    
}

