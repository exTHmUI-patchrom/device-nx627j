.class public Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;
.super Landroid/widget/FrameLayout;
.source "HandShankMoveAreaFloatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IMoveAreaFingerEventListener;,
        Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IClickListener;
    }
.end annotation


# static fields
.field private static final BOTTOM:I = 0x17

.field private static final CENTER:I = 0x19

.field private static final LEFT:I = 0x16

.field private static final LEFT_BOTTOM:I = 0x13

.field private static final LEFT_TOP:I = 0x11

.field private static final MIN_SLIDE_DISTANCE:I = 0xa

.field private static final RIGHT:I = 0x18

.field private static final RIGHT_BOTTOM:I = 0x14

.field private static final RIGHT_TOP:I = 0x12

.field private static final TOP:I = 0x15


# instance fields
.field private FINGER_SCALE_AREA:I

.field private MAX_LENGHT:I

.field private MIN_LENGTH:I

.field private dragDirection:I

.field private fx:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDownPointRawX:I

.field private mDownPointRawY:I

.field private mDownRawX:I

.field private mDownRawY:I

.field private mFingerEventListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IMoveAreaFingerEventListener;

.field private mIClickListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IClickListener;

.field private mMove:Z

.field private mMovePointRawX:I

.field private mMovePointRawY:I

.field private mMoveRawX:I

.field private mMoveRawY:I

.field private mParentHeight:I

.field private mParentWidth:I

.field private mRotationState:Z

.field private offRadius:I

.field private offRadius_F:I

.field private offset:I

.field private oriBottom:I

.field private oriLeft:I

.field private oriRight:I

.field private oriTop:I

.field private rotate:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const/16 v0, 0x14

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    .line 46
    const/16 v0, 0x1f4

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MAX_LENGHT:I

    .line 47
    const/16 v0, 0xfa

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MIN_LENGTH:I

    .line 48
    const/16 v0, 0x50

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->FINGER_SCALE_AREA:I

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mRotationState:Z

    .line 54
    const/16 v0, 0x10

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius:I

    .line 55
    const/16 v0, 0xc

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius_F:I

    .line 59
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/16 v0, 0x14

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    .line 46
    const/16 v0, 0x1f4

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MAX_LENGHT:I

    .line 47
    const/16 v0, 0xfa

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MIN_LENGTH:I

    .line 48
    const/16 v0, 0x50

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->FINGER_SCALE_AREA:I

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mRotationState:Z

    .line 54
    const/16 v0, 0x10

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius:I

    .line 55
    const/16 v0, 0xc

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius_F:I

    .line 65
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mContext:Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/16 v0, 0x14

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    .line 46
    const/16 v0, 0x1f4

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MAX_LENGHT:I

    .line 47
    const/16 v0, 0xfa

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MIN_LENGTH:I

    .line 48
    const/16 v0, 0x50

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->FINGER_SCALE_AREA:I

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mRotationState:Z

    .line 54
    const/16 v0, 0x10

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius:I

    .line 55
    const/16 v0, 0xc

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius_F:I

    .line 72
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mContext:Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    const/16 v0, 0x14

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    .line 46
    const/16 v0, 0x1f4

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MAX_LENGHT:I

    .line 47
    const/16 v0, 0xfa

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MIN_LENGTH:I

    .line 48
    const/16 v0, 0x50

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->FINGER_SCALE_AREA:I

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mRotationState:Z

    .line 54
    const/16 v0, 0x10

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius:I

    .line 55
    const/16 v0, 0xc

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius_F:I

    .line 78
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mContext:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->init()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IClickListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;

    .line 14
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mIClickListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IClickListener;

    return-object v0
.end method

.method private bottom(I)V
    .locals 3
    .param p1, "dy"    # I

    .line 365
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriBottom:I

    .line 366
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriBottom:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mParentHeight:I

    iget v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 367
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mParentHeight:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriBottom:I

    .line 369
    :cond_0
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriBottom:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MIN_LENGTH:I

    if-ge v0, v1, :cond_1

    .line 370
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MIN_LENGTH:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriBottom:I

    .line 372
    :cond_1
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriBottom:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MAX_LENGHT:I

    if-le v0, v1, :cond_2

    .line 373
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MAX_LENGHT:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriBottom:I

    .line 375
    :cond_2
    return-void
.end method

.method private init()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mContext:Landroid/content/Context;

    const v1, 0x30a0014

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 83
    .local v0, "view":Landroid/widget/RelativeLayout;
    invoke-virtual {p0, v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->addView(Landroid/view/View;)V

    .line 84
    const v1, 0x308000d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 85
    const v1, 0x3080040

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->fx:Landroid/widget/ImageView;

    .line 86
    const v1, 0x30800b8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->rotate:Landroid/widget/ImageView;

    .line 87
    const v1, 0x30800c9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 88
    const v1, 0x3080063

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 89
    const v1, 0x30800b4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 90
    const v1, 0x308000e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 91
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->rotate:Landroid/widget/ImageView;

    new-instance v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$1;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$1;-><init>(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method private left(I)V
    .locals 3
    .param p1, "dx"    # I

    .line 389
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriLeft:I

    .line 390
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriLeft:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    .line 391
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    neg-int v0, v0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriLeft:I

    .line 393
    :cond_0
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriRight:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MIN_LENGTH:I

    if-ge v0, v1, :cond_1

    .line 394
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriRight:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MIN_LENGTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriLeft:I

    .line 396
    :cond_1
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriRight:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MAX_LENGHT:I

    if-le v0, v1, :cond_2

    .line 397
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriRight:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MAX_LENGHT:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriLeft:I

    .line 399
    :cond_2
    return-void
.end method

.method private right(I)V
    .locals 3
    .param p1, "dx"    # I

    .line 377
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriRight:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriRight:I

    .line 378
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriRight:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mParentWidth:I

    iget v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 379
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mParentWidth:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriRight:I

    .line 381
    :cond_0
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriRight:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MIN_LENGTH:I

    if-ge v0, v1, :cond_1

    .line 382
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriLeft:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MIN_LENGTH:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriRight:I

    .line 384
    :cond_1
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriRight:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MAX_LENGHT:I

    if-le v0, v1, :cond_2

    .line 385
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriLeft:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MAX_LENGHT:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriRight:I

    .line 387
    :cond_2
    return-void
.end method

.method private setFxBackground(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 108
    float-to-double v0, p1

    const-wide v2, -0x407b851eb851eb85L    # -0.01

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    float-to-double v0, p1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v0, v4

    if-gez v0, :cond_0

    float-to-double v0, p2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    float-to-double v0, p2

    cmpg-double v0, v0, v4

    if-gez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->fx:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->fx:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 113
    :goto_0
    return-void
.end method

.method private top(I)V
    .locals 3
    .param p1, "dy"    # I

    .line 353
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriTop:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriTop:I

    .line 354
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriTop:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    .line 355
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    neg-int v0, v0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriTop:I

    .line 357
    :cond_0
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriBottom:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MIN_LENGTH:I

    if-ge v0, v1, :cond_1

    .line 358
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriBottom:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MIN_LENGTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriTop:I

    .line 360
    :cond_1
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriBottom:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MAX_LENGHT:I

    if-le v0, v1, :cond_2

    .line 361
    iget v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriBottom:I

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offset:I

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->MAX_LENGHT:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriTop:I

    .line 363
    :cond_2
    return-void
.end method

.method private updatePosition(II)V
    .locals 6
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .line 292
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getLeft()I

    move-result v0

    add-int/2addr v0, p1

    .line 293
    .local v0, "left":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    .line 294
    .local v1, "right":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getTop()I

    move-result v2

    add-int/2addr v2, p2

    .line 295
    .local v2, "top":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getBottom()I

    move-result v3

    add-int/2addr v3, p2

    .line 296
    .local v3, "bottom":I
    if-gez v0, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 298
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getWidth()I

    move-result v1

    .line 301
    :cond_0
    if-gez v2, :cond_1

    .line 302
    const/4 v2, 0x0

    .line 303
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getHeight()I

    move-result v3

    .line 306
    :cond_1
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mParentWidth:I

    if-le v1, v4, :cond_2

    .line 307
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mParentWidth:I

    .line 308
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mParentWidth:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getWidth()I

    move-result v5

    sub-int v0, v4, v5

    .line 311
    :cond_2
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mParentHeight:I

    if-le v3, v4, :cond_3

    .line 312
    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mParentHeight:I

    .line 313
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mParentHeight:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getHeight()I

    move-result v5

    sub-int v2, v4, v5

    .line 316
    :cond_3
    invoke-virtual {p0, v0, v2, v1, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->layout(IIII)V

    .line 317
    return-void
.end method


# virtual methods
.method protected getDirection(II)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 321
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getLeft()I

    move-result v0

    .line 322
    .local v0, "left":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getRight()I

    move-result v1

    .line 323
    .local v1, "right":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getBottom()I

    move-result v2

    .line 324
    .local v2, "bottom":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getTop()I

    move-result v3

    .line 325
    .local v3, "top":I
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->FINGER_SCALE_AREA:I

    if-ge p1, v4, :cond_0

    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->FINGER_SCALE_AREA:I

    if-ge p2, v4, :cond_0

    .line 326
    const/16 v4, 0x11

    return v4

    .line 328
    :cond_0
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->FINGER_SCALE_AREA:I

    if-ge p2, v4, :cond_1

    sub-int v4, v1, v0

    sub-int/2addr v4, p1

    iget v5, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->FINGER_SCALE_AREA:I

    if-ge v4, v5, :cond_1

    .line 329
    const/16 v4, 0x12

    return v4

    .line 331
    :cond_1
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->FINGER_SCALE_AREA:I

    if-ge p1, v4, :cond_2

    sub-int v4, v2, v3

    sub-int/2addr v4, p2

    iget v5, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->FINGER_SCALE_AREA:I

    if-ge v4, v5, :cond_2

    .line 332
    const/16 v4, 0x13

    return v4

    .line 334
    :cond_2
    sub-int v4, v1, v0

    sub-int/2addr v4, p1

    iget v5, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->FINGER_SCALE_AREA:I

    if-ge v4, v5, :cond_3

    sub-int v4, v2, v3

    sub-int/2addr v4, p2

    iget v5, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->FINGER_SCALE_AREA:I

    if-ge v4, v5, :cond_3

    .line 335
    const/16 v4, 0x14

    return v4

    .line 337
    :cond_3
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->FINGER_SCALE_AREA:I

    if-ge p1, v4, :cond_4

    .line 338
    const/16 v4, 0x16

    return v4

    .line 340
    :cond_4
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->FINGER_SCALE_AREA:I

    if-ge p2, v4, :cond_5

    .line 341
    const/16 v4, 0x15

    return v4

    .line 343
    :cond_5
    sub-int v4, v1, v0

    sub-int/2addr v4, p1

    iget v5, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->FINGER_SCALE_AREA:I

    if-ge v4, v5, :cond_6

    .line 344
    const/16 v4, 0x18

    return v4

    .line 346
    :cond_6
    sub-int v4, v2, v3

    sub-int/2addr v4, p2

    iget v5, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->FINGER_SCALE_AREA:I

    if-ge v4, v5, :cond_7

    .line 347
    const/16 v4, 0x17

    return v4

    .line 349
    :cond_7
    const/16 v4, 0x19

    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 184
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 185
    .local v0, "parent":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mParentWidth:I

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mParentHeight:I

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 221
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mMovePointRawX:I

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mMovePointRawY:I

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mMoveRawX:I

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mMoveRawY:I

    .line 225
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mMovePointRawX:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mDownPointRawX:I

    sub-int/2addr v1, v3

    .line 226
    .local v1, "dx":I
    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mMovePointRawY:I

    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mDownPointRawY:I

    sub-int/2addr v3, v4

    .line 228
    .local v3, "dy":I
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->dragDirection:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 259
    :pswitch_1
    invoke-direct {p0, v1, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->updatePosition(II)V

    goto :goto_0

    .line 247
    :pswitch_2
    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->right(I)V

    .line 248
    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->bottom(I)V

    .line 249
    neg-int v4, v1

    invoke-direct {p0, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->top(I)V

    .line 250
    neg-int v4, v1

    invoke-direct {p0, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->bottom(I)V

    .line 251
    goto :goto_0

    .line 253
    :pswitch_3
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->bottom(I)V

    .line 254
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->right(I)V

    .line 255
    neg-int v4, v3

    invoke-direct {p0, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->left(I)V

    .line 256
    neg-int v4, v3

    invoke-direct {p0, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->top(I)V

    .line 257
    goto :goto_0

    .line 241
    :pswitch_4
    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->left(I)V

    .line 242
    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->top(I)V

    .line 243
    neg-int v4, v1

    invoke-direct {p0, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->right(I)V

    .line 244
    neg-int v4, v1

    invoke-direct {p0, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->bottom(I)V

    .line 245
    goto :goto_0

    .line 235
    :pswitch_5
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->top(I)V

    .line 236
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->left(I)V

    .line 237
    neg-int v4, v3

    invoke-direct {p0, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->right(I)V

    .line 238
    neg-int v4, v3

    invoke-direct {p0, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->bottom(I)V

    .line 239
    goto :goto_0

    .line 233
    :pswitch_6
    nop

    .line 262
    :goto_0
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->dragDirection:I

    const/16 v5, 0x19

    if-eq v4, v5, :cond_0

    .line 263
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriRight:I

    iget v6, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriBottom:I

    iget v7, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriTop:I

    sub-int/2addr v6, v7

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 264
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriLeft:I

    iget v6, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriTop:I

    iget v7, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriRight:I

    iget v8, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriBottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 265
    invoke-virtual {p0, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mMovePointRawX:I

    iput v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mDownPointRawX:I

    .line 269
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mMovePointRawY:I

    iput v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mDownPointRawY:I

    .line 270
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mMoveRawX:I

    iget v5, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mDownRawX:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0xa

    if-gt v4, v5, :cond_1

    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mMoveRawY:I

    iget v6, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mDownRawY:I

    sub-int/2addr v4, v6

    .line 271
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v5, :cond_4

    .line 272
    :cond_1
    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mMove:Z

    if-nez v4, :cond_4

    .line 273
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IMoveAreaFingerEventListener;

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getId()I

    move-result v5

    invoke-interface {v4, v5}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IMoveAreaFingerEventListener;->fingerStartMove(I)V

    .line 274
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mMove:Z

    goto/16 :goto_2

    .line 279
    .end local v1    # "dx":I
    .end local v3    # "dy":I
    :pswitch_7
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->dragDirection:I

    .line 280
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IMoveAreaFingerEventListener;

    if-eqz v3, :cond_2

    .line 281
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IMoveAreaFingerEventListener;

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getId()I

    move-result v4

    invoke-interface {v3, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IMoveAreaFingerEventListener;->fingerUp(I)V

    .line 283
    :cond_2
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mMove:Z

    .line 284
    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mDownRawY:I

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mDownRawX:I

    .line 285
    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mMoveRawY:I

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mMoveRawX:I

    goto :goto_2

    .line 189
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mDownPointRawX:I

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mDownPointRawY:I

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mDownRawX:I

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mDownRawY:I

    .line 194
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getLeft()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriLeft:I

    .line 195
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getRight()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriRight:I

    .line 196
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getTop()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriTop:I

    .line 197
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getBottom()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->oriBottom:I

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v1, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getDirection(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->dragDirection:I

    .line 199
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mRotationState:Z

    if-eqz v1, :cond_3

    .line 200
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->dragDirection:I

    packed-switch v1, :pswitch_data_2

    goto :goto_1

    .line 208
    :pswitch_9
    const/16 v1, 0x15

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->dragDirection:I

    .line 209
    goto :goto_1

    .line 211
    :pswitch_a
    const/16 v1, 0x18

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->dragDirection:I

    goto :goto_1

    .line 205
    :pswitch_b
    const/16 v1, 0x17

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->dragDirection:I

    .line 206
    goto :goto_1

    .line 202
    :pswitch_c
    const/16 v1, 0x16

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->dragDirection:I

    .line 203
    nop

    .line 216
    :cond_3
    :goto_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IMoveAreaFingerEventListener;

    if-eqz v1, :cond_4

    .line 217
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IMoveAreaFingerEventListener;

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getId()I

    move-result v3

    invoke-interface {v1, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IMoveAreaFingerEventListener;->fingerDown(I)V

    .line 288
    :cond_4
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x15
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public setFingerEventListener(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IMoveAreaFingerEventListener;)V
    .locals 0
    .param p1, "fingerEventListener"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IMoveAreaFingerEventListener;

    .line 406
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IMoveAreaFingerEventListener;

    .line 407
    return-void
.end method

.method public setIClickListener(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IClickListener;)V
    .locals 0
    .param p1, "iClickListener"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IClickListener;

    .line 176
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mIClickListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IClickListener;

    .line 177
    return-void
.end method

.method public setJoyStickMoveXY(FF)V
    .locals 24
    .param p1, "x"    # F
    .param p2, "y"    # F

    move-object/from16 v0, p0

    .line 116
    invoke-direct/range {p0 .. p2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->setFxBackground(FF)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getRight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 118
    .local v1, "radius":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getRight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 119
    .local v2, "parent_X":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 120
    .local v3, "parent_H":I
    iget-object v4, v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->fx:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 121
    .local v4, "fxW":I
    iget-object v5, v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->fx:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    .line 122
    .local v5, "fxH":I
    int-to-float v6, v1

    mul-float v6, v6, p1

    float-to-int v6, v6

    .line 123
    .local v6, "moveX":I
    int-to-float v8, v1

    mul-float v8, v8, p2

    float-to-int v8, v8

    .line 124
    .local v8, "moveY":I
    add-int v10, v1, v6

    div-int/lit8 v11, v4, 0x2

    sub-int/2addr v10, v11

    .line 125
    .local v10, "l":I
    add-int v11, v1, v8

    div-int/lit8 v12, v5, 0x2

    sub-int/2addr v11, v12

    .line 126
    .local v11, "t":I
    add-int v12, v1, v6

    div-int/lit8 v13, v4, 0x2

    add-int/2addr v12, v13

    .line 127
    .local v12, "r":I
    add-int v13, v1, v8

    div-int/lit8 v14, v5, 0x2

    add-int/2addr v13, v14

    .line 129
    .local v13, "b":I
    add-int v14, v10, v12

    div-int/lit8 v14, v14, 0x2

    .line 130
    .local v14, "fx_X":I
    add-int v15, v11, v13

    div-int/lit8 v15, v15, 0x2

    .line 131
    .local v15, "fx_Y":I
    move/from16 v16, v6

    sub-int v6, v14, v1

    .end local v6    # "moveX":I
    .local v16, "moveX":I
    int-to-double v6, v6

    move/from16 v17, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .end local v8    # "moveY":I
    .local v17, "moveY":I
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    move/from16 v18, v12

    sub-int v12, v15, v1

    .end local v12    # "r":I
    .local v18, "r":I
    move/from16 v19, v13

    int-to-double v12, v12

    .end local v13    # "b":I
    .local v19, "b":I
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-int/lit8 v8, v4, 0x2

    int-to-double v8, v8

    add-double/2addr v6, v8

    .line 132
    .local v6, "distance":D
    int-to-double v8, v1

    cmpl-double v8, v6, v8

    if-ltz v8, :cond_4

    .line 133
    sub-int v8, v15, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v8, v6

    .line 134
    .local v8, "sin":D
    sub-int v12, v14, v1

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v12, v12

    div-double/2addr v12, v6

    .line 135
    .local v12, "cos":D
    move-wide/from16 v20, v6

    int-to-double v6, v1

    .end local v6    # "distance":D
    .local v20, "distance":D
    mul-double/2addr v6, v12

    double-to-int v6, v6

    .line 136
    .local v6, "fx_Xnew":I
    move-wide/from16 v22, v12

    int-to-double v12, v1

    .end local v12    # "cos":D
    .local v22, "cos":D
    mul-double/2addr v12, v8

    double-to-int v7, v12

    .line 137
    .local v7, "fy_Ynew":I
    if-ge v10, v1, :cond_0

    if-ge v11, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getLeft()I

    move-result v12

    add-int/2addr v12, v14

    if-ge v12, v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getTop()I

    move-result v12

    add-int/2addr v12, v15

    if-ge v12, v3, :cond_0

    .line 138
    sub-int v12, v1, v6

    div-int/lit8 v13, v4, 0x2

    sub-int/2addr v12, v13

    iget v13, v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius:I

    add-int v10, v12, v13

    .line 139
    sub-int v12, v1, v7

    div-int/lit8 v13, v5, 0x2

    sub-int/2addr v12, v13

    iget v13, v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius:I

    add-int v11, v12, v13

    .line 141
    :cond_0
    if-le v10, v1, :cond_1

    if-ge v11, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getLeft()I

    move-result v12

    add-int/2addr v12, v14

    if-le v12, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getTop()I

    move-result v12

    add-int/2addr v12, v15

    if-ge v12, v3, :cond_1

    .line 142
    add-int v12, v1, v6

    div-int/lit8 v13, v4, 0x2

    sub-int/2addr v12, v13

    iget v13, v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius:I

    sub-int v10, v12, v13

    .line 143
    sub-int v12, v1, v7

    div-int/lit8 v13, v5, 0x2

    sub-int/2addr v12, v13

    iget v13, v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius:I

    add-int v11, v12, v13

    .line 145
    :cond_1
    if-ge v10, v1, :cond_2

    if-le v11, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getLeft()I

    move-result v12

    add-int/2addr v12, v14

    if-ge v12, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getTop()I

    move-result v12

    add-int/2addr v12, v15

    if-le v12, v3, :cond_2

    .line 146
    sub-int v12, v1, v6

    div-int/lit8 v13, v4, 0x2

    sub-int/2addr v12, v13

    iget v13, v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius:I

    add-int v10, v12, v13

    .line 147
    add-int v12, v1, v7

    div-int/lit8 v13, v5, 0x2

    sub-int/2addr v12, v13

    iget v13, v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius:I

    sub-int v11, v12, v13

    .line 149
    :cond_2
    if-le v10, v1, :cond_3

    if-le v11, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getLeft()I

    move-result v12

    add-int/2addr v12, v14

    if-le v12, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->getTop()I

    move-result v12

    add-int/2addr v12, v15

    if-le v12, v3, :cond_3

    .line 150
    add-int v12, v1, v6

    div-int/lit8 v13, v4, 0x2

    sub-int/2addr v12, v13

    iget v13, v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius:I

    sub-int/2addr v12, v13

    .line 151
    .end local v10    # "l":I
    .local v12, "l":I
    add-int v10, v1, v7

    div-int/lit8 v13, v5, 0x2

    sub-int/2addr v10, v13

    iget v13, v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius:I

    sub-int/2addr v10, v13

    .line 153
    .end local v11    # "t":I
    .local v10, "t":I
    move v11, v10

    move v10, v12

    .end local v12    # "l":I
    .local v10, "l":I
    .restart local v11    # "t":I
    :cond_3
    add-int v12, v10, v4

    .line 154
    .end local v18    # "r":I
    .local v12, "r":I
    add-int v13, v11, v5

    .end local v6    # "fx_Xnew":I
    .end local v7    # "fy_Ynew":I
    .end local v8    # "sin":D
    .end local v19    # "b":I
    .end local v22    # "cos":D
    .restart local v13    # "b":I
    goto :goto_0

    .line 156
    .end local v12    # "r":I
    .end local v13    # "b":I
    .end local v20    # "distance":D
    .local v6, "distance":D
    .restart local v18    # "r":I
    .restart local v19    # "b":I
    :cond_4
    move-wide/from16 v20, v6

    move/from16 v12, v18

    move/from16 v13, v19

    .end local v6    # "distance":D
    .end local v18    # "r":I
    .end local v19    # "b":I
    .restart local v12    # "r":I
    .restart local v13    # "b":I
    .restart local v20    # "distance":D
    :goto_0
    if-gtz v10, :cond_5

    .line 157
    iget v10, v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius_F:I

    .line 158
    add-int v12, v10, v4

    .line 160
    :cond_5
    if-gtz v11, :cond_6

    .line 161
    iget v11, v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius_F:I

    .line 162
    add-int v13, v11, v5

    .line 164
    :cond_6
    mul-int/lit8 v6, v1, 0x2

    if-lt v12, v6, :cond_7

    .line 165
    mul-int/lit8 v6, v1, 0x2

    iget v7, v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius_F:I

    sub-int v12, v6, v7

    .line 166
    sub-int v10, v12, v4

    .line 168
    :cond_7
    mul-int/lit8 v6, v1, 0x2

    if-lt v13, v6, :cond_8

    .line 169
    mul-int/lit8 v6, v1, 0x2

    iget v7, v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->offRadius_F:I

    sub-int v13, v6, v7

    .line 170
    sub-int v11, v13, v5

    .line 172
    :cond_8
    iget-object v6, v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->fx:Landroid/widget/ImageView;

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/widget/ImageView;->layout(IIII)V

    .line 173
    return-void
.end method

.method public setRotationBackground(I)V
    .locals 3
    .param p1, "rotateDirection"    # I

    .line 100
    if-nez p1, :cond_0

    .line 101
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->rotate:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3070100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->rotate:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3070101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :goto_0
    return-void
.end method

.method public setRotationState(Z)V
    .locals 0
    .param p1, "rotationState"    # Z

    .line 402
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView;->mRotationState:Z

    .line 403
    return-void
.end method
