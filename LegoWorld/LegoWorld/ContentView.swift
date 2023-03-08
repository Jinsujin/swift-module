//
//  ContentView.swift
//  LegoWorld
//
//  Created by Sujin Jin on 2023/03/03.
//

import SwiftUI
import StorageManager

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(StorageManager().text)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
