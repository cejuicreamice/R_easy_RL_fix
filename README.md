# r_easy_RL
R로 쉽게 배우는 강화학습 (인프런) 강좌 내 배포 코드를 직접 돌려보고 만든 수정본입니다.

(단, 강의 내에서 언급한 수정 부분은 강의의 저작권을 침해하기 때문에 제외하였습니다.)

R로 쉽게 배우는 강화학습 인프런 링크 : https://www.inflearn.com/course/R-%EA%B0%95%ED%99%94%ED%95%99%EC%8A%B5-%EA%B8%B0%EC%B4%88

R 강화학습 관련한 좋은 블로그 글: https://bluediary8.tistory.com/category/%EA%B0%95%ED%99%94%ED%95%99%EC%8A%B5

2D 좌표계 차원 축소 관련한 내용이 있는 arxiv : https://arxiv.org/abs/1901.05856

# 클라우드 환경 이용기
구름.io는 사용량 상관없는 정액제라는 장점이 있는 것 같지만, 램 2/4GB에 스왑공간 부족으로 인한 한계가 많이 드러납니다.

예를 들면 램 2GB일 경우에는 SIL_RND 코드를 돌릴 때 i가 15000이 넘어가면 1000번 돌리려고 해도 메모리가 부족해서 프로그램 중단하는 사태가 발생합니다.

Windows 10 R Studio의 경우에는 스왑공간을 많이 확보하고 있기 때문에 별 문제가 없으나, 구름.io는 스왑공간이 모자라기 때문에 메모리 부족 사태가 발생하는 것으로 보입니다.

AWS의 경우 크레딧이 있다면 m5.large에 Red Hat 8.5 AMI를 깔면 8GB 메모리 시스템으로 SIL_RND 코드를 돌릴 수 있습니다. 

(i 상한선은 60000까지는 안정적으로 돌아가고 65000부터는 8GB 메모리 시스템 기준으로 뜬금없이 2500도 죽어서 1250씩 돌려야 함)

(67500부터는 1250도 죽는다 -> 그냥 m5.xlarge로 이행하는 것이 필요 ->

65000부터는 8기가 램을 거의 다 쓰게 되고 67500이면 8기가 램의 한도를 넘어서게 됩니다.

참고로 90000부터는 램 사용만 10GB가 되는 상황입니다.

67500까지 xlarge로 버티고 67500부터는 2xlarge(16GB RAM)으로 이행하는 게 맞습니다.)

크레딧이 없다면 AWS 프리티어는 램이 1GB밖에 안되기 때문에 AWS 대신 다른 크레딧 제공 클라우드 시스템(Azure, GCP 등)을 이용할 수밖에 없습니다.

# 주의

R코드는 Jupyter Notebook과 달리 Collapse All, Expand All 잘 써야 한다고 생각합니다.

마크다운이 살짝 번거로운 면이 있어서 그렇습니다.

# 기타 꿀팁

becominghuman.ai/comprehending-k-means-and-knn-algorithms-c791be90883d





# 강화학습의 주요 알고리즘

Policy Evaluation/Iteration과 그 전에 배우는 Bellman Function 이해가 필수입니다.
