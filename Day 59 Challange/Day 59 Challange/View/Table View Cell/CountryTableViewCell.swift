//
//  CountryTableViewCell.swift
//  Day 59 Challange
//
//  Created by Doğukan Inci on 29.03.2022.
//

import Foundation
import UIKit

class CountryTableViewCell: UITableViewCell {
    private let title: UILabel = UILabel()
    private let flag: UIImageView = UIImageView()
    
    enum Identifier: String {
        case custom = "countryCell"
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: Identifier.custom.rawValue)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        addSubview(title)
        addSubview(flag)
        flag.contentMode = .scaleAspectFit
        
        title.snp.makeConstraints { (make) in
            make.top.equalTo(contentView).offset(10)
            make.right.left.equalTo(contentView)
        }
        flag.snp.makeConstraints { (make) in
            make.top.equalTo(title.snp.bottom)
            make.left.equalTo(title.snp.left)
            make.height.equalTo(120)
        }
    }
    func saveModel(model: WelcomeElement) {
        title.text = model.name.official
        let url = NSURL(string: model.flags.png!)! as URL
        if let imageData: NSData = NSData(contentsOf: url) {
            flag.image = UIImage(data: imageData as Data)
        }
    }
    
}
extension String {
    func toImage() -> UIImage? {
        if let data = Data(base64Encoded: self, options: .ignoreUnknownCharacters){
            return UIImage(data: data)
        }
        return nil
    }
}
