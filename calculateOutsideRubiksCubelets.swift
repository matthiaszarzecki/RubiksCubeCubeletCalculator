//Runs in a playground

func calculateOutsideRubiksCubelets(forSubdivisions divisions: Int) -> Int {
    //Standard Cube has 6 sides. Algorithm only works at divisions >= 1, abort here
    if divisions <= 0 {
        return 6
    }
    
    let core = 6 * Int(pow(Double(divisions - 1), 2))  //Center Cubelets are 6*1 at 2 divisions (basic Rubik's Cube)
    let topAndBottom = 2 * (divisions * 4)             //2 times, top and bottom
    let sides = (4 * (divisions - 1))                  //Remaining sides are always 4
    return core + topAndBottom + sides
}

calculateOutsideRubiksCubelets(forSubdivions: 0)  //6
calculateOutsideRubiksCubelets(forSubdivions: 1)  //8
calculateOutsideRubiksCubelets(forSubdivions: 2)  //26
calculateOutsideRubiksCubelets(forSubdivions: 3)  //56
calculateOutsideRubiksCubelets(forSubdivions: 4)  //98
calculateOutsideRubiksCubelets(forSubdivions: 5)  //152
calculateOutsideRubiksCubelets(forSubdivions: 16) //1238
calculateOutsideRubiksCubelets(forSubdivions: 23) //3176
