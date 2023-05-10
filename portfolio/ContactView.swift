
//  ContactView.swift
//  personal_portfolio
//
//  Created by Marlvin Goremusandu on 5/10/23.
//

import Foundation
import SwiftUI

struct ContactView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text("Email:")
                    .font(.headline)
                Spacer()
                Text("marlvingore.edu@gmail.com")
                    .font(.subheadline)
            }
            
            HStack {
                Text("LinkedIn:")
                    .font(.headline)
                Spacer()
                Text("linkedin.com/in/marlvingoremusandu")
                    .font(.subheadline)
            }
            
            HStack {
                Text("GitHub:")
                    .font(.headline)
                Spacer()
                Text("github.com/Marlvin12")
                    .font(.subheadline)
            }
        }
        .padding()
        .navigationBarTitle("Contact Information", displayMode: .inline)
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}

