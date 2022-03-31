//
//  CountryViewController.swift
//  Challange Day 59
//
//  Created by Doğukan Inci on 24.03.2022.
//

import UIKit
import SnapKit

protocol CountryOutput {
    func changeLoading(isLoad: Bool)
    func saveDatas(values: [WelcomeElement])
    
}

final class CountryViewController: UIViewController {
    private let labelTitle: UILabel = UILabel()
    private let tableView: UITableView = UITableView()
    private let indicator: UIActivityIndicatorView = UIActivityIndicatorView()
    
    private lazy var welcome: [WelcomeElement] = []
    
    var viewModel = CountryViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawDesign()
        configure()
        makeLabel()
        makeTable()
        makeIndicator()
        viewModel.setDelegate(output: self)
        viewModel.fetchItems()
    }
    private func drawDesign() {
        labelTitle.textColor = .red
        tableView.delegate = self
        tableView.dataSource = self
        indicator.startAnimating()
    }
    func configure() {
        view.addSubview(labelTitle)
        view.addSubview(tableView)
        view.addSubview(indicator)
        
        
        tableView.register(CountryTableViewCell.self, forCellReuseIdentifier: CountryTableViewCell.Identifier.custom.rawValue)
        tableView.rowHeight = 150
        DispatchQueue.main.async {
            self.view.backgroundColor = .white
            self.labelTitle.font = .boldSystemFont(ofSize: 25)
            self.labelTitle.text = "Countries"
            self.indicator.color = .red
        }
    }
}
extension CountryViewController: CountryOutput {
    func changeLoading(isLoad: Bool) {
        isLoad ? indicator.startAnimating() : indicator.stopAnimating()
    }
    
    func saveDatas(values: [WelcomeElement]) {
        welcome = values
        tableView.reloadData()
    }
}
extension CountryViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: CountryTableViewCell = tableView.dequeueReusableCell(withIdentifier: CountryTableViewCell.Identifier.custom.rawValue) as? CountryTableViewCell else {
            return UITableViewCell()
        }
        cell.saveModel(model: welcome[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return welcome.count
    }
}
extension CountryViewController {
    private func makeLabel() {
        labelTitle.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.left.equalToSuperview().offset(10)
            make.left.right.equalTo(labelTitle)
        }
    }
    private func makeTable() {
        tableView.snp.makeConstraints { make in
            make.top.equalTo(labelTitle.snp.bottom).offset(5)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
            make.bottom.equalToSuperview()
            
        }
    }
    private func makeIndicator() {
        indicator.snp.makeConstraints { (make) in
            make.height.equalTo(labelTitle)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(labelTitle)
        }
    }
}
