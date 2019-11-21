//
//  ContentView.swift
//  SwiftUIList
//
//  Created by Ramill Ibragimov on 21.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

// To dynamically load the list with views
struct listCell {
    var name: String
    var num: Int
}

struct ContentView: View {
    
    var listCells = [
        listCell(name: "First", num: 1),
        listCell(name: "Second", num: 2),
        listCell(name: "Third", num: 3),
        listCell(name: "Fourth", num: 4)
    ]
    
    var body: some View {
        List(listCells, id: \.name) { listCell in
            VStack {
                Text(listCell.name)
                Text("\(listCell.num)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
