//
//  UserInfo.swift
//  Firebase Login
//
//  Created by Myat Thu Ko on 5/26/20.
//  Copyright © 2020 Myat Thu Ko. All rights reserved.
//

import Foundation

class UserInfo: ObservableObject {
    
    enum FBAuthState {
        case undefined, signedOut, signedIn
    }
    @Published var isUserAuthenticated: FBAuthState = .undefined
    
    func configureFirebaseStateDidChange() {
        self.isUserAuthenticated = .signedOut
//        self.isUserAuthenticated = .signedIn
    }
}
