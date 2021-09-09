//
//  ItemView.swift
//  Layout
//
//  Created by NL on 04/09/2021.
//

import SwiftUI

struct ItemView: View {
    var width: CGFloat = 200
    var height: CGFloat = 100
    var name = ""
    var backgroundColor: Color = .blue
    var body: some View {
        Text(name)
            .foregroundColor(.white)
            .frame(width: width, height: height, alignment: .center)
            .background(backgroundColor)
            .padding(.all, 10)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
