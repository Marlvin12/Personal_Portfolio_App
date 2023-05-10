//
//  ResumeView.swift
//  portfolio
//
//  Created by Marlvin Goremusandu on 5/10/23.
//

import Foundation
import SwiftUI

struct ResumeView: View {
    var body: some View {
        VStack {
            Text("Resume")
                .font(.largeTitle)
            Spacer()
            Text("Coming soon...")
                .font(.title)
            Spacer()
        }
        .padding()
        .navigationBarTitle("Resume", displayMode: .inline)
    }
}

struct ResumeView_Previews: PreviewProvider {
    static var previews: some View {
        ResumeView()
    }
}
