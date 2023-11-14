func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    //캐시
    var cash: [String] = []
    var times = 0
    for i in cities {
        var city = i.uppercased()
        if cash.count < cacheSize {
            if cash.contains(city) {
                times += 1
                var index = cash.firstIndex(of: city)
                cash.remove(at: index!)
                cash.append(city)
                continue
            }else{
                cash.append(city)
                times += 5
                continue
            }
        }
        if cash.contains(city) {
            times += 1
            var index = cash.firstIndex(of: city)
            cash.append(city)
            cash.remove(at: index!)
        }else {
            cash.append(city)
            cash.removeFirst()
            times += 5
        }
    }
    return times
}

print(solution(5, ["5","5","5"]))
