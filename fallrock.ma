[top]
components : fallrock

[fallrock]
type : cell
dim : (8,8,8)
delay : transport

defaultDelayTime : 0
border : nowrapped
neighbors : fallrock(-1,-1,1) fallrock(-1,0,0) fallrock(-1,1,-1)
neighbors : fallrock(0,-1,1) fallrock(0,0,0)  fallrock(0,1,-1)
neighbors : fallrock(1,-1,1) fallrock(1,0,0) fallrock(1,1,-1)

initialValue : 0
initialCellsValue : fallrock.val
localtransition : fallrock-rule

[fallrock-rule]


rule : 1 11.1 { (0,0,0)=0 and (0,1,-1)=1  and round(uniform(0,10000))> 5000}
rule : 1 15.21 { (0,0,0)=0 and (0,-1,1)=1  and round(uniform(0,10000))> 6500}
rule : 1 21.321 { (0,0,0)=0 and (-1,0,0)=1  and round(uniform(0,10000))> 7500}
rule : 1 21.321 { (0,0,0)=0 and (1,0,0)=1 and round(uniform(0,10000))> 7500 }
rule : 1 26.4321 { (0,0,0)=0 and (-1,-1,1)=1  and round(uniform(0,10000))> 9500}
rule : 1 26.4321 { (0,0,0)=0 and (1,-1,1)=1  and round(uniform(0,10000))> 9500}
rule : 1 23.54321 { (0,0,0)=0 and (-1,1,-1)=1  and round(uniform(0,10000))> 8500}
rule : 1 23.54321 { (0,0,0)=0 and (1,1,-1)=1  and round(uniform(0,10000))> 8500}
rule : { (0,0,0) } 0 { t }