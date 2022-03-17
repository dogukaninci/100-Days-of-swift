//
//  ViewController.swift
//  Hangman
//
//  Created by Doğukan Inci on 28.02.2022.
//

import UIKit

extension String {
    func addSpace() -> String {
        var result = ""
        for letter in self {
            result += String(letter)
            result += " "
        }
        return result
        }
}
class ViewController: UIViewController {

    @IBOutlet var keyboardView: UIView!
    @IBOutlet var imageLabel: UIImageView!
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    
    var letterButtons = [UIButton]()
    let keyboard = ["A", "B", "C", "D", "E", "F", "G", "Ğ", "H", "I", "İ", "J", "K", "L", "M", "N", "O", "Ö", "P", "R", "S", "Ş", "T", "U", "Ü", "V", "Y", "Z"]
    var wordLetterArray = [String]()
    var word = ""
    var lines = [String]()
    
    var maskedWord = ""
    var maskedWordArray = [String]()
    
    var wordStrings = [String]()
    var level = 0
    var levelCompleted = false
    
    var score = 0 {
        didSet {
            scoreLabel.text = "Score: \(score)"
        }
    }
    var hangmanImgNumber = 0 {
        didSet {
            imageLabel.image = UIImage(named: "hangman\(hangmanImgNumber)")
        }
    }
    var livesRemaining = 10
    
    var ac = UIAlertController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "Score: 0"
        scoreLabel.textColor = .white
        scoreLabel.font = UIFont(descriptor: UIFontDescriptor.preferredFontDescriptor(withTextStyle: .callout), size: 20)
        if let fileUrl = Bundle.main.url(forResource: "Kelimeler", withExtension: "txt") {
            if var content = try? String(contentsOf: fileUrl) {
                content.removeLast()
                lines = content.components(separatedBy: "\n")
                lines.shuffle()
            }
        }
        
        keyboardView.backgroundColor = UIColor.black
        view.backgroundColor = UIColor.black
        answerLabel.textColor = UIColor.white
        answerLabel.font = UIFont.systemFont(ofSize: 50)
        
        let width = 50
        let height = 100
        
        for row in 0..<4 {
            for column in 0..<7 {
                let letterButton = UIButton(type: .system)
                letterButton.titleLabel?.font = UIFont.systemFont(ofSize: 25)
                letterButton.setTitle("A", for: .normal)
                letterButton.contentHorizontalAlignment = .center
                letterButton.addTarget(self, action: #selector(letterTapped), for: .touchUpInside)
                let frame = CGRect(x: column * width, y: row * height, width: width, height: height)
                letterButton.frame = frame
                letterButton.setTitleColor(UIColor.white, for: .normal)
                keyboardView.addSubview(letterButton)
                letterButtons.append(letterButton)
                
            }
        }
        for i in 0..<keyboard.count {
            letterButtons[i].setTitle(keyboard[i], for: .normal)
        }
        
        loadWord()
    }
    func loadWord() {
        if lines.count != level {
            word = lines[level]
        }
        for letter in word {
            wordLetterArray.append(String(letter))
            
        }
        for _ in 0..<wordLetterArray.count {
            maskedWord += "_"
            maskedWordArray.append("_")
        }
        answerLabel.text = maskedWord.addSpace()
    }
    
    @objc func letterTapped(_ sender: UIButton) {
        guard let buttonTitle = sender.titleLabel?.text?.lowercased(with: Locale(identifier: "tr_TR")) else { return }

        sender.setTitleColor(UIColor.gray, for: .normal)
        sender.isUserInteractionEnabled = false
        
        if wordLetterArray.contains(buttonTitle) {
            for(index, letter) in wordLetterArray.enumerated() {
                if buttonTitle == letter {
                    maskedWordArray[index] = letter
                }
            }
            maskedWord = maskedWordArray.joined()
        } else {
            hangmanImgNumber += 1
            livesRemaining -= 1
        }
        answerLabel.text = maskedWord.uppercased(with: Locale(identifier: "tr_TR")).addSpace()
        
        checkToSeeIfCompleted()
            
        if levelCompleted {
            for button in letterButtons {
                button.isUserInteractionEnabled = true
                button.setTitleColor(UIColor.white, for: .normal)
            }
            levelCompleted = false
            loadWord()
        }
        
    }

    func checkToSeeIfCompleted() {
        if livesRemaining > 0 {
            if maskedWord == word {
                ac = UIAlertController(title: "Congratulations 🎉", message: "You've beat the hangman!", preferredStyle: .alert)
                ac.addAction(UIAlertAction(title: "Next Game", style: .default))
                present(ac, animated: true)
                score += 1
                nextLevel()
            }
        } else {
            ac = UIAlertController(title: "💀", message: "The hangman caught you, the word was \"\(word.uppercased(with: Locale(identifier: "tr_TR")))\"!", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Next Game", style: .default))
            present(ac, animated: true)
            nextLevel()
        }
    }
    func nextLevel() {
        livesRemaining = 10
        hangmanImgNumber = 0
        wordLetterArray.removeAll()
        maskedWord = ""
        maskedWordArray.removeAll()
        
        level += 1
        levelCompleted = true
    }
    @objc func restartGame(_ alert: UIAlertAction) {
        viewDidLoad()
    }
}

