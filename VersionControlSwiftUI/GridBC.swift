//
//  GridBC.swift
//  VersionControlSwiftUI
//
//  Created by Mustafa Ölmezses on 9.02.2025.
//

import SwiftUI

struct GridBC: View {
    var body: some View {
//        Grid {
//            GridRow {
//                cell(int: 1)
//                cell(int: 2)
//                cell(int: 3)
//            }
//            Divider()
//                .gridCellUnsizedAxes(.horizontal)
//            GridRow {
//                cell(int: 4)
//                cell(int: 5)
//            }
//        }
        
        Grid(alignment: .center, horizontalSpacing: 8, verticalSpacing: 8){
            ForEach(0..<4) { rowIndex in
                GridRow {
                    ForEach(0..<4) { columnIndex in
                        let cellNumber = (rowIndex * 4) + columnIndex + 1
                        if cellNumber == 7 {
                            Color.clear
                                .gridCellUnsizedAxes([.vertical , .horizontal])
                        }else{
                            cell(int: cellNumber)
                        }
                    }
                }
            }
        }
    }
    
    func cell(int: Int) -> some View {
        Text("\(int)")
            .font(.largeTitle)
            .padding()
            .background(.indigo)
            .foregroundStyle(.white)
    }
    
}

#Preview {
    GridBC()
}
