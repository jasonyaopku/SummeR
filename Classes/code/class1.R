name_. = "sss"
name1="zhangsan"
1name = "zhangsan"
A=1;
a=2;
#numeric
studentNO=123;
name = "zhangsan";
is.numeric(name);is.character(name);

student_num = 80;
student_num = numeric(4);
student_num
i=0;
student_num = "123";
is.numeric(student_num);
student_num = as.numeric(student_num)
is.numeric(student_num);
#character
student1_name = 'wangwu';
student_names = character(80);

#logical
student1_is_male = TRUE;


n<-5
n<(-5)

#vector
names1 = c("shenyufeng","zhaoyue","liushijia");
names2 = c(names1,"liushaosi");
names3 = c("kebotian",names2);

scores = c(60,61,59,100)
scores1 = c(scores,88)
score2 = c(scores1[1:2],77,scores1[3:5]);
length(scores1)
#factor
a=factor(1:4,labels = c("A","b",'c','ee'));

category = factor(c(1,2,1,1,1,1,3),labels = c('fruit','meat','makeup'));
category[1]
as.numeric(category)

OReword = factor(c(1,2,3,1,2),labels = c("Gold","Silver","Copper"));
mode(OReword)
length(OReword)
levels(OReword)

#indexing
names3[1]
names3[c(1,3,5)]
names3[1:3]
names3[5]
names3[6]


#revise
names3[5] = "liushaoshi";

#dataframe
ages = c(18,19,19,18,19);
df.name.age = data.frame(names3,ages);
df.name.age = data.frame(names2,ages);

#mode and attributes
mode(df.name.age);
df.name.age[1]
df.name.age[2]
attributes(df.name.age)
colnames(df.name.age) = c("Name","Age");

#change attributes
df.name.age$score = c(58,90,100,88,77);
Height = c(177,155,178,184,190);
new.df = cbind(df.name.age,Height);
#dataframe indexing and revise
df.name.age[2,2]
df.name.age[3,3]
df.name.age[4,3] = 98;

#delete
df.name.age$score = NULL;

#matrix
matrix1 = matrix(c(1,2,3,4,5,6),nrow = 2,ncol = 3);
matrix2 = matrix(c(1,2,3,4,5,6),nrow = 2,ncol = 3,byrow = TRUE);
matrix1[1,3]
matrix2[2,2]
matrix1[2,2] = 100;

#operators
a=10;
b=2;
a+b
a/b
#assignment
n->5 #invalid
5->n
n<-6
n<(-6)

#operator priority
a=1;b=2;c=3;
a+b/c
(a+b)/c
a*b+c
a*(b+c)

a=1;
b=2;
# a=b;
# b=a;
tmp=a;
a=b;
b=tmp
#vector computation
v1 = c(66,88,44,56);
# v1[1] = v1[1]+10;
# v1[2] = v1[2]+10;
v2 = v1+10;
v3 = v1*1.4;
#basic function 
ls.str()
rm(names1)
print(names3)
seq(1,100,1);
seq(1,100,2);
rep(1,10)
rep("a",10)
seq1 = seq(1,100,2);

#condition
if(names3[1]=="kebotian")
{
  print(names3[1]);
}else
{
  print("data error!");
}

#loop
for(namei in names3)
{
  print(namei);
  print(namei);
}



