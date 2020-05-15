.class public Lcom/android/internal/widget/MessagingLinearLayout;
.super Landroid/view/ViewGroup;
.source "MessagingLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;,
        Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    }
.end annotation


# instance fields
.field private mMaxDisplayedLines:I

.field private mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

.field private mSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    .line 51
    sget-object v0, Lcom/android/internal/R$styleable;->MessagingLinearLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 56
    .local v2, "N":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 57
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 58
    .local v4, "attr":I
    if-eqz v4, :cond_0

    .end local v4    # "attr":I
    goto :goto_1

    .line 60
    .restart local v4    # "attr":I
    :cond_0
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    .line 56
    .end local v4    # "attr":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method

.method public static isGone(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 240
    return v1

    .line 242
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 243
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-boolean v2, v2, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v2, :cond_1

    .line 245
    return v1

    .line 247
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 208
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 209
    .local v0, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v1, :cond_0

    .line 210
    move-object v1, p2

    check-cast v1, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 211
    .local v1, "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    invoke-interface {v1}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->isHidingAnimated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    const/4 v2, 0x1

    return v2

    .line 215
    .end local v1    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 3

    .line 225
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 220
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 3
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 231
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    .line 232
    .local v0, "copy":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 233
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 235
    :cond_0
    return-object v0
.end method

.method public getMessagingLayout()Lcom/android/internal/widget/MessagingLayout;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object/from16 v0, p0

    .line 147
    iget v1, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    .line 152
    .local v1, "paddingLeft":I
    sub-int v4, p4, p2

    .line 153
    .local v4, "width":I
    iget v5, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    sub-int v5, v4, v5

    .line 155
    .local v5, "childRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getLayoutDirection()I

    move-result v6

    .line 156
    .local v6, "layoutDirection":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v7

    .line 158
    .local v7, "count":I
    iget v8, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    .line 160
    .local v8, "childTop":I
    const/4 v9, 0x1

    .line 161
    .local v9, "first":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->isShown()Z

    move-result v10

    .line 162
    .local v10, "shown":Z
    move v12, v9

    move v9, v8

    const/4 v8, 0x0

    .local v8, "i":I
    .local v9, "childTop":I
    .local v12, "first":Z
    :goto_0
    if-ge v8, v7, :cond_5

    .line 163
    invoke-virtual {v0, v8}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 164
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_0

    .line 165
    nop

    .line 162
    move/from16 v18, v1

    const/4 v1, 0x0

    goto :goto_2

    .line 167
    :cond_0
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 168
    .local v14, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    move-object v15, v13

    check-cast v15, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 170
    .local v15, "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 171
    .local v16, "childWidth":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 174
    .local v11, "childHeight":I
    const/4 v2, 0x1

    if-ne v6, v2, :cond_1

    .line 175
    sub-int v17, v5, v16

    iget v2, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    sub-int v17, v17, v2

    .local v17, "childLeft":I
    goto :goto_1

    .line 177
    .end local v17    # "childLeft":I
    :cond_1
    iget v2, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int v17, v1, v2

    .restart local v17    # "childLeft":I
    :goto_1
    move/from16 v2, v17

    .line 179
    .end local v17    # "childLeft":I
    .local v2, "childLeft":I
    move/from16 v18, v1

    iget-boolean v1, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .end local v1    # "paddingLeft":I
    .local v18, "paddingLeft":I
    if-eqz v1, :cond_3

    .line 180
    if-eqz v10, :cond_2

    iget-boolean v1, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    if-eqz v1, :cond_2

    .line 182
    add-int v1, v2, v16

    iget v3, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->lastVisibleHeight:I

    add-int/2addr v3, v9

    invoke-virtual {v13, v2, v9, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 184
    invoke-interface {v15}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->hideAnimated()V

    .line 186
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    .line 187
    goto :goto_2

    .line 189
    :cond_3
    const/4 v1, 0x0

    const/4 v3, 0x1

    iput-boolean v3, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    .line 190
    iput v11, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->lastVisibleHeight:I

    .line 193
    if-nez v12, :cond_4

    .line 194
    iget v3, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    add-int/2addr v9, v3

    .line 197
    :cond_4
    iget v3, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v3

    .line 198
    add-int v3, v2, v16

    add-int v1, v9, v11

    invoke-virtual {v13, v2, v9, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 200
    iget v1, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v11

    add-int/2addr v9, v1

    .line 202
    const/4 v1, 0x0

    .line 162
    .end local v2    # "childLeft":I
    .end local v11    # "childHeight":I
    .end local v12    # "first":Z
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v15    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .end local v16    # "childWidth":I
    .local v1, "first":Z
    move v12, v1

    .end local v1    # "first":Z
    .restart local v12    # "first":Z
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v18

    goto :goto_0

    .line 204
    .end local v8    # "i":I
    .end local v18    # "paddingLeft":I
    .local v1, "paddingLeft":I
    :cond_5
    move/from16 v18, v1

    .end local v1    # "paddingLeft":I
    .restart local v18    # "paddingLeft":I
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v6, p0

    .line 72
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 73
    .local v0, "targetHeight":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    .end local v0    # "targetHeight":I
    .local v7, "targetHeight":I
    :goto_0
    move v7, v0

    goto :goto_1

    .line 75
    .end local v7    # "targetHeight":I
    .restart local v0    # "targetHeight":I
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0

    .line 80
    .end local v0    # "targetHeight":I
    .restart local v7    # "targetHeight":I
    :goto_1
    iget v0, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    .line 81
    .local v0, "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v8

    .line 83
    .local v8, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v10, 0x1

    if-ge v1, v8, :cond_1

    .line 84
    invoke-virtual {v6, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 85
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 86
    .local v3, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    iput-boolean v10, v3, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .line 83
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 89
    .end local v1    # "i":I
    :cond_1
    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    iget v2, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    add-int/2addr v1, v2

    .line 90
    .local v1, "totalHeight":I
    const/4 v2, 0x1

    .line 91
    .local v2, "first":Z
    iget v3, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    .line 94
    .local v3, "linesRemaining":I
    add-int/lit8 v4, v8, -0x1

    move v14, v0

    move v11, v1

    move v13, v2

    move v12, v3

    .end local v0    # "measuredWidth":I
    .end local v1    # "totalHeight":I
    .end local v2    # "first":Z
    .end local v3    # "linesRemaining":I
    .local v4, "i":I
    .local v11, "totalHeight":I
    .local v12, "linesRemaining":I
    .local v13, "first":Z
    .local v14, "measuredWidth":I
    :goto_3
    move v15, v4

    .end local v4    # "i":I
    .local v15, "i":I
    if-ltz v15, :cond_a

    if-ge v11, v7, :cond_a

    .line 95
    invoke-virtual {v6, v15}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 96
    nop

    .line 94
    move/from16 v19, v8

    const/4 v5, 0x0

    goto/16 :goto_8

    .line 98
    :cond_2
    invoke-virtual {v6, v15}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 99
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v6, v15}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 100
    .local v4, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    const/4 v0, 0x0

    .line 101
    .local v0, "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    .line 102
    .local v1, "spacing":I
    instance-of v2, v5, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v2, :cond_3

    .line 103
    move-object v0, v5

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 104
    invoke-interface {v0, v12}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setMaxDisplayedLines(I)V

    .line 105
    invoke-interface {v0}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getExtraSpacing()I

    move-result v2

    add-int/2addr v1, v2

    .line 107
    .end local v0    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .local v3, "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    :cond_3
    move-object v3, v0

    if-eqz v13, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    move/from16 v16, v0

    .line 108
    .end local v1    # "spacing":I
    .local v16, "spacing":I
    const/16 v17, 0x0

    iget v0, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    sub-int v0, v11, v0

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v0, v1

    add-int v18, v0, v16

    move-object v0, v6

    move-object v1, v5

    move/from16 v2, p1

    move-object v9, v3

    move/from16 v3, v17

    .end local v3    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .local v9, "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    move-object v10, v4

    move/from16 v4, p2

    .end local v4    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .local v10, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    move/from16 v19, v8

    move-object v8, v5

    move/from16 v5, v18

    .end local v5    # "child":Landroid/view/View;
    .local v8, "child":Landroid/view/View;
    .local v19, "count":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 111
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 112
    .local v0, "childHeight":I
    add-int v1, v11, v0

    iget v2, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    add-int v1, v1, v16

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 114
    .local v1, "newHeight":I
    const/4 v2, 0x0

    .line 115
    .local v2, "measureType":I
    if-eqz v9, :cond_5

    .line 116
    invoke-interface {v9}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getMeasuredType()I

    move-result v2

    .line 117
    invoke-interface {v9}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getConsumedLines()I

    move-result v3

    sub-int/2addr v12, v3

    .line 121
    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    if-nez v13, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    .line 122
    .local v4, "isTooSmall":Z
    :goto_5
    const/4 v5, 0x1

    if-eq v2, v5, :cond_8

    if-ne v2, v3, :cond_7

    if-eqz v13, :cond_7

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    move v3, v5

    .line 124
    .local v3, "isShortened":Z
    :goto_7
    if-gt v1, v7, :cond_b

    if-nez v4, :cond_b

    .line 125
    move v11, v1

    .line 126
    nop

    .line 127
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    iget v5, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int v17, v17, v5

    iget v5, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    add-int v17, v17, v5

    iget v5, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    add-int v17, v17, v5

    iget v5, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int v5, v17, v5

    .line 126
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 129
    const/4 v5, 0x0

    iput-boolean v5, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .line 130
    if-nez v3, :cond_b

    if-gtz v12, :cond_9

    .line 131
    goto :goto_9

    .line 136
    :cond_9
    const/4 v0, 0x0

    .line 94
    .end local v1    # "newHeight":I
    .end local v2    # "measureType":I
    .end local v3    # "isShortened":Z
    .end local v4    # "isTooSmall":Z
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .end local v10    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v13    # "first":Z
    .end local v16    # "spacing":I
    .local v0, "first":Z
    move v13, v0

    .end local v0    # "first":Z
    .restart local v13    # "first":Z
    :goto_8
    add-int/lit8 v4, v15, -0x1

    .end local v15    # "i":I
    .local v4, "i":I
    move/from16 v8, v19

    const/4 v10, 0x1

    goto/16 :goto_3

    .line 139
    .end local v4    # "i":I
    .end local v19    # "count":I
    .local v8, "count":I
    :cond_a
    move/from16 v19, v8

    .line 140
    .end local v8    # "count":I
    .restart local v19    # "count":I
    :cond_b
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->resolveSize(II)I

    move-result v0

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 139
    invoke-virtual {v6, v0, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->setMeasuredDimension(II)V

    .line 143
    return-void
.end method

.method public setMaxDisplayedLines(I)V
    .locals 0
    .param p1, "numberLines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 255
    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    .line 256
    return-void
.end method

.method public setMessagingLayout(Lcom/android/internal/widget/MessagingLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/android/internal/widget/MessagingLayout;

    .line 259
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    .line 260
    return-void
.end method
