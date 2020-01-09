//
//  DetailView.swift
//  Xnews-SwiftUI
//
//  Created by Abdul Diallo on 1/8/20.
//  Copyright © 2020 Abdul Diallo. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url : String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "")
    }
}

