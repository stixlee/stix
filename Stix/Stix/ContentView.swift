//
//  ContentView.swift
//  Stix
//
//  Created by Michael Lee on 4/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("hello, stix!")
                .font(Font.custom("GoldenGrotesque-Medium", size: 36))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
