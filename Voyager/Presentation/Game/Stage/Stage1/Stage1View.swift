//
//  Stage1View.swift
//  Voyager
//
//  Created by admin on 23.11.2023.
//

import SwiftUI

struct Stage1View: View {
    
    @EnvironmentObject var stageViewModel: Stage1ViewModel
    @EnvironmentObject var appRouter: NavRouter<AppRouteState>
    @EnvironmentObject var currentStageState: NavRouter<CurrentStageState>
    
    var body: some View {
        ZStack {

            switch stageViewModel.stageState {
            case .preview:
                Stage1PreviewView()
            case .game1:
                Stage1Game1View()
            case .game2:
                Stage1Game2View()
            case .game3:
                Stage1Game3View()
            case .game4:
                Stage1Game4View()
            case .freePlay:
                Stage1FreePlayView()
                    .environmentObject(currentStageState)
            }
        }
        .environmentObject(stageViewModel)
        .environmentObject(appRouter)
    }
}


struct Stage1FreePlayView: View {
    @EnvironmentObject var currentStageState: NavRouter<CurrentStageState>
    @EnvironmentObject var stage1ViewModel: Stage1ViewModel
    @EnvironmentObject var appRouter: NavRouter<AppRouteState>
    var body: some View {
        VStack {
            Text("free play")
            Button(action: {
                currentStageState.push(route: .stage2)
                StorageManager.shared.setCurrentStage(.stage2)
            }, label: {
                Text("stage 2")
            })
        }
    }
}
