
import SwiftUI



struct SRPView: View {

    @EnvironmentObject var sprViewModel: SPRViewModel
    
    
    let myChoise = ["myP", "myR", "myS"]
    let enemyChoise = ["enP", "enR", "enS"]
    
    var body: some View {
            
            VStack{
                switch sprViewModel._gameStatus {
                case .initial:
                    initialView()
                case .animating:
                    animatingView()
                case .result:
                    resultView()
                case .endGame:
                    endGameView()
                }
            }


    }
    

    
    func initialView() -> some View {
          
            VStack {
                //Enemy Half
                Spacer()
                VStack  {
                    HStack {
                        Image(myChoise.randomElement() ?? "myR")
                            .frame(width: 40, height: 40)
                            .padding(.leading, 32)
                        
                        Spacer()
                        
                        Image(enemyChoise.randomElement() ?? "enP")
                            .frame(width: 40, height: 40)
                            .padding(.trailing, 32)
                        
                    }
                       
                    
                } .padding(.bottom, 60)
                
                //PlayerHalf
                VStack {
                    Text("Чем играешь?")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: 280)
                        .background(Color.mint.opacity(1))
                        .border(Color.black, width: 2)
                    
                    VStack {
                        Button(action: {
                            playGame(with: .rock)
                        }, label: {
                            Text("Камень")
                                .foregroundColor(.white)
                                .font(.headline)
                                .padding()
                                .frame(maxWidth: 280)
                                .background(Color.orange.opacity(1))
                                .border(Color.black, width: 2)
                        })
                        
                        Button(action: {
                            playGame(with: .scissors)
                        }, label: {
                            Text("Ножницы")
                                .foregroundColor(.white)
                                .font(.headline)
                                .padding()
                                .frame(maxWidth: 280)
                                .background(Color.orange.opacity(1))
                                .border(Color.black, width: 2)
                        })
                        
                        Button(action: {
                            playGame(with: .paper)
                        }, label: {
                            Text("Бумага")
                                .foregroundColor(.white)
                                .font(.headline)
                                .padding()
                                .frame(maxWidth: 280)
                                .background(Color.orange.opacity(1))
                                .border(Color.black, width: 2)
                        })
                        
                    }
                    
                    .padding(.bottom, 60)
                }
                
            } .frame(maxWidth: .infinity)
            .background {
                        ZStack {
                            VStack(spacing: 0) {
                                Spacer()
                                Rectangle()
                                    .frame(height: 5)
                                Rectangle()
                                    .foregroundStyle(Color(red: 0.13, green: 0.14, blue: 0.19))
                                    .frame(height: UIScreen.main.bounds.height * 0.4)
                            }
                        }.ignoresSafeArea()
                    }

    }
    
    func playGame(with choice: SPRViewModel.MyChoices) {
        sprViewModel.playerChoice = choice
        sprViewModel.computerChoice = SPRViewModel.EnemyChoices.allCases.randomElement() ?? .scissors
        sprViewModel.checkWin(playerChoice: choice)
        sprViewModel.setAnimating()
    }
    
    func animatingView() -> some View {
        VStack {
                Spacer()
        HStack {
            AnimatedMyRockView()
            Spacer()
            AnimatedEnemyRockView()
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                if sprViewModel.loses == 3 || sprViewModel.wins == 3  {
                    sprViewModel.setEndGame()
                } else {
                    sprViewModel.setResult()
                }
            }
        }
            
            
            
    } .frame(maxWidth: .infinity)
            .background {
                        ZStack {
                            VStack(spacing: 0) {
                                Spacer()
                                Rectangle()
                                    .frame(height: 5)
                                Rectangle()
                                    .foregroundStyle(Color(red: 0.13, green: 0.14, blue: 0.19))
                                    .frame(height: UIScreen.main.bounds.height * 0.4)
                            }
                        }.ignoresSafeArea()
                    }
    }
    
    struct AnimatedMyRockView: View {
        @State private var moveUp = false
        
        var body: some View {

            Image("myR")
                .resizable()
                .frame(width: 100, height: 100)
                .offset(y: moveUp ? -100 : 100)
                .animation(
                    Animation.easeInOut(duration: 1)
                        .repeatForever(autoreverses: true)
                        .speed(6.0)
                )
                .onAppear {
                    self.moveUp.toggle()
                }
        }
    }
    
    struct AnimatedEnemyRockView: View {
        @State private var moveUp = false
        
        var body: some View {

            Image("enR")
                .resizable()
                .frame(width: 100, height: 100)
                .offset(y: moveUp ? -100 : 100)
                .animation(
                    Animation.easeInOut(duration: 1)
                        .repeatForever(autoreverses: true)
                        .speed(6.0)
                )
                .onAppear {
                    self.moveUp.toggle()
                }
        }
    }
    
    
    func resultView() -> some View {

            
        VStack {

            Spacer()
            
            HStack {
                Image(sprViewModel.playerChoice?.rawValue ?? "")
                    .frame(width: 40, height: 40)
                    .padding(.leading, 32)
//                    .resizable()
//                    .frame(width: 100, height: 100)
                
                Spacer()
                
                Image(sprViewModel.computerChoice.rawValue)
                    .frame(width: 40, height: 40)
                    .padding(.leading, 32)
//                    .resizable()
//                    .frame(width: 100, height: 100)
            }
            Spacer()
            
            HStack {
                Spacer()
                Text(sprViewModel.gameOutcome)
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: 280)
                    .background(Color.indigo.opacity(1))
                    .border(Color.black, width: 2)
                Spacer()
            } .padding(.bottom, 16)
            
            HStack {
                Text("Победы: \(sprViewModel.wins)")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: 280)
                    .background(Color.mint.opacity(1))
                    .border(Color.black, width: 2)
                    .padding(.leading, 22)
                Spacer()
                Text("Поражения: \(sprViewModel.loses)")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: 280)
                    .background(Color.mint.opacity(1))
                    .border(Color.black, width: 2)
                    .padding(.trailing, 22)
                
            } .padding(.bottom, 16)
            


            Button(action: {
                sprViewModel.setInitial()
            }, label: {
                Text("Ещё разок")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: 280)
                    .background(Color.orange.opacity(1))
                    .border(Color.black, width: 2)
            }) .padding(.bottom, 32)

        } .frame(maxWidth: .infinity)
            .background {
                        ZStack {
                            VStack(spacing: 0) {
                                Spacer()
                                Rectangle()
                                    .frame(height: 5)
                                Rectangle()
                                    .foregroundStyle(Color(red: 0.13, green: 0.14, blue: 0.19))
                                    .frame(height: UIScreen.main.bounds.height * 0.4)
                            }
                        }.ignoresSafeArea()
                    }

    }
    
    func endGameView() -> some View {

            VStack {
                Spacer()
                
                if sprViewModel.loses == 3 {
                    Text("В следующий раз повезёт, наверное...")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: 280)
                        .background(Color.mint.opacity(1))
                        .border(Color.black, width: 2)
                } else if sprViewModel.wins == 3 {
                    Text("С победой, друг")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: 280)
                        .background(Color.mint.opacity(1))
                        .border(Color.black, width: 2)
                }
                
                Button {
                    
                } label: {
                    Text("Ещё разок?")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: 280)
                        .background(Color.orange.opacity(1))
                        .border(Color.black, width: 2)
                }
                
                Button {
                    
                } label: {
                    Text("Дальше")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: 280)
                        .background(Color.orange.opacity(1))
                        .border(Color.black, width: 2)
                } .padding(.bottom, 52)

            } .frame(maxWidth: .infinity)
            .background {
                        ZStack {
                            VStack(spacing: 0) {
                                Spacer()
                                Rectangle()
                                    .frame(height: 5)
                                Rectangle()
                                    .foregroundStyle(Color(red: 0.13, green: 0.14, blue: 0.19))
                                    .frame(height: UIScreen.main.bounds.height * 0.4)
                            }
                        }.ignoresSafeArea()
                    }
        
    }
    
    
}

#Preview {
    SRPView().environmentObject(SPRViewModel())
}
