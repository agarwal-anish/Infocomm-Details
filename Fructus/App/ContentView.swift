//
//  Created by Robert Petras
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  https://swiftuimasterclass.com
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
    
  @AppStorage("ContentView") var ContentView: Bool = true
  
  @State private var isShowingSettings: Bool = false
    @State private var ContentViewVisible = true
    @AppStorage("isContent") var isContent: Bool = true

    var comp: [Comp] = CompData

  // MARK: - BODY

  var body: some View {

    NavigationView {
      List {
        ForEach(comp) { item in
          NavigationLink(destination: DetailView(comp: item)) {
            RowView(comp: item)
              .padding(.vertical, 4)
          }
            
        }
      }
      .navigationTitle("Infocomm")
      .navigationBarItems(
        trailing:
          Button(action: {
            isShowingSettings = true
          }) {
            Image(systemName: "slider.horizontal.3")
          } //: BUTTON
          .sheet(isPresented: $isShowingSettings) {
            SettingsView()
          }
      )
    } //: NAVIGATION
    .navigationViewStyle(StackNavigationViewStyle())
      
  }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
      ContentView(comp: CompData)
  }
}


