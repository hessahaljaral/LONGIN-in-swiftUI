//
//  ContentView.swift
//  LONGIN
//
//  Created by hessah abdullah aljarallah on 06/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var isLoginMode = false
    @State private var username = ""
    @ State var password = ""
    var body: some View {
       
        NavigationView{
            ScrollView{
                
                VStack(spacing: 16){
                    Picker(selection: $isLoginMode, label:  Text("Picker here")) {
                        Text("Login")
                            .tag(true)
                        Text("Create Account")
                            .tag(false)
                    }.pickerStyle(SegmentedPickerStyle())
                        
                    if !isLoginMode{
                        Button{
                            
                        } label: {
                            Image(systemName: "person.circle")
                                .foregroundColor(Color(hue: 0.102, saturation: 0.53, brightness: 0.779))
                                .font(.system(size: 64))
                                .padding()
                        }
                        
                    }
                    
                    
                    Group{
                        TextField("User Name", text: $username)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                        SecureField("Password", text: $password)
                    }
                    .padding(12)
                    .background(Color.white)
                    
                    Button {
                        handleAction()
                    } label: {
                        HStack{
                            Spacer()
                            Text(isLoginMode ? "Log In": "Creat Account")
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                .font(.system(size: 14, weight: .semibold))
                            Spacer()
                        }.background(Color(hue: 0.1, saturation: 0.908, brightness: 0.951))
                      
                    }

                }
                .padding()
                
            }
            .navigationTitle(isLoginMode ?"Log in" : "Creat Accont")
            .background(Color(.init(white: 0, alpha: 0.05))
                .ignoresSafeArea())
            
            
        }
        
        
        
    }
    private func handleAction(){
        if isLoginMode {
            print("Should log into Firebase whith existing credentials")
        }else{
            print("Register a new account inside of Firebase Auth and then store imge in Storage somehow.....")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
