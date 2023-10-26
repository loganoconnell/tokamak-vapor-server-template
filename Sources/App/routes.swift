import Vapor
import TokamakVapor

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

func routes(_ app: Application) throws {
    app.get { req in
        return Root(cornerRadius: 20)
    }
}
