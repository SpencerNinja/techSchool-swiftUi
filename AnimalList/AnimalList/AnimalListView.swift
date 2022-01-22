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
                ListItemView(animal: animal)
                
            }
            .onDelete(perform: deleteAnimal)
        }
        .listStyle(InsetListStyle())
    }
    
    func deleteAnimal(indexSet: IndexSet) {
        vm.animals.remove(atOffsets: indexSet)
    }
}

extension AnimalListView {
    struct ListItemView: View {
        let animal: Animal
        var body: some View {
            ZStack {
                HStack {
                    VStack {
                        Text(animal.name)
                            .font(.headline)
                    }
                    .padding()
                    Spacer()
                    VStack {
                        Image(systemName: animal.isMammal ? "checkmark" : "x.square")
                    }
                    .padding()
                }
                .background(animal.isMammal ? Color.green : Color.red)
            }
            .frame(maxWidth: .infinity)
            .background(.blue)
            .cornerRadius(15)
            .shadow(color: .black, radius: 10, x: 5, y: 5)
            .onTapGesture {
                print(animal.sound)
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
