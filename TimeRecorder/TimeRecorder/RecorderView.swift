import SwiftUI

struct RecorderView: View {
    var body: some View {
        VStack {
            Text("2020/10/01")
            Text("(木)")
            Text("10:10")
                .font(.system(size: 60, weight: .bold, design: .default))
            Spacer().frame(width: 0, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            HStack {
                Text("出勤").foregroundColor(.gray)
                Text("10:10")
                    .foregroundColor(.gray)
            }
            HStack {
                Text("休入").foregroundColor(.gray)
                Text("12:10").foregroundColor(.gray)
            }
            HStack {
                Text("休出")
                    .foregroundColor(.gray)
                Text("13:10").foregroundColor(.gray)
            }
            HStack {
                Text("退勤")
                    .foregroundColor(.gray)
                Text("20:10").foregroundColor(.gray)
            }
            Spacer().frame(width: 0, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Button(action: {
                print("Button Tapped")
            }) {
                Text("退勤")
                    .padding(.horizontal, 50)
                    .padding(.vertical, 20)
            }
            .foregroundColor(.white)
            .background(Color.pink)
        }
    }
}

struct RecorderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RecorderView()
            RecorderView()
                .previewDevice("iPhone 11")
        }
    }
}
