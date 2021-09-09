//
//  ContentView.swift
//  HelloWorld
//
//  Created by NL on 30/08/2021.
//

import SwiftUI

struct ContentView: View {
    @State var number = 0
    @State var isShowAlert = false
    @State var mess = ""
   
    var body: some View {
        HStack {
            CounterView(number: 5, isShowAlert: $isShowAlert, mess: $mess)
            CounterView(number: 6, isShowAlert: $isShowAlert, mess: $mess)
            CounterView(number: 5, isShowAlert: $isShowAlert, mess: $mess)
        }
        .alert(isPresented: $isShowAlert, content: {
            Alert(title: Text("Error"), message: Text(mess))
        })
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CounterView: View {
    @State var number = 0
    @Binding var isShowAlert: Bool
    @Binding var mess: String
    var body: some View {
        VStack {
            Button(action: {
                if number < 10 {
                    number += 1
                } else {
                    isShowAlert = true
                    mess = "maximum"
                }
                
            }) {
                Image(systemName: "arrowtriangle.up.fill")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .aspectRatio(contentMode: .fit)
                    .accentColor(.red)
            }
            Text("\(number)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding(.all)
            Button(action: {
                if number > 0 {
                    number -= 1
                } else {
                    isShowAlert = true
                    mess = "minimum"
                }
            }) {
                Image(systemName: "arrowtriangle.down.fill")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .aspectRatio(contentMode: .fit)
            }
            
        }
        .frame(width: 100, height: 200, alignment: .center)
    }
}
