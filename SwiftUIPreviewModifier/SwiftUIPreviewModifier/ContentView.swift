//
//  ContentView.swift
//  SwiftUIPreviewModifier
//
//  Created by Mark Hardwick on 17/02/2020.
//  Copyright © 2020 Designibl. MIT License.
//

import SwiftUI

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .modifier(PreviewCreator(
            darkMode: true,
            accessibilityXXXLText: false,
            iPhoneSE: false,
            iPhoneMax: false,
            iPad: false
        ))
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {Spacer()}
            Text("SwiftUI Preview Modifier")
                .font(.largeTitle)
            Text("By Mark Hardwick")
                .font(.headline)
            Spacer()
        }
        .background(Color("primary").edgesIgnoringSafeArea(.all))
    }
}
