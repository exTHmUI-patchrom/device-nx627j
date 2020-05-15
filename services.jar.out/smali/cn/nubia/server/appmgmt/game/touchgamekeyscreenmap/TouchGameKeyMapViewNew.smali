.class public Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;
.super Landroid/app/Dialog;
.source "TouchGameKeyMapViewNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$ITouchGameKeyClickListener;,
        Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "TouchGameKeyMapViewNew"


# instance fields
.field private mColseBtn:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

.field private mFloatBallCoordinate:Ljava/lang/String;

.field private mGameAppPackageName:Ljava/lang/String;

.field private mHouchHapticFeedBackText:Landroid/widget/TextView;

.field private mHouchHapticFeedbackButton:Landroid/widget/ToggleButton;

.field private mHouchHapticFeedbackEnable:Z

.field private mHouchHapticFeedbackPanel:Landroid/widget/LinearLayout;

.field private mHouchKeyMap:Landroid/widget/LinearLayout;

.field private mHouchKeyMapButtonL:Landroid/widget/ToggleButton;

.field private mHouchKeyMapButtonR:Landroid/widget/ToggleButton;

.field private mHouchKeyMapButtonT:Landroid/widget/ToggleButton;

.field private mHouchKeyMapLEnable:Z

.field private mHouchKeyMapREnable:Z

.field private mHouchKeyMapTEnable:Z

.field private mHouchKeyMessage:Landroid/widget/TextView;

.field private mIClickListener:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$ITouchGameKeyClickListener;

.field private mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

.field private mLeftFloatBox:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

.field private mMainRects:[Landroid/graphics/Rect;

.field private mMainScreenMsg:Landroid/widget/TextView;

.field private mOpenSwitch:Z

.field private mOptPanel:Landroid/widget/LinearLayout;

.field private mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

.field private mRightFloatBox:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

.field private mSensitivityPanel:Landroid/widget/LinearLayout;

.field private mSensitivityPanel_T:Landroid/widget/LinearLayout;

.field private mSensitivitySeekBarL:Landroid/widget/SeekBar;

.field private mSensitivitySeekBarR:Landroid/widget/SeekBar;

.field private mSensitivitySeekBarT:Landroid/widget/SeekBar;

.field private mSwitchBtn:Landroid/widget/ToggleButton;

.field private mTipTextview:Landroid/widget/TextView;

.field private mTipTextviewVisibile:Z

.field private final onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private remindMessage:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
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
    sput-boolean v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    const v0, 0x30e0009

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;-><init>(Landroid/content/Context;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mMainRects:[Landroid/graphics/Rect;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mOpenSwitch:Z

    .line 70
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchHapticFeedbackEnable:Z

    .line 71
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    .line 72
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    .line 73
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    .line 74
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextviewVisibile:Z

    .line 647
    new-instance v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$7;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$7;-><init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 87
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    .line 34
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mOpenSwitch:Z

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mOpenSwitch:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1002(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextviewVisibile:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;
    .param p1, "x1"    # Z

    .line 34
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->updatNonFloatViewDisplay(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mOptPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;
    .param p1, "x1"    # Z

    .line 34
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->saveFloatViewPosAndTouchEnable(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mSensitivitySeekBarL:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mSensitivitySeekBarT:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    .line 34
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->parseRectsFromCoordinateStr()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    .line 34
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchHapticFeedbackEnable:Z

    return v0
.end method

.method static synthetic access$402(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchHapticFeedbackEnable:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    .line 34
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->updateFloatViewPos()V

    return-void
.end method

.method static synthetic access$602(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    .line 34
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->handleSwitchBtnStateChange()V

    return-void
.end method

.method static synthetic access$802(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    return p1
.end method

.method static synthetic access$902(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    return p1
.end method

.method private handleSwitchBtnStateChange()V
    .locals 11

    .line 284
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveTipNumStatus(Landroid/content/Context;I)V

    .line 285
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextviewVisibile:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 286
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextviewVisibile:Z

    .line 287
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextview:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    const/4 v3, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x4

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v9, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 294
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v8}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v9, v7}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 299
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    if-nez v0, :cond_3

    .line 300
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v8}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v8}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v9, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 304
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    if-eqz v0, :cond_4

    .line 305
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v8}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v8}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v9, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 309
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    if-nez v0, :cond_5

    .line 310
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v8}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v8}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v9, v8}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 314
    :cond_5
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    if-eqz v0, :cond_6

    .line 315
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v8}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v9, v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 319
    :cond_6
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    if-nez v0, :cond_7

    .line 320
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v8}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v9, v5}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 324
    :cond_7
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    if-nez v0, :cond_8

    .line 325
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v8}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v8}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v0, v8}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v9, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;I)V

    .line 330
    :cond_8
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->updateFloatViewPos()V

    .line 331
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v9}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 332
    .local v0, "isThreeOrTwoFingerOrOneFinger":I
    if-eqz v0, :cond_a

    if-eq v0, v8, :cond_a

    if-eq v0, v6, :cond_a

    if-ne v0, v5, :cond_9

    goto :goto_1

    .line 335
    :cond_9
    iget-object v9, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v9, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    goto :goto_2

    .line 333
    :cond_a
    :goto_1
    iget-object v9, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    .line 337
    :goto_2
    iget-object v9, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getFloatViewPos(Landroid/content/Context;Ljava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v9

    .line 338
    .local v9, "positionSet":[Landroid/graphics/Rect;
    iget-object v10, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v10, v7}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setGameKeyEnable(Landroid/content/Context;Z)V

    .line 339
    if-eqz v0, :cond_11

    if-ne v0, v7, :cond_b

    goto :goto_5

    .line 341
    :cond_b
    if-eq v0, v4, :cond_10

    if-ne v0, v6, :cond_c

    goto :goto_4

    .line 343
    :cond_c
    if-eq v0, v1, :cond_f

    if-ne v0, v5, :cond_d

    goto :goto_3

    .line 345
    :cond_d
    if-eq v0, v8, :cond_e

    if-ne v0, v3, :cond_12

    .line 346
    :cond_e
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v1, v9, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setGameKeyRectLR(Landroid/content/Context;[Landroid/graphics/Rect;Z)V

    goto :goto_6

    .line 344
    :cond_f
    :goto_3
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setRightGameKeyEnable(Landroid/content/Context;[Landroid/graphics/Rect;)V

    goto :goto_6

    .line 342
    :cond_10
    :goto_4
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setLeftGameKeyEnable(Landroid/content/Context;[Landroid/graphics/Rect;)V

    goto :goto_6

    .line 340
    :cond_11
    :goto_5
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v1, v9, v7}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setGameKeyRectLR(Landroid/content/Context;[Landroid/graphics/Rect;Z)V

    .line 348
    :cond_12
    :goto_6
    return-void
.end method

.method private initView()V
    .locals 5

    .line 97
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 98
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x30a0035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->setContentView(Landroid/view/View;)V

    .line 100
    invoke-virtual {p0, p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 101
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->setCanceledOnTouchOutside(Z)V

    .line 103
    const v3, 0x3080094

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mOptPanel:Landroid/widget/LinearLayout;

    .line 104
    const v3, 0x30800c2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mSwitchBtn:Landroid/widget/ToggleButton;

    .line 105
    const v3, 0x3080058

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMap:Landroid/widget/LinearLayout;

    .line 106
    const v3, 0x3080056

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchHapticFeedbackPanel:Landroid/widget/LinearLayout;

    .line 108
    const v3, 0x308006e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mSensitivityPanel:Landroid/widget/LinearLayout;

    .line 109
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mSensitivityPanel:Landroid/widget/LinearLayout;

    const v4, 0x3080074

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mSensitivityPanel_T:Landroid/widget/LinearLayout;

    .line 110
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mSensitivityPanel:Landroid/widget/LinearLayout;

    const v4, 0x3080071

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mSensitivitySeekBarL:Landroid/widget/SeekBar;

    .line 111
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mSensitivityPanel:Landroid/widget/LinearLayout;

    const v4, 0x3080073

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mSensitivitySeekBarT:Landroid/widget/SeekBar;

    .line 112
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mSensitivityPanel:Landroid/widget/LinearLayout;

    const v4, 0x3080072

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mSensitivitySeekBarR:Landroid/widget/SeekBar;

    .line 120
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mSensitivityPanel:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    const v3, 0x308006b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mMainScreenMsg:Landroid/widget/TextView;

    .line 124
    const v3, 0x3080057

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchHapticFeedBackText:Landroid/widget/TextView;

    .line 125
    const v3, 0x308005c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMessage:Landroid/widget/TextView;

    .line 126
    const v3, 0x30800c6

    invoke-virtual {p0, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->remindMessage:Landroid/widget/TextView;

    .line 127
    const v3, 0x30800c5

    invoke-virtual {p0, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextview:Landroid/widget/TextView;

    .line 129
    const v3, 0x308001c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mColseBtn:Landroid/widget/ImageButton;

    .line 130
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mColseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v3, 0x3080064

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    .line 133
    const v3, 0x30800b5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    .line 134
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    new-instance v4, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;

    invoke-direct {v4, p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)V

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 135
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    new-instance v4, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;

    invoke-direct {v4, p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)V

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 137
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v3, v2, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setFingerLeftOrRight(IZ)V

    .line 138
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setFingerLeftOrRight(IZ)V

    .line 140
    const v2, 0x3080039

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    .line 141
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 143
    const v2, 0x3080055

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchHapticFeedbackButton:Landroid/widget/ToggleButton;

    .line 144
    const v2, 0x3080059

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonL:Landroid/widget/ToggleButton;

    .line 145
    const v2, 0x308005b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonT:Landroid/widget/ToggleButton;

    .line 146
    const v2, 0x308005a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonR:Landroid/widget/ToggleButton;

    .line 147
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->setAttributes()V

    .line 148
    return-void
.end method

.method private parseRectsFromCoordinateStr()V
    .locals 10

    .line 351
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mOpenSwitch:Z

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 352
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextviewVisibile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchHapticFeedbackPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->remindMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 359
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextviewVisibile:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchHapticFeedbackPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->remindMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 366
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mOpenSwitch:Z

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mOpenSwitch:Z

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mOpenSwitch:Z

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 369
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mOpenSwitch:Z

    if-eqz v0, :cond_17

    .line 370
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 371
    .local v0, "isThreeOrTwoFingerOrOneFinger":I
    const/4 v1, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_7

    if-eq v0, v4, :cond_7

    if-ne v0, v1, :cond_6

    goto :goto_4

    .line 374
    :cond_6
    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    goto :goto_5

    .line 372
    :cond_7
    :goto_4
    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    .line 376
    :goto_5
    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getFloatViewPos(Landroid/content/Context;Ljava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v6

    .line 377
    .local v6, "positionSet":[Landroid/graphics/Rect;
    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setGameKeyEnable(Landroid/content/Context;Z)V

    .line 378
    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v0, :cond_e

    if-ne v0, v5, :cond_8

    goto :goto_8

    .line 380
    :cond_8
    if-eq v0, v8, :cond_d

    if-ne v0, v4, :cond_9

    goto :goto_7

    .line 382
    :cond_9
    if-eq v0, v7, :cond_c

    if-ne v0, v1, :cond_a

    goto :goto_6

    .line 384
    :cond_a
    if-eq v0, v2, :cond_b

    const/4 v9, 0x7

    if-ne v0, v9, :cond_f

    .line 385
    :cond_b
    iget-object v9, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v9, v6, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setGameKeyRectLR(Landroid/content/Context;[Landroid/graphics/Rect;Z)V

    goto :goto_9

    .line 383
    :cond_c
    :goto_6
    iget-object v9, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setRightGameKeyEnable(Landroid/content/Context;[Landroid/graphics/Rect;)V

    goto :goto_9

    .line 381
    :cond_d
    :goto_7
    iget-object v9, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setLeftGameKeyEnable(Landroid/content/Context;[Landroid/graphics/Rect;)V

    goto :goto_9

    .line 379
    :cond_e
    :goto_8
    iget-object v9, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v9, v6, v5}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setGameKeyRectLR(Landroid/content/Context;[Landroid/graphics/Rect;Z)V

    .line 387
    :cond_f
    :goto_9
    if-nez v0, :cond_10

    .line 388
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 389
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 390
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 391
    iput-boolean v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    .line 392
    iput-boolean v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    .line 393
    iput-boolean v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    .line 394
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonL:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 395
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonR:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 396
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonT:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_a

    .line 397
    :cond_10
    if-ne v0, v5, :cond_11

    .line 398
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 399
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 400
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 401
    iput-boolean v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    .line 402
    iput-boolean v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    .line 403
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    .line 404
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonL:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 405
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonR:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 406
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonT:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_a

    .line 407
    :cond_11
    if-ne v0, v7, :cond_12

    .line 408
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 409
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 410
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 411
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    .line 412
    iput-boolean v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    .line 413
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    .line 414
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonL:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 415
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonR:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 416
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonT:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_a

    .line 417
    :cond_12
    if-ne v0, v8, :cond_13

    .line 418
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 420
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 421
    iput-boolean v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    .line 422
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    .line 423
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    .line 424
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonL:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 425
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonR:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 426
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonT:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_a

    .line 427
    :cond_13
    if-ne v0, v2, :cond_14

    .line 428
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 429
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 430
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 431
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    .line 432
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    .line 433
    iput-boolean v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    .line 434
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonL:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 435
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonR:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 436
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonT:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_a

    .line 437
    :cond_14
    if-ne v0, v4, :cond_15

    .line 438
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 439
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 440
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 441
    iput-boolean v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    .line 442
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    .line 443
    iput-boolean v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    .line 444
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonL:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 445
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonR:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 446
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonT:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_a

    .line 447
    :cond_15
    if-ne v0, v1, :cond_16

    .line 448
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 449
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 450
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 451
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    .line 452
    iput-boolean v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    .line 453
    iput-boolean v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    .line 454
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonL:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 455
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonR:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 456
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonT:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_a

    .line 458
    :cond_16
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 459
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 460
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setVisibility(I)V

    .line 461
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    .line 462
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    .line 463
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    .line 464
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonL:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapLEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 465
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonR:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapREnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 466
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonT:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapTEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 468
    .end local v0    # "isThreeOrTwoFingerOrOneFinger":I
    .end local v6    # "positionSet":[Landroid/graphics/Rect;
    :goto_a
    goto :goto_b

    .line 469
    :cond_17
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setGameKeyEnable(Landroid/content/Context;Z)V

    .line 470
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    .line 472
    :goto_b
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->updateFloatViewPos()V

    .line 473
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->saveFloatViewPosAndTouchEnable(Z)V

    .line 474
    return-void
.end method

.method private saveFloatViewPosAndTouchEnable(Z)V
    .locals 9
    .param p1, "moveFlag"    # Z

    .line 529
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 530
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 531
    .local v1, "rotation":I
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    .line 532
    new-array v2, v2, [Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v2, v5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v2, v4

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v2, v3

    .line 533
    .local v2, "rects":[Landroid/graphics/Rect;
    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    aget-object v5, v2, v5

    invoke-virtual {v6, v5}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 534
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    aget-object v4, v2, v4

    invoke-virtual {v5, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 535
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    aget-object v3, v2, v3

    invoke-virtual {v4, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 536
    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mMainRects:[Landroid/graphics/Rect;

    .line 537
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mMainRects:[Landroid/graphics/Rect;

    invoke-static {v3, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFloatBallCoordinate:Ljava/lang/String;

    .line 538
    .end local v2    # "rects":[Landroid/graphics/Rect;
    goto :goto_0

    .line 539
    :cond_0
    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFloatBallCoordinate:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 540
    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v8, "main_"

    invoke-static {v6, v7, v8}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFloatBallCoordinate:Ljava/lang/String;

    .line 544
    :cond_1
    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFloatBallCoordinate:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 545
    const-string v6, "TouchGameKeyMapViewNew"

    const-string/jumbo v7, "saveFloatViewPosAndTouchEnable mFloatBallCoordinate == null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-array v2, v2, [Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v2, v5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v2, v4

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v2, v3

    .line 547
    .restart local v2    # "rects":[Landroid/graphics/Rect;
    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    aget-object v5, v2, v5

    invoke-virtual {v6, v5}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 548
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    aget-object v4, v2, v4

    invoke-virtual {v5, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 549
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    aget-object v3, v2, v3

    invoke-virtual {v4, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 550
    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mMainRects:[Landroid/graphics/Rect;

    .line 551
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mMainRects:[Landroid/graphics/Rect;

    invoke-static {v3, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFloatBallCoordinate:Ljava/lang/String;

    .line 552
    .end local v2    # "rects":[Landroid/graphics/Rect;
    goto :goto_0

    .line 553
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFloatBallCoordinate:Ljava/lang/String;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v2

    .line 554
    .local v2, "positionSet":[I
    const-string/jumbo v3, "main_"

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mMainRects:[Landroid/graphics/Rect;

    .line 558
    .end local v2    # "positionSet":[I
    :goto_0
    const-string v2, "TouchGameKeyMapViewNew"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveFloatViewPosAndTouchEnable mFloatBallCoordinate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFloatBallCoordinate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";mMainRects="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mMainRects:[Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFloatBallCoordinate:Ljava/lang/String;

    const-string/jumbo v5, "main_"

    invoke-static {v2, v3, v4, v5}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mMainRects:[Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    .line 561
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mMainRects:[Landroid/graphics/Rect;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1, v5}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;[Landroid/graphics/Rect;ILjava/lang/String;)V

    .line 562
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mOpenSwitch:Z

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_1

    .line 564
    :cond_3
    const-string v2, "TouchGameKeyMapViewNew"

    const-string/jumbo v3, "saveFloatViewPosAndTouchEnable, null rect !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    .end local v1    # "rotation":I
    :goto_1
    goto :goto_2

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->DEBUG:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 569
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    return-void
.end method

.method private setAttributes()V
    .locals 4

    .line 173
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 174
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 175
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 176
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 177
    const/16 v2, 0x7e4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 178
    const/16 v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 179
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 181
    const/16 v2, 0x1606

    .line 186
    .local v2, "uiFlag":I
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 187
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

    .line 572
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 573
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 574
    iput p6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 575
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    return-void
.end method

.method private updatNonFloatViewDisplay(Z)V
    .locals 2
    .param p1, "display"    # Z

    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mOptPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mColseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchHapticFeedbackPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextviewVisibile:Z

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mOptPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mColseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchHapticFeedbackPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextviewVisibile:Z

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    :cond_1
    :goto_0
    return-void
.end method

.method private updateFloatViewPos()V
    .locals 11

    .line 500
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFloatBallCoordinate:Ljava/lang/String;

    .line 501
    .local v0, "positionStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v3, "main_"

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    .end local v0    # "positionStr":Ljava/lang/String;
    .local v7, "positionStr":Ljava/lang/String;
    :cond_0
    move-object v7, v0

    const-string v0, "TouchGameKeyMapViewNew"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFloatViewPos positionStr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v0, :cond_2

    .line 506
    invoke-static {v7}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v0

    .line 507
    .local v0, "positionSet":[I
    array-length v1, v0

    const/16 v2, 0xd

    if-ge v1, v2, :cond_1

    .line 509
    const-string v1, "TouchGameKeyMapViewNew"

    const-string v2, " updateFloatViewPos positionSet.length < 13"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 511
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 512
    .local v2, "rotation":I
    sget-object v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_DEFAULT:[Landroid/graphics/Rect;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mMainRects:[Landroid/graphics/Rect;

    .line 513
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mMainRects:[Landroid/graphics/Rect;

    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFloatBallCoordinate:Ljava/lang/String;

    .line 514
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFloatBallCoordinate:Ljava/lang/String;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v0

    .line 516
    .end local v0    # "positionSet":[I
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    .end local v2    # "rotation":I
    .local v10, "positionSet":[I
    :cond_1
    move-object v10, v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    aget v2, v10, v9

    aget v3, v10, v8

    const/4 v0, 0x3

    aget v4, v10, v0

    const/4 v0, 0x4

    aget v5, v10, v0

    const/4 v6, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 517
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    const/4 v0, 0x5

    aget v2, v10, v0

    const/4 v0, 0x6

    aget v3, v10, v0

    const/4 v0, 0x7

    aget v4, v10, v0

    const/16 v0, 0x8

    aget v5, v10, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 518
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    const/16 v0, 0x9

    aget v2, v10, v0

    const/16 v0, 0xa

    aget v3, v10, v0

    const/16 v0, 0xb

    aget v4, v10, v0

    const/16 v0, 0xc

    aget v5, v10, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 519
    .end local v10    # "positionSet":[I
    goto :goto_0

    .line 520
    :cond_2
    sget-object v10, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_DEFAULT:[Landroid/graphics/Rect;

    .line 521
    .local v10, "defaultRects":[Landroid/graphics/Rect;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

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

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 522
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    aget-object v0, v10, v9

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aget-object v0, v10, v9

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aget-object v0, v10, v9

    iget v4, v0, Landroid/graphics/Rect;->right:I

    aget-object v0, v10, v9

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 523
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mFingerFloatBall:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    aget-object v0, v10, v8

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aget-object v0, v10, v8

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aget-object v0, v10, v8

    iget v4, v0, Landroid/graphics/Rect;->right:I

    aget-object v0, v10, v8

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 525
    .end local v10    # "defaultRects":[Landroid/graphics/Rect;
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 492
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 493
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mOpenSwitch:Z

    if-eqz v0, :cond_0

    .line 494
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->saveFloatViewPosAndTouchEnable(Z)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mOpenSwitch:Z

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->updateEnabledGameList(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 497
    return-void
.end method

.method public getAttachePackageName()Ljava/lang/String;
    .locals 1

    .line 591
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x308001c

    if-ne v1, v0, :cond_0

    .line 479
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mIClickListener:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$ITouchGameKeyClickListener;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mIClickListener:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$ITouchGameKeyClickListener;

    invoke-interface {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$ITouchGameKeyClickListener;->doClose()V

    .line 482
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mOpenSwitch:Z

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x30c0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "saveMsg":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 488
    .end local v0    # "saveMsg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 92
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->initView()V

    .line 94
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 580
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 581
    const/4 v0, 0x1

    return v0

    .line 583
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAttachePackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 587
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    .line 588
    return-void
.end method

.method public setOptClickListener(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$ITouchGameKeyClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$ITouchGameKeyClickListener;

    .line 639
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mIClickListener:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$ITouchGameKeyClickListener;

    .line 640
    return-void
.end method

.method public show()V
    .locals 7

    .line 191
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 192
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v2, "main_"

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "targetPos":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 195
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 196
    .local v4, "rotation":I
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getAndSaveDefaultMainScreenRects(Landroid/content/Context;Ljava/lang/String;I)[Landroid/graphics/Rect;

    .line 197
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v5, v6, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->updateEnabledGameList(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 198
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v5}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->isDefaultGame(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v5, v6, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v5, v6, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;I)V

    .line 204
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    .end local v4    # "rotation":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v1, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mOpenSwitch:Z

    .line 205
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mSwitchBtn:Landroid/widget/ToggleButton;

    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mOpenSwitch:Z

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 206
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v1, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getHouchHapticFeedbackEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchHapticFeedbackEnable:Z

    .line 207
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchHapticFeedbackButton:Landroid/widget/ToggleButton;

    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchHapticFeedbackEnable:Z

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 208
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->isDefaultGame(Ljava/lang/String;)Z

    move-result v1

    const/16 v4, 0x8

    if-eqz v1, :cond_2

    .line 209
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextviewVisibile:Z

    .line 210
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextview:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 212
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getTipNumStatus(Landroid/content/Context;)I

    move-result v1

    .line 213
    .local v1, "num":I
    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextviewVisibile:Z

    .line 214
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextview:Landroid/widget/TextView;

    iget-boolean v6, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextviewVisibile:Z

    if-eqz v6, :cond_4

    move v4, v3

    nop

    :cond_4
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    if-eq v1, v5, :cond_5

    .line 216
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveTipNumStatus(Landroid/content/Context;I)V

    .line 219
    .end local v1    # "num":I
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->parseRectsFromCoordinateStr()V

    .line 220
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mSwitchBtn:Landroid/widget/ToggleButton;

    new-instance v2, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$1;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$1;-><init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 228
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchHapticFeedbackButton:Landroid/widget/ToggleButton;

    new-instance v2, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$2;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$2;-><init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 241
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonL:Landroid/widget/ToggleButton;

    new-instance v2, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$3;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$3;-><init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 249
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonR:Landroid/widget/ToggleButton;

    new-instance v2, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$4;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$4;-><init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 256
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mHouchKeyMapButtonT:Landroid/widget/ToggleButton;

    new-instance v2, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$5;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$5;-><init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 263
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mTipTextview:Landroid/widget/TextView;

    new-instance v2, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$6;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$6;-><init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getTouchGameKeySensitivityValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 273
    .local v1, "sensitivityValue":I
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mSensitivitySeekBarL:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 274
    invoke-static {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->writeTouchGameKeySensitivityValue(II)V

    .line 278
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mGameAppPackageName:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getTouchGameKeySensitivityValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 279
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->mSensitivitySeekBarR:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 280
    invoke-static {v1, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->writeTouchGameKeySensitivityValue(II)V

    .line 281
    return-void
.end method
