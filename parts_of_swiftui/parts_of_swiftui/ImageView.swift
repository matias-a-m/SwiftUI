//
//  ImageView.swift
//  parts_of_swiftui
//
//  Created by matias on 15/12/2023.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack {
            Spacer()
            Image("swiftdata").resizable()
                .scaledToFit()
    //            .frame(width: 200, height: 200)
                .background(Color.blue)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.pink, lineWidth: 6.0))
            .shadow(color: Color.gray ,radius: 6)
            
            Spacer()
            
            HStack {
                Spacer()
                Image(systemName: "macbook").resizable().frame(width: 50.0, height: 30.0, alignment:.center)
                    .foregroundColor(Color.green)
                    .scaledToFit()
                    .padding(.all, 25.0)
                    .background(Color.black)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.green, lineWidth: 6.0))
                .shadow(color: Color.gray ,radius: 6)
       
                
            Spacer()
            
            Image(systemName: "macbook").resizable().frame(width: 50.0, height: 30.0, alignment:.center)
                .foregroundColor(Color.green)
                .scaledToFit()
                .padding(.all, 25.0)
                .background(Color.black)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.green, lineWidth: 6.0))
                .shadow(color: Color.gray ,radius: 6)
            
            Spacer()
            
            Image(systemName: "macbook").resizable().frame(width: 50.0, height: 30.0, alignment:.center)
                .foregroundColor(Color.green)
                .scaledToFit()
                .padding(.all, 25.0)
                .background(Color.black)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.green, lineWidth: 6.0))
                .shadow(color: Color.gray ,radius: 6)
                
            
            
            Spacer()
            }
            
            List(1..<10) { item in
                Spacer()
                Image(systemName: "macbook").resizable().frame(width: 50.0, height: 30.0, alignment:.center)
                    .foregroundColor(Color.green)
                    .scaledToFit()
                    .padding(.all, 25.0)
                    .background(Color.black)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.green, lineWidth: 6.0))
                .shadow(color: Color.gray ,radius: 6)
            Spacer()
            
          
            }

        }
    }
}
#Preview {
    ImageView()
}
