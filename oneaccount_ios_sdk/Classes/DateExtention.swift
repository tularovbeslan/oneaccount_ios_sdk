//
//  DateExtention.swift
//  oneaccount_ios_sdk
//
//  Created by Kiura Magomadov on 29/09/2019.
//  Copyright © 2019 Oila Studio. All rights reserved.
//

import Foundation

extension Date {
    func UTCWithOffset(offsetInSeconds: Double) -> Int64 {
        return Int64(self.addingTimeInterval(TimeInterval(offsetInSeconds)).timeIntervalSince1970 * 1000)
    }
}
