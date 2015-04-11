   1. 通过本框架布局，能够清晰的看到iOS控件元素的相互关系，不必要每次都要计算控件的位置，减少脑细胞死亡量。
   2. 通过本框架，只需要改动一行代码，就能够轻松实现手机横竖屏完美展现。 
主要方法
-(void)layout_width:(float)width;     //视图高度  
-(void)layout_heigth:(float)heigth;   //视图宽度  
  
-(void)layout_verticalCenter;         //相对于父视图垂直居中  
-(void)layout_horizontalCenter;       //相对于父视图水平居中  
  
//相对父视图的位置关系  
-(void)margin_top:(float)toppix;                    //距离父视图的上边距  
-(void)margin_left:(float)leftpix;                  //距离父视图的左边距  
-(void)margin_bottom:(float)bottompix;              //距离父视图的下边距  
-(void)margin_rigth:(float)rigthpix;                //距离父视图的右边距  
  
  
//同级相对位置关系  
-(void)toleftView:(UIView *)view ofPix:(float)sizepix;    //距离某视图的左部边缘距离  
-(void)totopView:(UIView *)view ofPix:(float)sizepix;     //距离某视图的上部边缘距离  
-(void)torigthView:(UIView *)view ofPix:(float)sizepix;   //距离某视图的右部边缘距离  
-(void)tobottomView:(UIView *)view ofPix:(float)sizepix;  //距离某视图的下部边缘距离  
  
//同级对齐方式  
-(void)aligntopwithview:(UIView *)view;       //与某视图的上部边缘对齐  
-(void)aligbottomnwithview:(UIView *)view;    //与某视图的下部边缘对齐  
-(void)alignleftwithview:(UIView *)view;      //与某视图的左部边缘对齐  
-(void)alignrigthwithview:(UIView *)view;     //与某视图的右部边缘对齐  

详细使用请参考本人博客：http://blog.csdn.net/face___book/article/details/44980943
