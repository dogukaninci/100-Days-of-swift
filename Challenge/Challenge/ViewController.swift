//
//  ViewController.swift
//  Challenge
//
//  Created by Doğukan Inci on 18.02.2022.
//

import UIKit

class ViewController: UITableViewController {


    var countryFlags = [UIImage]()
    var countries = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        for flag in countries{
            countryFlags.append(UIImage(named: flag)!)
        }
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath) as! TableViewCell
        cell.imageCell.image = countryFlags[indexPath.row]
        cell.imageCell.layer.borderWidth = 1
        cell.imageCell.layer.borderColor = UIColor.lightGray.cgColor
        cell.countryLabel.text = countries[indexPath.row].uppercased()
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "DetailView") as? DetailViewController {
            vc.selectedImage = countries[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }

}

