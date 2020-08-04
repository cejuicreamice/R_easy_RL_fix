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

### 주의사항: 이거를 하고 나서 35000 이상일 때에는 실행하지 못하도록 if 구문을 다시 확인 바랍니다.

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

####
# NOT

v_list
p_list
h_list
th_list
bbc
ilikettt
TF_at

pred_memory
start_point_list
goal_point_list
bi4
q_table
rad_list
r
tot_att
attack_cnt
st_mis_list
avoid_action_list
plot_att_rat
die_action_list
#in : my mistake





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


#loading
load(paste0("rnd_zzz2_b", "_", i, ".RData"))
load(paste0("rnd_qn1", "_", i, ".RData"))
load(paste0("rnd_vg", "_", i, ".RData"))
load(paste0("rnd_st_list", "_", i, ".RData"))
load(paste0("rnd_step_list", "_", i, ".RData"))
load(paste0("rnd_reward_list", "_", i, ".RData"))
load(paste0("rnd_in_reward_list", "_", i, ".RData"))
load(paste0("rnd_reward_total_list", "_", i, ".RData"))
load(paste0("rnd_tn", "_", i, ".RData"))
load(paste0("rnd_pn", "_", i, ".RData"))
load(paste0("rnd_bi2", "_", i, ".RData"))
load(paste0("rnd_bi3", "_", i, ".RData"))
load(paste0("rnd_replay_buffer", "_", i, ".RData"))
load(paste0("rnd_vs", "_", i, ".RData"))
load(paste0("rnd_final_action_list", "_", i, ".RData"))
load(paste0("rnd_final_total_reward_list", "_", i, ".RData"))
load(paste0("rnd_in_reward_list2", "_", i, ".RData"))

load(paste0("rnd_v_list", "_", i, ".RData"))
load(paste0("rnd_p_list", "_", i, ".RData"))
load(paste0("rnd_h_list", "_", i, ".RData"))
load(paste0("rnd_th_list", "_", i, ".RData"))
load(paste0("rnd_bbc", "_", i, ".RData"))
load(paste0("rnd_ilikettt", "_", i, ".RData"))
load(paste0("rnd_TF_at", "_", i, ".RData"))
load(paste0("rnd_pred_memory", "_", i, ".RData"))
load(paste0("rnd_start_point_list", "_", i, ".RData"))
load(paste0("rnd_goal_point_list", "_", i, ".RData"))
load(paste0("rnd_bi4", "_", i, ".RData"))
load(paste0("rnd_q_table", "_", i, ".RData"))
load(paste0("rnd_rad_list", "_", i, ".RData"))
load(paste0("rnd_r", "_", i, ".RData"))
load(paste0("rnd_tot_att", "_", i, ".RData"))
load(paste0("rnd_attack_cnt", "_", i, ".RData"))
load(paste0("rnd_st_mis_list", "_", i, ".RData"))
load(paste0("rnd_avoid_action_list", "_", i, ".RData"))
load(paste0("rnd_plot_att_rat", "_", i, ".RData"))
load(paste0("rnd_die_action_list", "_", i, ".RData"))
#load(paste0("rnd_in", "_", i, ".RData"))


## 참고로 50000이 넘어가면 속도가 쉽게 나지 않습니다. CPU 사양 보고 정 밤에 켜 놓는 게 안되면 
## 개인서버나 클라우드 등을 권장합니다. ㅠㅠ
## goorm test planning......
## https://ide.goorm.io/pricing
## https://ide.goorm.io

