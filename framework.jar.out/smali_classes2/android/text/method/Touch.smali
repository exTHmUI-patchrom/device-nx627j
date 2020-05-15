.class public Landroid/text/method/Touch;
.super Ljava/lang/Object;
.source "Touch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/Touch$DragState;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .locals 3
    .param p0, "widget"    # Landroid/widget/TextView;
    .param p1, "buffer"    # Landroid/text/Spannable;

    .line 185
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/Touch$DragState;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .line 186
    .local v0, "ds":[Landroid/text/method/Touch$DragState;
    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v2

    iget v1, v1, Landroid/text/method/Touch$DragState;->mScrollX:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public static getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .locals 3
    .param p0, "widget"    # Landroid/widget/TextView;
    .param p1, "buffer"    # Landroid/text/Spannable;

    .line 194
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/Touch$DragState;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .line 195
    .local v0, "ds":[Landroid/text/method/Touch$DragState;
    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v2

    iget v1, v1, Landroid/text/method/Touch$DragState;->mScrollY:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public static onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p0, "widget"    # Landroid/widget/TextView;
    .param p1, "buffer"    # Landroid/text/Spannable;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 119
    :pswitch_0
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v2, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .line 121
    .local v0, "ds":[Landroid/text/method/Touch$DragState;
    array-length v3, v0

    if-lez v3, :cond_a

    .line 122
    aget-object v3, v0, v2

    iget-boolean v3, v3, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    if-nez v3, :cond_1

    .line 123
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 125
    .local v3, "slop":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aget-object v5, v0, v2

    iget v5, v5, Landroid/text/method/Touch$DragState;->mX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-gez v4, :cond_0

    .line 126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aget-object v5, v0, v2

    iget v5, v5, Landroid/text/method/Touch$DragState;->mY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 127
    :cond_0
    aget-object v4, v0, v2

    iput-boolean v1, v4, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    .line 131
    .end local v3    # "slop":I
    :cond_1
    aget-object v3, v0, v2

    iget-boolean v3, v3, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    if-eqz v3, :cond_a

    .line 132
    aget-object v3, v0, v2

    iput-boolean v1, v3, Landroid/text/method/Touch$DragState;->mUsed:Z

    .line 133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    and-int/2addr v3, v1

    if-nez v3, :cond_3

    .line 134
    invoke-static {p1, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eq v3, v1, :cond_3

    const/16 v3, 0x800

    .line 136
    invoke-static {p1, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v1

    .line 141
    .local v3, "cap":Z
    :goto_1
    if-eqz v3, :cond_4

    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aget-object v5, v0, v2

    iget v5, v5, Landroid/text/method/Touch$DragState;->mX:F

    sub-float/2addr v4, v5

    .line 145
    .local v4, "dx":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    aget-object v6, v0, v2

    iget v6, v6, Landroid/text/method/Touch$DragState;->mY:F

    sub-float/2addr v5, v6

    .local v5, "dy":F
    goto :goto_2

    .line 147
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    :cond_4
    aget-object v4, v0, v2

    iget v4, v4, Landroid/text/method/Touch$DragState;->mX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    .line 148
    .restart local v4    # "dx":F
    aget-object v5, v0, v2

    iget v5, v5, Landroid/text/method/Touch$DragState;->mY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    .line 150
    .restart local v5    # "dy":F
    :goto_2
    aget-object v6, v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, v6, Landroid/text/method/Touch$DragState;->mX:F

    .line 151
    aget-object v6, v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, v6, Landroid/text/method/Touch$DragState;->mY:F

    .line 153
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    float-to-int v7, v4

    add-int/2addr v6, v7

    .line 154
    .local v6, "nx":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v7

    float-to-int v8, v5

    add-int/2addr v7, v8

    .line 156
    .local v7, "ny":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    .line 157
    .local v8, "padding":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    .line 159
    .local v9, "layout":Landroid/text/Layout;
    invoke-virtual {v9}, Landroid/text/Layout;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v11

    sub-int/2addr v11, v8

    sub-int/2addr v10, v11

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 160
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 162
    .end local v7    # "ny":I
    .local v2, "ny":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v7

    .line 163
    .local v7, "oldX":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v10

    .line 165
    .local v10, "oldY":I
    invoke-static {p0, v9, v6, v2}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 168
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v11

    if-ne v7, v11, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v11

    if-eq v10, v11, :cond_6

    .line 169
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 172
    :cond_6
    return v1

    .line 106
    .end local v0    # "ds":[Landroid/text/method/Touch$DragState;
    .end local v2    # "ny":I
    .end local v3    # "cap":Z
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v6    # "nx":I
    .end local v7    # "oldX":I
    .end local v8    # "padding":I
    .end local v9    # "layout":Landroid/text/Layout;
    .end local v10    # "oldY":I
    :pswitch_1
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v2, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .line 108
    .restart local v0    # "ds":[Landroid/text/method/Touch$DragState;
    move v3, v2

    .local v3, "i":I
    :goto_3
    array-length v4, v0

    if-ge v3, v4, :cond_7

    .line 109
    aget-object v4, v0, v3

    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 112
    .end local v3    # "i":I
    :cond_7
    array-length v3, v0

    if-lez v3, :cond_8

    aget-object v3, v0, v2

    iget-boolean v3, v3, Landroid/text/method/Touch$DragState;->mUsed:Z

    if-eqz v3, :cond_8

    .line 113
    return v1

    .line 115
    :cond_8
    return v2

    .line 94
    .end local v0    # "ds":[Landroid/text/method/Touch$DragState;
    :pswitch_2
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v2, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .line 96
    .restart local v0    # "ds":[Landroid/text/method/Touch$DragState;
    move v3, v2

    .restart local v3    # "i":I
    :goto_4
    array-length v4, v0

    if-ge v3, v4, :cond_9

    .line 97
    aget-object v4, v0, v3

    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 100
    .end local v3    # "i":I
    :cond_9
    new-instance v3, Landroid/text/method/Touch$DragState;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 101
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/text/method/Touch$DragState;-><init>(FFII)V

    const/16 v4, 0x11

    .line 100
    invoke-interface {p1, v3, v2, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 103
    return v1

    .line 177
    .end local v0    # "ds":[Landroid/text/method/Touch$DragState;
    :cond_a
    :goto_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V
    .locals 12
    .param p0, "widget"    # Landroid/widget/TextView;
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 38
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    .local v0, "horizontalPadding":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    .line 41
    .local v1, "availableWidth":I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 42
    .local v2, "top":I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v3

    .line 43
    .local v3, "a":Landroid/text/Layout$Alignment;
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 46
    .local v4, "ltr":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 47
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 48
    .local v5, "verticalPadding":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    add-int/2addr v6, p3

    sub-int/2addr v6, v5

    invoke-virtual {p1, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    .line 50
    .local v6, "bottom":I
    const v7, 0x7fffffff

    .line 51
    .local v7, "left":I
    const/4 v8, 0x0

    .line 53
    .local v8, "right":I
    move v9, v8

    move v8, v7

    move v7, v2

    .local v7, "i":I
    .local v8, "left":I
    .local v9, "right":I
    :goto_1
    if-gt v7, v6, :cond_1

    .line 54
    int-to-float v10, v8

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    float-to-int v8, v10

    .line 55
    int-to-float v10, v9

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v9, v10

    .line 53
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 57
    .end local v5    # "verticalPadding":I
    .end local v6    # "bottom":I
    .end local v7    # "i":I
    :cond_1
    goto :goto_2

    .line 58
    .end local v8    # "left":I
    .end local v9    # "right":I
    :cond_2
    const/4 v8, 0x0

    .line 59
    .restart local v8    # "left":I
    move v9, v1

    .restart local v9    # "right":I
    :goto_2
    move v5, v9

    .line 62
    .end local v9    # "right":I
    .local v5, "right":I
    sub-int v6, v5, v8

    .line 64
    .local v6, "actualWidth":I
    if-ge v6, v1, :cond_8

    .line 65
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v3, v7, :cond_3

    .line 66
    sub-int v7, v1, v6

    div-int/lit8 v7, v7, 0x2

    sub-int p2, v8, v7

    goto :goto_3

    .line 67
    :cond_3
    if-eqz v4, :cond_4

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-eq v3, v7, :cond_6

    :cond_4
    if-nez v4, :cond_5

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v3, v7, :cond_6

    :cond_5
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v3, v7, :cond_7

    .line 72
    :cond_6
    sub-int v7, v1, v6

    sub-int p2, v8, v7

    goto :goto_3

    .line 74
    :cond_7
    move p2, v8

    goto :goto_3

    .line 77
    :cond_8
    sub-int v7, v5, v1

    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 78
    invoke-static {p2, v8}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 81
    :goto_3
    invoke-virtual {p0, p2, p3}, Landroid/widget/TextView;->scrollTo(II)V

    .line 82
    return-void
.end method
