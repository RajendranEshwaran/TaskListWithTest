//
//  TaskListWithTestTests.swift
//  TaskListWithTestTests
//
//  Created by Rajendran Eshwaran on 6/30/25.
//

import XCTest
@testable import TaskListWithTest

final class TaskListWithTestTests: XCTestCase {
    private var vm: TaskListViewModel!
    override func setUpWithError() throws {
        vm = TaskListViewModel()
    }

    override func tearDownWithError() throws {
       vm = nil
    }
    
    func testTaskWithEmptyName() {
        let newTask = ""
        
        // When
        let count  = vm.tasks.count
        
        // Given == giving input
        vm.addTask(name: newTask)
        
        // Then == Result
        XCTAssertEqual(vm.tasks.count, count)
    }
    
    func testAddTask() {
        // Arrange
        
        let count = vm.tasks.count
        let newTask = "New Task"
        
        // Act
        vm.addTask(name: newTask)
        
        // Assertion
        XCTAssert(vm.tasks.count == count + 1)
        XCTAssert(vm.tasks.last?.name == newTask)
    }
    
}
