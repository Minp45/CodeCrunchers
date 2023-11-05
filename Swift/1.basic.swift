/****** App protocol *******/
// nameOfApp.swift
import SwiftUI
// The @main attribute identifies the app’s entry point.
// The structure’s body property returns one or more scenes, which in turn provide content for display. 
@main
struct nameOfApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

/****** View protocol *******/
// ContentView.swift
import SwiftUI
// View protocol and describes the view’s content and layout
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}
// The preview declaration creates a preview for that view.
#Preview {
    ContentView()
}
// to view preview: select Editor > Canvas to show it.

/********* SwiftUI View ********/
import SwiftUI


struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}


#Preview {
    CircleImage()
}

/****** Customize the text view *******/
struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .font(.title)
            .foregroundColor(.green)
    }
}

/****** Combine views using stacks *******/


/********* General Uses ********/
// padding: add padding mean add space around the text
    .padding()

// spacer:
    Spacer()

/********* Map Views ********/
import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    private var region: MKCoordinateRegion{
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView()
}