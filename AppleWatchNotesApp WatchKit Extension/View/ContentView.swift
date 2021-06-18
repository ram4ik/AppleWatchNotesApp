//
//  ContentView.swift
//  AppleWatchNotesApp WatchKit Extension
//
//  Created by Ramill Ibragimov on 18.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 6) {
                TextField("Add New Note", text: $text)
                Button(action: {
                    guard text.isEmpty == false else { return }
                    let note = Note(id: UUID(), text: text)
                    notes.append(note)
                    text = ""
                    save()
                }, label: {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 42, weight: .semibold))
                })
                .fixedSize()
                //.buttonStyle(BorderedButtonStyle(tint: .accentColor))
                .buttonStyle(PlainButtonStyle())
                .foregroundColor(.accentColor)
            }
            Spacer()
            Text("\(notes.count)")
        }
        .navigationTitle("Notes")
    }
    
    private func save() {
        dump(notes)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
