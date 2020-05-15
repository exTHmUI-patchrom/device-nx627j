.class public Lcn/nubia/server/policy/edge/DoubleTapAnim;
.super Ljava/lang/Object;
.source "DoubleTapAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;
    }
.end annotation


# static fields
.field private static final MSG_DEINIT:I = 0x3

.field private static final MSG_INIT:I = 0x1

.field private static final MSG_START:I = 0x2

.field private static final RADIUS:I = 0x2b


# instance fields
.field private mCircleView:Lcn/nubia/server/policy/edge/CircleView;

.field private mContext:Landroid/content/Context;

.field private mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mOnSettingChangeListener:Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mUIHandler:Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;

.field private mView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/server/policy/edge/GestureSettings;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gestureSettings"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcn/nubia/server/policy/edge/DoubleTapAnim$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/DoubleTapAnim$1;-><init>(Lcn/nubia/server/policy/edge/DoubleTapAnim;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mOnSettingChangeListener:Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;-><init>(Lcn/nubia/server/policy/edge/DoubleTapAnim;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mUIHandler:Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;

    .line 76
    iput-object p2, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    .line 77
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_double_click"

    iget-object v2, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mOnSettingChangeListener:Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/policy/edge/GestureSettings;->addOnSettingChangeListener(Ljava/lang/String;Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;)V

    .line 79
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mWindowManager:Landroid/view/WindowManager;

    .line 81
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->getScreenParams()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/DoubleTapAnim;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/DoubleTapAnim;

    .line 18
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->isDoubleTapForBack()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/DoubleTapAnim;)Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/DoubleTapAnim;

    .line 18
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mUIHandler:Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/DoubleTapAnim;FF)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/DoubleTapAnim;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 18
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->startInner(FF)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/DoubleTapAnim;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/DoubleTapAnim;

    .line 18
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->deInit()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/DoubleTapAnim;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/DoubleTapAnim;

    .line 18
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mView:Landroid/view/View;

    return-object v0
.end method

.method private deInit()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/CircleView;->stopAnim()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    .line 173
    iput-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mView:Landroid/view/View;

    .line 175
    :cond_0
    return-void
.end method

.method private getScreenParams()V
    .locals 2

    .line 85
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 86
    .local v0, "p":Landroid/graphics/Point;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 87
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mScreenWidth:I

    .line 88
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mScreenHeight:I

    .line 89
    return-void
.end method

.method private getX(FFI)F
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "rotation"    # I

    .line 141
    packed-switch p3, :pswitch_data_0

    .line 151
    return p1

    .line 147
    :pswitch_0
    iget v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mScreenHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    return v0

    .line 145
    :pswitch_1
    iget v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mScreenWidth:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    return v0

    .line 143
    :pswitch_2
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getY(FFI)F
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "rotation"    # I

    .line 155
    packed-switch p3, :pswitch_data_0

    .line 165
    return p2

    .line 161
    :pswitch_0
    return p1

    .line 159
    :pswitch_1
    iget v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mScreenHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    return v0

    .line 157
    :pswitch_2
    iget v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mScreenWidth:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDoubleTapForBack()Z
    .locals 2

    .line 178
    const-string v0, "10"

    iget-object v1, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    .line 179
    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/GestureSettings;->getDoubleTapSwitch()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private startInner(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 132
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    if-nez v0, :cond_0

    .line 133
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 135
    .local v0, "rotation":I
    iget-object v1, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->getX(FFI)F

    move-result v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/CircleView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/CircleView;->setX(F)V

    .line 136
    iget-object v1, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->getY(FFI)F

    move-result v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/CircleView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/CircleView;->setY(F)V

    .line 137
    iget-object v1, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/CircleView;->startAnim()V

    .line 138
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 96
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7e4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 97
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 98
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x538

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 103
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "FitDoubleTap"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 105
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 106
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x30a0009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mView:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mView:Landroid/view/View;

    const v1, 0x3080038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/policy/edge/CircleView;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    .line 109
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mView:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mCircleView:Lcn/nubia/server/policy/edge/CircleView;

    new-instance v1, Lcn/nubia/server/policy/edge/DoubleTapAnim$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/DoubleTapAnim$2;-><init>(Lcn/nubia/server/policy/edge/DoubleTapAnim;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CircleView;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 124
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public start(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 128
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim;->mUIHandler:Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;

    float-to-int v1, p1

    float-to-int v2, p2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 129
    return-void
.end method
