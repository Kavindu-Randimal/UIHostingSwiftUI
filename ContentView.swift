//
//  ContentView.swift
//  hostingController
//
//  Created by Randimal Geeganage on 2021-05-05.
//  Copyright © 2021 com.sample. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var isOn = false
    @State var FirstName = ""
    @State var MiddleName = ""
    @State var LastName = ""
    @State var DisplayName = ""
    @State var Email = ""
    @State var Company = ""
    @State var JobTitle = ""
    
    var body: some View {
        NavigationView {
            VStack{
//                Form {
                    VStack {
                        Text("Add new External Contact ")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 18))
                            .padding(.bottom)
                        HStack {
                            VStack {
                                Text("First Name:*")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                TextField("First Name", text: $FirstName)
                            }
                            
                            VStack {
                                Text("Middle Name:*")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                TextField("Middle Name", text: $MiddleName)
                            }
                            VStack {
                                Text("Last Name:*")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                TextField("Last Name", text: $LastName)
                            }
                        }
                    }
                    VStack {
                        Text("Display Name as:")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        TextField("Display Name as", text: $DisplayName)
                    }
                    VStack {
                        Text("Email:*")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        TextField("Email", text: $Email)
                    }
                    VStack {
                        Text("Company:")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        TextField("Company", text: $Company)
                    }
                    VStack {
                        Text("Job Title:")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        TextField("Job Title", text: $JobTitle)
                    }
                    HStack {
                        Button("CLOSE"){
                            //                          action
                        }
                        .frame(maxWidth: .infinity,maxHeight: 40)
                        .border(Color.green)
                        .foregroundColor(.green)
                        Button("ADD TO ADDRESSBOOK"){
                            //                            action
                        }
                        .frame(maxWidth: .infinity,maxHeight: 40)
                        .background(Color.green)
                        .foregroundColor(.white)
                    }
                    .font(.system(size: 13, weight: .bold))
                }
        .offset(y: -140)
//            }
        }.navigationBarTitle("Setting")
            .frame(alignment: .top)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .font(.system(size: 13))
            .padding()
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
