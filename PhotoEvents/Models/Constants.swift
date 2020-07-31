//
//  Constants.swift
//  PhotoEvents
//
//  Created by Rudra Misra on 7/29/20.
//  Copyright © 2020 Rudra Misra. All rights reserved.
//

import UIKit

struct K {
    static let scheduleTableCell = "scheduleTableCell"
    static let scheduleTableCellNIB = "ScheduleTableViewCell"
    static let calanderCell = "CalendarCell"
    static let calanderCellNIB = "DateCollectionViewCell"
    
    struct Colors {
        static let cellBackground = "CellBackground"
        static let inProgressBackground = "InProgressBackground"
        static let paidBackground = "PaidBackground"
        static let pendingBackground = "PendingBackground"
        static let toDoBackground = "ToDoBackground"
    }
}

enum Event{
    case Wedding
    case Birthday
    case Engagement
    case Celebration
}
