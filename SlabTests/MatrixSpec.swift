//
//  MatrixSpec.swift
//  Slab
//
//  Created by 南丁 on 2017/2/9.
//  Copyright © 2017年 nandiin. All rights reserved.
//

import Nimble
import Quick
@testable import Slab

class MatrixSpec: QuickSpec {
    override func spec() {
        describe("Matrix") {
            var aMatrix: Matrix<Double>!
            var sameMatrix: Matrix<Double>!
            var matrixWithDifferentRowCount: Matrix<Double>!
            var matrixWithDifferentColumnCount: Matrix<Double>!
            beforeEach {
                aMatrix = Matrix<Double>(rows: 3, columns: 2)
                sameMatrix = Matrix<Double>(rows: 3, columns: 2)
                matrixWithDifferentRowCount = Matrix<Double>(rows: 4, columns: 2)
                matrixWithDifferentColumnCount = Matrix<Double>(rows: 3, columns: 3)
            }
            describe("row count") {
                it("should match the constructor") {
                    expect(aMatrix.rows) == 3
                }
            }
            describe("column count") {
                it("should match the constructor") {
                    expect(aMatrix.columns) == 2
                }
            }
            
            itIsValueObject{
                () -> [String:[Matrix<Double>]] in
                [ "base": [ aMatrix ],
                  "same": [ sameMatrix ],
                  "different": [ matrixWithDifferentRowCount, matrixWithDifferentColumnCount ]
                ]
            }
        }
    }
}

