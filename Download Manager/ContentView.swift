import SwiftUI

struct ContentView: View {
    @State private var isFetchrEnabled = false
    @State private var hovering: String? = nil
    
    var body: some View {
        VStack(spacing: 5) {
            Button(action: {
                isFetchrEnabled.toggle()
            }) {
                HStack {
                    Text(isFetchrEnabled ? "✓" : "   ")
                    Text("Run in background")
                    Spacer()
                }
                .frame(maxWidth: .infinity, minHeight: 20)
                .background(hovering == "Fetchr" ? Color.blue.opacity(0.4) : Color.clear)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .onHover { over in
                    hovering = over ? "Fetchr" : nil
                    NSCursor.pointingHand.push()
                }
                .onHover { _ in
                    NSCursor.pop()
                }
            }
            .buttonStyle(PlainButtonStyle())
            Divider()
            Button(action: {}) {
                HStack {
                    Text("   ")
                    Text("Preferences...")
                    Spacer()
                }
                .frame(maxWidth: .infinity, minHeight: 20)
                .background(hovering == "Preferences" ? Color.blue.opacity(0.4) : Color.clear)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .onHover { over in
                    hovering = over ? "Preferences" : nil
                    NSCursor.pointingHand.push()
                }
                .onHover { _ in
                    NSCursor.pop()
                }
            }
            .buttonStyle(PlainButtonStyle())
            Divider()
            Button(action: {
                NSApplication.shared.terminate(self)
            }) {
                HStack {
                    Text("   ")
                    Text("Quit")
                    Spacer()
                }
                .frame(maxWidth: .infinity, minHeight: 20)
                .background(hovering == "Quit" ? Color.blue.opacity(0.4) : Color.clear)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .onHover { over in
                    hovering = over ? "Quit" : nil
                    NSCursor.pointingHand.push()
                }
                .onHover { _ in
                    NSCursor.pop()
                }
            }
            .buttonStyle(PlainButtonStyle())
        }
        .frame(width: 170, height: 100)
        .padding(.horizontal, 7)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
