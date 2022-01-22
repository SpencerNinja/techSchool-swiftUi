//
//  ListRowView.swift.swift
//  TaskManager
//
//  Created by Spencer Hurd on 12/6/21.
//

import SwiftUI

struct ListRowView: View {
    
    let task: Task
    
    var body: some View {
        HStack {
            Image(systemName: task.completed ? "checkmark.circle" : "circle").foregroundColor(task.completed ? .green : .red)
            Text(task.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_swift_Previews: PreviewProvider {
    
    static var task1 = Task(id: 0, title: "First item", completed: false)
    static var task2 = Task(id: 0, title: "Second item", completed: true)
    
    static var previews: some View {
        Group {
            ListRowView(task: task1)
            ListRowView(task: task2)
        }
        .previewLayout(.sizeThatFits)
    }
}
