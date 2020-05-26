//
//  LoginView.swift
//  Firebase Login
//
//  Created by Myat Thu Ko on 5/26/20.
//  Copyright © 2020 Myat Thu Ko. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    enum Action {
        case signUp, resetPW
    }
    
    @State private var showSheet = false
    @State private var action: Action?
    
    var body: some View {
        SignInWithEmailView(showSheet: $showSheet, action: $action)
            .sheet(isPresented: $showSheet) {
                if self.action == .signUp {
                    SignUpView()
                } else {
                    ForgotPasswordView()
                }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
