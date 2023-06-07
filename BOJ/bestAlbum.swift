func solution(_ genres: [String], _ plays: [Int]) -> [Int] {
    var dic: [String: Int] = [:]
    var result: [Int] = []
    
    // 장르별 재생 횟수 매핑하기
    for i in 0..<genres.count {
        if dic.keys.contains(genres[i]) {
            dic[genres[i]]! += plays[i]
        } else {
            dic[genres[i]] = plays[i]
        }
    }
    
    // 장르별 재생 횟수 내림차순 정렬
    let sortedKeys = dic.sorted { $0.value > $1.value }.map { $0.key }
    
    // 각 장르의 최다 노래 (최대 2개까지) 알아내기
    for genre in sortedKeys {
        var score: [Int] = []
        var arr: [Int] = []
        var max = 0
        var second = 0
        //장르에 해당하는 인덱스값 알아내기
        for j in 0..<plays.count {
            if genres[j] == genre {
                score.append(j)
            }
        }
        //해당하는 인덱스 값이 하나라면 결과에 추가하고 다시 반복문돌기
        if score.count == 1 {
            result.append(score.first!)
            continue
        } else {
            //하나가아니라면......
            //해당하는 장르의 재생횟수 담기
            for j in 0..<score.count {
                arr.append(score[j])
            }
            //재생횟수를 내림차순정렬하여 큰 두개의 숫자 변수에 담기
            arr.sort { plays[$0] > plays[$1] }
            max = arr.removeFirst()
            second = arr.removeFirst()
            //맥스값을 가지고 해당하는 장르라면 결과에 추가
            for j in 0..<plays.count {
                if j == max && score.contains(j) {
                    result.append(j)
                }
            }
            //세컨드값을 가지고 해당하는 장르라면 결과에 추가
            for j in 0..<plays.count {
                if j == second && score.contains(j) {
                    result.append(j)
                }
            }
        }
    }
    
    return result
}
