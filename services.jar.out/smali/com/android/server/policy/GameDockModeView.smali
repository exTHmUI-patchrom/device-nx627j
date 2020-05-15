.class public Lcom/android/server/policy/GameDockModeView;
.super Landroid/widget/RelativeLayout;
.source "GameDockModeView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GameDockModeView$OnSlideToUnlockListener;
    }
.end annotation


# static fields
.field private static final POWER_MODE_MESSAGE:Ljava/lang/String; = "android.security2.power.mode"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsConsume:Z

.field private mOldLevel:I

.field private mOnSlideToUnlock:Lcom/android/server/policy/GameDockModeView$OnSlideToUnlockListener;

.field private mStartX:F

.field private powerChangeReceiver:Landroid/content/BroadcastReceiver;

.field private vBatteryValue:Landroid/widget/TextView;

.field private vGameDockBg:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/GameDockModeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/GameDockModeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/GameDockModeView;->mHandler:Landroid/os/Handler;

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/GameDockModeView;->mOldLevel:I

    .line 162
    new-instance v0, Lcom/android/server/policy/GameDockModeView$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GameDockModeView$2;-><init>(Lcom/android/server/policy/GameDockModeView;)V

    iput-object v0, p0, Lcom/android/server/policy/GameDockModeView;->powerChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p1, p0, Lcom/android/server/policy/GameDockModeView;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeView;->init()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/GameDockModeView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GameDockModeView;

    .line 24
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeView;->vGameDockBg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/GameDockModeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GameDockModeView;

    .line 24
    iget v0, p0, Lcom/android/server/policy/GameDockModeView;->mOldLevel:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/GameDockModeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GameDockModeView;
    .param p1, "x1"    # I

    .line 24
    iput p1, p0, Lcom/android/server/policy/GameDockModeView;->mOldLevel:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/GameDockModeView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GameDockModeView;

    .line 24
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeView;->vBatteryValue:Landroid/widget/TextView;

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x30a001c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    const v0, 0x3080041

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GameDockModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GameDockModeView;->vGameDockBg:Landroid/view/View;

    .line 65
    const v0, 0x3080068

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GameDockModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/policy/GameDockModeView;->vBatteryValue:Landroid/widget/TextView;

    .line 66
    const v0, 0x30800c1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GameDockModeView;->findViewById(I)Landroid/view/View;

    .line 67
    invoke-virtual {p0, p0}, Lcom/android/server/policy/GameDockModeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    const/high16 v0, -0x10000000

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GameDockModeView;->setBackgroundColor(I)V

    .line 69
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GameDockModeView;->setAlpha(F)V

    .line 70
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeView;->showGameDockBg()V

    .line 71
    return-void
.end method

.method private registerPowerReceive()V
    .locals 3

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.security2.power.mode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GameDockModeView;->powerChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    return-void
.end method

.method private showGameDockBg()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeView;->vGameDockBg:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/GameDockModeView$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GameDockModeView$1;-><init>(Lcom/android/server/policy/GameDockModeView;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method

.method private unregistePowerReceiver()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GameDockModeView;->powerChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 51
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 52
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeView;->registerPowerReceive()V

    .line 53
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 99
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeView;->unregistePowerReceiver()V

    .line 58
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 59
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 104
    .local v0, "touchSlop":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    const/16 v4, 0x8

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/server/policy/GameDockModeView;->mIsConsume:Z

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/server/policy/GameDockModeView;->mStartX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeView;->mOnSlideToUnlock:Lcom/android/server/policy/GameDockModeView$OnSlideToUnlockListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/GameDockModeView;->vGameDockBg:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeView;->vGameDockBg:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-virtual {p0, v3}, Lcom/android/server/policy/GameDockModeView;->setAlpha(F)V

    .line 118
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeView;->mOnSlideToUnlock:Lcom/android/server/policy/GameDockModeView$OnSlideToUnlockListener;

    invoke-interface {v1}, Lcom/android/server/policy/GameDockModeView$OnSlideToUnlockListener;->onSlideToUnlock()V

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/GameDockModeView;->mIsConsume:Z

    goto :goto_0

    .line 124
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/server/policy/GameDockModeView;->mIsConsume:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/GameDockModeView;->vGameDockBg:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/GameDockModeView;->vGameDockBg:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeView;->vGameDockBg:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/android/server/policy/GameDockModeView;->setAlpha(F)V

    goto :goto_0

    .line 106
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/server/policy/GameDockModeView;->mIsConsume:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GameDockModeView;->vGameDockBg:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GameDockModeView;->vGameDockBg:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeView;->vGameDockBg:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 108
    invoke-virtual {p0, v3}, Lcom/android/server/policy/GameDockModeView;->setAlpha(F)V

    .line 110
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/policy/GameDockModeView;->mIsConsume:Z

    .line 111
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GameDockModeView;->mStartX:F

    .line 112
    nop

    .line 132
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/GameDockModeView;->mIsConsume:Z

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnSlideToUnlockListener(Lcom/android/server/policy/GameDockModeView$OnSlideToUnlockListener;)V
    .locals 0
    .param p1, "onSlideToUnlockListener"    # Lcom/android/server/policy/GameDockModeView$OnSlideToUnlockListener;

    .line 93
    iput-object p1, p0, Lcom/android/server/policy/GameDockModeView;->mOnSlideToUnlock:Lcom/android/server/policy/GameDockModeView$OnSlideToUnlockListener;

    .line 94
    return-void
.end method
