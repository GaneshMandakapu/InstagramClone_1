
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                    VStack {
                        Navigation()
                            .padding(.horizontal)
                        StoryList()
                          .padding(.leading)
                      ScrollView(showsIndicators: false) {
                        ForEach(0..<10) { _ in
                          FeedItem()
                        }
                      }
                        Spacer()
                    }
                    .navigationBarHidden(true)
                    .tabItem {
                        Image(Asset.home.name)
                    }
                Text("Search")
                    .tabItem {
                        Image(Asset.search.name)
                    }
                Text("Reels")
                    .tabItem {
                        Image(Asset.reels.name)
                    }
                Text("Shopping")
                    .tabItem {
                        Image(Asset.shop.name)
                    }
                Text("Profile")
                    .tabItem {
                        Image(Asset.meTab.name)
                    }
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
