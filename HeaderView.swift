//
//  HeaderView.swift
//  GitHubPractice1
//
//  Created by Jak Flaherty on 9/19/23.
//

import Foundation
import SwiftUI

struct HeaderView: View {
    
    @Binding var tasks: [Task]
    @State var enteredString = ""
    
    var body: some View {
        HStack{
            TextField("Enter a task here", text: $enteredString)
                .frame(width: .infinity, height: 100)
                .padding()
                .textFieldStyle(.roundedBorder)
            
            
            Button(action: {
               var taskString = Task(nameOfTask: enteredString)
                tasks.append(taskString)
                
                
                
                
            }, label: {
                Text("Click me")
            })
            .frame(width: 250, height: 150)
            .background(.blue)
            .foregroundColor(.white)
        }
    }
}

