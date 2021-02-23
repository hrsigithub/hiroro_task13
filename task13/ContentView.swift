//
//  ContentView.swift
//  task13
//
//  Created by Hiroshi.Nakai on 2021/02/24.
//

import SwiftUI

struct task : Identifiable {
    var id = UUID()
    var fruitsName: String
    var isDone : Bool

    init(fruitsName: String, isDone: Bool) {
        self.fruitsName = fruitsName
        self.isDone = isDone
    }
}

struct ContentView: View {

    private var tasks: [task] = [
        .init(fruitsName: "りんご", isDone: false),
        .init(fruitsName: "みかん", isDone: true),
        .init(fruitsName: "バナナ", isDone: false),
        .init(fruitsName: "パイナップル", isDone: true),

    ]


    var body: some View {
        VStack {
            List {
                ForEach(tasks) { task in
                    HStack {
                        Image(systemName: "checkmark")
                            .foregroundColor(task.isDone ? .red : .white)

                        Text(task.fruitsName)
                        Spacer()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
