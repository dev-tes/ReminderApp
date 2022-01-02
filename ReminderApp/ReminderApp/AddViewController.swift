//
//  AddViewController.swift
//  ReminderApp
//
//  Created by Decagon on 01/01/2022.
//

import UIKit

class AddViewController: UIViewController {
    
    var titleTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        textField.leftViewMode = .always
        textField.font = UIFont(name: "NunitoSans-SemiBold", size: 15)
        textField.textAlignment = .left
        textField.layer.cornerRadius = 10.0
        textField.layer.borderWidth = 1.0
        textField.backgroundColor = .systemGray6
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.layer.borderColor = UIColor.systemBackground.cgColor
        textField.placeholder = "Title"
        return textField
    }()
    
    var descriptionTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        textField.leftViewMode = .always
        textField.font = UIFont(name: "NunitoSans-SemiBold", size: 15)
        textField.textAlignment = .left
        textField.layer.cornerRadius = 10.0
        textField.layer.borderWidth = 1.0
        textField.backgroundColor = .systemGray6
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.layer.borderColor = UIColor.systemBackground.cgColor
        textField.placeholder = "Description"
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        constraintViews()
    }
    
    func constraintViews(){

        view.addSubview(titleTextField)
        view.addSubview(descriptionTextField)

        
        NSLayoutConstraint.activate([

            titleTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            titleTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            titleTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleTextField.heightAnchor.constraint(equalToConstant: 70),

            descriptionTextField.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 40),
            descriptionTextField.leadingAnchor.constraint(equalTo: titleTextField.leadingAnchor),
            descriptionTextField.heightAnchor.constraint(equalTo: titleTextField.heightAnchor),
            descriptionTextField.widthAnchor.constraint(equalTo: titleTextField.widthAnchor),
        ])
    }
    
}
