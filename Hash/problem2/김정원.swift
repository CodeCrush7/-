func solution(phone_book: [String]) -> Bool? {
    guard phone_book.count >= 1 && phone_book.count <= 1000000 else { return nil }
    for phone in phone_book {
        guard phone.count >= 1 && phone.count <= 20 else { return nil }
    }
    
    var answer = true
    let sortedPhoneBook = phone_book.sorted()
    
    for firstIndex in 0..<(sortedPhoneBook.count - 1) {
        for secondIndex in (firstIndex + 1)..<sortedPhoneBook.count {
            if sortedPhoneBook[secondIndex].contains(sortedPhoneBook[firstIndex]) {
                answer = false
            }
        }
    }
    return answer
}

solution(phone_book: ["119", "97674223", "1195524421"]) // false
solution(phone_book: ["123","456","789"]) // true
solution(phone_book: ["12","123","1235","567","88"]) // false
solution(phone_book: ["12","12"]) // false
solution(phone_book: ["111111111111111111111111111111111","89"]) // nil
solution(phone_book: []) // nil

// 완주하지못한 선수때와 비슷한 방식으로 구현했다.

// 2번째에서 4번째까지의 코드는 제한사항을 구현한 코드이다.
// 우선 전화번호부배열을 정렬한 다음, 이중 for문을 돌면서 secondIndex에 해당하는 원소가 firstIndex에 해당하는 원소를 포함하고 있는지 여부를 체크했다. 
// 해당 원소를 포함하고 있으면 answer를 false로 바꿔 주었다.
// 포함하고 있지 않은 경우는, 애초에 answer를 true로 정의해 두었기 때문에 else { answer = true } 와 같은 코드를 굳이 구현할 필요가 없었다. 
