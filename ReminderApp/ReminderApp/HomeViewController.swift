//
//  ViewController.swift
//  ReminderApp
//
//  Created by  Decagon on 21/11/2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.showsVerticalScrollIndicator = false
        table.register(HomeTableViewCell.self, forCellReuseIdentifier: HomeTableViewCell.identifier)
        return table
    }()

    let leftButton: UIButton = {
        let skipButton = UIButton()
        skipButton.setTitle("Test", for: .normal)
        skipButton.setTitleColor(.black, for: .normal)
        skipButton.translatesAutoresizingMaskIntoConstraints = false
        skipButton.addTarget(self, action: #selector(didTapPlus), for: .touchUpInside)
        skipButton.isHidden = false
        return skipButton
    }()
    let rightButton: UIButton = {
        let skipButton = UIButton()
        skipButton.setImage(UIImage(systemName: "plus"), for: .normal)
        skipButton.tintColor = .black
        skipButton.translatesAutoresizingMaskIntoConstraints = false
        skipButton.addTarget(self, action: #selector(didTapTest), for: .touchUpInside)
        skipButton.isHidden = false
        return skipButton
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Reminder"
        navigationController?.navigationBar.tintColor = .blue
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        tableView.frame = view.bounds
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftButton)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightButton)

        constraintViews()
    }

    @objc func didTapTest(){
        print("pressed")
    }
    @objc func didTapPlus(){
        print("plus")
    }

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    
    func constraintViews(){

//        view.addSubview(leftButton)
//        view.addSubview(rightButton)
//        self.navigationItem.titleView?.addSubview(leftButton)
//        self.navigationItem.titleView?.addSubview(rightButton)

        
        NSLayoutConstraint.activate([

//            leftButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
//            leftButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),

//            rightButton.topAnchor.constraint(equalTo: view.topAnchor),
//            rightButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath)
        cell.heightAnchor.constraint(equalToConstant: 100).isActive = true
        return cell
    }
}
