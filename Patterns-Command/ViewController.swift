//
//  ViewController.swift
//  Patterns-Command
//
//  Created by Ruslan on 28.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTextField: UITextField!
    
    var commandExecutor = CommandExecutor()
    var undoCommand: UndoCommand?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTextField.delegate = self
    }
    
    @IBAction func undoButtonAction(_ sender: UIButton) {
        myTextField.text = commandExecutor.undoLast()
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if let text = textField.text {
            undoCommand = UndoCommand(argument: text)
            commandExecutor.addCommand(undoCommand!)
            commandExecutor.execute(with: string)
        }
        
        return true
    }
}
