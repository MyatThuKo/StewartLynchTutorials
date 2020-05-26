//
//  HomeView.swift
//  Firebase Login
//
//  Created by Myat Thu Ko on 5/26/20.
//  Copyright © 2020 Myat Thu Ko. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var userInfo: UserInfo
    
    var body: some View {
        NavigationView {
            Text("Home View")
            .navigationBarTitle("Firebase Login")
            .navigationBarItems(trailing:
                Button("Sign Out") {
                    self.userInfo.isUserAuthenticated = .signedOut
            })
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
