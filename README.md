# tokamak-vapor-server-template

### A template for a Vapor web server that uses SwiftUI as the renderer

From `Sources/App/routes.swift`:

```swift
struct Root: TokamakStaticHTML.View {
    let cornerRadius: Int

    var body: some TokamakStaticHTML.View {
        VStack {
            Text("Hello, World!")
                .foregroundColor(.white)
                .padding(.all)
                .border(.white)
                .cornerRadius(CGFloat(cornerRadius))
        }
        .frame(width: CGFloat(Int.max), height: CGFloat(Int.max))
        .background(Color(.black))
    }
}
```
