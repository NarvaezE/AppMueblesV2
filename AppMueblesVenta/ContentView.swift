//
//  ContentView.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 29/07/22.
//

import SwiftUI

struct ContentView: View {
    let itemsPicker = ["Sevilla", "Cádiz", "Huelva", "Córdoba", "Málaga", "Granada", "Jaén", "Álmería"]
    
    @State private var textFieldSelection: String = ""
    @State private var pickerSelection: String = "Sevilla"
    @State private var sliderSelection: Double = 50
    @State private var colorSelection: Color = .red
    @State private var datePickerSelection: Date = Date()
    @State private var toggleSelection: Bool = true
    
    @State private var showPopover = false
    @State private var buttonPressed: String?
    
    var body: some View {
        VStack(spacing: 15) {
            Button("Show Popover") {
                showPopover.toggle()
            }
            if let buttonPressed = buttonPressed {
                Text("You pressed \"\(buttonPressed)\" button")
            }
            
        }
        .popover(isPresented: $showPopover) {
            NavigationView {
                Form {
                    Section(header: Text("First section")) {
                        Text("Hello, World!")
                        TextField("Select text", text: $textFieldSelection)
                        Slider(value: $sliderSelection, in: 0...100)
                        Picker("Select province", selection: $pickerSelection) {
                            ForEach(itemsPicker, id: \.self) {
                                Text($0)
                            }
                        }.navigationBarTitleDisplayMode(.inline)
                    }
                    Section(header: Text("Second section")) {
                        ColorPicker("Select Color", selection: $colorSelection)
                        DatePicker("Select date", selection: $datePickerSelection)
                        Toggle("Enabled", isOn: $toggleSelection)
                        Button("Done") {
                            //Do something
                        }
                        .disabled(!toggleSelection)
                    }
                    .listRowBackground(Color.yellow.opacity(0.3))
                    
                    Section() {
                        HStack {
                            Text("Version")
                            Spacer()
                            Text("1.0.0")
                        }
                    }
                }
            }
            .frame(idealWidth: 400, maxWidth: .infinity, idealHeight: 600, maxHeight: .infinity)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
