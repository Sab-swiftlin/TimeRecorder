import SwiftUI

struct BottomTabView: View {
    var body: some View {
        TabView {
            RecorderView()
                .tabItem {
                    Text("Clock")
                }
            LogListView()
                .tabItem {
                    Text("List")
                }
        }
    }
}

struct BottomTabView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabView()
    }
}
