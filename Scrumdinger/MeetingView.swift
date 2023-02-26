//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Arunesh Mishra on 2/15/23.
//

import SwiftUI

struct MeetingView: View {
    
    // body is an Opaque type that follows the View protocol. It is
    // initialized as a Read-only Computed property of the class.
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack (alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack (alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            Circle()
                .strokeBorder(lineWidth: 24, antialiased: true)
            HStack{
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }
        .padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
