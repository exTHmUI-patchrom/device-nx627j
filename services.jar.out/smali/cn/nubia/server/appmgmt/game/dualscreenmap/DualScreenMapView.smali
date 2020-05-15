.class public Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;
.super Landroid/app/Dialog;
.source "DualScreenMapView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$IClickListener;,
        Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$TitleOnTouchListener;,
        Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final EVENT_UPDATE_HINT_TEXT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DualScreenMapView"


# instance fields
.field private hintTextView:Landroid/widget/TextView;

.field private mColseBtn:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field mDrag:Z

.field private mFloatBallCoordinate:Ljava/lang/String;

.field private mFloatBoxCoordinate:Ljava/lang/String;

.field private mGameAppPackageName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIClickListener:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$IClickListener;

.field mInitPositionX:F

.field mLastX:F

.field private mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

.field private mLeftFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

.field private mMScreenBtn:Landroid/widget/RadioButton;

.field private mMainRects:[Landroid/graphics/Rect;

.field private mMainScreenMsg:Landroid/widget/TextView;

.field private mMainScreenOpt:Z

.field private mOpenSwitch:Z

.field private mOptPanel:Landroid/widget/LinearLayout;

.field mPointId:I

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

.field private mRightFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

.field private mSScreenBtn:Landroid/widget/RadioButton;

.field private mSecondaryRects:[Landroid/graphics/Rect;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarPanel:Landroid/widget/RelativeLayout;

.field private mSwitchBtn:Landroid/widget/ToggleButton;

.field private mSwitchHintTextView:Landroid/widget/TextView;

.field private saveProgress:I

.field private secondaryMoveArea:Landroid/view/View;

.field private seekBarDown:Landroid/widget/ImageView;

.field private seekBarUp:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
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
    sput-boolean v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    const v0, 0x30e0009

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;-><init>(Landroid/content/Context;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainRects:[Landroid/graphics/Rect;

    .line 64
    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSecondaryRects:[Landroid/graphics/Rect;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenOpt:Z

    .line 66
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mOpenSwitch:Z

    .line 68
    const/16 v0, 0x33

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveProgress:I

    .line 86
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;
    .param p1, "x1"    # I

    .line 38
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->handleRadioBtnOptChange(I)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 38
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;
    .param p1, "x1"    # Z

    .line 38
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->handleSwitchBtnStateChange(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 38
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 38
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 38
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 38
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;
    .param p1, "x1"    # Z

    .line 38
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->updatNonFloatViewDisplay(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 38
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mOptPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 38
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenOpt:Z

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 38
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->seekBarUpdateBoxPos()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;F)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;
    .param p1, "x1"    # F

    .line 38
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->changeDisToPro(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;
    .param p1, "x1"    # I

    .line 38
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setFloatViewBoxScale(I)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 38
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveFloatViewPosAndTouchEnable()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 38
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 38
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 38
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->hintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 38
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private changeDisToPro(F)I
    .locals 6
    .param p1, "delta"    # F

    .line 604
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 605
    .local v0, "now":I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMin()I

    move-result v1

    .line 606
    .local v1, "min":I
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    .line 607
    .local v2, "max":I
    sub-int v3, v2, v1

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, p1

    .line 608
    .local v3, "delPro":F
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, v0

    .line 609
    .local v4, "result":I
    if-ge v4, v1, :cond_0

    .line 610
    move v4, v1

    .line 612
    :cond_0
    if-le v4, v2, :cond_1

    .line 613
    move v4, v2

    .line 615
    :cond_1
    return v4
.end method

.method private handleRadioBtnOptChange(I)V
    .locals 3
    .param p1, "checkId"    # I

    .line 236
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMScreenBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenOpt:Z

    .line 237
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mOpenSwitch:Z

    if-nez v0, :cond_1

    return-void

    .line 238
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenOpt:Z

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->showScreenTouchesDot(Landroid/content/Context;Z)V

    .line 240
    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->updateFloatViewDisplay(Z)V

    .line 241
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->updateFloatViewPos()V

    .line 242
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveFloatViewPosAndTouchEnable()V

    .line 243
    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->updateTextView(Z)V

    goto :goto_1

    .line 245
    :cond_2
    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->updateFloatViewDisplay(Z)V

    .line 246
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->updateFloatViewPos()V

    .line 249
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setSecondaryTouchRects(Ljava/lang/String;Landroid/content/Context;)V

    .line 250
    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->updateTextView(Z)V

    .line 252
    :goto_1
    return-void
.end method

.method private handleSwitchBtnStateChange(Z)V
    .locals 5
    .param p1, "check"    # Z

    .line 265
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mOpenSwitch:Z

    .line 266
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mOpenSwitch:Z

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRadioGroup:Landroid/widget/RadioGroup;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setRadioGroupEnable(Landroid/widget/RadioGroup;Z)V

    .line 268
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenOpt:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v0, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v0, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->secondaryMoveArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBarPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->showScreenTouchesDot(Landroid/content/Context;Z)V

    .line 277
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->updateFloatViewPos()V

    .line 278
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveFloatViewPosAndTouchEnable()V

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v0, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v0, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->secondaryMoveArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBarPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 287
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->updateFloatViewPos()V

    .line 290
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setSecondaryTouchRects(Ljava/lang/String;Landroid/content/Context;)V

    .line 292
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSwitchHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 295
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-static {v0, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setRadioGroupEnable(Landroid/widget/RadioGroup;Z)V

    .line 296
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->secondaryMoveArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBarPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 303
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveFloatViewPosAndTouchEnable()V

    .line 304
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->showScreenTouchesDot(Landroid/content/Context;Z)V

    .line 305
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 306
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSwitchHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->hintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setCountZero(Landroid/content/Context;Ljava/lang/String;)V

    .line 311
    :goto_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mOpenSwitch:Z

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->updateEnabledGameList(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 312
    return-void
.end method

.method private initView()V
    .locals 5

    .line 96
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 98
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->isNX627Project()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 99
    const v1, 0x30a000f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    goto :goto_0

    .line 101
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    const v1, 0x30a000e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 103
    .restart local v1    # "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setContentView(Landroid/view/View;)V

    .line 104
    invoke-virtual {p0, p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 105
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setCanceledOnTouchOutside(Z)V

    .line 107
    const v3, 0x3080094

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mOptPanel:Landroid/widget/LinearLayout;

    .line 109
    const v3, 0x308006d

    invoke-virtual {p0, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 110
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v4, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$1;

    invoke-direct {v4, p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$1;-><init>(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 117
    const v3, 0x308006a

    invoke-virtual {p0, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMScreenBtn:Landroid/widget/RadioButton;

    .line 118
    const v3, 0x30800b9

    invoke-virtual {p0, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSScreenBtn:Landroid/widget/RadioButton;

    .line 119
    const v3, 0x30800c2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSwitchBtn:Landroid/widget/ToggleButton;

    .line 121
    const v3, 0x308006b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenMsg:Landroid/widget/TextView;

    .line 122
    const v3, 0x3080075

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSwitchHintTextView:Landroid/widget/TextView;

    .line 123
    const v3, 0x3080054

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->hintTextView:Landroid/widget/TextView;

    .line 124
    const v3, 0x308001c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mColseBtn:Landroid/widget/ImageButton;

    .line 125
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mColseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v3, 0x30800be

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBarPanel:Landroid/widget/RelativeLayout;

    .line 128
    const v3, 0x30800bb

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    .line 154
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 155
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setMin(I)V

    .line 156
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;

    invoke-direct {v4, p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;-><init>(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    const v3, 0x3080064

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    .line 199
    const v3, 0x30800b5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    .line 200
    const v3, 0x3080065

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    .line 201
    const v3, 0x30800b6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    .line 202
    const v3, 0x30800ba

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->secondaryMoveArea:Landroid/view/View;

    .line 203
    const v3, 0x30800bc

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->seekBarDown:Landroid/widget/ImageView;

    .line 204
    const v3, 0x30800bf

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->seekBarUp:Landroid/widget/ImageView;

    .line 205
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    new-instance v4, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;

    invoke-direct {v4, p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)V

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 206
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    new-instance v4, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;

    invoke-direct {v4, p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)V

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 207
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    new-instance v4, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;

    invoke-direct {v4, p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)V

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 208
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    new-instance v4, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;

    invoke-direct {v4, p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)V

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 210
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v3, v2, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setFingerLeftOrRight(IZ)V

    .line 211
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setFingerLeftOrRight(IZ)V

    .line 212
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v3, v2, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setFingerLeftOrRight(IZ)V

    .line 213
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v2, v4, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setFingerLeftOrRight(IZ)V

    .line 214
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->secondaryMoveArea:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setSecondaryMoveBackground(Landroid/view/View;)V

    .line 215
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->secondaryMoveArea:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setSecondaryMoveBackground(Landroid/view/View;)V

    .line 216
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->seekBarDown:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->seekBarUp:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setAttributes()V

    .line 220
    new-instance v2, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$3;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$3;-><init>(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mHandler:Landroid/os/Handler;

    .line 233
    return-void
.end method

.method private parseRectsFromCoordinateStr()V
    .locals 5

    .line 448
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v2, "main_"

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    .line 450
    const/4 v0, -0x1

    .line 451
    .local v0, "rotation":I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 452
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v1

    .line 453
    .local v1, "positionSet":[I
    aget v0, v1, v2

    .line 454
    const-string/jumbo v3, "main_"

    invoke-static {v1, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainRects:[Landroid/graphics/Rect;

    .line 457
    .end local v1    # "positionSet":[I
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v4, "secondary_"

    invoke-static {v1, v3, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    .line 459
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 460
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v1

    .line 461
    .local v1, "posSet":[I
    const-string/jumbo v3, "secondary_"

    invoke-static {v1, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSecondaryRects:[Landroid/graphics/Rect;

    .line 464
    .end local v1    # "posSet":[I
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mOpenSwitch:Z

    if-eqz v1, :cond_3

    .line 465
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->updateFloatViewPos()V

    .line 466
    const/4 v1, -0x1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainRects:[Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSecondaryRects:[Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    .line 467
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSecondaryRects:[Landroid/graphics/Rect;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainRects:[Landroid/graphics/Rect;

    invoke-static {v1, v2, v3, v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;[Landroid/graphics/Rect;I)V

    .line 468
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    goto :goto_0

    .line 470
    :cond_2
    const-string v1, "DualScreenMapView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseRectsFromCoordinateStr, null rect ! rotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->updateFloatViewPos()V

    .line 474
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 475
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 476
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setRadioGroupEnable(Landroid/widget/RadioGroup;Z)V

    .line 479
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 480
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v1

    .line 481
    .restart local v1    # "posSet":[I
    if-eqz v1, :cond_4

    array-length v2, v1

    const/16 v3, 0x9

    if-lt v2, v3, :cond_4

    .line 482
    const/16 v2, 0x8

    aget v2, v1, v2

    iput v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveProgress:I

    .line 485
    .end local v1    # "posSet":[I
    :cond_4
    const-string v1, "DualScreenMapView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parse -- saveProgress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveProgress:I

    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setFloatViewBoxScale(I)V

    .line 487
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveProgress:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 488
    return-void
.end method

.method private resetFloatViewPos()V
    .locals 15

    .line 491
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mOptPanel:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/16 v3, 0x2d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 492
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenOpt:Z

    if-eqz v0, :cond_0

    .line 493
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    const/4 v3, 0x0

    const/16 v4, 0x12c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 494
    iget-object v9, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    const/4 v10, 0x0

    const/16 v11, 0x12c

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x5

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    goto :goto_0

    .line 496
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    const/4 v2, 0x0

    const/16 v3, 0x12c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 497
    iget-object v8, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    const/4 v9, 0x0

    const/16 v10, 0x12c

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x5

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 499
    :goto_0
    return-void
.end method

.method private saveFloatViewPosAndTouchEnable()V
    .locals 8

    .line 503
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 504
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 505
    .local v1, "rotation":I
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenOpt:Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 506
    new-array v2, v3, [Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v4

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v5

    .line 507
    .local v2, "rects":[Landroid/graphics/Rect;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 508
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 509
    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainRects:[Landroid/graphics/Rect;

    .line 510
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainRects:[Landroid/graphics/Rect;

    invoke-static {v3, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    .line 511
    const-string v3, "DualScreenMapView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "save-main-mFloatBoxCoordinate:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 513
    sget-object v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_SECONDARY_SCREEN_RECTS:[Landroid/graphics/Rect;

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSecondaryRects:[Landroid/graphics/Rect;

    .line 515
    .end local v2    # "rects":[Landroid/graphics/Rect;
    :cond_0
    goto :goto_0

    .line 516
    :cond_1
    new-array v2, v3, [Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v4

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v5

    .line 517
    .restart local v2    # "rects":[Landroid/graphics/Rect;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 518
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 519
    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSecondaryRects:[Landroid/graphics/Rect;

    .line 520
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSecondaryRects:[Landroid/graphics/Rect;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    .line 522
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iput v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveProgress:I

    .line 523
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 524
    .local v3, "sb":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveProgress:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 525
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    .line 526
    const-string v4, "DualScreenMapView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "save-second-mFloatBoxCoordinate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    .end local v2    # "rects":[Landroid/graphics/Rect;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    const-string/jumbo v6, "main_"

    invoke-static {v2, v3, v4, v6}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    const-string/jumbo v6, "secondary_"

    invoke-static {v2, v3, v4, v6}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainRects:[Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSecondaryRects:[Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    .line 531
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSecondaryRects:[Landroid/graphics/Rect;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainRects:[Landroid/graphics/Rect;

    invoke-static {v2, v3, v4, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;[Landroid/graphics/Rect;I)V

    .line 532
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    goto :goto_1

    .line 534
    :cond_2
    const-string v2, "DualScreenMapView"

    const-string/jumbo v3, "saveFloatViewPosAndTouchEnable, null rect !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    .end local v1    # "rotation":I
    :goto_1
    goto :goto_2

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->DEBUG:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 539
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void
.end method

.method private seekBarUpdateBoxPos()V
    .locals 4

    .line 595
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 596
    .local v0, "rects":[Landroid/graphics/Rect;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 597
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 598
    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSecondaryRects:[Landroid/graphics/Rect;

    .line 599
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSecondaryRects:[Landroid/graphics/Rect;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    .line 601
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->updateFloatViewPos()V

    .line 602
    return-void
.end method

.method private setAttributes()V
    .locals 4

    .line 369
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 370
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 371
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 372
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 373
    const/16 v2, 0x7e4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 374
    const/16 v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 375
    const/4 v2, 0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 376
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 377
    const/16 v2, 0x1606

    .line 382
    .local v2, "uiFlag":I
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 383
    return-void
.end method

.method private setFloatViewBoxScale(I)V
    .locals 2
    .param p1, "progress"    # I

    .line 585
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->updateScaleBoxPosition(Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;II)V

    .line 591
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->updateScaleBoxPosition(Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;II)V

    .line 592
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

    .line 574
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 575
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 576
    iput p6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 577
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    return-void
.end method

.method private updatNonFloatViewDisplay(Z)V
    .locals 2
    .param p1, "display"    # Z

    .line 351
    if-eqz p1, :cond_0

    .line 352
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mOptPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mColseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenOpt:Z

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBarPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mOptPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mColseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenOpt:Z

    if-nez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBarPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 366
    :cond_1
    :goto_0
    return-void
.end method

.method private updateFloatViewDisplay(Z)V
    .locals 8
    .param p1, "saveFloatBoxPos"    # Z

    .line 315
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 316
    .local v0, "rects":[Landroid/graphics/Rect;
    const/4 v1, 0x4

    if-eqz p1, :cond_0

    .line 317
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 318
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    aget-object v3, v0, v3

    invoke-virtual {v4, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 319
    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSecondaryRects:[Landroid/graphics/Rect;

    .line 320
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSecondaryRects:[Landroid/graphics/Rect;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    .line 322
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iput v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveProgress:I

    .line 323
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 324
    .local v3, "sb":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveProgress:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    .line 326
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v4, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 327
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v4, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 328
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->secondaryMoveArea:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBarPanel:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 330
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 331
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 333
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 334
    :cond_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 335
    .local v4, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 336
    .local v5, "rotation":I
    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 337
    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    aget-object v3, v0, v3

    invoke-virtual {v6, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 338
    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainRects:[Landroid/graphics/Rect;

    .line 339
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainRects:[Landroid/graphics/Rect;

    invoke-static {v3, v5}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    .line 340
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v3, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 341
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v3, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 343
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 344
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setVisibility(I)V

    .line 345
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->secondaryMoveArea:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBarPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 348
    .end local v4    # "windowManager":Landroid/view/WindowManager;
    .end local v5    # "rotation":I
    :goto_0
    return-void
.end method

.method private updateFloatViewPos()V
    .locals 16

    .line 542
    move-object/from16 v7, p0

    iget-boolean v0, v7, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenOpt:Z

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 543
    iget-object v0, v7, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    .line 544
    .local v0, "positionStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 545
    iget-object v4, v7, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    iget-object v5, v7, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v6, "main_"

    invoke-static {v4, v5, v6}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .end local v0    # "positionStr":Ljava/lang/String;
    .local v12, "positionStr":Ljava/lang/String;
    :cond_0
    move-object v12, v0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 548
    invoke-static {v12}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v13

    .line 549
    .local v13, "positionSet":[I
    iget-object v4, v7, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    aget v3, v13, v3

    aget v5, v13, v2

    aget v6, v13, v1

    aget v11, v13, v11

    const/4 v14, -0x1

    move-object v0, v7

    move-object v1, v4

    move v2, v3

    move v3, v5

    move v4, v6

    move v5, v11

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 550
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    aget v2, v13, v10

    aget v3, v13, v9

    aget v4, v13, v8

    const/16 v0, 0x8

    aget v5, v13, v0

    const/4 v6, -0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 551
    .end local v13    # "positionSet":[I
    goto :goto_0

    .line 552
    :cond_1
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    const/16 v2, 0x3c

    const/16 v3, 0x12c

    const/16 v4, 0x3c

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 553
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 555
    .end local v12    # "positionStr":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 556
    :cond_2
    iget-object v0, v7, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    .line 557
    .restart local v0    # "positionStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 558
    iget-object v4, v7, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    iget-object v5, v7, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v6, "secondary_"

    invoke-static {v4, v5, v6}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .end local v0    # "positionStr":Ljava/lang/String;
    .restart local v12    # "positionStr":Ljava/lang/String;
    :cond_3
    move-object v12, v0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 561
    invoke-static {v12}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v13

    .line 562
    .restart local v13    # "positionSet":[I
    iget-object v4, v7, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    const/4 v0, 0x0

    aget v5, v13, v0

    aget v3, v13, v3

    aget v6, v13, v2

    aget v14, v13, v1

    const/4 v15, -0x1

    move-object v0, v7

    move-object v1, v4

    move v2, v5

    move v4, v6

    move v5, v14

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 563
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    aget v2, v13, v11

    aget v3, v13, v10

    aget v4, v13, v9

    aget v5, v13, v8

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 564
    iput-object v12, v7, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    .line 565
    .end local v13    # "positionSet":[I
    goto :goto_1

    .line 566
    :cond_4
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLeftFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    const/16 v2, 0x190

    const/16 v3, 0x12c

    const/16 v4, 0x391

    const/16 v5, 0x2ee

    const/4 v6, 0x3

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 567
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRightFloatBox:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    const/16 v2, 0x596

    const/16 v4, 0x797

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 568
    const-string v0, "400|300|913|750|1430|300|1943|750"

    iput-object v0, v7, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mFloatBoxCoordinate:Ljava/lang/String;

    .line 571
    .end local v12    # "positionStr":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private updateTextView(Z)V
    .locals 3
    .param p1, "isMainScreenText"    # Z

    .line 255
    const v0, 0x30700d8

    if-eqz p1, :cond_0

    .line 256
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenMsg:Landroid/widget/TextView;

    const v2, 0x30c0047

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 257
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenMsg:Landroid/widget/TextView;

    const v2, 0x30c0049

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 260
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 263
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 439
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 440
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->showScreenTouchesDot(Landroid/content/Context;Z)V

    .line 441
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mOpenSwitch:Z

    if-eqz v0, :cond_0

    .line 442
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveFloatViewPosAndTouchEnable()V

    .line 444
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mOpenSwitch:Z

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->updateEnabledGameList(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 445
    return-void
.end method

.method public getAttachePackageName()Ljava/lang/String;
    .locals 1

    .line 630
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 409
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x308001c

    if-ne v1, v0, :cond_0

    .line 410
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mIClickListener:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$IClickListener;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mIClickListener:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$IClickListener;

    invoke-interface {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$IClickListener;->doClose()V

    .line 414
    :cond_0
    const v0, 0x30800bc

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 415
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 416
    .local v0, "progressTemp":I
    add-int/lit8 v0, v0, -0x5

    .line 417
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMin()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 418
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMin()I

    move-result v0

    .line 420
    :cond_1
    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveProgress:I

    .line 421
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveProgress:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 423
    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveProgress:I

    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setFloatViewBoxScale(I)V

    .line 424
    .end local v0    # "progressTemp":I
    goto :goto_0

    :cond_2
    const v0, 0x30800bf

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 425
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 426
    .restart local v0    # "progressTemp":I
    add-int/lit8 v0, v0, 0x5

    .line 427
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 428
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    .line 430
    :cond_3
    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveProgress:I

    .line 431
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveProgress:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 433
    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->saveProgress:I

    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setFloatViewBoxScale(I)V

    .line 435
    .end local v0    # "progressTemp":I
    :cond_4
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 91
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->initView()V

    .line 93
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 619
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 620
    const/4 v0, 0x1

    return v0

    .line 622
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAttachePackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 626
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    .line 627
    return-void
.end method

.method public setOptClickListener(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$IClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$IClickListener;

    .line 749
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mIClickListener:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$IClickListener;

    .line 750
    return-void
.end method

.method public show()V
    .locals 4

    .line 387
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 388
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    .line 389
    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mOpenSwitch:Z

    .line 390
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mOpenSwitch:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSwitchHintTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mOpenSwitch:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mMainScreenMsg:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mOpenSwitch:Z

    if-eqz v1, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->needShowHintMsg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->hintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 397
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSwitchBtn:Landroid/widget/ToggleButton;

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mOpenSwitch:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 398
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mSwitchBtn:Landroid/widget/ToggleButton;

    new-instance v1, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$4;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$4;-><init>(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 404
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->parseRectsFromCoordinateStr()V

    .line 405
    return-void
.end method
