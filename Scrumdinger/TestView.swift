//
//  TestView.swift
//  Scrumdinger
//
//  Created by Arunesh Mishra on 2/22/23.
//

import SwiftUI

struct TestView: View {
    @StateObject var speechRecognizer = SpeechRecognizer()
    @State private var isRecording = false
    @State private var englishTranscribedText:String = "English text"
    var body: some View {
        VStack {
            Text("Talkbox Translator").padding([.top], 20)
            Spacer()
                .frame(minHeight: 10)
            HStack {
                Button(action: {
                    if (isRecording) {
                        speechRecognizer.stopTranscribing()
                        isRecording = false
                        englishTranscribedText = speechRecognizer.transcript
                    } else {
                        speechRecognizer.reset()
                        speechRecognizer.transcribe()
                        isRecording = true
                    }
                    
                }) {
                    Text("English")
                        .foregroundColor(.white)
                }
                .padding(15)
                .background(Color(red: 0.4, green: 0.4, blue: 0.4))
                .clipShape(RoundedRectangle(cornerRadius: 15, style: .circular))
                Spacer()
                Button(action: {}) {
                    Text("French")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color(red: 0.4, green: 0.4, blue: 0.4))
                .clipShape(RoundedRectangle(cornerRadius: 15, style: .circular))
            }
            .padding(80)
            Spacer()
                .frame(minHeight: 10)
            
            Text(speechRecognizer.transcript == "" ? "English Text" : speechRecognizer.transcript)
            Spacer()
                .frame(minHeight: 10)
            Text("French translated text")
            Spacer().frame(minHeight: 10)
            Text(isRecording ? "Talkbox Listening ..." : " Talkbox Ready")
                .padding([.bottom], 10)
        
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

