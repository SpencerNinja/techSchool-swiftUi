//
//  AddView.swift
//  TaskManager
//
//  Created by Spencer Hurd on 12/6/21.
//

import SwiftUI

struct AddView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    @Environment(\.presentationMode) var presentationMode
    
    @State var textFieldText: String = ""
    @State var showAlert: Bool = false
    @State var alertMessage: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type somthing here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: Constants.fieldHeight)
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(Constants.cornerRadius)
                
                // Button to add a task to our list and save it
                Button {
                    saveButtonPressed()
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .frame(height: Constants.fieldHeight)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(Constants.cornerRadius)
                }
            }
            .padding(14)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Add a task 🖊")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPressed() {
        if textIsValid() {
            listViewModel.addTask(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsValid() -> Bool {
        if textFieldText.count < 3 {
            alertMessage = "Must be at least 3 characters!"
            showAlert.toggle()
            return false
        }
        return true
    }
    func getAlert() -> Alert {
        Alert(title: Text(alertMessage))
    }
    
    
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}

extension AddView {
    struct Constants {
        static var fieldHeight: CGFloat = 55
        static var cornerRadius: CGFloat = 10
    }
}
