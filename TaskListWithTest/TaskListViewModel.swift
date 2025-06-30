//
//  TaskListViewModel.swift
//  TaskListWithTest
//
//  Created by Rajendran Eshwaran on 6/30/25.
//
import SwiftUI
import Foundation

struct Task: Identifiable {
    let id = UUID()
    var name: String
    
}

class TaskListViewModel: ObservableObject {
    @Published var tasks: [Task] = [Task(name: "Fresh up"),
                                    Task(name: "Stretch"),
                                    Task(name: "Excercise"),
                                    Task(name: "Breakfast"),
                                    Task(name: "Office")]
    
    func addTask(name: String) {
        guard name.isEmpty == false else { return }
        tasks.append(Task(name: name))
    }
}
