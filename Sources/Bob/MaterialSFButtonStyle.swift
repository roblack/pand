import SwiftUI

public struct MaterialSFButtonStyle: ButtonStyle {
    
  public let sfString: String
  public let bold: Bool = false
  public let color: Color = Color.bob
  public let size: CGFloat = 40
    
  public func makeBody(configuration: Self.Configuration) -> some View {
      Image(systemName: sfString)
        .resizable()
        .font(.body.bold())
        .symbolRenderingMode(.hierarchical)
        .foregroundColor(color)
        .frame(width: size, height: size)
        .aspectRatio(contentMode: .fit)
        .opacity(configuration.isPressed ? 0.8 : 1)
        .scaleEffect(configuration.isPressed ? 1.2 : 1, anchor: .center)
        .blur(radius: configuration.isPressed ? 5 : 0)
    }
}
