.class public Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;
.super Landroid/app/Dialog;
.source "TouchGameKeyMapView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$ITouchGameKeyClickListener;,
        Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "TouchGameKeyMapView"


# instance fields
.field private mColseBtn:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

.field private mFloatBallCoordinate:Ljava/lang/String;

.field private mFloatBoxCoordinate:Ljava/lang/String;

.field private mGameAppPackageName:Ljava/lang/String;

.field private mIClickListener:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$ITouchGameKeyClickListener;

.field private mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

.field private mLeftFloatBox:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

.field private mMainRects:[Landroid/graphics/Rect;

.field private mMainScreenMsg:Landroid/widget/TextView;

.field private mOpenSwitch:Z

.field private mOptPanel:Landroid/widget/LinearLayout;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

.field private mRightFloatBox:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

.field private mSwitchBtn:Landroid/widget/ToggleButton;

.field private mThreeBtn:Landroid/widget/RadioButton;

.field private mTwoBtn:Landroid/widget/RadioButton;

.field private remindMessage:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    const v0, 0x30e0009

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;-><init>(Landroid/content/Context;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainRects:[Landroid/graphics/Rect;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOpenSwitch:Z

    .line 70
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;
    .param p1, "x1"    # I

    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->handleRadioBtnOptChange(I)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;
    .param p1, "x1"    # Z

    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->handleSwitchBtnStateChange(Z)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    .line 36
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    .line 36
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    .line 36
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;
    .param p1, "x1"    # Z

    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->updatNonFloatViewDisplay(Z)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    .line 36
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOptPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;
    .param p1, "x1"    # Z

    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->saveFloatViewPosAndTouchEnable(Z)V

    return-void
.end method

.method private handleRadioBtnOptChange(I)V
    .locals 4
    .param p1, "checkId"    # I

    .line 117
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mThreeBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;I)V

    .line 119
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 120
    const-string v0, "XGL"

    const-string v2, "handleRadioBtnOptChange threeBtn"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOpenSwitch:Z

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mTwoBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 125
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;I)V

    .line 126
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 127
    const-string v0, "XGL"

    const-string v1, "handleRadioBtnOptChange twoBtn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOpenSwitch:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    .line 132
    :cond_1
    :goto_0
    return-void
.end method

.method private handleSwitchBtnStateChange(Z)V
    .locals 5
    .param p1, "check"    # Z

    .line 135
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOpenSwitch:Z

    .line 136
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOpenSwitch:Z

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 142
    .local v0, "isThreeOrTwoFinger":I
    if-nez v0, :cond_0

    .line 143
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v4, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 147
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->updateFloatViewPos()V

    .line 148
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->saveFloatViewPosAndTouchEnable(Z)V

    .line 149
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->remindMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 151
    .end local v0    # "isThreeOrTwoFinger":I
    goto :goto_1

    .line 152
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->remindMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->saveFloatViewPosAndTouchEnable(Z)V

    .line 159
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->showScreenTouchesDot(Landroid/content/Context;Z)V

    .line 160
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;ZLjava/lang/String;)V

    .line 162
    :goto_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOpenSwitch:Z

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->updateEnabledGameList(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 163
    return-void
.end method

.method private initView()V
    .locals 5

    .line 80
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 81
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x30a0034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->setContentView(Landroid/view/View;)V

    .line 83
    invoke-virtual {p0, p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 84
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->setCanceledOnTouchOutside(Z)V

    .line 86
    const v3, 0x3080094

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOptPanel:Landroid/widget/LinearLayout;

    .line 87
    const v3, 0x30800c2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mSwitchBtn:Landroid/widget/ToggleButton;

    .line 89
    const v3, 0x308006b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainScreenMsg:Landroid/widget/TextView;

    .line 90
    const v3, 0x308001c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mColseBtn:Landroid/widget/ImageButton;

    .line 91
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mColseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v3, 0x3080064

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    .line 94
    const v3, 0x30800b5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    .line 95
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    new-instance v4, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;

    invoke-direct {v4, p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)V

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 96
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    new-instance v4, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;

    invoke-direct {v4, p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)V

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 98
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v3, v2, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setFingerLeftOrRight(IZ)V

    .line 99
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setFingerLeftOrRight(IZ)V

    .line 101
    const v2, 0x308006c

    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 102
    const v2, 0x30800c3

    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mThreeBtn:Landroid/widget/RadioButton;

    .line 103
    const v2, 0x30800c8

    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mTwoBtn:Landroid/widget/RadioButton;

    .line 104
    const v2, 0x30800c6

    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->remindMessage:Landroid/widget/TextView;

    .line 105
    const v2, 0x3080039

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    .line 106
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 107
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$1;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$1;-><init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 114
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->setAttributes()V

    .line 115
    return-void
.end method

.method private parseRectsFromCoordinateStr()V
    .locals 7

    .line 249
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 250
    .local v0, "isThreeOrTwoFinger":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-nez v0, :cond_0

    .line 251
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v4, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 252
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mThreeBtn:Landroid/widget/RadioButton;

    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v4, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 255
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mTwoBtn:Landroid/widget/RadioButton;

    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 258
    :goto_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v6, "main_"

    invoke-static {v4, v5, v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFloatBallCoordinate:Ljava/lang/String;

    .line 260
    const/4 v4, -0x1

    .line 261
    .local v4, "rotation":I
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFloatBallCoordinate:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 262
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFloatBallCoordinate:Ljava/lang/String;

    invoke-static {v5}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v5

    .line 263
    .local v5, "positionSet":[I
    aget v4, v5, v1

    .line 264
    array-length v1, v5

    const/16 v6, 0xd

    if-ge v1, v6, :cond_1

    .line 266
    const-string v1, "TouchGameKeyMapView"

    const-string v6, " parseRectsFromCoordinateStr positionSet.length < 13"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-object v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_DEFAULT:[Landroid/graphics/Rect;

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainRects:[Landroid/graphics/Rect;

    .line 268
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainRects:[Landroid/graphics/Rect;

    invoke-static {v1, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFloatBallCoordinate:Ljava/lang/String;

    goto :goto_1

    .line 270
    :cond_1
    const-string/jumbo v1, "main_"

    invoke-static {v5, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainRects:[Landroid/graphics/Rect;

    .line 274
    .end local v5    # "positionSet":[I
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOpenSwitch:Z

    if-eqz v1, :cond_4

    .line 275
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->updateFloatViewPos()V

    .line 276
    const/4 v1, -0x1

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainRects:[Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    .line 277
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainRects:[Landroid/graphics/Rect;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v1, v3, v5, v4, v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;[Landroid/graphics/Rect;ILjava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_2

    .line 280
    :cond_3
    const-string v1, "TouchGameKeyMapView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseRectsFromCoordinateStr, null rect ! rotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 283
    :cond_4
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->updateFloatViewPos()V

    .line 284
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 288
    :goto_2
    return-void
.end method

.method private saveFloatViewPosAndTouchEnable(Z)V
    .locals 9
    .param p1, "moveFlag"    # Z

    .line 292
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 293
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 294
    .local v1, "rotation":I
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    .line 295
    new-array v2, v2, [Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v2, v4

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v2, v5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v2, v3

    .line 296
    .local v2, "rects":[Landroid/graphics/Rect;
    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    aget-object v4, v2, v4

    invoke-virtual {v6, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 297
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    aget-object v6, v2, v5

    invoke-virtual {v4, v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 298
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    aget-object v3, v2, v3

    invoke-virtual {v4, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 299
    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainRects:[Landroid/graphics/Rect;

    .line 300
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainRects:[Landroid/graphics/Rect;

    invoke-static {v3, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFloatBallCoordinate:Ljava/lang/String;

    .line 301
    .end local v2    # "rects":[Landroid/graphics/Rect;
    goto :goto_0

    .line 302
    :cond_0
    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFloatBallCoordinate:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 303
    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v8, "main_"

    invoke-static {v6, v7, v8}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFloatBallCoordinate:Ljava/lang/String;

    .line 307
    :cond_1
    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFloatBallCoordinate:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 308
    const-string v6, "TouchGameKeyMapView"

    const-string/jumbo v7, "saveFloatViewPosAndTouchEnable mFloatBallCoordinate == null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-array v2, v2, [Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v2, v4

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v2, v5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v2, v3

    .line 310
    .restart local v2    # "rects":[Landroid/graphics/Rect;
    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    aget-object v4, v2, v4

    invoke-virtual {v6, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 311
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    aget-object v6, v2, v5

    invoke-virtual {v4, v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 312
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    aget-object v3, v2, v3

    invoke-virtual {v4, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 313
    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainRects:[Landroid/graphics/Rect;

    .line 314
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainRects:[Landroid/graphics/Rect;

    invoke-static {v3, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFloatBallCoordinate:Ljava/lang/String;

    .line 315
    .end local v2    # "rects":[Landroid/graphics/Rect;
    goto :goto_0

    .line 316
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFloatBallCoordinate:Ljava/lang/String;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v2

    .line 317
    .local v2, "positionSet":[I
    const-string/jumbo v3, "main_"

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainRects:[Landroid/graphics/Rect;

    .line 321
    .end local v2    # "positionSet":[I
    :goto_0
    const-string v2, "TouchGameKeyMapView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveFloatViewPosAndTouchEnable mFloatBallCoordinate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFloatBallCoordinate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFloatBallCoordinate:Ljava/lang/String;

    const-string/jumbo v6, "main_"

    invoke-static {v2, v3, v4, v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainRects:[Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    .line 324
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainRects:[Landroid/graphics/Rect;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1, v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;[Landroid/graphics/Rect;ILjava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v2, v5, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_1

    .line 327
    :cond_3
    const-string v2, "TouchGameKeyMapView"

    const-string/jumbo v3, "saveFloatViewPosAndTouchEnable, null rect !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    .end local v1    # "rotation":I
    :goto_1
    goto :goto_2

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->DEBUG:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    return-void
.end method

.method private setAttributes()V
    .locals 4

    .line 178
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 179
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 180
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 181
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 182
    const/16 v2, 0x7e4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 183
    const/16 v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 184
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 186
    const/16 v2, 0x1606

    .line 191
    .local v2, "uiFlag":I
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 192
    return-void
.end method

.method private setLayoutParams(Landroid/view/View;IIIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "gravity"    # I

    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 364
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 365
    iput p6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 366
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    return-void
.end method

.method private updatNonFloatViewDisplay(Z)V
    .locals 2
    .param p1, "display"    # Z

    .line 166
    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOptPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mColseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOptPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mColseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    :goto_0
    return-void
.end method

.method private updateFloatViewPos()V
    .locals 11

    .line 335
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFloatBallCoordinate:Ljava/lang/String;

    .line 336
    .local v0, "positionStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v3, "main_"

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .end local v0    # "positionStr":Ljava/lang/String;
    .local v7, "positionStr":Ljava/lang/String;
    :cond_0
    move-object v7, v0

    const-string v0, "TouchGameKeyMapView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFloatViewPos positionStr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v0, :cond_2

    .line 341
    invoke-static {v7}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v0

    .line 342
    .local v0, "positionSet":[I
    array-length v1, v0

    const/16 v2, 0xd

    if-ge v1, v2, :cond_1

    .line 344
    const-string v1, "TouchGameKeyMapView"

    const-string v2, " updateFloatViewPos positionSet.length < 13"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 346
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 347
    .local v2, "rotation":I
    sget-object v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_DEFAULT:[Landroid/graphics/Rect;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainRects:[Landroid/graphics/Rect;

    .line 348
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainRects:[Landroid/graphics/Rect;

    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFloatBallCoordinate:Ljava/lang/String;

    .line 349
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFloatBallCoordinate:Ljava/lang/String;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v0

    .line 351
    .end local v0    # "positionSet":[I
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    .end local v2    # "rotation":I
    .local v10, "positionSet":[I
    :cond_1
    move-object v10, v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    aget v2, v10, v9

    aget v3, v10, v8

    const/4 v0, 0x3

    aget v4, v10, v0

    const/4 v0, 0x4

    aget v5, v10, v0

    const/4 v6, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 352
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    const/4 v0, 0x5

    aget v2, v10, v0

    const/4 v0, 0x6

    aget v3, v10, v0

    const/4 v0, 0x7

    aget v4, v10, v0

    const/16 v0, 0x8

    aget v5, v10, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 353
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    const/16 v0, 0x9

    aget v2, v10, v0

    const/16 v0, 0xa

    aget v3, v10, v0

    const/16 v0, 0xb

    aget v4, v10, v0

    const/16 v0, 0xc

    aget v5, v10, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 354
    .end local v10    # "positionSet":[I
    goto :goto_0

    .line 355
    :cond_2
    sget-object v10, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_DEFAULT:[Landroid/graphics/Rect;

    .line 356
    .local v10, "defaultRects":[Landroid/graphics/Rect;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    const/4 v0, 0x0

    aget-object v2, v10, v0

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aget-object v3, v10, v0

    iget v3, v3, Landroid/graphics/Rect;->top:I

    aget-object v4, v10, v0

    iget v4, v4, Landroid/graphics/Rect;->right:I

    aget-object v0, v10, v0

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v6, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 357
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    aget-object v0, v10, v9

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aget-object v0, v10, v9

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aget-object v0, v10, v9

    iget v4, v0, Landroid/graphics/Rect;->right:I

    aget-object v0, v10, v9

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 358
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    aget-object v0, v10, v8

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aget-object v0, v10, v8

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aget-object v0, v10, v8

    iget v4, v0, Landroid/graphics/Rect;->right:I

    aget-object v0, v10, v8

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 360
    .end local v10    # "defaultRects":[Landroid/graphics/Rect;
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 239
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 240
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->showScreenTouchesDot(Landroid/content/Context;Z)V

    .line 241
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOpenSwitch:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->saveFloatViewPosAndTouchEnable(Z)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOpenSwitch:Z

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->updateEnabledGameList(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 245
    return-void
.end method

.method public getAttachePackageName()Ljava/lang/String;
    .locals 1

    .line 382
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x308001c

    if-ne v1, v0, :cond_0

    .line 226
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mIClickListener:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$ITouchGameKeyClickListener;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mIClickListener:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$ITouchGameKeyClickListener;

    invoke-interface {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$ITouchGameKeyClickListener;->doClose()V

    .line 229
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOpenSwitch:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x30c0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "saveMsg":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    .end local v0    # "saveMsg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->initView()V

    .line 77
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 371
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 372
    const/4 v0, 0x1

    return v0

    .line 374
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAttachePackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 378
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public setOptClickListener(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$ITouchGameKeyClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$ITouchGameKeyClickListener;

    .line 430
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mIClickListener:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$ITouchGameKeyClickListener;

    .line 431
    return-void
.end method

.method public show()V
    .locals 4

    .line 196
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 197
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOpenSwitch:Z

    .line 198
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOpenSwitch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v3, "main_"

    invoke-static {v0, v2, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "positionStr":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 201
    const-string v2, "TouchGameKeyMapView"

    const-string/jumbo v3, "show getFloatViewPosition = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOpenSwitch:Z

    .line 205
    .end local v0    # "positionStr":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mSwitchBtn:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOpenSwitch:Z

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 206
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mOpenSwitch:Z

    const/16 v2, 0x8

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->remindMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->remindMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 214
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->mSwitchBtn:Landroid/widget/ToggleButton;

    new-instance v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$2;-><init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 220
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->parseRectsFromCoordinateStr()V

    .line 221
    return-void
.end method
