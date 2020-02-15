def solution(participant, completion): #문제의 participant, completion 리스트를 인자로 받고
    for i in range(len(completion)):#크기가 작은 completion을 기준*으로
        p = completion[i]           #completion의 i번째 값을 p로 할당하고
        participant.remove(p)       #participant에서 p를 삭제한다
    return participant[0]           #남은 participant의 값을 return

"""
completion과 participant의 포함관계는 completion⊆participant 이므로
더 작은 리스트인 completion을 기준으로 삼아 for문을 돌린다.
completion에 들어있는 값을 하나하나 participant에서 삭제하여 completion에 포함되지
않은 값만 남기고 이를 출력하는 방식으로 코드를 짰다.

participant = participant.remove(p)처럼 따로 participant에 할당할 필요가 없다.

**효율성 점수가 0점 나온다...

"""
