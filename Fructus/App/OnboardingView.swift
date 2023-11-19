//
//  Created by Robert Petras
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  https://swiftuimasterclass.com 
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    var comp: [Comp] = CompData
//    var lj: [LJ] = LJData
    
    
   @AppStorage("Onboarding") var Onboarding: Bool = true
   @State private var ljOnboardingview = true
    
    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(comp[0...1]) { item in
                AllCardView(comp: item)
                
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
