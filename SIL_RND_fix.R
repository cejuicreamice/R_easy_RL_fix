#### 해당 부분 찾아서 수정
#### for(i in 1:40000) 루프 내
#### if(i %% 200 == 0) 루프 내

### 해당 코드 주석처리를 바랍니다. (Comment This Line)
ts.plot(apply(ap, 1, max))

### ap 변수가 언급된 다른 단 하나의 부분
ap <- NULL
### ap 변수를 사용해야 할 때 다시 활용하는 것이 낫습니다.


### R 3.6.1 x64의 경우 !duplicated 코드가 i가 35000이 넘어가면 에러가 납니다.
### 따라서 35000까지의 duplicated 제거 부분에 각 5000씩을 더해서 duplicated 제거를 한 거를 저장하고
### 누적해서 더하는 방식을 취해야 하는 것 같습니다.

xxx2 <- xxx[(!duplicated), ]
### 이거를 분리하는 방법이 필요합니다.
st2_sep <- statuslist[(loop_i - big_inc) : (loop_i - 1)]
