//
//  HomeTableViewCell.swift
//  ReminderApp
//
//  Created by Decagon on 01/01/2022.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    static let identifier = "NewsTableViewCell"
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Sample"
        label.font = .systemFont(ofSize: 22, weight: .medium)
        return label
    }()
    private let subTitleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17, weight: .light)
        label.numberOfLines = 0
        label.text = "description"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titleLabel)
        contentView.addSubview(subTitleLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel.frame = CGRect(
            x: 20,
            y: 0,
            width: contentView.frame.size.width,
            height: 70
        )
        
        subTitleLabel.frame = CGRect(
            x: 20,
            y: 50,
            width: contentView.frame.size.width,
            height: contentView.frame.size.height/2
        )
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = nil
        subTitleLabel.text = nil
    }
}
