import SwiftUI

struct Stage1Game3View: View {
    
    @EnvironmentObject var stage1ViewModel: Stage1ViewModel
    @EnvironmentObject var appRouter: NavRouter<AppRouteState>
    @StateObject var stage1Game3ViewModel = Stage1Game3ViewModel()
    
    var body: some View {
        ZStack {
            Image("back")
                .resizable()
                .ignoresSafeArea(.all)
            Image(stage1Game3ViewModel.phraseSource.type.imageName)
                .resizable()
                .scaledToFit()
                .padding(.horizontal)
            VStack {
                HStack {
                    Button(action: {
                        appRouter.pop()
                    }, label: {
                        Image("backArrow")
                            .resizable()
                            .frame(width: 12, height: 20)
                            .padding()
                    })
                    Spacer()
                }
                Spacer()
            }
            
            switch stage1Game3ViewModel.state {
            case .text0:
                stageView {
                    stage1Game3ViewModel.nextText(.text1)
                }
            case .text1:
                stageView {
                    stage1Game3ViewModel.nextText(.text2)
                }
            case .text2:
                stageView {
                    stage1Game3ViewModel.nextText(.text3)
                }
            case .text3:
                stageView {
                    stage1Game3ViewModel.nextText(.text4)
                }
            case .text4:
                stageView {
                    stage1Game3ViewModel.nextText(.text5)
                }
            case .text5:
                stageView {
                    stage1Game3ViewModel.nextText(.text6)
                }
            case .text6:
                stageView {
                    stage1Game3ViewModel.nextText(.game)
                }
            case .game:
//                stageView {
//                    
//                }
                
                SRPView().environmentObject(SPRViewModel())
            }
        }
    }
    
    @ViewBuilder private func stageView(nextState: @escaping () -> Void) -> some View {
        VStack {
            Text(stage1Game3ViewModel.textOutput)
                .padding(12)
                .foregroundStyle(.white)
                .font(.system(size: 14).monospaced().weight(.bold))
                .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .topLeading)
                .multilineTextAlignment(.leading)
                .background(Color(.textBack))
                .border(Color.black, width: 2)
                .padding(.bottom, 2)
            
            Button(action: {
                nextState()
            }, label: {
                Text("Дальше")
                    .padding(12)
                    .foregroundStyle(.white)
                    .opacity(stage1Game3ViewModel.printingFinished ? 0.3 : 1.0)
                    .font(.system(size: 18).monospaced().weight(.bold))
                    .frame(width: UIScreen.main.bounds.width * 0.9)
                    .background(Color(.nextButton))
                    .border(Color.black, width: 2)
            })
            .disabled(stage1Game3ViewModel.printingFinished)
            .padding(.bottom)
            
            
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottom)
            .onAppear {
                stage1Game3ViewModel.printingFinished.toggle()
                Task {
                    try await writeTextBySymbols()
                }
                
            }
    }
    
    func writeTextBySymbols() async throws {
        for char in stage1Game3ViewModel.phraseSource.text {
            stage1Game3ViewModel.textOutput += String(char)
            if char != " " {
                try await Task.sleep(nanoseconds: 20_000_000)
            }
        }
        stage1Game3ViewModel.printingFinished.toggle()
    }
    
}

    
