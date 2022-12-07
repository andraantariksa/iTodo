import SwiftUI

struct CircleShape: Shape {
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: 0)
        var path = Path()
        path.addArc(center: center, radius: rect.height, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 180), clockwise: false)
        path.closeSubpath()
        return path
    }
}

struct CircleShape_Previews: PreviewProvider {
    static var previews: some View {
        CircleShape()
    }
}
