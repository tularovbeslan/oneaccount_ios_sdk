//
//  OneAccount.swift
//  oneaccount_ios_sdk
//
//  Created by Kiura Magomadov on 29/09/2019.
//  Copyright © 2019 Oila Studio. All rights reserved.
//

import Foundation
import UIKit

public class OneAccount {
    var externalId: String
    public init(externalId: String) {
        self.externalId = externalId
    }
    
    public func authenticate(deeplink:String) -> UUID {
        let (generatedUrl, uuid) = generateURLAndUUID(deeplink, nil)
        if let url = URL(string: generatedUrl) {
            UIApplication.shared.open(url)
        }
        return uuid
    }
    
    public func authenticate(deeplink: String, expiresIn: Int64) -> UUID {
        let (generatedUrl, uuid) = generateURLAndUUID(deeplink, expiresIn)
        if let url = URL(string: generatedUrl) {
            UIApplication.shared.open(url)
        }
        return uuid
    }
    
    func generateURLAndUUID(_ deeplink:String, _ expiresIn: Int64?) -> (String, UUID) {
        let uuid: UUID = UUID()
        let expires: Int64 = expiresIn ?? Date().UTCWithOffset(offsetInSeconds: 60.0)
        let generatedUrl = "https://launch.oneaccount.app/auth?externalId=\(self.externalId)&uuid=\(uuid.uuidString)&expires=\(expires)&url=\(deeplink)"
        return (generatedUrl, uuid)
    }
}
