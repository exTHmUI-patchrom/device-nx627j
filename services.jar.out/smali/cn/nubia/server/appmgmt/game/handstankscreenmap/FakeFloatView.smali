.class public Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;
.super Landroid/widget/TextView;
.source "FakeFloatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;
    }
.end annotation


# static fields
.field private static final MIN_SLIDE_DISTANCE:I = 0xa


# instance fields
.field private mDownPointRawX:I

.field private mDownPointRawY:I

.field private mDownRawX:I

.field private mDownRawY:I

.field private mFingerEventListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;

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

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    return-void
.end method

.method private updatePosition(II)V
    .locals 6
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .line 85
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->getLeft()I

    move-result v0

    add-int/2addr v0, p1

    .line 86
    .local v0, "left":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    .line 87
    .local v1, "right":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->getTop()I

    move-result v2

    add-int/2addr v2, p2

    .line 88
    .local v2, "top":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->getBottom()I

    move-result v3

    add-int/2addr v3, p2

    .line 89
    .local v3, "bottom":I
    if-gez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->getWidth()I

    move-result v1

    .line 94
    :cond_0
    if-gez v2, :cond_1

    .line 95
    const/4 v2, 0x0

    .line 96
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->getHeight()I

    move-result v3

    .line 99
    :cond_1
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mParentWidth:I

    if-le v1, v4, :cond_2

    .line 100
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mParentWidth:I

    .line 101
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mParentWidth:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->getWidth()I

    move-result v5

    sub-int v0, v4, v5

    .line 104
    :cond_2
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mParentHeight:I

    if-le v3, v4, :cond_3

    .line 105
    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mParentHeight:I

    .line 106
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mParentHeight:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->getHeight()I

    move-result v5

    sub-int v2, v4, v5

    .line 109
    :cond_3
    invoke-virtual {p0, v0, v2, v1, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->layout(IIII)V

    .line 110
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mMovePointRawX:I

    iput v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mDownPointRawX:I

    .line 111
    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mMovePointRawY:I

    iput v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mDownPointRawY:I

    .line 112
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 44
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 45
    .local v0, "parent":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mParentWidth:I

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mParentHeight:I

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 58
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mMovePointRawX:I

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mMovePointRawY:I

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mMoveRawX:I

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mMoveRawY:I

    .line 62
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mMovePointRawX:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mDownPointRawX:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mMovePointRawY:I

    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mDownPointRawY:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->updatePosition(II)V

    .line 64
    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mMoveRawX:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mDownRawX:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v3, 0xa

    if-gt v1, v3, :cond_0

    iget v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mMoveRawY:I

    iget v4, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mDownRawY:I

    sub-int/2addr v1, v4

    .line 65
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_2

    .line 66
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mMove:Z

    if-nez v1, :cond_2

    .line 67
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->getId()I

    move-result v3

    invoke-interface {v1, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;->fingerStartMove(I)V

    .line 68
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mMove:Z

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->getId()I

    move-result v3

    invoke-interface {v1, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;->fingerUp(I)V

    .line 76
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mMove:Z

    .line 77
    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mDownRawY:I

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mDownRawX:I

    .line 78
    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mMoveRawY:I

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mMoveRawX:I

    goto :goto_0

    .line 49
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mDownPointRawX:I

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mDownPointRawY:I

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mDownRawX:I

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mDownRawY:I

    .line 53
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;

    if-eqz v1, :cond_2

    .line 54
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->getId()I

    move-result v3

    invoke-interface {v1, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;->fingerDown(I)V

    .line 81
    :cond_2
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFingerEventListener(Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;)V
    .locals 0
    .param p1, "fingerEventListener"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;

    .line 115
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;

    .line 116
    return-void
.end method
