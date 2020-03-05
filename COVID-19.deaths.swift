let numberOfCases = 158
let numberOfTrials = 10000
let deathRateFromWHO = 0.034

func simulate() -> Int {
    var numberOfDeaths = 0
    for _ in 1 ... numberOfCases {
        let randomDouble = Double.random(in: 0.0 ... 1.0)
        if randomDouble <= deathRateFromWHO {
            numberOfDeaths += 1
        }
    }
    
    return numberOfDeaths
}

var deaths = [Int]()

for simulationNumber in 1 ... numberOfTrials {
    let deathsInSimulation = simulate()
    // print("Number of Deaths in simulation: \(simulationNumber) = \(deathsInSimulation)")
    deaths.append(deathsInSimulation)
}

let sortedDeaths = deaths.sorted()

for i in sortedDeaths.indices {
    print("Sorted Index: \(i), Deaths: \(sortedDeaths[i])")
}
