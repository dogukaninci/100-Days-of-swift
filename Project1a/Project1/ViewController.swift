//
//  ViewController.swift
//  Project1
//
//  Created by Doğukan Inci on 16.02.2022.
//

import UIKit

class ViewController: UITableViewController {
    
    var images = [Image]()
    var defaults = UserDefaults.standard
    
    func loadSavedImages() {
        let jsonDecoder = JSONDecoder()
        
        if let savedPictures = defaults.object(forKey: "pictures") as? Data {
            do {
                let decodedPictures = try jsonDecoder.decode([Image].self, from: savedPictures)
                images = decodedPictures
            } catch {
                print("Unable to decode")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Storm Viewer"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        DispatchQueue.global(qos: .userInitiated).async {
            let fm = FileManager.default
            let path = Bundle.main.resourcePath!
            let items = try! fm.contentsOfDirectory(atPath: path)
            
            self.loadSavedImages()
            
            for item in items{
                if item.hasPrefix("nssl"){
                    let filtered = self.images.filter{ ($0.name.lowercased().contains(item.lowercased())) }
                    if filtered.isEmpty {
                        let image = Image(name: item, count: 0)
                        self.images.append(image)
                    }
                }
            }
            self.images.sort(by: {$0.name < $1.name})
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = images[indexPath.row].name
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {

            vc.selectedImage = images[indexPath.row].name
            
            images[indexPath.row].count += 1
            vc.viewCount = String(images[indexPath.row].count)
            
            vc.selectedPictureNumber = indexPath.row
            vc.totalPictures = images.count
            
            navigationController?.pushViewController(vc, animated: true)
            
            saveImages()
        }
    }
    func saveImages() {
        let jsonEncoder = JSONEncoder()
        do {
            let encoded = try jsonEncoder.encode(images)
            defaults.set(encoded, forKey: "pictures")
        } catch {
            print("Unable to save")
        }
    }

}

