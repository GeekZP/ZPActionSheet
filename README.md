# ZPActionSheet
简单的两种弹窗方式 一种适用于9宫格类型的分享，另一种适用于替换系统的actionsheet,所有文字的大小颜色均可以自定义

界面简介



使用方法详见demo


.h属性介绍

typedef enum {

    ShowTypeIsShareStyle = 0,  //9宫格类型的  适合分享按钮
    
    ShowTypeIsActionSheetStyle  //类似系统的actionsheet的类型
    
} ShowType;



 *  初始化actionView
 *
 *  @param titleArray 标题数组
 *  @param imageArr   图片数组(如果不需要的话传空数组(@[])进来)
 *  @param protitle   最顶部的标题  不需要的话传@""
 *  @param type       两种弹出类型(枚举)
 *
 *  @return wu
 

- (id)initWithShareHeadOprationWith:(NSArray *)titleArray andImageArry:(NSArray *)imageArr andProTitle:(NSString *)protitle and:(ShowType)type;


//点击按钮block回调
@property (nonatomic,copy) void(^btnClick)(NSInteger);

//头部提示文字
@property (nonatomic,copy) NSString *proStr;

//头部提示文字的字体大小
@property (nonatomic,assign) NSInteger proFont;

//取消按钮的颜色
@property (nonatomic,strong) UIColor *cancelBtnColor;

//取消按钮的字体大小
@property (nonatomic,assign) NSInteger cancelBtnFont;

//除了取消按钮其他按钮的颜色
@property (nonatomic,strong) UIColor *otherBtnColor;

//除了取消按钮其他按钮的字体大小
@property (nonatomic,assign) NSInteger otherBtnFont;
