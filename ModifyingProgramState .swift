//
//  ModifyingProgramState .swift
//  SwiftUIProject1
//
//  Created by Marko Zivanovic on 1.6.23..
//

import SwiftUI

struct ModifyingProgramState_: View {
    
    @State  private var tapCount = 0
    
    var body: some View {
        Button("tap count \(tapCount)") {
            tapCount += 1
        }
    }
}

struct ModifyingProgramState__Previews: PreviewProvider {
    static var previews: some View {
        ModifyingProgramState_()
    }
}
