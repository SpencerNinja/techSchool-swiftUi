//
//  ListViewModel.swift
//  TaskManager
//
//  Created by Spencer Hurd on 12/6/21.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var allTasks: [Task] = []
    
    init() {
        fetchTasks()
    }
    
    func fetchTasks() {
        let dataService = DataService<Task>(urlString: Constants.BASE_URL)
        dataService.fetchData(completion: { [weak self] result in
            switch result {
            case .success(let tasks):
                DispatchQueue.main.async {
                    self?.allTasks = tasks
                }
            case .failure(let error):
                print("Error: \(error.localizedDescription)")
            }
        })
    }
    
    // CRUD Functions
    func deleteTask(indexSet: IndexSet) {
        allTasks.remove(atOffsets: indexSet)
    }
    func moveTask(from: IndexSet, to: Int) {
        allTasks.move(fromOffsets: from, toOffset: to)
    }
    func addTask(title: String) {
        let newTask = Task(id: 0, title: title, completed: false)
        allTasks.append(newTask)
    }
    
    // Here we are grabbing the index for the task in the "tasks" array
    // with the same id as the task that's being pased into the function
    // once we have that index, we will call the task's updateCompleted function
    func updateTask(task: Task) {
//        if let index = tasks.firstIndex(where: { existingTask in
//            existingTask.id == task.id
//        })
        if let index = allTasks.firstIndex(where: { $0.id == task.id }) {
            allTasks[index] = task.updateCompleted()
        }
    }
    
    struct Constants {
        static let BASE_URL = "https://jsonplaceholder.typicode.com/todos"
    }
}


