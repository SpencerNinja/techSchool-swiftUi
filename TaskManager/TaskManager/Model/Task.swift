//
//  Task.swift
//  TaskManager
//
//  Created by Spencer Hurd on 12/6/21.
//

import Foundation

struct Task: Identifiable, Codable {
    
    let id: Int
    let title: String
    let completed: Bool
    
    init(id: Int, title: String, completed: Bool) {
        self.id = id
        self.title = title
        self.completed = completed
    }
    
    func updateCompleted() -> Task {
        return Task(id: self.id, title: self.title, completed: !self.completed)
    }
}
