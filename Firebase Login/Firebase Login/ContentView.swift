//
//  ContentView.swift
//  Firebase Login
//
//  Created by Myat Thu Ko on 5/26/20.
//  Copyright © 2020 Myat Thu Ko. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userInfo: UserInfo
    
    var body: some View {
        Group {
            if userInfo.isUserAuthenticated == .undefined {
                Text("Loading...")
            } else if userInfo.isUserAuthenticated == .signedOut {
                LoginView()
            } else {
                HomeView()
            }
        }
        .onAppear {
            self.userInfo.isUserAuthenticated = .signedOut
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
