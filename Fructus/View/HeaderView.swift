//
//  Created by Robert Petras
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  https://swiftuimasterclass.com
//

import SwiftUI

struct HeaderView: View {
  // MARK: - PROPERTIES
  
  var comp: Comp
  
  @State private var isAnimatingImage: Bool = false

  // MARK: - BODY

  var body: some View {
    ZStack {
      LinearGradient(gradient: Gradient(colors: comp.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
      
      Image(comp.image)
            .resizable()
            .scaledToFit()
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
        .padding(.vertical, 20)
        .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
    } //: ZSTACK
    .frame(height: 440)
    .onAppear() {
      withAnimation(.easeOut(duration: 0.5)) {
        isAnimatingImage = true
      }
    }
  }
}

// MARK: - PREVIEW

struct HeaderView_Previews: PreviewProvider {
  static var previews: some View {
    HeaderView(comp: compData[0])
      .previewLayout(.fixed(width: 375, height: 440))
  }
}
