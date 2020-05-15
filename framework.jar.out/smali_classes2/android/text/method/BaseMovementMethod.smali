.class public Landroid/text/method/BaseMovementMethod;
.super Ljava/lang/Object;
.source "BaseMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBottomLine(Landroid/widget/TextView;)I
    .locals 3
    .param p1, "widget"    # Landroid/widget/TextView;

    .line 407
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method private getCharacterWidth(Landroid/widget/TextView;)I
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;

    .line 419
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private getInnerHeight(Landroid/widget/TextView;)I
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;

    .line 415
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getInnerWidth(Landroid/widget/TextView;)I
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;

    .line 411
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getScrollBoundsLeft(Landroid/widget/TextView;)I
    .locals 7
    .param p1, "widget"    # Landroid/widget/TextView;

    .line 423
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 424
    .local v0, "layout":Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    move-result v1

    .line 425
    .local v1, "topLine":I
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    move-result v2

    .line 426
    .local v2, "bottomLine":I
    if-le v1, v2, :cond_0

    .line 427
    const/4 v3, 0x0

    return v3

    .line 429
    :cond_0
    const v3, 0x7fffffff

    .line 430
    .local v3, "left":I
    move v4, v3

    move v3, v1

    .local v3, "line":I
    .local v4, "left":I
    :goto_0
    if-gt v3, v2, :cond_2

    .line 431
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 432
    .local v5, "lineLeft":I
    if-ge v5, v4, :cond_1

    .line 433
    move v4, v5

    .line 430
    .end local v5    # "lineLeft":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 436
    .end local v3    # "line":I
    :cond_2
    return v4
.end method

.method private getScrollBoundsRight(Landroid/widget/TextView;)I
    .locals 7
    .param p1, "widget"    # Landroid/widget/TextView;

    .line 440
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 441
    .local v0, "layout":Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    move-result v1

    .line 442
    .local v1, "topLine":I
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    move-result v2

    .line 443
    .local v2, "bottomLine":I
    if-le v1, v2, :cond_0

    .line 444
    const/4 v3, 0x0

    return v3

    .line 446
    :cond_0
    const/high16 v3, -0x80000000

    .line 447
    .local v3, "right":I
    move v4, v3

    move v3, v1

    .local v3, "line":I
    .local v4, "right":I
    :goto_0
    if-gt v3, v2, :cond_2

    .line 448
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 449
    .local v5, "lineRight":I
    if-le v5, v4, :cond_1

    .line 450
    move v4, v5

    .line 447
    .end local v5    # "lineRight":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 453
    .end local v3    # "line":I
    :cond_2
    return v4
.end method

.method private getTopLine(Landroid/widget/TextView;)I
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;

    .line 403
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public canSelectArbitrarily()Z
    .locals 1

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method protected end(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method protected getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I
    .locals 2
    .param p1, "buffer"    # Landroid/text/Spannable;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 138
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result v0

    and-int/lit16 v0, v0, -0x601

    .line 140
    .local v0, "metaState":I
    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    and-int/lit16 v1, v1, -0xc2

    return v1
.end method

.method protected handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "movementMetaState"    # I
    .param p5, "event"    # Landroid/view/KeyEvent;

    .line 162
    const/16 v0, 0x1000

    const/4 v1, 0x2

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_0

    .line 233
    :sswitch_0
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->end(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 235
    :cond_0
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 237
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 224
    :sswitch_1
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->home(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 226
    :cond_1
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 228
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 215
    :sswitch_2
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 217
    :cond_2
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 219
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 206
    :sswitch_3
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 208
    :cond_3
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 210
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 176
    :sswitch_4
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 177
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 178
    :cond_4
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 181
    :cond_5
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 183
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 164
    :sswitch_5
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 165
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 166
    :cond_6
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 168
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 169
    :cond_7
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 171
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 197
    :sswitch_6
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 198
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 199
    :cond_8
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 201
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 188
    :sswitch_7
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 189
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 190
    :cond_9
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 192
    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0

    .line 241
    :cond_a
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_7
        0x14 -> :sswitch_6
        0x15 -> :sswitch_5
        0x16 -> :sswitch_4
        0x5c -> :sswitch_3
        0x5d -> :sswitch_2
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method protected home(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 0
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;

    .line 37
    return-void
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method protected leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method protected lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method protected lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 94
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 95
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 99
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/16 v1, 0x9

    if-eqz v0, :cond_1

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "vscroll":F
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .local v1, "hscroll":F
    goto :goto_0

    .line 103
    .end local v0    # "vscroll":F
    .end local v1    # "hscroll":F
    :cond_1
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    .line 104
    .restart local v0    # "vscroll":F
    const/16 v1, 0xa

    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 107
    .restart local v1    # "hscroll":F
    :goto_0
    const/4 v2, 0x0

    .line 108
    .local v2, "handled":Z
    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-gez v4, :cond_2

    .line 109
    neg-float v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {p0, p1, p2, v4}, Landroid/text/method/BaseMovementMethod;->scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v4

    or-int/2addr v2, v4

    goto :goto_1

    .line 110
    :cond_2
    cmpl-float v4, v1, v3

    if-lez v4, :cond_3

    .line 111
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {p0, p1, p2, v4}, Landroid/text/method/BaseMovementMethod;->scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v4

    or-int/2addr v2, v4

    .line 113
    :cond_3
    :goto_1
    cmpg-float v4, v0, v3

    if-gez v4, :cond_4

    .line 114
    neg-float v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0, p1, p2, v3}, Landroid/text/method/BaseMovementMethod;->scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_2

    .line 115
    :cond_4
    cmpl-float v3, v0, v3

    if-lez v3, :cond_5

    .line 116
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0, p1, p2, v3}, Landroid/text/method/BaseMovementMethod;->scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v3

    or-int/2addr v2, v3

    .line 118
    :cond_5
    :goto_2
    return v2

    .line 122
    .end local v0    # "vscroll":F
    .end local v1    # "hscroll":F
    .end local v2    # "handled":Z
    :cond_6
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 41
    invoke-virtual {p0, p2, p4}, Landroid/text/method/BaseMovementMethod;->getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I

    move-result v6

    .line 42
    .local v6, "movementMetaState":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, v6

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    .line 43
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 44
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 45
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .line 47
    :cond_0
    return v0
.end method

.method public onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 52
    invoke-virtual {p0, p2, p3}, Landroid/text/method/BaseMovementMethod;->getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I

    move-result v6

    .line 53
    .local v6, "movementMetaState":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    .line 54
    .local v7, "keyCode":I
    const/4 v0, 0x0

    if-eqz v7, :cond_3

    .line 55
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 56
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    .line 57
    .local v8, "repeat":I
    const/4 v1, 0x0

    .line 58
    .local v1, "handled":Z
    move v9, v1

    .end local v1    # "handled":Z
    .local v0, "i":I
    .local v9, "handled":Z
    :goto_0
    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    if-ge v10, v8, :cond_1

    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move v4, v6

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    goto :goto_1

    .line 62
    :cond_0
    const/4 v9, 0x1

    .line 58
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 64
    .end local v0    # "i":I
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    .line 65
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 66
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .line 68
    :cond_2
    return v9

    .line 70
    .end local v8    # "repeat":I
    .end local v9    # "handled":Z
    :cond_3
    return v0
.end method

.method public onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 0
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "direction"    # I

    .line 80
    return-void
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method protected pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method protected pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method protected rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method protected scrollBottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 626
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 627
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 628
    .local v1, "lineCount":I
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    if-gt v2, v3, :cond_0

    .line 629
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    .line 630
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 629
    invoke-static {p1, v0, v2, v3}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 631
    const/4 v2, 0x1

    return v2

    .line 633
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method protected scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 8
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "amount"    # I

    .line 536
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 537
    .local v0, "layout":Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v1

    .line 538
    .local v1, "innerHeight":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    add-int/2addr v2, v1

    .line 539
    .local v2, "bottom":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    .line 540
    .local v3, "bottomLine":I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    if-ge v4, v5, :cond_0

    .line 544
    add-int/lit8 v3, v3, 0x1

    .line 546
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 547
    .local v4, "limit":I
    if-gt v3, v4, :cond_1

    .line 548
    add-int v6, v3, p3

    sub-int/2addr v6, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 549
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    .line 550
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    sub-int/2addr v7, v1

    .line 549
    invoke-static {p1, v0, v6, v7}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 551
    return v5

    .line 553
    :cond_1
    const/4 v5, 0x0

    return v5
.end method

.method protected scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 3
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "amount"    # I

    .line 467
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsLeft(Landroid/widget/TextView;)I

    move-result v0

    .line 468
    .local v0, "minScrollX":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 469
    .local v1, "scrollX":I
    if-le v1, v0, :cond_0

    .line 470
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getCharacterWidth(Landroid/widget/TextView;)I

    move-result v2

    mul-int/2addr v2, p3

    sub-int v2, v1, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 471
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 472
    const/4 v2, 0x1

    return v2

    .line 474
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method protected scrollLineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 3
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 665
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsRight(Landroid/widget/TextView;)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerWidth(Landroid/widget/TextView;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 666
    .local v0, "maxScrollX":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 667
    .local v1, "scrollX":I
    if-ge v1, v0, :cond_0

    .line 668
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 669
    const/4 v2, 0x1

    return v2

    .line 671
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method protected scrollLineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 3
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 646
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsLeft(Landroid/widget/TextView;)I

    move-result v0

    .line 647
    .local v0, "minScrollX":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 648
    .local v1, "scrollX":I
    if-le v1, v0, :cond_0

    .line 649
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 650
    const/4 v2, 0x1

    return v2

    .line 652
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method protected scrollPageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 7
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 586
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 587
    .local v0, "layout":Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v1

    .line 588
    .local v1, "innerHeight":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v1

    .line 589
    .local v2, "bottom":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    .line 590
    .local v3, "bottomLine":I
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_0

    .line 591
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/lit8 v6, v3, 0x1

    .line 592
    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    sub-int/2addr v6, v1

    .line 591
    invoke-static {p1, v0, v4, v6}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 593
    return v5

    .line 595
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method protected scrollPageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 5
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 566
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 567
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 568
    .local v1, "top":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 569
    .local v2, "topLine":I
    if-ltz v2, :cond_0

    .line 570
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-static {p1, v0, v3, v4}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 571
    const/4 v3, 0x1

    return v3

    .line 573
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method protected scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 3
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "amount"    # I

    .line 488
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsRight(Landroid/widget/TextView;)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerWidth(Landroid/widget/TextView;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 489
    .local v0, "maxScrollX":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 490
    .local v1, "scrollX":I
    if-ge v1, v0, :cond_0

    .line 491
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getCharacterWidth(Landroid/widget/TextView;)I

    move-result v2

    mul-int/2addr v2, p3

    add-int/2addr v2, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 492
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 493
    const/4 v2, 0x1

    return v2

    .line 495
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method protected scrollTop(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 3
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 608
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 609
    .local v0, "layout":Landroid/text/Layout;
    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    .line 610
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 611
    const/4 v1, 0x1

    return v1

    .line 613
    :cond_0
    return v2
.end method

.method protected scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 6
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "amount"    # I

    .line 509
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 510
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    .line 511
    .local v1, "top":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 512
    .local v2, "topLine":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 515
    add-int/lit8 v2, v2, -0x1

    .line 517
    :cond_0
    const/4 v3, 0x0

    if-ltz v2, :cond_1

    .line 518
    sub-int v4, v2, p3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 519
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-static {p1, v0, v3, v4}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 520
    return v5

    .line 522
    :cond_1
    return v3
.end method

.method protected top(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 277
    const/4 v0, 0x0

    return v0
.end method
