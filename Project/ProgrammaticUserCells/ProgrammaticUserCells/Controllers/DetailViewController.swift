//
//  DetailViewController.swift
//  ProgrammaticUserCells
//
//  Created by Amy Alsaydi on 1/30/20.
//  Copyright © 2020 Benjamin Stone. All rights reserved.
//

import UIKit
import ImageKit

class DetailViewController: UIViewController {
    
    private let detailView = DetailView()
    
    var user: User?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        view.backgroundColor = .white

    }

    override func loadView() {
        view = detailView
    }
    
    func updateUI() {
        guard let user = user else {
            fatalError("check segue")
        }
        let fullName = "\(user.name.first) \(user.name.last)"
        
        detailView.nameLabel.text = fullName
        detailView.emailLabel.text = user.email
        detailView.phoneLabel.text = user.phone
        detailView.imageView.getImage(with: user.picture.large) { (result) in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let image):
                DispatchQueue.main.async {
                    self.detailView.imageView.image = image
                }
            }
        }
    }
}
