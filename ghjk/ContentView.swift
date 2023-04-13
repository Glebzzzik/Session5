//
//  ContentView.swift
//  ghjk
//
//  Created by Глеб Голощапов on 13.04.2023.
//

import SwiftUI
import SwiftSpeech

//Privacy - Microphone Usage Description
//Privacy - Speech Recognition Usage Description

struct ContentView: View {
    
    @State var text: String = ""
    
    var body: some View {
        VStack{
            
            TextField("", text: $text)
            
            Button {
                
            } label: {
                Image("micro")
            }
            .swiftSpeechRecordOnHold(sessionConfiguration: SwiftSpeech.Session.Configuration(locale: Locale(identifier: "Ru-ru")))
            .onRecognizeLatest(update: $text)

            
            
        }.onAppear {
            SwiftSpeech.requestSpeechRecognitionAuthorization()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
