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
xxx2 <- xxx[!duplicated(xxx), ]

### 이거 중 duplicated 제거 부분을 기존 중복제거 부분과 5000 단위로 추가할 부분으로 분할해 다운사이징한 코드입니다.
st2_sep <- st_list[(loop_i - big_inc) : (loop_i - 1)]
zzz2_t <- do.call("rbind", st2_sep)
zzz2_b <- rbind(zzz2_b, zzz2_t)
## zzz2_b (기존)에다가 이어붙이기

zzz2_b  <- zzz2_b[!duplicated(zzz2_b), ]
## 이거를 big_inc (5000번마다 새로운 밀도 plot을 그리니 5000으로 정하면 됩니다)마다 반복합니다.
## 도중에 R을 쓸 일이 생겨서 어쩔 수 없이 중단하는 거에 대비하여 바뀌는 모든 변수를 i를 파일명에 붙여서 저장할 것을 권장합니다.
## 일부 변수들이 저장이 안되는 상황인데, 해당 변수에 대해서 저장하는 코드를 추가하여 해당 i부터 되돌려 실행할 수 있도록 하는 것이 필요합니다.


## 쉘 환경, 특히 구름 쉘환경에서 실행할 경우에는 그래프 라이브러리가 잘 동작하지 않습니다. 따라서 이럴 경우 상태를 RData로 Export -> Import + 그래프 출력 방식의 전략이 필요합니다.

## 루프 안에서 i 증가에 따라 변하는 변수 리스트는 현재 작성 중입니다.
## saving form:
save(qn1, file = paste0("rnd_qn1_", "i", ".RData"))


qn1
vg
st_list
step_list
reward_list
in_reward_list
reward_total_list
tn
pn

bi2
bi3
replay_buffer
vs
vloss
final_action_list
final_total_reward_list
in_reward_list2
v_list
p_list
h_list
th_list
bbc
ilikettt
TF_at



q_table
rad_list
tot_att
r
attack_cnt
st_mis_list
avoid_action_list
plot_att_rat
die_action_list
in
pred_memory
start_point_list
goal_point_list
bi4





# 1) Initialize in i LOOP : X
init_data
init_feat
total_inr
total_r
final_total_r
imsi_memory
ap
mb
tr_c
bi
inr_memory
inr_memory2
step
action_list
episode_done
memory
reward_memory
epoch_index
st_2
action_index
# 2) Initialize in ep_dn LOOP : X
re_ep
current_state
cov_next_state
buffer_v

## 참고로 50000이 넘어가면 속도가 쉽게 나지 않습니다. CPU 사양 보고 정 밤에 켜 놓는 게 안되면 
## 개인서버나 클라우드 등을 권장합니다. ㅠㅠ
## goorm test planning......
## https://ide.goorm.io/pricing
## https://ide.goorm.io
