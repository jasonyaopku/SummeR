#1.用R语言导入xlsx文件“Stugrades”，构建数据框Stugrades，判断有没有同学不及格，找出这位同学的名字和不及格的科目；
#然后求出每个同学的平均成绩mean，并使用函数cbind（）将其添加到数据框中；对平均分进行排序；最后画出条形图。（肖华勤）
#way_1(肖华勤)
StuGrade<-read.csv("Stugrades.csv",header = TRUE)
options(digits = 2)
Grade_mean<-apply(StuGrade[,3:5],1,mean)
StuGrade1<-cbind(StuGrade,Grade_mean)
Grade_mean<-sort(StuGrade1$Grade_mean)
hist(StuGrade1$Grade_mean,main = "StuGrades",xlab = "grades",ylab = "student_num")

#way_2(李才海)
Stugrades <- read.csv(file = "Stugrades.csv",header = TRUE,sep = ",")
Stugrades$StuName = as.character(Stugrades$StuName)
for(i in 1:nrow(Stugrades))
{
  for(j in 3:5)
  {
    if(Stugrades[i,j]<60)
    {
      print(Stugrades[i,]$StuName);
      print(names(Stugrades[j]));
    }
  }
}
mean = c()
for(i in 1:10)
{
  mean = c(mean,(Stugrades[i,3]+Stugrades[i,4]+Stugrades[i,5])/3);
}
Stugrades = cbind(Stugrades,mean);
a = sort(Stugrades$mean)
hist(a)
barplot(a)

#2.将100，200，200，200，400，600，600，800输入到R中，保存到numeric对象中；将numeric转换为factor。（肖华勤）
#2(肖华勤)
numeric<-c(100,200,200,200,400,600,600,800)
factor.numeric<-as.factor(numeric)

#3.创建一个2到50 的向量，形式为2，4，6，8，。。。，48，50并命名为vector，选取vector中的第20个元素；
#选取vector中第10，15，20个元素；选取vectoer中的第10到20个元素。（肖华勤）
#3(肖华勤)
vector1<-seq(from=2, to=50, by=2)
vector1[20]
vector1[c(10,15,20)]
vector1[10:20]

#4.从分年度txt中读取数据并整理成matrix（李睿）
#4(李睿)
berkshire=read.table("Berkshire分年度.txt", sep = " ")
berkshire=berkshire[,-which(berkshire[1,]=="..................................................",arr.ind = FALSE)]

berkshire=berkshire[,-which(berkshire[1,]=="..................................................",arr.ind = FALSE)]
berkshire=berkshire[,-which(berkshire[1,]==".",arr.ind = FALSE)]
berkshire=as.character(berkshire)
berkshire=as.numeric(berkshire)
berksr=matrix(berkshire,ncol=4,byrow = TRUE)

#5.从汇总txt中读取数据并与题一的表格合并，加上colname（李睿）
#5(李睿)
title=c("Year","Per-Share Book Value of Berkshire(%)","Per-Share Market Value of Berkshire(%)","S&P 500 with Dividends(%)")
colnames(berksr)=title
berksr$Year=as.character(berksr$Year)
Compounded_Annual_Gain_1965_2015=c("Compounded_Annual_Gain_1965_201(%)",19.2,20.8,9.7)
Overall_Gain_1964_2015=c("Overall_Gain_1964_2015(%)",798981,1598284,11355)
All_Year_Berkshire=rbind(berksr,Compounded_Annual_Gain_1965_2015,Overall_Gain_1964_2015)

#6.用if筛选出并print出Per-Share Book Value大于20%的，
#Per-Share Market Value大于21.2%，S&P 500 with Dividends小于10.2%）（李睿）
#6(李睿)
#matrix是不能用$来选择分变量的
berksr=as.data.frame(berksr)
berksr[berksr$`Per-Share Book Value of Berkshire`>20,]
berksr[berksr$`Per-Share Market Value of Berkshire(%)`>21.2,]
berksr[berksr$`S&P 500 with Dividends(%)`<10.2,]

#7.fac <− factor(c(10，30，20)) ，得到一个数值型因子，将之转为数值型向量，所得向量中数值保持原状。（李才海）
#7(李才海)
fac <- factor(c(10,30,20));
fac = as.character(fac);
fac = as.numeric(fac);

#8.创建一个3×3的矩阵，按行填充数字1到9。（李才海）
#8(李才海)
matrix_8 <- matrix(1:9,3,3,byrow = TRUE)

#9.用上面的矩阵，以矩阵的形式只显示第三列。（李才海）
#9(李才海)
matrix_8[,3,drop = FALSE]

#10.设三个变量a,b,c，对其任意赋值，求d=a/b,e=a*c,f=a/(b-c)（王璠）
#10(肖华勤)
a<-20
b<-18
c<-14
d=a/b
e=a*c
f=a/(b-c)

#11.三名同学，张三是女孩子身高165cm，李四是男孩子身高180cm，王五是男孩子身高是175cm，将三人的姓名身高放入STU_HIGH表格中（王璠）
#11(沈天琦)
names = c("zhangsan","lisi","wangwu");
height = c(165,180,175);
STU_HIGH = data.frame(names,height);

#12.此时又来了一名同学，赵六，他身高为182，是男孩子，请将赵六的身高信息放入STU_HIGH中，生成新表格STU_HIGH_NEW中。
#再结合2中的信息将他们的性别信息放入表格STU_HIGH_NEW中，生成新表格STU_MASSAGE（王璠）
#12(沈天琦)
names = c(names,"zhaoliu");
height = c(height,175);
STU_HIGH_NEW = data.frame(names.height);
sex = c("female","male","male","male");
STU_MESSAGE = cbind(STU_HIGH_NEW,sex);

#13.用三种不同的方法将变量hight赋值为180.（柯博天）
#13
a = 180;height = a#(王梦月)
height = 180;height <- 180;180 -> height;#(柯博天)

#14.x = 8，运行5<x<10得到的结果是？是否正确？如果错误，如何才能得到预期结果？（柯博天）
#14(柯博天)
x = 8;5<x<10;
原因：两个运算符相同,它们将从左至右连续执行.
首先完成5<x并返回一个逻辑变量,它将与10比较,这就报错了#>_<# 
解决方法：将判断条件改为x>5&x<10

#15. （柯博天）
#a.用两种不同的方法创建一个10*5的矩阵，元素为2，4，6……100
#b.观察矩阵，尝试用多种方法访问前三行
#c.将矩阵转置，记为y
#15(柯博天)
#a
x = seq(2,100,2);dim(x) = c(10,5);
x = matrix(seq(2,100,2),10,5);

#b
x[c(1:3),];
x[which((x[,1] == 2)|(x[,1] == 4)|(x[,1] == 6)),];

#c
y = t(x);

#16.任意创建一个时间序列（林立鑫）
#16(林立鑫)
ts(1:10, frequency = 4, start = c(1959, 2))

#17.任意创建一个数值型因子，并将其转换为数值型向量（林立鑫）
#17(同7)

#18.用sequence函数任意创建一系列连续整数序列（林立鑫）
#18(林立鑫)
sequence(4:5)

#19.用两种不同的方法输出顺序为1、3、5、7、9、11、13、15、17、19的数列分别保存至order1和order2中。（提示：可运用seq函数）（罗雨菁）
#19
order1 = seq(1,19,2);#(罗雨菁)
order2 = c(1,3,5,7,9,11,13,15,17,19);#(罗雨菁)
order2 <- seq(1,19,length.out = 10)#(李才海)
order2 = seq(length = 10,from = 1,to = 19);#(柯博天)

#20. （罗雨菁）
#a.有四名同学同时再玩一款游戏，boluo为30级，pingguo为25级，caomei为32级，mangguo为34级，请将这些数据录入名为game的dataframe中。
#b.请按游戏中等级从高至低将四名同学排名。
#c.请用函数判断caomei在游戏中的等级是否大于30级。

#20.a(罗雨菁)
game_name = c("boluo","pingguo","caomei","mangguo");
game_rank = c(30,25,32,34);
game = data.frame(game_name,game_rank);

#20.b(林立鑫)
game <- game[order(game$game_rank,decreasing = TRUE),]

#20.c(罗雨菁)接20.a
if(game[3,2]>30)
{
  print("YES")
}else
{
  print("NO")
}
#20.c(杜伟)
game[game$names=="caomei",2]>30 

#21.xiaoming身高180cm体重73kg，根据条件判断符“＜”或“＞”判断xiaoming是否超重（身高-体重＝110），并将结果保存到变量is_fat中。（罗雨菁）
#21(沈天琦)
height = 180;weight = 73;
if((height-weight)>110)
{
  is_fat = TRUE
}else
{
  is_fat = FALSE
}

#22.生成数列1，3，5，7，9，11 并将其放入一个两行三列的矩阵，按行排列（沈天琦）
#22(沈天琦)
data3 = seq(1,11,2);
matrix4 = matrix(data = data3,ncol = 3,nrow = 2,byrow = TRUE);

#23.赋值a=11,b=9,c=7.并交换三者的值 b的值给a, c的值给b, a的值给c（沈天琦）
#23(沈天琦)
a = 11;
b = 9; 
c = 7;
tem = a;
a = b;
b = c;
c = tem;

#24.清除上述所有变量（沈天琦）
#24(沈天琦)
rm(data3,matrix4,a,b,c,tem)

#25.请用3种方法生成一个1-30的整数序列，并将改序列分别存储到number1，number2，number3中。（王梦月）
#25(王梦月)
number1 = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30); 
number2 = seq(1,30,1); 
number3 = 1:30;

#26.利用第一题中的number1，number2，number3生成一个数据框DF，并判断number1是否为字符串格式，若不是，请将它转变成字符串格式。（王梦月）
#26(王梦月)
DF = data.frame(number1,number2,number3); 
is.character(number1) 
number1 = as.character(number1)

#27.利用number1或是number2或number3生成一个5行六列，按行填充的矩阵。（王梦月）
#27(王梦月)
matrix(data = seq(1,30,1),nrow = 5,ncol = 6,byrow = TRUE);

#28.给自己设计云同步，能够同步gutib里老师发的资料。(杜伟)
#28
NULL

#29.五个人分别得了金、铜、金、银、银牌，用factor将其表示；五人姓名分别A、B、C、D、E将其合并为表格。（杜伟）
#29(杜伟)
Fac = factor(c(1,3,1,2,2),label = c("jin","yin","tong")); 
names = c("A","B","C","D","E"); 
D = data.frame(Fac,names);

#30.五人身高分别是183、182、192、179用向量表示；并将188插入到182和192中间；用data.frame$的增加列的方式，将身高合并到题2中。（杜伟）
#30(杜伟)
height1 = c(183,182,192,179); 
height2 = c(height1[1:2],188,height1[3:4]); 
D$height = height2