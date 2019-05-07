func calculateOutsideRubiksCubeletsForSubdivisions(_ divisions: Int) -> Int {
    //Standard Cube has 6 sides
    if divisions == 0 {
        return 6
    }
    
    let core = 6 * Int(pow(Double(divisions - 1), 2))  //Center Cubelets are 6*1 at 2 subdivisions (basic Rubik's Cube)
    let topAndBottom = 2 * (divisions * 4)             //2 times, top and bottom
    let sides = (4 * (divisions - 1))                  //Remaining sides are always 4
    return core + topAndBottom + sides
}

calculateOutsideRubiksCubeletsForSubdivisions(0)  //6
calculateOutsideRubiksCubeletsForSubdivisions(1)  //8
calculateOutsideRubiksCubeletsForSubdivisions(2)  //26
calculateOutsideRubiksCubeletsForSubdivisions(3)  //56
calculateOutsideRubiksCubeletsForSubdivisions(4)  //98
calculateOutsideRubiksCubeletsForSubdivisions(5)  //152
calculateOutsideRubiksCubeletsForSubdivisions(16) //1238
calculateOutsideRubiksCubeletsForSubdivisions(23) //3176
