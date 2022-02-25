//
//  ViewController.swift
//  Shopify
//
//  Created by Doğukan Inci on 23.02.2022.
//

import UIKit

class ViewController: UITableViewController {
    
    var shopList = [String]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "SHOPIFY"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Delete List", style: .plain, target: self, action: #selector(deleteList))
 
        let shareButton = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))

        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)

        self.toolbarItems = [spacer, shareButton]
        navigationController?.isToolbarHidden = false
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingList", for: indexPath)
        cell.textLabel?.text = shopList[indexPath.row]
        return cell
    }
    @objc func addButtonTapped() {
        let ac = UIAlertController(title: "Add Item", message: nil, preferredStyle: .alert)
        ac.addTextField()
        let submitAction = UIAlertAction(title: "Save", style: .default) {
            [weak self, weak ac] _ in
            guard let answer = ac?.textFields?[0].text else { return }
            self?.shopList.insert(answer, at: 0)
            let indexPath = IndexPath(row: 0, section: 0)
            self?.tableView.insertRows(at: [indexPath], with: .automatic)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)

        ac.addAction(cancelAction)
        ac.addAction(submitAction)
        present(ac, animated: true)
    }
    @objc func shareTapped() {
        let vc = UIActivityViewController(activityItems: [shopList.joined(separator: "\n")], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.leftBarButtonItem
        present(vc,animated: true)
    }
    @objc func deleteList() {
        shopList.removeAll()
        tableView.reloadData()
    }
}

