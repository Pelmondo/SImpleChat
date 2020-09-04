//
//  ViewController.swift
//  SimpleChat
//
//  Created by Сергей Прокопьев on 04.09.2020.
//  Copyright © 2020 SergeyProkopyev. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

  //MARK: - Properties
  
  lazy var profileImageView = createImageView()
  var nameLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = .boldSystemFont(ofSize: 24)
    label.numberOfLines = 1
    label.textColor = .black
    return label
  }()
  var descriprionLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.numberOfLines = 0
    label.font = .systemFont(ofSize: 20)
    label.textColor = .darkGray
    return label
  }()
  
  var editButton: UIButton = {
    let button = UIButton(type: .roundedRect)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Редактировать", for: .normal)
    button.tintColor = .darkGray
    button.backgroundColor = .white
    button.layer.cornerRadius = 5
    button.addTarget(self, action: #selector(editButtonTapped(_:)), for: .touchUpInside)
    return button
  }()
  
  var imagePickerButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setImage(UIImage(named: "applePhotos"), for: .normal)
    button.imageView?.contentMode = .scaleAspectFit
    button.backgroundColor = .white
    button.layer.cornerRadius = 5
    button.addTarget(self, action: #selector(editButtonTapped(_:)), for: .touchUpInside)
    return button
  }()
  
  //MARK: - Init
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemGray5
    configureUI()
    nameLabel.text = "Name"
    descriprionLabel.text = "description"
  }

//  MARK: - Handlers
  
  fileprivate func createImageView() -> UIImageView {
    let image = UIImageView()
    image.translatesAutoresizingMaskIntoConstraints = false
    image.contentMode = .scaleAspectFit
    image.backgroundColor = .green
    image.image = #imageLiteral(resourceName: "placeholderUser")
    return image
  }
  
  fileprivate func configureUI() {
    view.addSubview(profileImageView)
    profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
    profileImageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    profileImageView.heightAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    
    view.addSubview(nameLabel)
    nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor,
      constant: 8).isActive = true
    nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
    nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
    
    view.addSubview(descriprionLabel)
    descriprionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor,
      constant: 5).isActive = true
    descriprionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
    descriprionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
    
    view.addSubview(editButton)
    editButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,
      constant: -8).isActive = true
    editButton.topAnchor.constraint(greaterThanOrEqualTo: descriprionLabel.bottomAnchor,
      constant: 5).isActive = true
    editButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
    editButton.heightAnchor.constraint(equalToConstant: 42).isActive = true
    
    view.addSubview(imagePickerButton)
    imagePickerButton.centerYAnchor.constraint(equalTo: editButton.centerYAnchor).isActive = true
    imagePickerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,
      constant: -16).isActive = true
    imagePickerButton.leadingAnchor.constraint(equalTo: editButton.trailingAnchor,
      constant: 8).isActive = true
    imagePickerButton.heightAnchor.constraint(equalTo: editButton.heightAnchor).isActive = true
    imagePickerButton.widthAnchor.constraint(equalTo: imagePickerButton.heightAnchor).isActive = true
  }
  // objc method
  @objc func editButtonTapped(_ sender: UIButton) {
    print("TODO: in near future")
  }
}

