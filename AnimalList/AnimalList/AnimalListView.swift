//
//  AnimalListView.swift
//  AnimalList
//
//  Created by Spencer Hurd on 1/10/22.
//

import SwiftUI

struct AnimalListView: View {
    
    @EnvironmentObject var vm: AnimalViewModel
    
    var body: some View {
        List {
            ForEach(vm.animals) { animal in
                ZStack {
                    HStack {
                        VStack {
                            Text(animal.name)
                        }
                        .padding()
                        Spacer()
                        VStack {
                            Text(animal.isMammal ? "Yes" : "No")
                        }
                        .padding()
                    }
                    .background(.red)
                }
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(15)
                onTapGesture {
                    print(animal.sound)
                }
            }
        }
    }
}

struct AnimalListView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalListView()
            .environmentObject(AnimalViewModel())
    }
}
