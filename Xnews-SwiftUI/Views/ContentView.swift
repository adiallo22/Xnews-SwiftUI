//
//  ContentView.swift
//  Xnews-SwiftUI
//
//  Created by Abdul Diallo on 1/8/20.
//  Copyright © 2020 Abdul Diallo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkMng = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkMng.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("XNews")
        }
        .onAppear {
            self.networkMng.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

