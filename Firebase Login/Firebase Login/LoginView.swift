//
//  LoginView.swift
//  Firebase Login
//
//  Created by Myat Thu Ko on 5/26/20.
//  Copyright © 2020 Myat Thu Ko. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var userInfo: UserInfo
    
    var body: some View {
        Button("Login") {
            self.userInfo.isUserAuthenticated = .signedIn
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
