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
        guard currentString != "" else { return "" }
        currentString.removeLast()
        
        return currentString
    }
    
    func add(_ string: String) {
        currentString.append(string)
    }
}
