//
//  Created by Robert Petras
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  https://swiftuimasterclass.com
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES

    @AppStorage("Onboarding") var Onboarding: Bool?
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    @AppStorage("onButton") var onButton: Bool?
    
    // MARK: - BODY

    var body: some View {

        Button(action: {
            // Navigate to the ContentView page
            Onboarding = false
            isOnboarding = false
            onButton = true
               
        }) {
                HStack(spacing: 8) {
                    Text("Start")
                    
                    Image(systemName: "arrow.right.circle")
                        .imageScale(.large)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(
                    Capsule().strokeBorder(Color.white, lineWidth: 1.25)
                )
            } //: BUTTON
        .accentColor(Color.white)
    }
}
