import SwiftUI

struct NewDogView: View {
    @EnvironmentObject var dataManager: DataManager
    @State private var newDog = ""

    var body: some View 
    {
        VStack
        {
            TextField("Dog", text: $newDog)
            Button{
                dataManager.addDogs(dogBreed: newDog)
            }label:{
                Text("save")
            }
        }.padding()
    }
}

#Preview {
    NewDogView()
}
