#Group 1
#Q1
require(graphics)
plot(cars, main = "lowess(cars)")
lines(lowess(cars), col = 2)

xinyi = c(77,97,96,70,89);
x = c(1,2,2,2,4);
xinyi.df = data.frame(x,score=xinyi);
plot(xinyi.df);
lines(lowess(xinyi.df));

#Q2
x = 0;
y = 0;
for(x in 10:792)
{
  y=x-9;
  product = x*y;
  message(x,"  ",y);
  if(product==792)
  {
    message("Bingo  ",x,"  ",y);
    break;
  }
}

#Q3
name04 = c("wangnan","zhangyining","jinxiangmei","fuyuanai");
name08 = c("wangnan","zhangyining","fengtianwei","fuyuanai");
name12 = c("lixiaoxia","dingning","fengtianwei","fuyuanai");

name.df = data.frame(name04,name08,name12);

common04and08 = name.df$name04[name.df$name04%in%name.df$name08];
common04and08and12 = common04and08[common04and08%in%name.df$name12];
common04and08and12


#group5

  
  