import SwiftUI

public func withReduceMotionAnimation<Result>(_ animation: Animation? = .default, _ body: () throws -> Result) rethrows -> Result {
  if UIAccessibility.isReduceMotionEnabled {
    return try body()
  } else {
    return try withAnimation(animation, body)
  }
}

//struct AnimationWithReduceMotion: ViewModifier {
//  
//  var animation: Animation?
//  let value: any Equatable
//  
//  func body(content: Content) -> some View {
//    if UIAccessibility.isReduceMotionEnabled {
//      return content
//        .animation(animation, value: value)
//    } else {
//      return content
//    }
//  }
//}
//
//extension View {
//  func animationWithReducedMotion<V>(_ animation: Animation?,
//                                     value: V) -> some View where V : Equatable {
//    modifier(AnimationWithReduceMotion(animation: animation, value: value))
//  }
//}
