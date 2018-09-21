//
//  ViewController.swift
//  Quizzler
//
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = allQuestions.list[0]
        questionLabel.text = firstQuestion.questionText
        
    }

    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()

        nextQuestion()
        
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        
        if(questionNumber < 12){
            questionNumber =  questionNumber + 1
            questionLabel.text = allQuestions.list[questionNumber].questionText
        } else{
            let alert = UIAlertController(title: "Hey", message: "You wanna start again?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                
                self.startOver()
                
            }
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        }

    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
    }
    
    
    func startOver() {
       questionNumber = 0
    }
    

    
}
