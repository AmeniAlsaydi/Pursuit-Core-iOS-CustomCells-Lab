//
//  DetailView.swift
//  ProgrammaticUserCells
//
//  Created by Amy Alsaydi on 1/30/20.
//  Copyright © 2020 Benjamin Stone. All rights reserved.
//

import UIKit

class DetailView: UIView {
    
    public lazy var imageView: UIImageView = {
        let image = UIImageView()
        return image
        
    }()
    
    public lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0 
        return label
        
    }()
    
    
    override init(frame: CGRect) {
      super.init(frame: UIScreen.main.bounds)
      commonInit()
    }
    
    required init?(coder: NSCoder) {
      super.init(coder: coder)
      commonInit()
    }
    
    private func commonInit() {
     setupImageConstraints()
     setupNameLabelConstraint()
    }

    
    private func setupImageConstraints() {
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor), imageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4)])
        
    }
    
    private func setupNameLabelConstraint() {
        addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10), nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20), nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
        
        
    }
    

}
