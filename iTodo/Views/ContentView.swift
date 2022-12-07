import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                CircleShape()
                    .fill(Color(red: 1.0, green: 0.533, blue: 0.294))
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 250)
                Spacer()
            }
            .frame(maxHeight: .infinity)
            
            LazyVStack(spacing: 10) {
                ForEach(1...10, id: \.self) { value in
                    TaskItem()
                }
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.945, green: 0.827, blue: 0.701))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
