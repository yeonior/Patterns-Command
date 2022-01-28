//
//  CommandExecutor.swift
//  Patterns-Command
//
//  Created by Ruslan on 28.01.2022.
//

import Foundation

class CommandExecutor {
    
    private var commandsArray = [BaseCommand]()
    
    func addCommand(_ command: BaseCommand) {
        commandsArray.append(command)
    }
    
    func undoLast() -> String {
        var title = String()
        for command in commandsArray {
            title = command.undo()
        }
        
        return title
    }
    
    func execute(with string: String) {
        for command in commandsArray {
            command.add(string)
        }
    }
}
