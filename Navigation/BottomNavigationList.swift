import SwiftUI


//make a struct for the bottom navigation bar

struct BottomNavigationList: View {
    @State private var selection = 0
    var body: some View {
        TabView(selection: $selection){
            LandmarkList()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .tag(1)
            Text("Add")
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                    Text("Add")
                }
                .tag(2)
            Text("Profile")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(3)
        }
    }
}

struct BottomNavigationList_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigationList()
    }
}
