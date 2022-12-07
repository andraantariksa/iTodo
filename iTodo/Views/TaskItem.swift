import SwiftUI

struct TaskItem: View {
    @State var checked = true
    
    var body: some View {
        HStack {
            Image(systemName: checked ? "checkmark.square.fill" : "square")
                        .foregroundColor(checked ? Color(UIColor.systemBlue) : Color.secondary)
                        .onTapGesture {
                            checked.toggle()
                        }
            VStack {
                Text("Hello there")
                Text("Some preview content")
            }
        }
        .background()
        .shadow(color: .black, radius: 5.0)
    }
}

struct TaskItem_Previews: PreviewProvider {
    static var previews: some View {
        TaskItem()
    }
}
