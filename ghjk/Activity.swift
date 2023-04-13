//
//  Activity.swift
//  ghjk
//
//  Created by Глеб Голощапов on 13.04.2023.
//

import SwiftUI
import ActivityIndicatorView

struct Activity: View {
    
    @State private var showLoadingIndicator: Bool = true
    
    var body: some View {
        VStack {
            
            

            
            ActivityIndicatorView(isVisible: $showLoadingIndicator, type: .gradient([Color.white, Color.blue]))
                .frame(width: 50, height: 50)
        }
    }
}

struct Activity_Previews: PreviewProvider {
    static var previews: some View {
        Activity()
    }
}
