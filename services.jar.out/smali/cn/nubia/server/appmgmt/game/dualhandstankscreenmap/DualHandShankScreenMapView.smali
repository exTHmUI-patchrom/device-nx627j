.class public Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;
.super Landroid/app/Dialog;
.source "DualHandShankScreenMapView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$IDualHandShankClickListener;,
        Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$HandShankMoveAreaFingerEvenListener;,
        Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$HandShankMoveAreaViewClick;,
        Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "DualHandShankScreenMapView"


# instance fields
.field private ROATTION_0:I

.field private ROATTION_180:I

.field private ROATTION_270:I

.field private ROATTION_90:I

.field private addrBELeft:Ljava/lang/String;

.field private addrBERight:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private gamePadId:I

.field private layoutBackground:Landroid/widget/LinearLayout;

.field private leftDeviceId:I

.field private leftOrRightAdjust:Landroid/widget/TextView;

.field private mColseBtn:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mFloatBallCoordinateForLeft:Ljava/lang/String;

.field private mFloatBallCoordinateForRight:Ljava/lang/String;

.field private mGameAppActivityName:Ljava/lang/String;

.field private mGameAppPackageName:Ljava/lang/String;

.field private mHandShankA:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

.field private mHandShankB:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

.field private mHandShankChoice:Ljava/lang/String;

.field private mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

.field private mHandShankX:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

.field private mHandShankY:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

.field private mIClickListener:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$IDualHandShankClickListener;

.field private mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

.field private mLeftHandBtn:Landroid/widget/RadioButton;

.field private mLeftHandStankRects:[Landroid/graphics/Rect;

.field private mMainScreenMsg:Landroid/widget/TextView;

.field private mMainScreenOpt:Z

.field private mOpenSwitch:Z

.field private mOptPanel:Landroid/widget/LinearLayout;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

.field private mRightHandBtn:Landroid/widget/RadioButton;

.field private mRightHandStankRects:[Landroid/graphics/Rect;

.field private mSwitchBtn:Landroid/widget/ToggleButton;

.field private moveAreaDirection:I

.field private moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

.field private packageName:Ljava/lang/String;

.field private recoveDefaultBtn:Landroid/widget/TextView;

.field private rightDeviceId:I

.field private rotationMoveAreaBtn:Landroid/widget/ImageButton;

.field private showToastState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
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
    sput-boolean v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    const v0, 0x30e0009

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;-><init>(Landroid/content/Context;I)V

    .line 102
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    .line 64
    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mMainScreenOpt:Z

    .line 66
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mOpenSwitch:Z

    .line 76
    const/4 v2, 0x0

    iput v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaDirection:I

    .line 83
    iput v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->gamePadId:I

    .line 84
    iput v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->ROATTION_0:I

    .line 85
    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->ROATTION_90:I

    .line 86
    const/4 v1, 0x2

    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->ROATTION_180:I

    .line 87
    const/4 v1, 0x3

    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->ROATTION_270:I

    .line 88
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->showToastState:Z

    .line 91
    const-string/jumbo v1, "left_"

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->addrBELeft:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->addrBERight:Ljava/lang/String;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->leftDeviceId:I

    .line 95
    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->rightDeviceId:I

    .line 96
    const-string v0, "cn.nubia.gamelauncher"

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->packageName:Ljava/lang/String;

    .line 97
    const-string v0, "cn.nubia.gamelauncher.activity.RedMagicHandleLeftRightCalibrationActivity"

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->className:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;
    .param p1, "x1"    # I

    .line 45
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->handleRadioBtnOptChange(I)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 45
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 45
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->updateFloatViewPos()V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 45
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->rotationMoveAreaDirection()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 45
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 45
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 45
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 45
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 45
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;
    .param p1, "x1"    # Z

    .line 45
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->updatNonFloatViewDisplay(Z)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 45
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mOptPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 45
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->saveFloatViewPosAndTouchEnable()V

    return-void
.end method

.method private changeRotationBg(I)V
    .locals 1
    .param p1, "rotateDirection"    # I

    .line 802
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;->setRotationBackground(I)V

    .line 803
    return-void
.end method

.method private handleRadioBtnOptChange(I)V
    .locals 6
    .param p1, "checkId"    # I

    .line 316
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 317
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x307012e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x307012d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 319
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->saveLastHandShankLRChoice(Landroid/content/Context;Ljava/lang/String;I)V

    .line 320
    const-string/jumbo v0, "left_"

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    .line 321
    iput v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->gamePadId:I

    .line 322
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->updateFloatViewPos()V

    .line 324
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    array-length v0, v0

    if-lt v0, v2, :cond_0

    .line 325
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setMoveAreaLayoutParams(Landroid/graphics/Rect;)V

    .line 328
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setMoveAreaDirection()V

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 330
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x3070130

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x307012f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 332
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->saveLastHandShankLRChoice(Landroid/content/Context;Ljava/lang/String;I)V

    .line 333
    const-string/jumbo v0, "right_"

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    .line 334
    iput v5, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->gamePadId:I

    .line 335
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->showToastState:Z

    if-nez v0, :cond_3

    .line 336
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->updateFloatViewPos()V

    .line 338
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    array-length v0, v0

    if-lt v0, v2, :cond_2

    .line 339
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setMoveAreaLayoutParams(Landroid/graphics/Rect;)V

    .line 342
    :cond_2
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setMoveAreaDirection()V

    .line 345
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->showToastState:Z

    if-nez v0, :cond_4

    .line 346
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    .line 347
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30c0064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 349
    :cond_4
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->showToastState:Z

    .line 350
    return-void
.end method

.method private initView()V
    .locals 5

    .line 117
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 118
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x30a0013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setContentView(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0, p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 121
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setCanceledOnTouchOutside(Z)V

    .line 123
    const v2, 0x3080094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mOptPanel:Landroid/widget/LinearLayout;

    .line 124
    const v2, 0x30800c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mSwitchBtn:Landroid/widget/ToggleButton;

    .line 125
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mSwitchBtn:Landroid/widget/ToggleButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 126
    const v2, 0x308006d

    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 127
    const v2, 0x3080066

    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandBtn:Landroid/widget/RadioButton;

    .line 128
    const v2, 0x30800b7

    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandBtn:Landroid/widget/RadioButton;

    .line 129
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v4, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$1;

    invoke-direct {v4, p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$1;-><init>(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 136
    const v2, 0x308006b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mMainScreenMsg:Landroid/widget/TextView;

    .line 137
    const v2, 0x308001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mColseBtn:Landroid/widget/ImageButton;

    .line 138
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mColseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v2, 0x30800b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->recoveDefaultBtn:Landroid/widget/TextView;

    .line 140
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->recoveDefaultBtn:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v2, 0x308000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->rotationMoveAreaBtn:Landroid/widget/ImageButton;

    .line 142
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->rotationMoveAreaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->rotationMoveAreaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 145
    const v2, 0x3080064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    .line 146
    const v2, 0x30800b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    .line 147
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 148
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 150
    const v2, 0x308004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    .line 151
    const v2, 0x308004e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    .line 152
    const v2, 0x308004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    .line 153
    const v2, 0x3080050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    .line 154
    const v2, 0x3080051

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    .line 155
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 156
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 157
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 158
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 159
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$HandShankMoveAreaFingerEvenListener;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$HandShankMoveAreaFingerEvenListener;-><init>(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView$IMoveAreaFingerEventListener;)V

    .line 160
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$HandShankMoveAreaViewClick;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$HandShankMoveAreaViewClick;-><init>(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;->setIClickListener(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView$IClickListener;)V

    .line 162
    const v2, 0x3080067

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->leftOrRightAdjust:Landroid/widget/TextView;

    .line 163
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->leftOrRightAdjust:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v2, 0x3080062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->layoutBackground:Landroid/widget/LinearLayout;

    .line 166
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setAttributes()V

    .line 167
    return-void
.end method

.method private isZeroRects([Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "rects"    # [Landroid/graphics/Rect;

    .line 703
    const/4 v0, 0x0

    .line 704
    .local v0, "isZeroRect":Z
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    array-length v2, p1

    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    goto :goto_1

    .line 707
    :cond_0
    aget-object v2, p1, v1

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_1

    aget-object v1, p1, v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    aget-object v2, p1, v1

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_1

    aget-object v1, p1, v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aget-object v2, p1, v1

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_1

    aget-object v1, p1, v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_1

    const/4 v1, 0x3

    aget-object v2, p1, v1

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_1

    aget-object v1, p1, v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_1

    const/4 v1, 0x4

    aget-object v2, p1, v1

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_1

    aget-object v1, p1, v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_1

    const/4 v1, 0x5

    aget-object v2, p1, v1

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_1

    aget-object v1, p1, v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_1

    const/4 v1, 0x6

    aget-object v2, p1, v1

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_1

    aget-object v1, p1, v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_1

    .line 711
    const/4 v0, 0x1

    goto :goto_0

    .line 713
    :cond_1
    const/4 v0, 0x0

    .line 715
    :goto_0
    return v0

    .line 705
    :cond_2
    :goto_1
    return v1
.end method

.method private isZeroRectsStr(Ljava/lang/String;)Z
    .locals 3
    .param p1, "positionStr"    # Ljava/lang/String;

    .line 718
    const/4 v0, 0x0

    .line 719
    .local v0, "isZeroRect":Z
    invoke-static {p1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v1

    .line 720
    .local v1, "positionSet":[I
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 721
    return v2

    .line 723
    :cond_0
    aget v2, v1, v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    aget v2, v1, v2

    if-nez v2, :cond_1

    const/4 v2, 0x5

    aget v2, v1, v2

    if-nez v2, :cond_1

    const/4 v2, 0x6

    aget v2, v1, v2

    if-nez v2, :cond_1

    const/16 v2, 0x9

    aget v2, v1, v2

    if-nez v2, :cond_1

    const/16 v2, 0xa

    aget v2, v1, v2

    if-nez v2, :cond_1

    const/16 v2, 0xd

    aget v2, v1, v2

    if-nez v2, :cond_1

    const/16 v2, 0xe

    aget v2, v1, v2

    if-nez v2, :cond_1

    const/16 v2, 0x11

    aget v2, v1, v2

    if-nez v2, :cond_1

    const/16 v2, 0x12

    aget v2, v1, v2

    if-nez v2, :cond_1

    const/16 v2, 0x15

    aget v2, v1, v2

    if-nez v2, :cond_1

    const/16 v2, 0x16

    aget v2, v1, v2

    if-nez v2, :cond_1

    const/16 v2, 0x19

    aget v2, v1, v2

    if-nez v2, :cond_1

    const/16 v2, 0x1a

    aget v2, v1, v2

    if-nez v2, :cond_1

    .line 727
    const/4 v0, 0x1

    goto :goto_0

    .line 729
    :cond_1
    const/4 v0, 0x0

    .line 731
    :goto_0
    return v0
.end method

.method private parseMoveAreaDirection(I)V
    .locals 3
    .param p1, "maDirection"    # I

    .line 611
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 614
    :cond_0
    iget v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->ROATTION_0:I

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 615
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    const-string/jumbo v2, "rotation"

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 616
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;->setRotationState(Z)V

    goto :goto_0

    .line 617
    :cond_1
    iget v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->ROATTION_270:I

    if-ne p1, v0, :cond_2

    .line 618
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    const-string/jumbo v2, "rotation"

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 619
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;->setRotationState(Z)V

    .line 621
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 622
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 623
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x3d4c0000    # -90.0f
    .end array-data
.end method

.method private parseRectsFromCoordinateStr()V
    .locals 8

    .line 534
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getLastHandShankLRChoice(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 535
    .local v0, "handLRDirection":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 536
    const-string/jumbo v3, "left_"

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    .line 537
    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->gamePadId:I

    .line 539
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 540
    :cond_0
    if-ne v0, v2, :cond_1

    .line 541
    const-string/jumbo v3, "right_"

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    .line 542
    iput v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->gamePadId:I

    .line 544
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->showToastState:Z

    .line 545
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 548
    :cond_1
    :goto_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v5, "left_"

    invoke-static {v3, v4, v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForLeft:Ljava/lang/String;

    .line 550
    const-string v3, "DualHandShankScreenMapView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseRectsFromCoordinateStr  mFloatBallCoordinateForLeft :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForLeft:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v3, -0x1

    .line 552
    .local v3, "rotation":I
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForLeft:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 553
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForLeft:Ljava/lang/String;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v4

    .line 554
    .local v4, "positionSet":[I
    aget v3, v4, v1

    .line 555
    const-string/jumbo v5, "left_"

    invoke-static {v4, v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    .line 559
    .end local v4    # "positionSet":[I
    :cond_2
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v6, "right_"

    invoke-static {v4, v5, v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForRight:Ljava/lang/String;

    .line 561
    const-string v4, "DualHandShankScreenMapView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseRectsFromCoordinateStr  mFloatBallCoordinateForRight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForRight:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v4, -0x1

    .line 563
    .local v4, "rotationRight":I
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForRight:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 564
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForRight:Ljava/lang/String;

    invoke-static {v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v5

    .line 565
    .local v5, "positionSetRight":[I
    aget v4, v5, v1

    .line 566
    const-string/jumbo v1, "right_"

    invoke-static {v5, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    .line 570
    .end local v5    # "positionSetRight":[I
    :cond_3
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mOpenSwitch:Z

    if-eqz v1, :cond_7

    .line 571
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->updateFloatViewPos()V

    .line 572
    const/4 v1, -0x1

    if-eq v1, v3, :cond_6

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    if-eqz v5, :cond_6

    if-eq v1, v4, :cond_6

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    if-eqz v1, :cond_6

    .line 574
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v7, "left_"

    invoke-static {v1, v5, v3, v6, v7}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setDoubleHandShankScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v7, "right_"

    invoke-static {v1, v5, v4, v6, v7}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setDoubleHandShankScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 582
    const/4 v1, 0x7

    .line 583
    .local v1, "setAreakeyNum":I
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    const-string/jumbo v5, "left_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x6

    if-eqz v2, :cond_4

    .line 584
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    array-length v2, v2

    if-lt v2, v1, :cond_5

    .line 585
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v5

    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setMoveAreaLayoutParams(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 588
    :cond_4
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    array-length v2, v2

    if-lt v2, v1, :cond_5

    .line 589
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v5

    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setMoveAreaLayoutParams(Landroid/graphics/Rect;)V

    .line 592
    .end local v1    # "setAreakeyNum":I
    :cond_5
    :goto_1
    goto :goto_2

    .line 593
    :cond_6
    const-string v1, "DualHandShankScreenMapView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseRectsFromCoordinateStr, null rect ! rotation = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 596
    :cond_7
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->updateFloatViewPos()V

    .line 597
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setVisibility(I)V

    .line 598
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setVisibility(I)V

    .line 601
    :goto_2
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setMoveAreaDirection()V

    .line 602
    return-void
.end method

.method private recoveDefaultLocation()V
    .locals 24

    .line 413
    move-object/from16 v7, p0

    iget-object v0, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    const-string/jumbo v1, "left_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x1

    xor-int/2addr v0, v8

    move v9, v0

    .line 414
    .local v9, "handshankChoice":I
    const/4 v0, 0x0

    .line 415
    .local v0, "gameDefaultRects":[Landroid/graphics/Rect;
    const/4 v10, 0x7

    .line 416
    .local v10, "keyNum":I
    if-nez v9, :cond_1

    .line 417
    invoke-static {}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getDefaultPositionLeft()[Landroid/graphics/Rect;

    move-result-object v0

    .line 421
    .end local v0    # "gameDefaultRects":[Landroid/graphics/Rect;
    .local v11, "gameDefaultRects":[Landroid/graphics/Rect;
    :cond_0
    :goto_0
    move-object v11, v0

    goto :goto_1

    .line 418
    .end local v11    # "gameDefaultRects":[Landroid/graphics/Rect;
    .restart local v0    # "gameDefaultRects":[Landroid/graphics/Rect;
    :cond_1
    if-ne v9, v8, :cond_0

    .line 419
    invoke-static {}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getDefaultPositionRight()[Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 421
    .end local v0    # "gameDefaultRects":[Landroid/graphics/Rect;
    .restart local v11    # "gameDefaultRects":[Landroid/graphics/Rect;
    :goto_1
    if-eqz v11, :cond_4

    array-length v0, v11

    if-ne v10, v0, :cond_4

    .line 422
    iget-object v0, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/WindowManager;

    .line 423
    .local v12, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v13

    .line 424
    .local v13, "rotation":I
    if-nez v9, :cond_2

    .line 425
    iput-object v11, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    .line 426
    iget-object v0, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    invoke-static {v0, v13}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForLeft:Ljava/lang/String;

    goto :goto_2

    .line 428
    :cond_2
    iput-object v11, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    .line 429
    iget-object v0, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    invoke-static {v0, v13}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForRight:Ljava/lang/String;

    .line 432
    :goto_2
    const/4 v0, 0x0

    aget-object v14, v11, v0

    .line 433
    .local v14, "keyL":Landroid/graphics/Rect;
    aget-object v15, v11, v8

    .line 434
    .local v15, "keyR":Landroid/graphics/Rect;
    const/4 v0, 0x2

    aget-object v6, v11, v0

    .line 435
    .local v6, "keyA":Landroid/graphics/Rect;
    const/4 v0, 0x3

    aget-object v5, v11, v0

    .line 436
    .local v5, "keyB":Landroid/graphics/Rect;
    const/4 v0, 0x4

    aget-object v4, v11, v0

    .line 437
    .local v4, "keyX":Landroid/graphics/Rect;
    const/4 v0, 0x5

    aget-object v3, v11, v0

    .line 438
    .local v3, "keyY":Landroid/graphics/Rect;
    const/4 v0, 0x6

    aget-object v2, v11, v0

    .line 439
    .local v2, "MoveArea":Landroid/graphics/Rect;
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    iget v0, v14, Landroid/graphics/Rect;->left:I

    iget v8, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v16, v4

    iget v4, v14, Landroid/graphics/Rect;->right:I

    .line 439
    .end local v4    # "keyX":Landroid/graphics/Rect;
    .local v16, "keyX":Landroid/graphics/Rect;
    move-object/from16 v17, v5

    iget v5, v14, Landroid/graphics/Rect;->bottom:I

    .line 439
    .end local v5    # "keyB":Landroid/graphics/Rect;
    .local v17, "keyB":Landroid/graphics/Rect;
    const/16 v18, -0x1

    move/from16 v19, v0

    move-object v0, v7

    move-object/from16 v20, v2

    move/from16 v2, v19

    .line 439
    .end local v2    # "MoveArea":Landroid/graphics/Rect;
    .local v20, "MoveArea":Landroid/graphics/Rect;
    move-object/from16 v21, v3

    move v3, v8

    .line 439
    .end local v3    # "keyY":Landroid/graphics/Rect;
    .local v21, "keyY":Landroid/graphics/Rect;
    move-object/from16 v8, v16

    .line 439
    .end local v16    # "keyX":Landroid/graphics/Rect;
    .local v8, "keyX":Landroid/graphics/Rect;
    move/from16 v22, v10

    move-object/from16 v10, v17

    .line 439
    .end local v17    # "keyB":Landroid/graphics/Rect;
    .local v10, "keyB":Landroid/graphics/Rect;
    .local v22, "keyNum":I
    move-object/from16 v23, v11

    move-object v11, v6

    move/from16 v6, v18

    .line 439
    .end local v6    # "keyA":Landroid/graphics/Rect;
    .local v11, "keyA":Landroid/graphics/Rect;
    .local v23, "gameDefaultRects":[Landroid/graphics/Rect;
    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 440
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    iget v2, v15, Landroid/graphics/Rect;->left:I

    iget v3, v15, Landroid/graphics/Rect;->top:I

    iget v4, v15, Landroid/graphics/Rect;->right:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 441
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->top:I

    iget v4, v11, Landroid/graphics/Rect;->right:I

    iget v5, v11, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 442
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    iget v3, v10, Landroid/graphics/Rect;->top:I

    iget v4, v10, Landroid/graphics/Rect;->right:I

    iget v5, v10, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 443
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    iget v2, v8, Landroid/graphics/Rect;->left:I

    iget v3, v8, Landroid/graphics/Rect;->top:I

    iget v4, v8, Landroid/graphics/Rect;->right:I

    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 444
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    move-object/from16 v6, v21

    iget v2, v6, Landroid/graphics/Rect;->left:I

    .line 444
    .end local v21    # "keyY":Landroid/graphics/Rect;
    .local v6, "keyY":Landroid/graphics/Rect;
    iget v3, v6, Landroid/graphics/Rect;->top:I

    iget v4, v6, Landroid/graphics/Rect;->right:I

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    const/16 v16, -0x1

    move-object/from16 v17, v6

    move/from16 v6, v16

    .line 444
    .end local v6    # "keyY":Landroid/graphics/Rect;
    .local v17, "keyY":Landroid/graphics/Rect;
    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 446
    iget-object v0, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 447
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x12c

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 448
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 449
    move-object/from16 v1, v20

    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 449
    .end local v20    # "MoveArea":Landroid/graphics/Rect;
    .local v1, "MoveArea":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 450
    iget-object v2, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    invoke-virtual {v2, v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    if-nez v9, :cond_3

    .line 453
    iget-object v2, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v3, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-object v4, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForLeft:Ljava/lang/String;

    const-string/jumbo v5, "left_"

    invoke-static {v2, v3, v4, v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v2, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v3, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    iget-object v4, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v5, "left_"

    invoke-static {v2, v3, v13, v4, v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setDoubleHandShankScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 458
    :cond_3
    iget-object v2, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v3, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-object v4, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForRight:Ljava/lang/String;

    const-string/jumbo v5, "right_"

    invoke-static {v2, v3, v4, v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v2, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v3, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    iget-object v4, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v5, "right_"

    invoke-static {v2, v3, v13, v4, v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setDoubleHandShankScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    .line 463
    :goto_3
    iget-object v2, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 464
    const-string v2, "DualHandShankScreenMapView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recoveDefaultLocation  mFloatBallCoordinateForLeft:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForLeft:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string v2, "DualHandShankScreenMapView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recoveDefaultLocation  mFloatBallCoordinateForRight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForRight:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-direct/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->recoveDefaultMoveAreaDirection()V

    .line 467
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "MoveArea":Landroid/graphics/Rect;
    .end local v8    # "keyX":Landroid/graphics/Rect;
    .end local v10    # "keyB":Landroid/graphics/Rect;
    .end local v11    # "keyA":Landroid/graphics/Rect;
    .end local v12    # "windowManager":Landroid/view/WindowManager;
    .end local v13    # "rotation":I
    .end local v14    # "keyL":Landroid/graphics/Rect;
    .end local v15    # "keyR":Landroid/graphics/Rect;
    .end local v17    # "keyY":Landroid/graphics/Rect;
    goto :goto_4

    .line 469
    .end local v22    # "keyNum":I
    .end local v23    # "gameDefaultRects":[Landroid/graphics/Rect;
    .local v10, "keyNum":I
    .local v11, "gameDefaultRects":[Landroid/graphics/Rect;
    :cond_4
    move/from16 v22, v10

    move-object/from16 v23, v11

    .line 469
    .end local v10    # "keyNum":I
    .end local v11    # "gameDefaultRects":[Landroid/graphics/Rect;
    .restart local v22    # "keyNum":I
    .restart local v23    # "gameDefaultRects":[Landroid/graphics/Rect;
    :goto_4
    return-void
.end method

.method private recoveDefaultMoveAreaDirection()V
    .locals 5

    .line 472
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaDirection:I

    .line 474
    iget v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaDirection:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->ROATTION_0:I

    if-eq v0, v1, :cond_1

    .line 475
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 478
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    const-string/jumbo v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 479
    iget v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->ROATTION_0:I

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaDirection:I

    .line 480
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 481
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 483
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;->setRotationState(Z)V

    .line 484
    iget v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaDirection:I

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->changeRotationBg(I)V

    .line 486
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->gamePadId:I

    iget v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaDirection:I

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setJoystickDirection(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaDirection:I

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->saveMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 491
    :cond_1
    return-void

    nop

    nop

    :array_0
    .array-data 4
        -0x3d4c0000    # -90.0f
        0x0
    .end array-data
.end method

.method private rotationMoveAreaDirection()V
    .locals 5

    .line 494
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->updateFloatViewPos()V

    .line 495
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 498
    :cond_0
    iget v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaDirection:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->ROATTION_0:I

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 499
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    const-string/jumbo v1, "rotation"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 500
    iget v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->ROATTION_270:I

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaDirection:I

    .line 501
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;->setRotationState(Z)V

    goto :goto_0

    .line 502
    :cond_1
    iget v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaDirection:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->ROATTION_270:I

    if-ne v0, v1, :cond_2

    .line 503
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    const-string/jumbo v1, "rotation"

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 504
    iget v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->ROATTION_0:I

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaDirection:I

    .line 505
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;->setRotationState(Z)V

    .line 507
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 508
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 510
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaDirection:I

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->saveMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->gamePadId:I

    iget v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaDirection:I

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setJoystickDirection(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 515
    iget v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaDirection:I

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->changeRotationBg(I)V

    .line 516
    return-void

    :array_0
    .array-data 4
        0x0
        -0x3d4c0000    # -90.0f
    .end array-data

    :array_1
    .array-data 4
        -0x3d4c0000    # -90.0f
        0x0
    .end array-data
.end method

.method private saveFloatViewPosAndTouchEnable()V
    .locals 11

    .line 627
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 628
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 629
    .local v1, "rotation":I
    const/4 v2, 0x7

    new-array v2, v2, [Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x3

    aput-object v3, v2, v7

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v8, 0x4

    aput-object v3, v2, v8

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x5

    aput-object v3, v2, v9

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v10, 0x6

    aput-object v3, v2, v10

    .line 630
    .local v2, "rects":[Landroid/graphics/Rect;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 631
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 632
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 633
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 634
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    aget-object v4, v2, v8

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 635
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    aget-object v4, v2, v9

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 636
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    aget-object v4, v2, v10

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 638
    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->isZeroRects([Landroid/graphics/Rect;)Z

    move-result v3

    .line 639
    .local v3, "isZeroRect":Z
    const-string v4, "DualHandShankScreenMapView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saveFloatViewPosAndTouchEnable isZeroRect:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    const-string/jumbo v6, "left_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 642
    if-eqz v3, :cond_2

    .line 643
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForLeft:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 644
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v7, "left_"

    invoke-static {v4, v6, v7}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForLeft:Ljava/lang/String;

    .line 647
    :cond_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForLeft:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 648
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForLeft:Ljava/lang/String;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v4

    .line 649
    .local v4, "positionSet":[I
    const-string/jumbo v6, "left_"

    invoke-static {v4, v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    .line 651
    .end local v4    # "positionSet":[I
    goto :goto_0

    .line 652
    :cond_1
    invoke-static {}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getDefaultPositionLeft()[Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    .line 653
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    invoke-static {v4, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForLeft:Ljava/lang/String;

    goto :goto_0

    .line 656
    :cond_2
    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    .line 657
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    invoke-static {v4, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForLeft:Ljava/lang/String;

    .line 659
    :goto_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForLeft:Ljava/lang/String;

    const-string/jumbo v8, "left_"

    invoke-static {v4, v6, v7, v8}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    if-eqz v4, :cond_3

    .line 662
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v8, "left_"

    invoke-static {v4, v6, v1, v7, v8}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setDoubleHandShankScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    goto/16 :goto_2

    .line 666
    :cond_3
    const-string v4, "DualHandShankScreenMapView"

    const-string/jumbo v5, "saveFloatViewPosAndTouchEnable - left, null rect !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 670
    :cond_4
    if-eqz v3, :cond_7

    .line 671
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForRight:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 672
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v7, "right_"

    invoke-static {v4, v6, v7}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForRight:Ljava/lang/String;

    .line 675
    :cond_5
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForRight:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 676
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForRight:Ljava/lang/String;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v4

    .line 677
    .local v4, "positionSetRight":[I
    const-string/jumbo v6, "right_"

    invoke-static {v4, v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    .line 679
    .end local v4    # "positionSetRight":[I
    goto :goto_1

    .line 680
    :cond_6
    invoke-static {}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getDefaultPositionRight()[Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    .line 681
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    invoke-static {v4, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForRight:Ljava/lang/String;

    goto :goto_1

    .line 684
    :cond_7
    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    .line 685
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    invoke-static {v4, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForRight:Ljava/lang/String;

    .line 687
    :goto_1
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForRight:Ljava/lang/String;

    const-string/jumbo v8, "right_"

    invoke-static {v4, v6, v7, v8}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    if-eqz v4, :cond_8

    .line 690
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v8, "right_"

    invoke-static {v4, v6, v1, v7, v8}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setDoubleHandShankScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    goto :goto_2

    .line 694
    :cond_8
    const-string v4, "DualHandShankScreenMapView"

    const-string/jumbo v5, "saveFloatViewPosAndTouchEnable - right, null rect !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    .end local v1    # "rotation":I
    .end local v2    # "rects":[Landroid/graphics/Rect;
    .end local v3    # "isZeroRect":Z
    :goto_2
    goto :goto_3

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->DEBUG:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 700
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_3
    return-void
.end method

.method private setAttributes()V
    .locals 4

    .line 370
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 371
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 372
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 373
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 374
    const/16 v2, 0x7e4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 375
    const/high16 v2, 0x20000

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 376
    const/4 v2, 0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 377
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 378
    const/16 v2, 0x1606

    .line 383
    .local v2, "uiFlag":I
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 384
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

    .line 788
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 789
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 790
    iput p6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 791
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
    return-void
.end method

.method private setMoveAreaDirection()V
    .locals 5

    .line 604
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaDirection:I

    .line 605
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->gamePadId:I

    iget v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaDirection:I

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setJoystickDirection(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 607
    iget v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaDirection:I

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->parseMoveAreaDirection(I)V

    .line 608
    iget v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->moveAreaDirection:I

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->changeRotationBg(I)V

    .line 609
    return-void
.end method

.method private setMoveAreaLayoutParams(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 795
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 796
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 797
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 798
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 799
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    invoke-virtual {v1, v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    return-void
.end method

.method private startAdjustActivity()V
    .locals 3

    .line 806
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.gamelauncher.redhandle"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 807
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 808
    const-string/jumbo v1, "startGameAppName"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    const-string/jumbo v1, "startActivityName"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    const-string/jumbo v1, "isFromGamepadMapView"

    const-string/jumbo v2, "yes"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 812
    return-void
.end method

.method private updatNonFloatViewDisplay(Z)V
    .locals 2
    .param p1, "display"    # Z

    .line 352
    if-eqz p1, :cond_0

    .line 353
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mOptPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mColseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->recoveDefaultBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->leftOrRightAdjust:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->layoutBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mOptPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mColseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->recoveDefaultBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->leftOrRightAdjust:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->layoutBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 367
    :goto_0
    return-void
.end method

.method private updateFloatViewPos()V
    .locals 16

    .line 734
    move-object/from16 v7, p0

    const-string v0, "DualHandShankScreenMapView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateFloatViewPos mHandShankChoice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v0, ""

    .line 736
    .local v0, "positionStr":Ljava/lang/String;
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    const-string/jumbo v2, "left_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    iget-object v0, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForLeft:Ljava/lang/String;

    .line 739
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v3, "left_"

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 751
    .end local v0    # "positionStr":Ljava/lang/String;
    .local v8, "positionStr":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v8, v0

    goto :goto_1

    .line 745
    .end local v8    # "positionStr":Ljava/lang/String;
    .restart local v0    # "positionStr":Ljava/lang/String;
    :cond_1
    iget-object v0, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mFloatBallCoordinateForRight:Ljava/lang/String;

    .line 746
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 747
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v3, "right_"

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 751
    .end local v0    # "positionStr":Ljava/lang/String;
    .restart local v8    # "positionStr":Ljava/lang/String;
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-nez v0, :cond_3

    .line 752
    invoke-static {v8}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v15

    .line 753
    .local v15, "positionSet":[I
    iget-object v0, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    const-string/jumbo v1, "left_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 754
    const-string/jumbo v0, "left_"

    invoke-static {v15, v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    goto :goto_2

    .line 757
    :cond_2
    const-string/jumbo v0, "right_"

    invoke-static {v15, v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    .line 760
    :goto_2
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    aget v2, v15, v14

    aget v3, v15, v13

    aget v4, v15, v12

    aget v5, v15, v11

    const/4 v6, -0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 761
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    aget v2, v15, v10

    aget v3, v15, v9

    const/4 v0, 0x7

    aget v4, v15, v0

    const/16 v0, 0x8

    aget v5, v15, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 762
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    const/16 v0, 0x9

    aget v2, v15, v0

    const/16 v0, 0xa

    aget v3, v15, v0

    const/16 v0, 0xb

    aget v4, v15, v0

    const/16 v0, 0xc

    aget v5, v15, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 763
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    const/16 v0, 0xd

    aget v2, v15, v0

    const/16 v0, 0xe

    aget v3, v15, v0

    const/16 v0, 0xf

    aget v4, v15, v0

    const/16 v0, 0x10

    aget v5, v15, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 764
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    const/16 v0, 0x11

    aget v2, v15, v0

    const/16 v0, 0x12

    aget v3, v15, v0

    const/16 v0, 0x13

    aget v4, v15, v0

    const/16 v0, 0x14

    aget v5, v15, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 765
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    const/16 v0, 0x15

    aget v2, v15, v0

    const/16 v0, 0x16

    aget v3, v15, v0

    const/16 v0, 0x17

    aget v4, v15, v0

    const/16 v0, 0x18

    aget v5, v15, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 766
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    const/16 v0, 0x19

    aget v2, v15, v0

    const/16 v0, 0x1a

    aget v3, v15, v0

    const/16 v0, 0x1b

    aget v4, v15, v0

    const/16 v0, 0x1c

    aget v5, v15, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 767
    .end local v15    # "positionSet":[I
    goto/16 :goto_5

    .line 768
    :cond_3
    const/4 v0, 0x0

    .line 769
    .local v0, "rects":[Landroid/graphics/Rect;
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    const-string/jumbo v2, "left_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 770
    invoke-static {}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getDefaultPositionLeft()[Landroid/graphics/Rect;

    move-result-object v0

    .line 771
    iput-object v0, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftHandStankRects:[Landroid/graphics/Rect;

    .line 776
    .end local v0    # "rects":[Landroid/graphics/Rect;
    .local v15, "rects":[Landroid/graphics/Rect;
    :goto_3
    move-object v15, v0

    goto :goto_4

    .line 773
    .end local v15    # "rects":[Landroid/graphics/Rect;
    .restart local v0    # "rects":[Landroid/graphics/Rect;
    :cond_4
    invoke-static {}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getDefaultPositionRight()[Landroid/graphics/Rect;

    move-result-object v0

    .line 774
    iput-object v0, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightHandStankRects:[Landroid/graphics/Rect;

    goto :goto_3

    .line 776
    .end local v0    # "rects":[Landroid/graphics/Rect;
    .restart local v15    # "rects":[Landroid/graphics/Rect;
    :goto_4
    if-nez v15, :cond_5

    return-void

    .line 777
    :cond_5
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    const/4 v0, 0x0

    aget-object v2, v15, v0

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aget-object v3, v15, v0

    iget v3, v3, Landroid/graphics/Rect;->top:I

    aget-object v4, v15, v0

    iget v4, v4, Landroid/graphics/Rect;->right:I

    aget-object v0, v15, v0

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v6, -0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 778
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    aget-object v0, v15, v14

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aget-object v0, v15, v14

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aget-object v0, v15, v14

    iget v4, v0, Landroid/graphics/Rect;->right:I

    aget-object v0, v15, v14

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 779
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    aget-object v0, v15, v13

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aget-object v0, v15, v13

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aget-object v0, v15, v13

    iget v4, v0, Landroid/graphics/Rect;->right:I

    aget-object v0, v15, v13

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 780
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    aget-object v0, v15, v12

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aget-object v0, v15, v12

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aget-object v0, v15, v12

    iget v4, v0, Landroid/graphics/Rect;->right:I

    aget-object v0, v15, v12

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 781
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    aget-object v0, v15, v11

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aget-object v0, v15, v11

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aget-object v0, v15, v11

    iget v4, v0, Landroid/graphics/Rect;->right:I

    aget-object v0, v15, v11

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 782
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    aget-object v0, v15, v10

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aget-object v0, v15, v10

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aget-object v0, v15, v10

    iget v4, v0, Landroid/graphics/Rect;->right:I

    aget-object v0, v15, v10

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 783
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    aget-object v0, v15, v9

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aget-object v0, v15, v9

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aget-object v0, v15, v9

    iget v4, v0, Landroid/graphics/Rect;->right:I

    aget-object v0, v15, v9

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 785
    .end local v15    # "rects":[Landroid/graphics/Rect;
    :goto_5
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 520
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 521
    const-string v0, "DualHandShankScreenMapView"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->isHandShankMapViewShowing(Z)V

    .line 523
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->saveFloatViewPosAndTouchEnable()V

    .line 524
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mOpenSwitch:Z

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->updateEnabledGameList(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 525
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    .line 527
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30c0068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 525
    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 530
    return-void
.end method

.method public getAttachePackageName()Ljava/lang/String;
    .locals 1

    .line 828
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getGamePadDeviceId()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->addrBELeft:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->addrBERight:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->addrBELeft:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getGamepadDeviceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->leftDeviceId:I

    .line 180
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->addrBERight:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getGamepadDeviceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->rightDeviceId:I

    .line 181
    return-void

    .line 176
    :cond_1
    :goto_0
    const-string v0, "DualHandShankScreenMapView"

    const-string v1, "getGamePadDeviceId MAC address is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x308001c

    if-ne v1, v0, :cond_0

    .line 397
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mIClickListener:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$IDualHandShankClickListener;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mIClickListener:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$IDualHandShankClickListener;

    invoke-interface {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$IDualHandShankClickListener;->doClose()V

    .line 402
    :cond_0
    const v0, 0x30800b3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 403
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->recoveDefaultLocation()V

    .line 406
    :cond_1
    const v0, 0x3080067

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 407
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->startAdjustActivity()V

    .line 410
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 112
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->initView()V

    .line 114
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    .line 186
    .local v0, "keyDeviceId":I
    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->leftDeviceId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->rightDeviceId:I

    if-ne v1, v2, :cond_1

    .line 187
    :cond_0
    const-string v1, "DualHandShankScreenMapView"

    const-string/jumbo v2, "onGenericMotionEvent leftDeviceId/rightDevicesId not get. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->getGamePadDeviceId()V

    .line 190
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    const-string/jumbo v2, "left_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 191
    .local v1, "handshankChoice":I
    if-nez v1, :cond_2

    iget v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->leftDeviceId:I

    if-eq v0, v3, :cond_2

    .line 192
    return v2

    .line 194
    :cond_2
    if-ne v1, v2, :cond_3

    iget v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->rightDeviceId:I

    if-eq v0, v3, :cond_3

    .line 195
    return v2

    .line 197
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    goto :goto_0

    .line 199
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    .line 200
    .local v3, "axisX":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 201
    .local v2, "axisY":F
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    const-string/jumbo v5, "right_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 202
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    neg-float v5, v3

    neg-float v6, v2

    invoke-virtual {v4, v5, v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;->setJoyStickMoveXY(FF)V

    goto :goto_0

    .line 204
    :cond_5
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    invoke-virtual {v4, v3, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;->setJoyStickMoveXY(FF)V

    .line 208
    .end local v2    # "axisY":F
    .end local v3    # "axisX":F
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 816
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 817
    const/4 v0, 0x1

    return v0

    .line 819
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 213
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 214
    .local v0, "keyDeviceId":I
    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->leftDeviceId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->rightDeviceId:I

    if-ne v1, v2, :cond_1

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->getGamePadDeviceId()V

    .line 217
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankChoice:Ljava/lang/String;

    const-string/jumbo v2, "left_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 218
    .local v1, "handshankChoice":I
    if-nez v1, :cond_2

    iget v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->leftDeviceId:I

    if-eq v0, v3, :cond_2

    .line 219
    return v2

    .line 221
    :cond_2
    if-ne v1, v2, :cond_3

    iget v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->rightDeviceId:I

    if-eq v0, v3, :cond_3

    .line 222
    return v2

    .line 224
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 236
    :pswitch_1
    if-ne v1, v2, :cond_8

    .line 237
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v3, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_0

    .line 226
    :pswitch_2
    if-nez v1, :cond_8

    .line 227
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v3, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_0

    .line 241
    :pswitch_3
    if-ne v1, v2, :cond_8

    .line 242
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v3, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_0

    .line 231
    :pswitch_4
    if-nez v1, :cond_8

    .line 232
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v3, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_0

    .line 270
    :pswitch_5
    if-nez v1, :cond_4

    .line 271
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v3, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 273
    :cond_4
    if-ne v1, v2, :cond_8

    .line 274
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v3, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_0

    .line 262
    :pswitch_6
    if-nez v1, :cond_5

    .line 263
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v3, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 265
    :cond_5
    if-ne v1, v2, :cond_8

    .line 266
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v3, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_0

    .line 254
    :pswitch_7
    if-nez v1, :cond_6

    .line 255
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v3, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 257
    :cond_6
    if-ne v1, v2, :cond_8

    .line 258
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v3, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_0

    .line 246
    :pswitch_8
    if-nez v1, :cond_7

    .line 247
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v3, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 249
    :cond_7
    if-ne v1, v2, :cond_8

    .line 250
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v3, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 278
    :cond_8
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 283
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 291
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 292
    goto :goto_0

    .line 285
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 286
    goto :goto_0

    .line 294
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 295
    goto :goto_0

    .line 288
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 289
    goto :goto_0

    .line 309
    :pswitch_5
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 310
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_0

    .line 305
    :pswitch_6
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 306
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 307
    goto :goto_0

    .line 301
    :pswitch_7
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 302
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 303
    goto :goto_0

    .line 297
    :pswitch_8
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 298
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 299
    nop

    .line 313
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAttachePackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 823
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    .line 824
    iput-object p2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mGameAppActivityName:Ljava/lang/String;

    .line 825
    return-void
.end method

.method public setLeftOrRightAddrBE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "leftAddrBE"    # Ljava/lang/String;
    .param p2, "rightAddrBE"    # Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->addrBELeft:Ljava/lang/String;

    .line 171
    iput-object p2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->addrBERight:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->getGamePadDeviceId()V

    .line 173
    return-void
.end method

.method public setOptClickListener(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$IDualHandShankClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$IDualHandShankClickListener;

    .line 928
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->mIClickListener:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$IDualHandShankClickListener;

    .line 929
    return-void
.end method

.method public show()V
    .locals 2

    .line 388
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 389
    const-string v0, "DualHandShankScreenMapView"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->isHandShankMapViewShowing(Z)V

    .line 391
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->parseRectsFromCoordinateStr()V

    .line 392
    return-void
.end method
