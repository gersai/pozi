
import SwiftUI


struct MonedaView: View {
    @State private var modedaViewModel = MonedaViewModel()
    var body: some View {
        ZStack {
            Button {
                modedaViewModel.tapped()
            } label: {
                Image(systemName:modedaViewModel.imagen)
                    .resizable()
                    .frame(width:50, height: 50)
            }
        }

    }
}

struct MonedaView_Previews: PreviewProvider {
    static var previews: some View {
        MonedaView()
    }
}
