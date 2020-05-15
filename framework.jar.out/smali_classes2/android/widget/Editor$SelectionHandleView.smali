.class public final Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private final mHandleType:I

.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field private mTouchWordDelta:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 6
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I
    .param p5, "handleType"    # I

    .line 5261
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 5262
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$1;)V

    .line 5247
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 5253
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 5258
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    .line 5263
    iput p5, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    .line 5264
    invoke-static {p1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 5265
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    .line 5266
    return-void
.end method

.method private getHorizontal(Landroid/text/Layout;IZ)F
    .locals 6
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "startHandle"    # Z

    .line 5573
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 5574
    .local v0, "line":I
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p2, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5575
    .local v2, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    .line 5576
    .local v3, "isRtlChar":Z
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    nop

    .line 5577
    .local v1, "isRtlParagraph":Z
    :cond_1
    if-ne v3, v1, :cond_2

    .line 5578
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v4

    .line 5577
    :goto_1
    return v4
.end method

.method private isStartHandle()Z
    .locals 1

    .line 5269
    iget v0, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private positionAndAdjustForCrossingHandles(IZ)V
    .locals 11
    .param p1, "offset"    # I
    .param p2, "fromTouchScreen"    # Z

    .line 5514
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 5515
    .local v0, "anotherHandleOffset":I
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-ge p1, v0, :cond_2

    .line 5516
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-nez v1, :cond_8

    if-gt p1, v0, :cond_8

    .line 5517
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5518
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 5519
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_7

    if-eq p1, v0, :cond_7

    .line 5520
    invoke-virtual {p0, v1, p1}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v3

    .line 5521
    .local v3, "horiz":F
    nop

    .line 5522
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v4

    .line 5521
    xor-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v1, v0, v4}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v4

    .line 5523
    .local v4, "anotherHandleHoriz":F
    iget v5, p0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {p0, v1, v5}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v5

    .line 5524
    .local v5, "currentHoriz":F
    cmpg-float v6, v5, v4

    if-gez v6, :cond_3

    cmpg-float v6, v3, v4

    if-ltz v6, :cond_4

    :cond_3
    cmpl-float v6, v5, v4

    if-lez v6, :cond_7

    cmpl-float v6, v3, v4

    if-lez v6, :cond_7

    .line 5528
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v6

    .line 5529
    .local v6, "currentOffset":I
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 5530
    move v7, v6

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v6, -0x1

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 5531
    .local v7, "offsetToGetRunRange":I
    :goto_1
    invoke-virtual {v1, v7}, Landroid/text/Layout;->getRunRange(I)J

    move-result-wide v8

    .line 5532
    .local v8, "range":J
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 5533
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result p1

    goto :goto_2

    .line 5535
    :cond_6
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p1

    .line 5537
    :goto_2
    invoke-virtual {p0, p1, v2, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    .line 5538
    return-void

    .line 5542
    .end local v3    # "horiz":F
    .end local v4    # "anotherHandleHoriz":F
    .end local v5    # "currentHoriz":F
    .end local v6    # "currentOffset":I
    .end local v7    # "offsetToGetRunRange":I
    .end local v8    # "range":J
    :cond_7
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v3, v0, v4}, Landroid/widget/Editor;->access$7300(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 5544
    .end local v1    # "layout":Landroid/text/Layout;
    :cond_8
    invoke-virtual {p0, p1, v2, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    .line 5545
    return-void
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .line 5548
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 5550
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1

    .line 5551
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v0, v0, v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 5552
    invoke-static {v3}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    .line 5553
    .local v0, "rightEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .end local v0    # "rightEdge":I
    :goto_0
    move v0, v1

    .line 5554
    .local v0, "nearEdge":Z
    goto :goto_2

    .line 5555
    .end local v0    # "nearEdge":Z
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v0, v0, v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    .line 5556
    .local v0, "leftEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .end local v0    # "leftEdge":I
    :goto_1
    move v0, v1

    .line 5558
    .local v0, "nearEdge":Z
    :goto_2
    return v0
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .line 5288
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 5569
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .line 5283
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .line 5274
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p2, v0, :cond_0

    .line 5275
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0

    .line 5277
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected getMagnifierHandleTrigger()I
    .locals 1

    .line 5607
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5608
    const/4 v0, 0x1

    goto :goto_0

    .line 5609
    :cond_0
    const/4 v0, 0x2

    .line 5607
    :goto_0
    return v0
.end method

.method protected getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 12
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    .line 5583
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v0

    .line 5584
    .local v0, "localX":F
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v2

    .line 5585
    .local v2, "primaryOffset":I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5586
    return v2

    .line 5588
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v0, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v4

    .line 5589
    .local v4, "secondaryOffset":I
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v5

    .line 5590
    .local v5, "currentOffset":I
    sub-int v6, v2, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 5591
    .local v6, "primaryDiff":I
    sub-int v7, v4, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 5592
    .local v7, "secondaryDiff":I
    if-ge v6, v7, :cond_1

    .line 5593
    return v2

    .line 5594
    :cond_1
    if-le v6, v7, :cond_2

    .line 5595
    return v4

    .line 5597
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 5598
    move v8, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v8, v5, -0x1

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 5599
    .local v8, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v8}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v9

    .line 5600
    .local v9, "isRtlChar":Z
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    .line 5601
    .local v1, "isRtlParagraph":Z
    :goto_1
    if-ne v9, v1, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    return v3
.end method

.method protected isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 5563
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5564
    .local v0, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 5488
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5490
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 5500
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/widget/Editor$SelectionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 5501
    goto :goto_0

    .line 5505
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->dismissMagnifier()V

    goto :goto_0

    .line 5494
    :pswitch_2
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5495
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 5496
    invoke-virtual {p0, p1}, Landroid/widget/Editor$SelectionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 5497
    nop

    .line 5509
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZZ)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z
    .param p3, "fromTouchScreen"    # Z

    .line 5482
    invoke-super {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 5483
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$7200(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 5484
    return-void
.end method

.method protected updatePosition(FFZ)V
    .locals 26
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "fromTouchScreen"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 5308
    move/from16 v3, p3

    iget-object v4, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 5309
    .local v4, "layout":Landroid/text/Layout;
    if-nez v4, :cond_0

    .line 5312
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v5

    invoke-direct {v0, v5, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 5314
    return-void

    .line 5317
    :cond_0
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 5318
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v5

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    .line 5321
    :cond_1
    const/4 v5, 0x0

    .line 5323
    .local v5, "positionCursor":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    goto :goto_0

    :cond_2
    iget-object v7, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 5324
    .local v7, "anotherHandleOffset":I
    :goto_0
    iget-object v8, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    invoke-static {v8, v4, v9, v2}, Landroid/widget/Editor;->access$6800(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v8

    .line 5325
    .local v8, "currLine":I
    invoke-virtual {v0, v4, v8, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v9

    .line 5327
    .local v9, "initialOffset":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_3

    if-ge v9, v7, :cond_4

    .line 5328
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-nez v10, :cond_5

    if-gt v9, v7, :cond_5

    .line 5331
    :cond_4
    invoke-virtual {v4, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 5332
    invoke-virtual {v0, v4, v8, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v9

    .line 5335
    :cond_5
    move v10, v9

    .line 5336
    .local v10, "offset":I
    iget-object v11, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11, v10}, Landroid/widget/Editor;->access$7000(Landroid/widget/Editor;I)I

    move-result v11

    .line 5337
    .local v11, "wordEnd":I
    iget-object v12, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12, v10}, Landroid/widget/Editor;->access$7100(Landroid/widget/Editor;I)I

    move-result v12

    .line 5339
    .local v12, "wordStart":I
    iget v13, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_6

    .line 5340
    iput v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 5343
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v13

    .line 5344
    .local v13, "currentOffset":I
    invoke-virtual {v0, v4, v13}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v14

    .line 5345
    .local v14, "rtlAtCurrentOffset":Z
    invoke-virtual {v0, v4, v10}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v15

    .line 5346
    .local v15, "atRtl":Z
    invoke-virtual {v4, v10}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v16

    .line 5351
    .local v16, "isLvlBoundary":Z
    if-nez v16, :cond_3a

    if-eqz v14, :cond_8

    if-eqz v15, :cond_7

    goto :goto_2

    .line 5354
    :cond_7
    :goto_1
    move/from16 v21, v5

    goto/16 :goto_1e

    .line 5351
    :cond_8
    :goto_2
    if-nez v14, :cond_9

    if-eqz v15, :cond_9

    goto :goto_1

    .line 5358
    :cond_9
    iget-boolean v6, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    const/4 v2, 0x0

    if-eqz v6, :cond_a

    if-nez v16, :cond_a

    .line 5361
    invoke-direct {v0, v10, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 5362
    const/4 v6, 0x0

    iput v6, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5363
    iput-boolean v2, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 5364
    return-void

    .line 5368
    :cond_a
    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    sub-float v6, v1, v6

    .line 5369
    .local v6, "xDiff":F
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 5370
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    if-ge v8, v2, :cond_b

    const/4 v2, 0x1

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    .local v2, "isExpanding":Z
    :goto_3
    goto :goto_4

    .line 5372
    .end local v2    # "isExpanding":Z
    :cond_c
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    if-le v8, v2, :cond_d

    const/4 v2, 0x1

    goto :goto_4

    :cond_d
    const/4 v2, 0x0

    .line 5374
    .restart local v2    # "isExpanding":Z
    :goto_4
    move/from16 v21, v5

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    .end local v5    # "positionCursor":Z
    .local v21, "positionCursor":Z
    if-ne v15, v5, :cond_f

    .line 5375
    const/4 v5, 0x0

    cmpl-float v18, v6, v5

    if-lez v18, :cond_e

    const/16 v18, 0x1

    goto :goto_5

    :cond_e
    const/16 v18, 0x0

    :goto_5
    or-int v2, v2, v18

    goto :goto_7

    .line 5377
    :cond_f
    const/4 v5, 0x0

    cmpg-float v20, v6, v5

    if-gez v20, :cond_10

    const/4 v5, 0x1

    goto :goto_6

    :cond_10
    const/4 v5, 0x0

    :goto_6
    or-int/2addr v2, v5

    .line 5380
    :goto_7
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 5381
    invoke-direct {v0, v1, v15}, Landroid/widget/Editor$SelectionHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 5382
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    if-nez v5, :cond_11

    goto :goto_8

    .line 5384
    :cond_11
    move/from16 v22, v6

    goto :goto_a

    .line 5383
    :cond_12
    :goto_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_18

    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 5384
    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v15, :cond_13

    move/from16 v22, v6

    const/4 v6, -0x1

    goto :goto_9

    :cond_13
    move/from16 v22, v6

    const/4 v6, 0x1

    .end local v6    # "xDiff":F
    .local v22, "xDiff":F
    :goto_9
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->canScrollHorizontally(I)Z

    move-result v5

    if-eqz v5, :cond_19

    :goto_a
    if-eqz v2, :cond_15

    .line 5385
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_14

    if-lt v10, v13, :cond_16

    .line 5386
    :cond_14
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_15

    if-gt v10, v13, :cond_16

    :cond_15
    if-nez v2, :cond_19

    .line 5391
    :cond_16
    const/4 v5, 0x0

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5392
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-ne v15, v5, :cond_17

    .line 5393
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v5

    goto :goto_b

    .line 5394
    :cond_17
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v5

    .line 5395
    .local v5, "nextOffset":I
    :goto_b
    invoke-direct {v0, v5, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 5396
    return-void

    .line 5400
    .end local v5    # "nextOffset":I
    .end local v22    # "xDiff":F
    .restart local v6    # "xDiff":F
    :cond_18
    move/from16 v22, v6

    .end local v6    # "xDiff":F
    .restart local v22    # "xDiff":F
    :cond_19
    if-eqz v2, :cond_2a

    .line 5402
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_1a

    move v5, v12

    goto :goto_c

    :cond_1a
    move v5, v11

    .line 5403
    .local v5, "wordBoundary":I
    :goto_c
    iget-boolean v6, v0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    if-eqz v6, :cond_1c

    .line 5404
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v8, v6, :cond_1d

    goto :goto_d

    :cond_1b
    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v8, v6, :cond_1d

    .line 5405
    :cond_1c
    :goto_d
    invoke-virtual {v0, v4, v5}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v6

    if-ne v15, v6, :cond_1d

    const/16 v19, 0x1

    goto :goto_e

    :cond_1d
    const/16 v19, 0x0

    :goto_e
    move/from16 v6, v19

    .line 5406
    .local v6, "snapToWord":Z
    if-eqz v6, :cond_26

    .line 5410
    move/from16 v23, v2

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .end local v2    # "isExpanding":Z
    .local v23, "isExpanding":Z
    if-eq v2, v8, :cond_1f

    .line 5411
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 5412
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    goto :goto_f

    :cond_1e
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    :goto_f
    move v5, v2

    .line 5414
    :cond_1f
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 5415
    sub-int v2, v11, v5

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v11, v2

    goto :goto_10

    .line 5416
    :cond_20
    sub-int v2, v5, v12

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v12

    .line 5417
    .local v2, "offsetThresholdToSnap":I
    :goto_10
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v17

    if-eqz v17, :cond_22

    if-le v10, v2, :cond_21

    move/from16 v24, v5

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    .end local v5    # "wordBoundary":I
    .local v24, "wordBoundary":I
    if-ge v8, v5, :cond_23

    goto :goto_11

    .line 5421
    .end local v24    # "wordBoundary":I
    .restart local v5    # "wordBoundary":I
    :cond_21
    move/from16 v24, v5

    .end local v5    # "wordBoundary":I
    .restart local v24    # "wordBoundary":I
    :goto_11
    move v5, v12

    .line 5431
    .end local v2    # "offsetThresholdToSnap":I
    .end local v10    # "offset":I
    .local v5, "offset":I
    :goto_12
    move v10, v5

    goto :goto_13

    .line 5422
    .end local v24    # "wordBoundary":I
    .restart local v2    # "offsetThresholdToSnap":I
    .local v5, "wordBoundary":I
    .restart local v10    # "offset":I
    :cond_22
    move/from16 v24, v5

    .end local v5    # "wordBoundary":I
    .restart local v24    # "wordBoundary":I
    :cond_23
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_25

    if-ge v10, v2, :cond_24

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v8, v5, :cond_25

    .line 5426
    :cond_24
    move v5, v11

    goto :goto_12

    .line 5428
    :cond_25
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    .line 5431
    .end local v10    # "offset":I
    .local v2, "offset":I
    move v10, v2

    goto :goto_13

    .end local v23    # "isExpanding":Z
    .end local v24    # "wordBoundary":I
    .local v2, "isExpanding":Z
    .restart local v5    # "wordBoundary":I
    .restart local v10    # "offset":I
    :cond_26
    move/from16 v23, v2

    move/from16 v24, v5

    .end local v2    # "isExpanding":Z
    .end local v5    # "wordBoundary":I
    .restart local v23    # "isExpanding":Z
    .restart local v24    # "wordBoundary":I
    :goto_13
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_27

    if-lt v10, v9, :cond_28

    .line 5432
    :cond_27
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-nez v2, :cond_29

    if-le v10, v9, :cond_29

    .line 5433
    :cond_28
    invoke-virtual {v0, v4, v10}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v2

    .line 5434
    .local v2, "adjustedX":F
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 5435
    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v5

    sub-float/2addr v5, v2

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5436
    .end local v2    # "adjustedX":F
    goto :goto_14

    .line 5437
    :cond_29
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5439
    :goto_14
    const/4 v5, 0x1

    .line 5440
    .end local v6    # "snapToWord":Z
    .end local v21    # "positionCursor":Z
    .end local v24    # "wordBoundary":I
    .local v5, "positionCursor":Z
    goto/16 :goto_1d

    .line 5441
    .end local v5    # "positionCursor":Z
    .end local v23    # "isExpanding":Z
    .local v2, "isExpanding":Z
    .restart local v21    # "positionCursor":Z
    :cond_2a
    move/from16 v23, v2

    .end local v2    # "isExpanding":Z
    .restart local v23    # "isExpanding":Z
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    sub-float v2, v1, v2

    .line 5442
    invoke-virtual {v0, v4, v8, v2}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v2

    .line 5443
    .local v2, "adjustedOffset":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 5444
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-gt v2, v5, :cond_2c

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v8, v5, :cond_2b

    goto :goto_16

    .line 5445
    :cond_2b
    :goto_15
    const/16 v19, 0x0

    goto :goto_19

    .line 5444
    :cond_2c
    :goto_16
    nop

    .line 5445
    :goto_17
    const/16 v19, 0x1

    goto :goto_19

    :cond_2d
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-lt v2, v5, :cond_2f

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v8, v5, :cond_2e

    goto :goto_18

    :cond_2e
    goto :goto_15

    :cond_2f
    :goto_18
    goto :goto_17

    :goto_19
    move/from16 v5, v19

    .line 5446
    .local v5, "shrinking":Z
    if-eqz v5, :cond_35

    .line 5448
    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-eq v8, v6, :cond_34

    .line 5450
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-eqz v6, :cond_30

    move v6, v12

    goto :goto_1a

    :cond_30
    move v6, v11

    .line 5451
    .end local v10    # "offset":I
    .local v6, "offset":I
    :goto_1a
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_31

    if-lt v6, v9, :cond_32

    .line 5452
    :cond_31
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-nez v10, :cond_33

    if-le v6, v9, :cond_33

    .line 5453
    :cond_32
    invoke-virtual {v0, v4, v6}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v10

    .line 5454
    .local v10, "adjustedX":F
    move/from16 v25, v5

    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 5455
    .end local v5    # "shrinking":Z
    .local v25, "shrinking":Z
    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v5

    sub-float/2addr v5, v10

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5456
    .end local v10    # "adjustedX":F
    goto :goto_1b

    .line 5457
    .end local v25    # "shrinking":Z
    .restart local v5    # "shrinking":Z
    :cond_33
    move/from16 v25, v5

    .end local v5    # "shrinking":Z
    .restart local v25    # "shrinking":Z
    const/4 v5, 0x0

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5462
    :goto_1b
    move v10, v6

    goto :goto_1c

    .line 5460
    .end local v6    # "offset":I
    .end local v25    # "shrinking":Z
    .restart local v5    # "shrinking":Z
    .local v10, "offset":I
    :cond_34
    move/from16 v25, v5

    .end local v5    # "shrinking":Z
    .restart local v25    # "shrinking":Z
    move v5, v2

    .line 5462
    .end local v10    # "offset":I
    .local v5, "offset":I
    move v10, v5

    .end local v5    # "offset":I
    .restart local v10    # "offset":I
    :goto_1c
    const/4 v5, 0x1

    .end local v21    # "positionCursor":Z
    .local v5, "positionCursor":Z
    goto :goto_1d

    .line 5463
    .end local v25    # "shrinking":Z
    .local v5, "shrinking":Z
    .restart local v21    # "positionCursor":Z
    :cond_35
    move/from16 v25, v5

    .end local v5    # "shrinking":Z
    .restart local v25    # "shrinking":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_36

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-lt v2, v5, :cond_37

    .line 5464
    :cond_36
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_38

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-le v2, v5, :cond_38

    .line 5467
    :cond_37
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v5

    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    .line 5468
    invoke-virtual {v0, v4, v6}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5472
    .end local v2    # "adjustedOffset":I
    .end local v25    # "shrinking":Z
    :cond_38
    move/from16 v5, v21

    .end local v21    # "positionCursor":Z
    .local v5, "positionCursor":Z
    :goto_1d
    if-eqz v5, :cond_39

    .line 5473
    iput v8, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    .line 5474
    invoke-direct {v0, v10, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 5476
    :cond_39
    iput v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 5477
    return-void

    .line 5354
    .end local v22    # "xDiff":F
    .end local v23    # "isExpanding":Z
    :cond_3a
    move/from16 v21, v5

    .end local v5    # "positionCursor":Z
    .restart local v21    # "positionCursor":Z
    :goto_1e
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 5355
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5356
    invoke-direct {v0, v10, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 5357
    return-void
.end method

.method protected updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .line 5293
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5294
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 5295
    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 5294
    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 5297
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 5298
    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 5297
    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5300
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->updateDrawable()V

    .line 5301
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$500(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5302
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$6900(Landroid/widget/Editor;)V

    .line 5304
    :cond_1
    return-void
.end method
