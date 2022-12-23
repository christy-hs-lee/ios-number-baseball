## 숫자야구 프로젝트⚾️ 

### 소개
---
* 컴퓨터가 랜덤으로 생성한 중복되지 않는 3개의 숫자를 맞추는 게임입니다!


### 팀원
---

|Rilla|Christy|
|:----:|:----:|
|<img src="https://user-images.githubusercontent.com/61936306/209260605-b4509a0e-5431-4acd-a4ba-b01f68982382.png" width="200px" height="200px">|<img src="https://user-images.githubusercontent.com/61936306/209260687-692e9060-5d64-46ee-b16f-028498e31b7d.png" width="200px" height="200px">|
|**[Rilla](https://github.com/juun97)**|**[Christy](https://github.com/christy-hs-lee)**|


### ⏩ 타임라인
---
* Step 1

![image](https://user-images.githubusercontent.com/61936306/209269462-861006d5-ea9c-46e1-8b79-52f66c0b80f9.png)
---
* Step 2

![image](https://user-images.githubusercontent.com/61936306/209269520-bc12a3da-d46c-4fa8-958d-d2df224a5e91.png)
![image](https://user-images.githubusercontent.com/61936306/209269646-029160e9-c6ad-4c8f-9622-837c2ae9c4b5.png)
![image](https://user-images.githubusercontent.com/61936306/209269673-0de1ea99-7dfe-4c68-a27e-fdba1c162633.png)


### 순서도
---

* Step1

![image](https://user-images.githubusercontent.com/61936306/208361824-b87470a9-b3a5-456f-b545-0976f60cc79f.png)
---
* Step2

![image](https://user-images.githubusercontent.com/61936306/209181025-2f6cc6f5-2712-4b55-b7ae-6ba373632aac.png)



### 🖥️ 실행 화면(기능 설명)
---
#### 1. 게임 시작 화면
![image](https://user-images.githubusercontent.com/61936306/209271253-0c3a64cb-007e-4b48-9d3a-165ed4f5cd65.png)
---
#### 2. 정상 입력 화면
![image](https://user-images.githubusercontent.com/61936306/209271324-89af33cd-82bd-4960-be41-2528bf7c9c55.png)
---
#### 3. 오류 화면 
![image](https://user-images.githubusercontent.com/61936306/209271360-152290ab-df79-4733-88e1-051b6d89ee97.png)
---
#### 4. 정답 화면
![image](https://user-images.githubusercontent.com/61936306/209271408-fa0c0591-c0ca-4423-9eb7-5759d68d09ce.png)
---
#### 5. 종료 화면
![image](https://user-images.githubusercontent.com/61936306/209271478-440f8433-311c-45c4-ab96-f8830e32fc1b.png)
---
### 🚀 트러블 슈팅
---
#### Step 1

* 중복되지 않은 3개의 숫자
> 1에서 9까지의 숫자중 중복되지 않은 숫자를 어떻게 3개만 뽑아 올까 고민을 많이 했다. 
만약 뽑았을때 중복의 갯수가 한개가 될 수도 있고 두개가 될 수도 있었기에 Array와 조건문으로는 쉽게 해결하지 못할것 같았다.
그래서 Set 콜렉션 타입을 사용해 랜덤 숫자를 Set 콜렉션의 Count가 3이 될때까지 계속해서 뽑는식으로 해결했다.


* FlowChart 작성법
> 기존에 FlowChart작성을 해본적이 없어서 어디까지 그림에 표현해야 하는지에 대한 감이 잘 잡히질 않았다.
그래서 복잡하고 세세하게 적기보단 최소한의 요구사항만 다 들어가있는 흐름도만 작성하자 라는 결과에 도출 해 작성했다.

#### Step 2

* readLine의 안전한 옵셔널 추출 방법
> readLine을 통해 받아온 문자열이 옵셔널이기 때문에 안전하게 추출하는 방법에 대해 고민을 많이 했다!
구글링을 통해 찾은 자료들 대부분이 강제 추출을 사용했는데, 과제 제약사항에 위반되는 부분이라 다른 해결 방법을 찾아야 했다. 
그러다 compactMap을 알게 되었다. compactMap은 nil을 자동으로 제거해줘 안전하게 옵셔널 바인딩을 할 수 있다.
사용 방법은 map과 똑같은 클로져로 사용하면  된다! 

* enclosing catch is not exhaustive 에러
> 처음에 정의한 모든 에러 타입을 catch를 했음에도 불구하고 지속적으로 enclosing catch is not exhaustive 에러가
발생했다. 이를 해결하는 방법으로 추가적으로 catch문 이 하나 더 필요했다. 이는 정의하지 않은 에러가 발생할 수 있는
상황에 대비하여 작성해 줘야 했습니다. 추가적으로 'localizedDescription'은 에러의 코멘트 역할을 한다!


### 🔍 참고 링크
---

- [GitToken](https://bskyvision.com/entry/git-access-token-%EB%B0%9C%EA%B8%89-%EB%B0%9B%EB%8A%94-%EB%B0%A9%EB%B2%95)
- [Set](https://babbab2.tistory.com/114)
- [compactMap](https://developer.apple.com/documentation/swift/int/words-swift.struct/compactmap(_:))
- [Optional](https://developer.apple.com/documentation/swift/optional/)


### ☑️ 프로젝트 수행 중 핵심 경험
---

 * 순서도 익히기
 * 함수 단위 고민하기
 * Git의 기본 사용(add, commit, push, pull)
 * GitHub의 원격 공동 저장소 활용
 * Git 저장소의 충돌 해결
 * Git Branch의 이해
 * GitHub에서 Pull Request 전송
 * Swift API Design Guidelines 읽어보기
 * Swift Set의 이해와 활용
 * Swift의 Optional 안전하게 처리하기
 * Git의 커밋단위 고민하기
 * Git 커밋 로그 형식 고민하기
 * 스위프트 코딩 컨벤션 고민하기
 * 동료와 협업자세 고민하기
