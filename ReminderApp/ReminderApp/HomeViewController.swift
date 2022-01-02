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
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        tableView.frame = view.bounds
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightButton)
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Test", style: .done , target: self, action: #selector(didTapTest))
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapPlus))

    }

    @objc func didTapTest(){
        print("pressed")
    }
    @objc func didTapPlus(){
        navigationController?.pushViewController(AddViewController(), animated: true)
    }

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath)
        cell.heightAnchor.constraint(equalToConstant: 100).isActive = true
        return cell
    }
}
