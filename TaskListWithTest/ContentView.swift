//
//  ContentView.swift
//  TaskListWithTest
//
//  Created by Rajendran Eshwaran on 6/30/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = TaskListViewModel()
    @State private var addNewTask: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                List (viewModel.tasks) { task in
                    VStack {
                        Text(task.name)
                    }
                }
                HStack {
                    TextField("Enter Task Name", text: $addNewTask)
                    
                    Button("Add Task") {
                        viewModel.addTask(name: "New Task")
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
