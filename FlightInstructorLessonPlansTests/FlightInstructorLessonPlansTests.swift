//
//  FlightInstructorLessonPlansTests.swift
//  FlightInstructorLessonPlansTests
//
//  Created by Biene Bryle Sanico on 6/8/25.
//

import XCTest
@testable import FlightInstructorLessonPlans

struct Maneuver {
    let name, description: String
}

class ListOfManueverSelectorViewController: UITableViewController {
    private var items: [Maneuver] = []
    func display(items: [Maneuver]) {
        self.items = items
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
}

final class FlightInstructorLessonPlansTests: XCTestCase {

    func test_emptyList(){
        // given
        // let maneuver = [Maneuver]()
        let sut = makeSUT(items: [])
        
        // when
            // we load the view
        sut.loadViewIfNeeded()
        
        // then
            // we should have an empty list
        XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), 0)
    }
    
    // Red->Green->Refactor
    func test_oneItem(){
        let sut = makeSUT(items: ["test"]) // Added 1 element to the Maneuvers
        
        sut.loadViewIfNeeded()
        
        XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), 1)
    }
    
    private func makeSUT(items: [String]) -> ListOfManueverSelectorViewController {
        let sut = ListOfManueverSelectorViewController()
        sut.display(items: items.map { Maneuver(name: $0, description: $0)})
        return sut
    }

}
