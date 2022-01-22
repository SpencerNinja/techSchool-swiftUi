//
//  ListView.swift
//  TaskManager
//
//  Created by Spencer Hurd on 12/6/21.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            ForEach(listViewModel.allTasks) { task in
                ListRowView(task: task)
                    .onTapGesture {
                        withAnimation(.linear) {
                            listViewModel.updateTask(task: task)
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleteTask)
            .onMove(perform: listViewModel.moveTask)
        }
        .navigationBarTitleDisplayMode(.inline)
        .listStyle(PlainListStyle())
        .navigationTitle("To Do List")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
        .environmentObject(ListViewModel())
    }
}
