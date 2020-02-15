func solution(participant: [String], completion: [String]) -> String {
    guard(participant.count > 0 && participant.count < 100001 ) else {return "잘못 입력하셨습니다" }
    var answer = ""
    let participantArray = participant.sorted()
    let completionArray = completion.sorted()
    let countcompletionArray: Int = completionArray.count
    
    if countcompletionArray == 0 {
        answer = participantArray.last!
        return answer
    } else {
        for index in 0..<completion.count {
            if participantArray[index] != completionArray[index] {
                answer = participantArray[index]
            } else {
                answer = participantArray.last!
            }
        }
    }
    return answer
}

solution(participant: ["marina", "josipa", "nikola", "vinko", "filipa"], completion: ["josipa", "filipa", "marina", "nikola"])
solution(participant: ["mislav", "stanko", "mislav", "ana"], completion: ["stanko", "ana", "mislav"])
solution(participant: ["kelly"], completion: [])
solution(participant: [], completion: [])

// 여러분 저는 파이썬 말고 스위프트를 이용했어요...ㅎ 그래도 생각하는 흐름은 비슷할거니까..?ㅎㅎ

// 우선 받은 참여자와 완주자 배열을 순서대로 정렬한 다음, for문을 완주자 명단의 count갯수만큼 돌면서 참여자명단이랑 완주자명단을 차례차례 비교했고 일치하지 않는 값이 나오면 그 값을 리턴하도록 했다. 
// 이때 만약에 참여자명단의 마지막 사람이 완주하지 못했을 경우에는 인덱스로 비교해서 찾을 수가 없다. 왜냐하면 인덱스비교는 완주자명단 count를 기준으로 이미 끝났기 때문이다. 따라서 이 경우에는 참여자 명단의 맨 마지막 값을 리턴하도록 했다.
// 만약 참여자가 한 명이고 그 사람이 완주를 하지 못한 경우에는 케이스를 따로 분리해서 그냥 참여자명단의 값을 리턴하도록 했다.
