.class public Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;
.super Landroid/widget/TextView;
.source "FakeFloatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IConfigurationChanged;,
        Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IFingerEventListener;
    }
.end annotation


# static fields
.field private static final MIN_SLIDE_DISTANCE:I = 0xa


# instance fields
.field private mConfigurationChanged:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IConfigurationChanged;

.field private mDownPointRawX:I

.field private mDownPointRawY:I

.field private mDownRawX:I

.field private mDownRawY:I

.field private mFingerEventListener:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IFingerEventListener;

.field private mMove:Z

.field private mMovePointRawX:I

.field private mMovePointRawY:I

.field private mMoveRawX:I

.field private mMoveRawY:I

.field private mParentHeight:I

.field private mParentWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    return-void
.end method

.method private updatePosition(II)V
    .locals 6
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .line 96
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->getLeft()I

    move-result v0

    add-int/2addr v0, p1

    .line 97
    .local v0, "left":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    .line 98
    .local v1, "right":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->getTop()I

    move-result v2

    add-int/2addr v2, p2

    .line 99
    .local v2, "top":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->getBottom()I

    move-result v3

    add-int/2addr v3, p2

    .line 100
    .local v3, "bottom":I
    if-gez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->getWidth()I

    move-result v1

    .line 104
    :cond_0
    if-gez v2, :cond_1

    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->getHeight()I

    move-result v3

    .line 108
    :cond_1
    iget v4, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mParentWidth:I

    if-le v1, v4, :cond_2

    .line 109
    iget v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mParentWidth:I

    .line 110
    iget v4, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mParentWidth:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->getWidth()I

    move-result v5

    sub-int v0, v4, v5

    .line 112
    :cond_2
    iget v4, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mParentHeight:I

    if-le v3, v4, :cond_3

    .line 113
    iget v3, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mParentHeight:I

    .line 114
    iget v4, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mParentHeight:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->getHeight()I

    move-result v5

    sub-int v2, v4, v5

    .line 116
    :cond_3
    invoke-virtual {p0, v0, v2, v1, v3}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->layout(IIII)V

    .line 117
    iget v4, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mMovePointRawX:I

    iput v4, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mDownPointRawX:I

    .line 118
    iget v4, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mMovePointRawY:I

    iput v4, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mDownPointRawY:I

    .line 119
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 47
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mConfigurationChanged:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IConfigurationChanged;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mConfigurationChanged:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IConfigurationChanged;

    invoke-interface {v0, p1}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IConfigurationChanged;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 54
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 55
    .local v0, "parent":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mParentWidth:I

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mParentHeight:I

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 68
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mMovePointRawX:I

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mMovePointRawY:I

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mMoveRawX:I

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mMoveRawY:I

    .line 72
    iget v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mMovePointRawX:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mDownPointRawX:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mMovePointRawY:I

    iget v4, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mDownPointRawY:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v3}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->updatePosition(II)V

    .line 74
    iget v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mMoveRawX:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mDownRawX:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v3, 0xa

    if-gt v1, v3, :cond_0

    iget v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mMoveRawY:I

    iget v4, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mDownRawY:I

    sub-int/2addr v1, v4

    .line 75
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_2

    .line 76
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mMove:Z

    if-nez v1, :cond_2

    .line 77
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IFingerEventListener;

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->getId()I

    move-result v3

    invoke-interface {v1, v3}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IFingerEventListener;->fingerStartMove(I)V

    .line 78
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mMove:Z

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IFingerEventListener;

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IFingerEventListener;

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->getId()I

    move-result v3

    invoke-interface {v1, v3}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IFingerEventListener;->fingerUp(I)V

    .line 87
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mMove:Z

    .line 88
    iput v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mDownRawY:I

    iput v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mDownRawX:I

    .line 89
    iput v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mMoveRawY:I

    iput v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mMoveRawX:I

    goto :goto_0

    .line 59
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mDownPointRawX:I

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mDownPointRawY:I

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mDownRawX:I

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mDownRawY:I

    .line 63
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IFingerEventListener;

    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IFingerEventListener;

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->getId()I

    move-result v3

    invoke-interface {v1, v3}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IFingerEventListener;->fingerDown(I)V

    .line 92
    :cond_2
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setConfigurationChangedListener(Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IConfigurationChanged;)V
    .locals 0
    .param p1, "configurationChanged"    # Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IConfigurationChanged;

    .line 122
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mConfigurationChanged:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IConfigurationChanged;

    .line 123
    return-void
.end method

.method public setFingerEventListener(Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IFingerEventListener;)V
    .locals 0
    .param p1, "fingerEventListener"    # Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IFingerEventListener;

    .line 126
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IFingerEventListener;

    .line 127
    return-void
.end method
