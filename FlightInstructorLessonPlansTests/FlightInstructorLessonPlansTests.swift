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
    convenience init(items: [String]) {
        self.init()
    }
}

final class FlightInstructorLessonPlansTests: XCTestCase {

    func test_emptyList(){
        // given
        // let maneuver = [Maneuver]()
        let items = [String]()
        let sut = ListOfManueverSelectorViewController(items: items)
        
        // when
            // we load the view
        sut.loadViewIfNeeded()
        
        // then
            // we should have an empty list
        XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), 0)
    }

}
