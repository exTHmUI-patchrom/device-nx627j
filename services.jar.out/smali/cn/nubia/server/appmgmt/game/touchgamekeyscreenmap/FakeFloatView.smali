.class public Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;
.super Landroid/widget/TextView;
.source "FakeFloatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;
    }
.end annotation


# static fields
.field private static final MIN_SLIDE_DISTANCE:I = 0xa


# instance fields
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

.field private mFingerEventListener:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;

.field private mLeftOrRight:I

.field private mMove:Z

.field private mMovePointRawX:I

.field private mMovePointRawY:I

.field private mMoveRawX:I

.field private mMoveRawY:I

.field private mParentHeight:I

.field private mParentWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mLeftOrRight:I

    .line 25
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->isSecondaryScreen:Z

    .line 87
    const/16 v0, 0x66c

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canMoveWidth:I

    .line 88
    const/16 v0, 0x30a

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canMoveHeight:I

    .line 89
    const/16 v0, 0x96

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToTop:I

    .line 90
    const/16 v0, 0x3a0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToBottom:I

    .line 91
    const/16 v0, 0x13e

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToLeft_l:I

    .line 92
    const/16 v0, 0x7a8

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToRight_r:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mLeftOrRight:I

    .line 25
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->isSecondaryScreen:Z

    .line 87
    const/16 v0, 0x66c

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canMoveWidth:I

    .line 88
    const/16 v0, 0x30a

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canMoveHeight:I

    .line 89
    const/16 v0, 0x96

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToTop:I

    .line 90
    const/16 v0, 0x3a0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToBottom:I

    .line 91
    const/16 v0, 0x13e

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToLeft_l:I

    .line 92
    const/16 v0, 0x7a8

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToRight_r:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mLeftOrRight:I

    .line 25
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->isSecondaryScreen:Z

    .line 87
    const/16 v0, 0x66c

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canMoveWidth:I

    .line 88
    const/16 v0, 0x30a

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canMoveHeight:I

    .line 89
    const/16 v0, 0x96

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToTop:I

    .line 90
    const/16 v0, 0x3a0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToBottom:I

    .line 91
    const/16 v0, 0x13e

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToLeft_l:I

    .line 92
    const/16 v0, 0x7a8

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToRight_r:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mLeftOrRight:I

    .line 25
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->isSecondaryScreen:Z

    .line 87
    const/16 v0, 0x66c

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canMoveWidth:I

    .line 88
    const/16 v0, 0x30a

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canMoveHeight:I

    .line 89
    const/16 v0, 0x96

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToTop:I

    .line 90
    const/16 v0, 0x3a0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToBottom:I

    .line 91
    const/16 v0, 0x13e

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToLeft_l:I

    .line 92
    const/16 v0, 0x7a8

    iput v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToRight_r:I

    .line 42
    return-void
.end method

.method private updatePosition(II)V
    .locals 7
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .line 94
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getLeft()I

    move-result v0

    add-int/2addr v0, p1

    .line 95
    .local v0, "left":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    .line 96
    .local v1, "right":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getTop()I

    move-result v2

    add-int/2addr v2, p2

    .line 97
    .local v2, "top":I
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getBottom()I

    move-result v3

    add-int/2addr v3, p2

    .line 98
    .local v3, "bottom":I
    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->isSecondaryScreen:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 99
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mLeftOrRight:I

    if-nez v4, :cond_0

    .line 100
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToLeft_l:I

    if-ge v0, v4, :cond_2

    .line 101
    iget v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToLeft_l:I

    .line 102
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToLeft_l:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getWidth()I

    move-result v6

    add-int v1, v4, v6

    goto :goto_0

    .line 104
    :cond_0
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mLeftOrRight:I

    if-ne v4, v5, :cond_2

    .line 105
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mParentWidth:I

    div-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_2

    .line 106
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mParentWidth:I

    div-int/lit8 v0, v4, 0x2

    .line 107
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mParentWidth:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getWidth()I

    move-result v6

    add-int v1, v4, v6

    goto :goto_0

    .line 111
    :cond_1
    if-gez v0, :cond_2

    .line 112
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getWidth()I

    move-result v1

    .line 116
    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->isSecondaryScreen:Z

    if-eqz v4, :cond_3

    .line 117
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToTop:I

    if-ge v2, v4, :cond_4

    .line 118
    iget v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToTop:I

    .line 119
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToTop:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getHeight()I

    move-result v6

    add-int v3, v4, v6

    goto :goto_1

    .line 122
    :cond_3
    if-gez v2, :cond_4

    .line 123
    const/4 v2, 0x0

    .line 124
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getHeight()I

    move-result v3

    .line 127
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->isSecondaryScreen:Z

    if-eqz v4, :cond_6

    .line 128
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mLeftOrRight:I

    if-nez v4, :cond_5

    .line 129
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mParentWidth:I

    div-int/lit8 v4, v4, 0x2

    if-le v1, v4, :cond_7

    .line 130
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mParentWidth:I

    div-int/lit8 v1, v4, 0x2

    .line 131
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mParentWidth:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getWidth()I

    move-result v5

    sub-int v0, v4, v5

    goto :goto_2

    .line 133
    :cond_5
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mLeftOrRight:I

    if-ne v4, v5, :cond_7

    .line 134
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToRight_r:I

    if-le v1, v4, :cond_7

    .line 135
    iget v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToRight_r:I

    .line 136
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToRight_r:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getWidth()I

    move-result v5

    sub-int v0, v4, v5

    goto :goto_2

    .line 140
    :cond_6
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mParentWidth:I

    if-le v1, v4, :cond_7

    .line 141
    iget v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mParentWidth:I

    .line 142
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mParentWidth:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getWidth()I

    move-result v5

    sub-int v0, v4, v5

    .line 145
    :cond_7
    :goto_2
    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->isSecondaryScreen:Z

    if-eqz v4, :cond_8

    .line 146
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToBottom:I

    if-le v3, v4, :cond_9

    .line 147
    iget v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToBottom:I

    .line 148
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->canToBottom:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getHeight()I

    move-result v5

    sub-int v2, v4, v5

    goto :goto_3

    .line 151
    :cond_8
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mParentHeight:I

    if-le v3, v4, :cond_9

    .line 152
    iget v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mParentHeight:I

    .line 153
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mParentHeight:I

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getHeight()I

    move-result v5

    sub-int v2, v4, v5

    .line 156
    :cond_9
    :goto_3
    invoke-virtual {p0, v0, v2, v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->layout(IIII)V

    .line 157
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mMovePointRawX:I

    iput v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mDownPointRawX:I

    .line 158
    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mMovePointRawY:I

    iput v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mDownPointRawY:I

    .line 159
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 46
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 47
    .local v0, "parent":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mParentWidth:I

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mParentHeight:I

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 60
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mMovePointRawX:I

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mMovePointRawY:I

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mMoveRawX:I

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mMoveRawY:I

    .line 64
    iget v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mMovePointRawX:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mDownPointRawX:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mMovePointRawY:I

    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mDownPointRawY:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->updatePosition(II)V

    .line 66
    iget v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mMoveRawX:I

    iget v3, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mDownRawX:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v3, 0xa

    if-gt v1, v3, :cond_0

    iget v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mMoveRawY:I

    iget v4, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mDownRawY:I

    sub-int/2addr v1, v4

    .line 67
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_2

    .line 68
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mMove:Z

    if-nez v1, :cond_2

    .line 69
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getId()I

    move-result v3

    invoke-interface {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;->fingerStartMove(I)V

    .line 70
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mMove:Z

    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getId()I

    move-result v3

    invoke-interface {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;->fingerUp(I)V

    .line 78
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mMove:Z

    .line 79
    iput v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mDownRawY:I

    iput v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mDownRawX:I

    .line 80
    iput v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mMoveRawY:I

    iput v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mMoveRawX:I

    goto :goto_0

    .line 51
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mDownPointRawX:I

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mDownPointRawY:I

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mDownRawX:I

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mDownRawY:I

    .line 55
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->getId()I

    move-result v3

    invoke-interface {v1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;->fingerDown(I)V

    .line 83
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

.method public setFingerEventListener(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;)V
    .locals 0
    .param p1, "fingerEventListener"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;

    .line 162
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mFingerEventListener:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;

    .line 163
    return-void
.end method

.method public setFingerLeftOrRight(IZ)V
    .locals 0
    .param p1, "leftOrRight"    # I
    .param p2, "isSecondary"    # Z

    .line 165
    iput p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->mLeftOrRight:I

    .line 166
    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->isSecondaryScreen:Z

    .line 167
    return-void
.end method
