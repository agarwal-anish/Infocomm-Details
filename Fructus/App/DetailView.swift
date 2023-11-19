//
//  Created by Robert Petras
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  https://swiftuimasterclass.com
//

import SwiftUI

struct DetailView: View {
  // MARK: - PROPERTIES
  
  var comp: Comp

  // MARK: - BODY

  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .center, spacing: 20) {
          // HEADER
          HeaderView(comp: comp)
          
          VStack(alignment: .leading, spacing: 20) {
            // TITLE
            Text(comp.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundColor(comp.gradientColors[1])
            
            // HEADLINE
            Text(comp.headline)
              .font(.headline)
              .multilineTextAlignment(.leading)
            
            // NUTRIENTS
            AllDetailsView(comp: comp)
            
            // SUBHEADLINE
            Text("Learn more about \(comp.title)".uppercased())
              .fontWeight(.bold)
              .foregroundColor(comp.gradientColors[1])
            
            // DESCRIPTION
            Text(comp.description)
              .multilineTextAlignment(.leading)
              
              // Link
              
            
              .padding(.top, 10)
              .padding(.bottom, 40)
          } //: VSTACK
          .padding(.horizontal, 20)
          .frame(maxWidth: 640, alignment: .center)
        } //: VSTACK
        .navigationBarTitle(comp.title, displayMode: .inline)
        .navigationBarHidden(true)
      } //: SCROLL
      .edgesIgnoringSafeArea(.top)
    } //: NAVIGATION
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

// MARK: - PREVIEW

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(comp: CompData[0])
  }
}
