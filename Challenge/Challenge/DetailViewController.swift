//
//  DetailViewController.swift
//  Challenge
//
//  Created by Doğukan Inci on 18.02.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var countryTitle: UILabel!
    @IBOutlet var fullImageView: UIImageView!
    var selectedImage: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        if let imageToLoad = selectedImage {
            fullImageView.image = UIImage(named: imageToLoad)
            fullImageView.layer.borderWidth = 1
            fullImageView.layer.borderColor = UIColor.lightGray.cgColor
            countryTitle.text = imageToLoad.uppercased()
        }
    }
    @objc func shareTapped(){
        guard let image = fullImageView.image?.jpegData(compressionQuality: 0.8) else {
            print("No image found")
            return
        }
        let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc,animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
