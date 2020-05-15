.class public Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;
.super Landroid/widget/TextView;
.source "FakeFloatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView$IFingerEventListener;
    }
.end annotation


# static fields
.field private static final MIN_SLIDE_DISTANCE:I = 0xa


# instance fields
.field private adapterFor627:I

.field private canMoveHeight:I

.field private canMoveWidth:I

.field private canToBottom:I

.field private canToLeft_l:I

.field private canToRight_r:I

.field private canToTop:I

.field private isSecondaryScreen:Z

.field private mDownPointRawX:I

.field private mDownPointRawY:I

.field private mDownRawX:I

.field private mDownRawY:I

.field private mFingerEventListener:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView$IFingerEventListener;

.field private mLeftOrRight:I

.field private mMove:Z

.field private mMovePointRawX:I

.field private mMovePointRawY:I

.field private mMoveRawX:I

.field private mMoveRawY:I

.field private mParentHeight:I

.field private mParentWidth:I

.field private mSecondaryMoveArea:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mLeftOrRight:I

    .line 27
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->isSecondaryScreen:Z

    .line 97
    const/16 v0, 0x734

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canMoveWidth:I

    .line 98
    const/16 v0, 0x328

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canMoveHeight:I

    .line 99
    const/16 v0, 0x9f

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToTop:I

    .line 100
    const/16 v0, 0x3c7

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToBottom:I

    .line 101
    const/16 v0, 0xda

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToLeft_l:I

    .line 102
    const/16 v0, 0x80e

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToRight_r:I

    .line 103
    const/16 v0, 0x1e

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->adapterFor627:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mLeftOrRight:I

    .line 27
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->isSecondaryScreen:Z

    .line 97
    const/16 v0, 0x734

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canMoveWidth:I

    .line 98
    const/16 v0, 0x328

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canMoveHeight:I

    .line 99
    const/16 v0, 0x9f

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToTop:I

    .line 100
    const/16 v0, 0x3c7

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToBottom:I

    .line 101
    const/16 v0, 0xda

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToLeft_l:I

    .line 102
    const/16 v0, 0x80e

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToRight_r:I

    .line 103
    const/16 v0, 0x1e

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->adapterFor627:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mLeftOrRight:I

    .line 27
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->isSecondaryScreen:Z

    .line 97
    const/16 v0, 0x734

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canMoveWidth:I

    .line 98
    const/16 v0, 0x328

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canMoveHeight:I

    .line 99
    const/16 v0, 0x9f

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToTop:I

    .line 100
    const/16 v0, 0x3c7

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToBottom:I

    .line 101
    const/16 v0, 0xda

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToLeft_l:I

    .line 102
    const/16 v0, 0x80e

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToRight_r:I

    .line 103
    const/16 v0, 0x1e

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->adapterFor627:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mLeftOrRight:I

    .line 27
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->isSecondaryScreen:Z

    .line 97
    const/16 v0, 0x734

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canMoveWidth:I

    .line 98
    const/16 v0, 0x328

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canMoveHeight:I

    .line 99
    const/16 v0, 0x9f

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToTop:I

    .line 100
    const/16 v0, 0x3c7

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToBottom:I

    .line 101
    const/16 v0, 0xda

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToLeft_l:I

    .line 102
    const/16 v0, 0x80e

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToRight_r:I

    .line 103
    const/16 v0, 0x1e

    iput v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->adapterFor627:I

    .line 45
    return-void
.end method

.method private updatePosition(II)V
    .locals 8
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .line 105
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getLeft()I

    move-result v0

    add-int/2addr v0, p1

    .line 106
    .local v0, "left":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    .line 107
    .local v1, "right":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getTop()I

    move-result v2

    add-int/2addr v2, p2

    .line 108
    .local v2, "top":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getBottom()I

    move-result v3

    add-int/2addr v3, p2

    .line 110
    .local v3, "bottom":I
    iget v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mParentWidth:I

    div-int/lit8 v4, v4, 0x2

    .line 111
    .local v4, "middleWidthPos":I
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "NX627J"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mParentWidth:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->adapterFor627:I

    sub-int v4, v5, v6

    .line 115
    :cond_0
    iget-boolean v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->isSecondaryScreen:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 116
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mLeftOrRight:I

    if-nez v5, :cond_1

    .line 117
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToLeft_l:I

    if-ge v0, v5, :cond_3

    .line 118
    iget v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToLeft_l:I

    .line 119
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToLeft_l:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getWidth()I

    move-result v7

    add-int v1, v5, v7

    goto :goto_0

    .line 121
    :cond_1
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mLeftOrRight:I

    if-ne v5, v6, :cond_3

    .line 122
    if-ge v0, v4, :cond_3

    .line 123
    move v0, v4

    .line 124
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getWidth()I

    move-result v5

    add-int v1, v4, v5

    goto :goto_0

    .line 128
    :cond_2
    if-gez v0, :cond_3

    .line 129
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getWidth()I

    move-result v1

    .line 133
    :cond_3
    :goto_0
    iget-boolean v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->isSecondaryScreen:Z

    if-eqz v5, :cond_4

    .line 134
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToTop:I

    if-ge v2, v5, :cond_5

    .line 135
    iget v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToTop:I

    .line 136
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToTop:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getHeight()I

    move-result v7

    add-int v3, v5, v7

    goto :goto_1

    .line 139
    :cond_4
    if-gez v2, :cond_5

    .line 140
    const/4 v2, 0x0

    .line 141
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getHeight()I

    move-result v3

    .line 144
    :cond_5
    :goto_1
    iget-boolean v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->isSecondaryScreen:Z

    if-eqz v5, :cond_7

    .line 145
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mLeftOrRight:I

    if-nez v5, :cond_6

    .line 146
    if-le v1, v4, :cond_8

    .line 147
    move v1, v4

    .line 148
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getWidth()I

    move-result v5

    sub-int v0, v4, v5

    goto :goto_2

    .line 150
    :cond_6
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mLeftOrRight:I

    if-ne v5, v6, :cond_8

    .line 151
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToRight_r:I

    if-le v1, v5, :cond_8

    .line 152
    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToRight_r:I

    .line 153
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToRight_r:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getWidth()I

    move-result v6

    sub-int v0, v5, v6

    goto :goto_2

    .line 157
    :cond_7
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mParentWidth:I

    if-le v1, v5, :cond_8

    .line 158
    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mParentWidth:I

    .line 159
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mParentWidth:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getWidth()I

    move-result v6

    sub-int v0, v5, v6

    .line 162
    :cond_8
    :goto_2
    iget-boolean v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->isSecondaryScreen:Z

    if-eqz v5, :cond_9

    .line 163
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToBottom:I

    if-le v3, v5, :cond_a

    .line 164
    iget v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToBottom:I

    .line 165
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->canToBottom:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getHeight()I

    move-result v6

    sub-int v2, v5, v6

    goto :goto_3

    .line 168
    :cond_9
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mParentHeight:I

    if-le v3, v5, :cond_a

    .line 169
    iget v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mParentHeight:I

    .line 170
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mParentHeight:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getHeight()I

    move-result v6

    sub-int v2, v5, v6

    .line 173
    :cond_a
    :goto_3
    invoke-virtual {p0, v0, v2, v1, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->layout(IIII)V

    .line 174
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mMovePointRawX:I

    iput v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mDownPointRawX:I

    .line 175
    iget v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mMovePointRawY:I

    iput v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mDownPointRawY:I

    .line 176
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 49
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 50
    .local v0, "parent":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mParentWidth:I

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mParentHeight:I

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 63
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mMovePointRawX:I

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mMovePointRawY:I

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mMoveRawX:I

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mMoveRawY:I

    .line 67
    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mMovePointRawX:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mDownPointRawX:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mMovePointRawY:I

    iget v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mDownPointRawY:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->updatePosition(II)V

    .line 69
    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mMoveRawX:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mDownRawX:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v3, 0xa

    if-gt v1, v3, :cond_0

    iget v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mMoveRawY:I

    iget v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mDownRawY:I

    sub-int/2addr v1, v4

    .line 70
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_2

    .line 71
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mMove:Z

    if-nez v1, :cond_2

    .line 72
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView$IFingerEventListener;

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getId()I

    move-result v3

    invoke-interface {v1, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView$IFingerEventListener;->fingerStartMove(I)V

    .line 73
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mMove:Z

    .line 74
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mSecondaryMoveArea:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mSecondaryMoveArea:Landroid/view/View;

    const v3, 0x30700e0

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView$IFingerEventListener;

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView$IFingerEventListener;

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getId()I

    move-result v3

    invoke-interface {v1, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView$IFingerEventListener;->fingerUp(I)V

    .line 85
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mMove:Z

    .line 86
    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mDownRawY:I

    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mDownRawX:I

    .line 87
    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mMoveRawY:I

    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mMoveRawX:I

    .line 88
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mSecondaryMoveArea:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mSecondaryMoveArea:Landroid/view/View;

    const v3, 0x30700e1

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 54
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mDownPointRawX:I

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mDownPointRawY:I

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mDownRawX:I

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mDownRawY:I

    .line 58
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView$IFingerEventListener;

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView$IFingerEventListener;

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getId()I

    move-result v3

    invoke-interface {v1, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView$IFingerEventListener;->fingerDown(I)V

    .line 93
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

.method public setFingerEventListener(Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView$IFingerEventListener;)V
    .locals 0
    .param p1, "fingerEventListener"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView$IFingerEventListener;

    .line 179
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView$IFingerEventListener;

    .line 180
    return-void
.end method

.method public setFingerLeftOrRight(IZ)V
    .locals 0
    .param p1, "leftOrRight"    # I
    .param p2, "isSecondary"    # Z

    .line 182
    iput p1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mLeftOrRight:I

    .line 183
    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->isSecondaryScreen:Z

    .line 184
    return-void
.end method

.method public setSecondaryMoveBackground(Landroid/view/View;)V
    .locals 0
    .param p1, "secondaryMoveArea"    # Landroid/view/View;

    .line 186
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->mSecondaryMoveArea:Landroid/view/View;

    .line 187
    return-void
.end method
