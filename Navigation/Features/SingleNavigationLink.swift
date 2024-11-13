//
//  SingleNavigationLink.swift
//  Navigation
//
//  Created by Joan May on 13/11/24.
//

import SwiftUI
struct DetailView : View {
    let number : Int
    var body: some View {
        Text("Detail \(number)")
    }
    
    init(number: Int) {
        self.number = number
        print("Creating detail view \(number)")
    }
}
struct SingleNavigationLink: View {
    var body: some View {
        NavigationStack {
            List (0..<1000){ i in
                NavigationLink("Tap me"){
                    DetailView(number: i)
                }
            }
         
        }
    }
}

#Preview {
    SingleNavigationLink()
}
