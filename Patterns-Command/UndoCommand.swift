//
//  UndoCommand.swift
//  Patterns-Command
//
//  Created by Ruslan on 28.01.2022.
//

import Foundation

protocol BaseCommand {
    func undo() -> String
    func add(_ string: String)
}

class UndoCommand: BaseCommand {
    
    private var originalString: String
    private var currentString: String
    
    init(argument: String) {
        originalString = argument
        currentString = argument
    }
    
    func undo() -> String {
        currentString.removeLast()
        print(currentString)
        
        return currentString
    }
    
    func add(_ string: String) {
        currentString.append(string)
        print(currentString)
    }
}
