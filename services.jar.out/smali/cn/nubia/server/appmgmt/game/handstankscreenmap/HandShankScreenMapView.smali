.class public Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;
.super Landroid/app/Dialog;
.source "HandShankScreenMapView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$IHandShankClickListener;,
        Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaFingerEvenListener;,
        Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaViewClick;,
        Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "HandShankScreenMapView"


# instance fields
.field private DEFAULT_HEIGHT:I

.field private DEFAULT_WIDTH:I

.field private ROATTION_0:I

.field private ROATTION_180:I

.field private ROATTION_270:I

.field private ROATTION_90:I

.field private gamePadId:I

.field private hasSetAreaStatus:I

.field private mColseBtn:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mFloatBallCoordinate:Ljava/lang/String;

.field private mGameAppPackageName:Ljava/lang/String;

.field private mHandShankA:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

.field private mHandShankB:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

.field private mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

.field private mHandShankX:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

.field private mHandShankY:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

.field private mHandStankRects:[Landroid/graphics/Rect;

.field private mIClickListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$IHandShankClickListener;

.field private mLeftFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

.field private mLeftHandBtn:Landroid/widget/RadioButton;

.field private mMainScreenMsg:Landroid/widget/TextView;

.field private mMainScreenOpt:Z

.field private mOpenSwitch:Z

.field private mOptPanel:Landroid/widget/LinearLayout;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRightFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

.field private mRightHandBtn:Landroid/widget/RadioButton;

.field private mSwitchBtn:Landroid/widget/ToggleButton;

.field private moveAreaDirection:I

.field private moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

.field private recoveDefaultBtn:Landroid/widget/TextView;

.field private rotationMoveAreaBtn:Landroid/widget/ImageButton;

.field private scaleNum:I

.field private scaleUp:Z

.field private showToastState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
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
    sput-boolean v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    const v0, 0x30e0009

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;-><init>(Landroid/content/Context;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mMainScreenOpt:Z

    .line 65
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mOpenSwitch:Z

    .line 75
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    .line 77
    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->scaleNum:I

    .line 78
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->scaleUp:Z

    .line 83
    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->gamePadId:I

    .line 84
    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_0:I

    .line 85
    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_90:I

    .line 86
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_180:I

    .line 87
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_270:I

    .line 88
    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->hasSetAreaStatus:I

    .line 89
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->showToastState:Z

    .line 90
    const/16 v0, 0x12c

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->DEFAULT_WIDTH:I

    .line 91
    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->DEFAULT_HEIGHT:I

    .line 99
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;
    .param p1, "x1"    # I

    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->handleRadioBtnOptChange(I)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 44
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 44
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 44
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mOptPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 44
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->saveFloatViewPosAndTouchEnable()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 44
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->updateFloatViewPos()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 44
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->rotationMoveAreaDirection()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 44
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 44
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 44
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 44
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 44
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;
    .param p1, "x1"    # Z

    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->updatNonFloatViewDisplay(Z)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 44
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->hasSetAreaStatus:I

    return v0
.end method

.method static synthetic access$802(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;
    .param p1, "x1"    # I

    .line 44
    iput p1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->hasSetAreaStatus:I

    return p1
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 44
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private changeRotationBg(I)V
    .locals 1
    .param p1, "rotateDirection"    # I

    .line 668
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->setRotationBackground(I)V

    .line 669
    return-void
.end method

.method private handleRadioBtnOptChange(I)V
    .locals 6
    .param p1, "checkId"    # I

    .line 294
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mLeftHandBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 295
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x307012e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x307012d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->saveHandLRDirection(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRightHandBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 299
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x3070130

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x307012f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 301
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->saveHandLRDirection(Landroid/content/Context;Ljava/lang/String;I)V

    .line 303
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->showToastState:Z

    if-nez v0, :cond_2

    .line 304
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x30c0064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 306
    :cond_2
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->showToastState:Z

    .line 308
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getHasSetAreaStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->hasSetAreaStatus:I

    .line 309
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->hasSetAreaStatus:I

    if-ne v0, v1, :cond_4

    .line 310
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 311
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 312
    .local v2, "rotation":I
    const/4 v3, -0x1

    if-eq v3, v2, :cond_3

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    if-eqz v3, :cond_3

    .line 313
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v3, v4, v2, v5}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;ILjava/lang/String;)V

    .line 314
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 316
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->gamePadId:I

    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setJoystickDirection(Landroid/content/Context;IILjava/lang/String;)V

    .line 319
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    .end local v2    # "rotation":I
    :cond_3
    goto :goto_1

    .line 320
    :cond_4
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->recoveDefaultLocation()V

    .line 322
    :goto_1
    return-void
.end method

.method private initView()V
    .locals 5

    .line 109
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 110
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x30a0015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setContentView(Landroid/view/View;)V

    .line 112
    invoke-virtual {p0, p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 113
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setCanceledOnTouchOutside(Z)V

    .line 115
    const v2, 0x3080094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mOptPanel:Landroid/widget/LinearLayout;

    .line 116
    const v2, 0x30800c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mSwitchBtn:Landroid/widget/ToggleButton;

    .line 117
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mSwitchBtn:Landroid/widget/ToggleButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 118
    const v2, 0x308006d

    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 119
    const v2, 0x3080066

    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mLeftHandBtn:Landroid/widget/RadioButton;

    .line 120
    const v2, 0x30800b7

    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRightHandBtn:Landroid/widget/RadioButton;

    .line 121
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v4, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$1;

    invoke-direct {v4, p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$1;-><init>(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 128
    const v2, 0x308006b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mMainScreenMsg:Landroid/widget/TextView;

    .line 129
    const v2, 0x308001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mColseBtn:Landroid/widget/ImageButton;

    .line 130
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mColseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v2, 0x30800b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->recoveDefaultBtn:Landroid/widget/TextView;

    .line 132
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->recoveDefaultBtn:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v2, 0x308000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->rotationMoveAreaBtn:Landroid/widget/ImageButton;

    .line 134
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->rotationMoveAreaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->rotationMoveAreaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 137
    const v2, 0x3080064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    .line 138
    const v2, 0x30800b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    .line 139
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 140
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 142
    const v2, 0x308004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    .line 143
    const v2, 0x308004e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    .line 144
    const v2, 0x308004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    .line 145
    const v2, 0x3080050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    .line 146
    const v2, 0x3080051

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    .line 147
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 148
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 149
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 150
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;)V

    .line 151
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaFingerEvenListener;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaFingerEvenListener;-><init>(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IMoveAreaFingerEventListener;)V

    .line 152
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaViewClick;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaViewClick;-><init>(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->setIClickListener(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IClickListener;)V

    .line 154
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setAttributes()V

    .line 155
    return-void
.end method

.method private isZeroRects([Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "rects"    # [Landroid/graphics/Rect;

    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, "isZeroRect":Z
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    array-length v2, p1

    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    goto :goto_1

    .line 604
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

    .line 608
    const/4 v0, 0x1

    goto :goto_0

    .line 610
    :cond_1
    const/4 v0, 0x0

    .line 612
    :goto_0
    return v0

    .line 602
    :cond_2
    :goto_1
    return v1
.end method

.method private isZeroRectsStr(Ljava/lang/String;)Z
    .locals 3
    .param p1, "positionStr"    # Ljava/lang/String;

    .line 615
    const/4 v0, 0x0

    .line 616
    .local v0, "isZeroRect":Z
    invoke-static {p1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v1

    .line 617
    .local v1, "positionSet":[I
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 618
    return v2

    .line 620
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

    .line 624
    const/4 v0, 0x1

    goto :goto_0

    .line 626
    :cond_1
    const/4 v0, 0x0

    .line 628
    :goto_0
    return v0
.end method

.method private parseMoveAreaDirection(I)V
    .locals 3
    .param p1, "maDirection"    # I

    .line 538
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 541
    :cond_0
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_0:I

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 542
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    const-string/jumbo v2, "rotation"

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 543
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->setRotationState(Z)V

    goto :goto_0

    .line 544
    :cond_1
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_270:I

    if-ne p1, v0, :cond_2

    .line 545
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    const-string/jumbo v2, "rotation"

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 546
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->setRotationState(Z)V

    .line 548
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 549
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 550
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
    .locals 9

    .line 492
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v2, "main_"

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    .line 494
    const-string v0, "HandShankScreenMapView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseRectsFromCoordinateStr  mFloatBallCoordinate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v0, -0x1

    .line 496
    .local v0, "rotation":I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 497
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v1

    .line 498
    .local v1, "positionSet":[I
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 499
    const-string/jumbo v2, "main_"

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    .line 502
    .end local v1    # "positionSet":[I
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mOpenSwitch:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 503
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->updateFloatViewPos()V

    .line 504
    const/4 v1, -0x1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    .line 505
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v1, v3, v0, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;ILjava/lang/String;)V

    .line 506
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 507
    const/4 v1, 0x7

    .line 508
    .local v1, "setAreakeyNum":I
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    array-length v3, v3

    if-lt v3, v1, :cond_1

    .line 509
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 510
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v5

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v6

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 511
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v5

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v6

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 512
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v5

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v5

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    aget-object v5, v8, v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 513
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    invoke-virtual {v4, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    .end local v1    # "setAreakeyNum":I
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    goto :goto_0

    .line 516
    :cond_2
    const-string v1, "HandShankScreenMapView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseRectsFromCoordinateStr, null rect ! rotation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 519
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->updateFloatViewPos()V

    .line 520
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setVisibility(I)V

    .line 521
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setVisibility(I)V

    .line 524
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getHandLRDirection(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 525
    .local v1, "handLRDirection":I
    if-nez v1, :cond_4

    .line 526
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mLeftHandBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 527
    :cond_4
    if-ne v1, v2, :cond_5

    .line 528
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->showToastState:Z

    .line 529
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRightHandBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 532
    :cond_5
    :goto_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    .line 533
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->gamePadId:I

    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setJoystickDirection(Landroid/content/Context;IILjava/lang/String;)V

    .line 534
    iget v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->parseMoveAreaDirection(I)V

    .line 535
    iget v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->changeRotationBg(I)V

    .line 536
    return-void
.end method

.method private recoveDefaultLocation()V
    .locals 24

    .line 381
    move-object/from16 v7, p0

    iget-object v0, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getHandLRDirection(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 382
    .local v8, "handLRDirection":I
    const/4 v0, 0x0

    .line 383
    .local v0, "gameDefaultRects":[Landroid/graphics/Rect;
    const/4 v9, 0x1

    if-nez v8, :cond_0

    .line 384
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getDefaultGameDefaultLocation(Ljava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 385
    :cond_0
    if-ne v8, v9, :cond_1

    .line 386
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getDefaultGameDefaultLocationRight(Ljava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v0

    .line 388
    :cond_1
    :goto_0
    const/4 v10, 0x7

    .line 389
    .local v10, "keyNum":I
    if-nez v0, :cond_3

    .line 390
    if-nez v8, :cond_2

    .line 391
    invoke-static {}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getDefaultPositionLeft()[Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1

    .line 392
    :cond_2
    if-ne v8, v9, :cond_3

    .line 393
    invoke-static {}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getDefaultPositionRight()[Landroid/graphics/Rect;

    move-result-object v0

    .line 396
    .end local v0    # "gameDefaultRects":[Landroid/graphics/Rect;
    .local v11, "gameDefaultRects":[Landroid/graphics/Rect;
    :cond_3
    :goto_1
    move-object v11, v0

    if-eqz v11, :cond_5

    array-length v0, v11

    if-ne v10, v0, :cond_5

    .line 397
    iget-object v0, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/WindowManager;

    .line 398
    .local v12, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v13

    .line 399
    .local v13, "rotation":I
    iput-object v11, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    .line 400
    iget-object v0, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    invoke-static {v0, v13}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    .line 402
    const/4 v14, 0x0

    aget-object v15, v11, v14

    .line 403
    .local v15, "keyL":Landroid/graphics/Rect;
    aget-object v6, v11, v9

    .line 404
    .local v6, "keyR":Landroid/graphics/Rect;
    const/4 v0, 0x2

    aget-object v5, v11, v0

    .line 405
    .local v5, "keyA":Landroid/graphics/Rect;
    const/4 v0, 0x3

    aget-object v4, v11, v0

    .line 406
    .local v4, "keyB":Landroid/graphics/Rect;
    const/4 v0, 0x4

    aget-object v3, v11, v0

    .line 407
    .local v3, "keyX":Landroid/graphics/Rect;
    const/4 v0, 0x5

    aget-object v2, v11, v0

    .line 408
    .local v2, "keyY":Landroid/graphics/Rect;
    const/4 v0, 0x6

    aget-object v1, v11, v0

    .line 409
    .local v1, "MoveArea":Landroid/graphics/Rect;
    iget-object v0, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    iget v14, v15, Landroid/graphics/Rect;->left:I

    iget v9, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v16, v4

    iget v4, v15, Landroid/graphics/Rect;->right:I

    .line 409
    .end local v4    # "keyB":Landroid/graphics/Rect;
    .local v16, "keyB":Landroid/graphics/Rect;
    move-object/from16 v17, v5

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    .line 409
    .end local v5    # "keyA":Landroid/graphics/Rect;
    .local v17, "keyA":Landroid/graphics/Rect;
    const/16 v18, -0x1

    move-object/from16 v19, v0

    move-object v0, v7

    move-object/from16 v20, v1

    move-object/from16 v1, v19

    .line 409
    .end local v1    # "MoveArea":Landroid/graphics/Rect;
    .local v20, "MoveArea":Landroid/graphics/Rect;
    move-object/from16 v21, v2

    move v2, v14

    .line 409
    .end local v2    # "keyY":Landroid/graphics/Rect;
    .local v21, "keyY":Landroid/graphics/Rect;
    move-object v14, v3

    move v3, v9

    .line 409
    .end local v3    # "keyX":Landroid/graphics/Rect;
    .local v14, "keyX":Landroid/graphics/Rect;
    move-object/from16 v9, v16

    .line 409
    .end local v16    # "keyB":Landroid/graphics/Rect;
    .local v9, "keyB":Landroid/graphics/Rect;
    move/from16 v22, v8

    move-object/from16 v8, v17

    .line 409
    .end local v17    # "keyA":Landroid/graphics/Rect;
    .local v8, "keyA":Landroid/graphics/Rect;
    .local v22, "handLRDirection":I
    move/from16 v23, v10

    move-object v10, v6

    move/from16 v6, v18

    .line 409
    .end local v6    # "keyR":Landroid/graphics/Rect;
    .local v10, "keyR":Landroid/graphics/Rect;
    .local v23, "keyNum":I
    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 410
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    iget v3, v10, Landroid/graphics/Rect;->top:I

    iget v4, v10, Landroid/graphics/Rect;->right:I

    iget v5, v10, Landroid/graphics/Rect;->bottom:I

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 411
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    iget v2, v8, Landroid/graphics/Rect;->left:I

    iget v3, v8, Landroid/graphics/Rect;->top:I

    iget v4, v8, Landroid/graphics/Rect;->right:I

    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 412
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    iget v2, v9, Landroid/graphics/Rect;->left:I

    iget v3, v9, Landroid/graphics/Rect;->top:I

    iget v4, v9, Landroid/graphics/Rect;->right:I

    iget v5, v9, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 413
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    iget v2, v14, Landroid/graphics/Rect;->left:I

    iget v3, v14, Landroid/graphics/Rect;->top:I

    iget v4, v14, Landroid/graphics/Rect;->right:I

    iget v5, v14, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 414
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    move-object/from16 v6, v21

    iget v2, v6, Landroid/graphics/Rect;->left:I

    .line 414
    .end local v21    # "keyY":Landroid/graphics/Rect;
    .local v6, "keyY":Landroid/graphics/Rect;
    iget v3, v6, Landroid/graphics/Rect;->top:I

    iget v4, v6, Landroid/graphics/Rect;->right:I

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    const/16 v16, -0x1

    move-object/from16 v17, v6

    move/from16 v6, v16

    .line 414
    .end local v6    # "keyY":Landroid/graphics/Rect;
    .local v17, "keyY":Landroid/graphics/Rect;
    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 415
    iget-object v0, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 416
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->DEFAULT_WIDTH:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 417
    iget v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->DEFAULT_HEIGHT:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 418
    move-object/from16 v1, v20

    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 418
    .end local v20    # "MoveArea":Landroid/graphics/Rect;
    .restart local v1    # "MoveArea":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 419
    iget-object v2, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    invoke-virtual {v2, v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    iget-object v2, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v3, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-object v4, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    const-string/jumbo v5, "main_"

    invoke-static {v2, v3, v4, v5}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v2, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v3, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    iget-object v4, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v13, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;ILjava/lang/String;)V

    .line 423
    iget-object v2, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 424
    const-string v2, "HandShankScreenMapView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recoveDefaultLocation  mFloatBallCoordinate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget v2, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->hasSetAreaStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 427
    iget-object v2, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v3, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->saveHasSetAreaStatus(Landroid/content/Context;Ljava/lang/String;I)V

    .line 428
    iput v4, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->hasSetAreaStatus:I

    .line 431
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->recoveDefaultMoveAreaDirection()V

    .line 431
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "MoveArea":Landroid/graphics/Rect;
    .end local v8    # "keyA":Landroid/graphics/Rect;
    .end local v9    # "keyB":Landroid/graphics/Rect;
    .end local v10    # "keyR":Landroid/graphics/Rect;
    .end local v12    # "windowManager":Landroid/view/WindowManager;
    .end local v13    # "rotation":I
    .end local v14    # "keyX":Landroid/graphics/Rect;
    .end local v15    # "keyL":Landroid/graphics/Rect;
    .end local v17    # "keyY":Landroid/graphics/Rect;
    goto :goto_2

    .line 434
    .end local v22    # "handLRDirection":I
    .end local v23    # "keyNum":I
    .local v8, "handLRDirection":I
    .local v10, "keyNum":I
    :cond_5
    move/from16 v22, v8

    move/from16 v23, v10

    .line 434
    .end local v8    # "handLRDirection":I
    .end local v10    # "keyNum":I
    .restart local v22    # "handLRDirection":I
    .restart local v23    # "keyNum":I
    :goto_2
    return-void
.end method

.method private recoveDefaultMoveAreaDirection()V
    .locals 4

    .line 437
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    .line 438
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_0:I

    if-eq v0, v1, :cond_1

    .line 439
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 442
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    const-string/jumbo v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 443
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_0:I

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    .line 444
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 445
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 447
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->setRotationState(Z)V

    .line 448
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->changeRotationBg(I)V

    .line 450
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->gamePadId:I

    iget v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setJoystickDirection(Landroid/content/Context;IILjava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->saveMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;I)V

    .line 452
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
    .locals 4

    .line 455
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->updateFloatViewPos()V

    .line 456
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 459
    :cond_0
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_0:I

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 460
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    const-string/jumbo v1, "rotation"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 461
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_270:I

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    .line 462
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->setRotationState(Z)V

    goto :goto_0

    .line 463
    :cond_1
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_270:I

    if-ne v0, v1, :cond_2

    .line 464
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    const-string/jumbo v1, "rotation"

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 465
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_0:I

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    .line 466
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->setRotationState(Z)V

    .line 468
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 469
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaRotationObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 471
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->saveMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;I)V

    .line 472
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->gamePadId:I

    iget v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setJoystickDirection(Landroid/content/Context;IILjava/lang/String;)V

    .line 474
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->changeRotationBg(I)V

    .line 475
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

    .line 554
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 555
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 556
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

    .line 557
    .local v2, "rects":[Landroid/graphics/Rect;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 558
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 559
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 560
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 561
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    aget-object v4, v2, v8

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 562
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    aget-object v4, v2, v9

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 563
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    aget-object v4, v2, v10

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 564
    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->isZeroRects([Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 565
    const-string v3, "HandShankScreenMapView"

    const-string/jumbo v4, "saveFloatViewPosAndTouchEnable isZeroRect = true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 567
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v6, "main_"

    invoke-static {v3, v4, v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    .line 570
    :cond_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 571
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v3

    .line 572
    .local v3, "positionSet":[I
    const-string/jumbo v4, "main_"

    invoke-static {v3, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    .line 574
    .end local v3    # "positionSet":[I
    goto :goto_1

    .line 575
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getHandLRDirection(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 576
    .local v3, "handLRDirection":I
    if-nez v3, :cond_2

    .line 577
    invoke-static {}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getDefaultPositionLeft()[Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    goto :goto_0

    .line 578
    :cond_2
    if-ne v3, v5, :cond_3

    .line 579
    invoke-static {}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getDefaultPositionRight()[Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    .line 581
    :cond_3
    :goto_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    invoke-static {v4, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    .line 582
    .end local v3    # "handLRDirection":I
    goto :goto_1

    .line 584
    :cond_4
    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    .line 585
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    invoke-static {v3, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    .line 587
    :goto_1
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    const-string/jumbo v7, "main_"

    invoke-static {v3, v4, v6, v7}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    if-eqz v3, :cond_5

    .line 589
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v3, v4, v1, v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;ILjava/lang/String;)V

    .line 590
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    goto :goto_2

    .line 592
    :cond_5
    const-string v3, "HandShankScreenMapView"

    const-string/jumbo v4, "saveFloatViewPosAndTouchEnable, null rect !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    .end local v1    # "rotation":I
    .end local v2    # "rects":[Landroid/graphics/Rect;
    :goto_2
    goto :goto_3

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->DEBUG:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 597
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    return-void
.end method

.method private setAttributes()V
    .locals 4

    .line 338
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 339
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 340
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 341
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 342
    const/16 v2, 0x7e4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 343
    const/high16 v2, 0x20000

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 344
    const/4 v2, 0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 345
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 346
    const/16 v2, 0x1606

    .line 351
    .local v2, "uiFlag":I
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 352
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

    .line 661
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 662
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 663
    iput p6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 664
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    return-void
.end method

.method private updatNonFloatViewDisplay(Z)V
    .locals 2
    .param p1, "display"    # Z

    .line 324
    if-eqz p1, :cond_0

    .line 325
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mOptPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mColseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->recoveDefaultBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mOptPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mColseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mMainScreenMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->recoveDefaultBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    :goto_0
    return-void
.end method

.method private updateFloatViewPos()V
    .locals 16

    .line 632
    move-object/from16 v7, p0

    iget-object v0, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    .line 633
    .local v0, "positionStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    const-string/jumbo v3, "main_"

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .end local v0    # "positionStr":Ljava/lang/String;
    .local v8, "positionStr":Ljava/lang/String;
    :cond_0
    move-object v8, v0

    const-string v0, "HandShankScreenMapView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFloatViewPos  mFloatBallCoordinate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mFloatBallCoordinate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-nez v0, :cond_1

    .line 638
    invoke-static {v8}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v15

    .line 639
    .local v15, "positionSet":[I
    const-string/jumbo v0, "main_"

    invoke-static {v15, v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    .line 640
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    aget v2, v15, v14

    aget v3, v15, v13

    aget v4, v15, v12

    aget v5, v15, v11

    const/4 v6, -0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 641
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    aget v2, v15, v10

    aget v3, v15, v9

    const/4 v0, 0x7

    aget v4, v15, v0

    const/16 v0, 0x8

    aget v5, v15, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 642
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    const/16 v0, 0x9

    aget v2, v15, v0

    const/16 v0, 0xa

    aget v3, v15, v0

    const/16 v0, 0xb

    aget v4, v15, v0

    const/16 v0, 0xc

    aget v5, v15, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 643
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    const/16 v0, 0xd

    aget v2, v15, v0

    const/16 v0, 0xe

    aget v3, v15, v0

    const/16 v0, 0xf

    aget v4, v15, v0

    const/16 v0, 0x10

    aget v5, v15, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 644
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    const/16 v0, 0x11

    aget v2, v15, v0

    const/16 v0, 0x12

    aget v3, v15, v0

    const/16 v0, 0x13

    aget v4, v15, v0

    const/16 v0, 0x14

    aget v5, v15, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 645
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    const/16 v0, 0x15

    aget v2, v15, v0

    const/16 v0, 0x16

    aget v3, v15, v0

    const/16 v0, 0x17

    aget v4, v15, v0

    const/16 v0, 0x18

    aget v5, v15, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 646
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    const/16 v0, 0x19

    aget v2, v15, v0

    const/16 v0, 0x1a

    aget v3, v15, v0

    const/16 v0, 0x1b

    aget v4, v15, v0

    const/16 v0, 0x1c

    aget v5, v15, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 647
    .end local v15    # "positionSet":[I
    goto/16 :goto_0

    .line 648
    :cond_1
    invoke-static {}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getDefaultPositionLeft()[Landroid/graphics/Rect;

    move-result-object v15

    .line 649
    .local v15, "rects":[Landroid/graphics/Rect;
    iput-object v15, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandStankRects:[Landroid/graphics/Rect;

    .line 650
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

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

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 651
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    aget-object v0, v15, v14

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aget-object v0, v15, v14

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aget-object v0, v15, v14

    iget v4, v0, Landroid/graphics/Rect;->right:I

    aget-object v0, v15, v14

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 652
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    aget-object v0, v15, v13

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aget-object v0, v15, v13

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aget-object v0, v15, v13

    iget v4, v0, Landroid/graphics/Rect;->right:I

    aget-object v0, v15, v13

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 653
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    aget-object v0, v15, v12

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aget-object v0, v15, v12

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aget-object v0, v15, v12

    iget v4, v0, Landroid/graphics/Rect;->right:I

    aget-object v0, v15, v12

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 654
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    aget-object v0, v15, v11

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aget-object v0, v15, v11

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aget-object v0, v15, v11

    iget v4, v0, Landroid/graphics/Rect;->right:I

    aget-object v0, v15, v11

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 655
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    aget-object v0, v15, v10

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aget-object v0, v15, v10

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aget-object v0, v15, v10

    iget v4, v0, Landroid/graphics/Rect;->right:I

    aget-object v0, v15, v10

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 656
    iget-object v1, v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    aget-object v0, v15, v9

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aget-object v0, v15, v9

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aget-object v0, v15, v9

    iget v4, v0, Landroid/graphics/Rect;->right:I

    aget-object v0, v15, v9

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setLayoutParams(Landroid/view/View;IIIII)V

    .line 658
    .end local v15    # "rects":[Landroid/graphics/Rect;
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 479
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 480
    const-string v0, "HandShankScreenMapView"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->isHandShankMapViewShowing(Z)V

    .line 482
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->saveFloatViewPosAndTouchEnable()V

    .line 483
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mOpenSwitch:Z

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->updateEnabledGameList(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 484
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    .line 486
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30c0068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 489
    return-void
.end method

.method public getAttachePackageName()Ljava/lang/String;
    .locals 1

    .line 683
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x308001c

    if-ne v1, v0, :cond_0

    .line 365
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mIClickListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$IHandShankClickListener;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mIClickListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$IHandShankClickListener;

    invoke-interface {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$IHandShankClickListener;->doClose()V

    .line 370
    :cond_0
    const v0, 0x30800b2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 371
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->recoveDefaultLocation()V

    .line 378
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 104
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->initView()V

    .line 106
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 162
    .local v0, "axisX":F
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 163
    .local v2, "axisY":F
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getHandLRDirection(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 164
    .local v3, "handLRDirection":I
    if-ne v3, v1, :cond_1

    .line 165
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    neg-float v4, v0

    neg-float v5, v2

    invoke-virtual {v1, v4, v5}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->setJoyStickMoveXY(FF)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankMoveArea:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    invoke-virtual {v1, v0, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->setJoyStickMoveXY(FF)V

    .line 171
    .end local v0    # "axisX":F
    .end local v2    # "axisY":F
    .end local v3    # "handLRDirection":I
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 672
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 673
    const/4 v0, 0x1

    return v0

    .line 675
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 176
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getHandLRDirection(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 177
    .local v0, "handLRDirection":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 189
    :pswitch_1
    if-ne v0, v2, :cond_c

    .line 190
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto/16 :goto_4

    .line 179
    :pswitch_2
    if-nez v0, :cond_c

    .line 180
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto/16 :goto_4

    .line 194
    :pswitch_3
    if-ne v0, v2, :cond_c

    .line 195
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto/16 :goto_4

    .line 184
    :pswitch_4
    if-nez v0, :cond_c

    .line 185
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto/16 :goto_4

    .line 247
    :pswitch_5
    if-nez v0, :cond_1

    .line 248
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_0:I

    if-ne v1, v3, :cond_0

    .line 249
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_0

    .line 250
    :cond_0
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_270:I

    if-ne v1, v3, :cond_1

    .line 251
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 254
    :cond_1
    :goto_0
    if-ne v0, v2, :cond_c

    .line 255
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_0:I

    if-ne v1, v3, :cond_2

    .line 256
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto/16 :goto_4

    .line 257
    :cond_2
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_270:I

    if-ne v1, v3, :cond_c

    .line 258
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto/16 :goto_4

    .line 231
    :pswitch_6
    if-nez v0, :cond_4

    .line 232
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_0:I

    if-ne v1, v3, :cond_3

    .line 233
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_1

    .line 234
    :cond_3
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_270:I

    if-ne v1, v3, :cond_4

    .line 235
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 238
    :cond_4
    :goto_1
    if-ne v0, v2, :cond_c

    .line 239
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_0:I

    if-ne v1, v3, :cond_5

    .line 240
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto/16 :goto_4

    .line 241
    :cond_5
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_270:I

    if-ne v1, v3, :cond_c

    .line 242
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_4

    .line 215
    :pswitch_7
    if-nez v0, :cond_7

    .line 216
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_0:I

    if-ne v1, v3, :cond_6

    .line 217
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_2

    .line 218
    :cond_6
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_270:I

    if-ne v1, v3, :cond_7

    .line 219
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 222
    :cond_7
    :goto_2
    if-ne v0, v2, :cond_c

    .line 223
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_0:I

    if-ne v1, v3, :cond_8

    .line 224
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_4

    .line 225
    :cond_8
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_270:I

    if-ne v1, v3, :cond_c

    .line 226
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_4

    .line 199
    :pswitch_8
    if-nez v0, :cond_a

    .line 200
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_0:I

    if-ne v1, v3, :cond_9

    .line 201
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_3

    .line 202
    :cond_9
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_270:I

    if-ne v1, v3, :cond_a

    .line 203
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 206
    :cond_a
    :goto_3
    if-ne v0, v2, :cond_c

    .line 207
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_0:I

    if-ne v1, v3, :cond_b

    .line 208
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_4

    .line 209
    :cond_b
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->moveAreaDirection:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->ROATTION_270:I

    if-ne v1, v3, :cond_c

    .line 210
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 263
    :cond_c
    :goto_4
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

    .line 268
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 276
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 277
    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mLeftFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 271
    goto :goto_0

    .line 279
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 280
    goto :goto_0

    .line 273
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mRightFloatBall:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 274
    goto :goto_0

    .line 285
    :pswitch_5
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankY:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 286
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankA:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 287
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankX:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 288
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mHandShankB:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 291
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAttachePackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 679
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mGameAppPackageName:Ljava/lang/String;

    .line 680
    return-void
.end method

.method public setOptClickListener(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$IHandShankClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$IHandShankClickListener;

    .line 800
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->mIClickListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$IHandShankClickListener;

    .line 801
    return-void
.end method

.method public show()V
    .locals 2

    .line 356
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 357
    const-string v0, "HandShankScreenMapView"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->isHandShankMapViewShowing(Z)V

    .line 359
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->parseRectsFromCoordinateStr()V

    .line 360
    return-void
.end method
