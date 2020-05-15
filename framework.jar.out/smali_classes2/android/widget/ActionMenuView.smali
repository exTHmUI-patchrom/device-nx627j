.class public Landroid/widget/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuView$LayoutParams;,
        Landroid/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field private mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 80
    .local v1, "density":F
    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    .line 81
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 82
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 83
    iput v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    .line 84
    return-void
.end method

.method static synthetic access$200(Landroid/widget/ActionMenuView;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuView;

    .line 47
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuView;

    .line 47
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 15
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    move-object v0, p0

    move/from16 v1, p2

    .line 400
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView$LayoutParams;

    .line 402
    .local v2, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int v3, v3, p4

    .line 404
    .local v3, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 405
    .local v4, "childHeightMode":I
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 407
    .local v5, "childHeightSpec":I
    instance-of v6, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_0

    .line 408
    move-object v6, v0

    check-cast v6, Lcom/android/internal/view/menu/ActionMenuItemView;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 409
    .local v6, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v7

    .line 411
    .local v9, "hasText":Z
    :goto_1
    const/4 v10, 0x0

    .line 412
    .local v10, "cellsUsed":I
    if-lez v1, :cond_4

    const/4 v11, 0x2

    if-eqz v9, :cond_2

    if-lt v1, v11, :cond_4

    .line 413
    :cond_2
    mul-int v12, p1, v1

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 415
    .local v12, "childWidthSpec":I
    invoke-virtual {v0, v12, v5}, Landroid/view/View;->measure(II)V

    .line 417
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 418
    .local v13, "measuredWidth":I
    div-int v10, v13, p1

    .line 419
    rem-int v14, v13, p1

    if-eqz v14, :cond_3

    add-int/lit8 v10, v10, 0x1

    .line 420
    :cond_3
    if-eqz v9, :cond_4

    if-ge v10, v11, :cond_4

    const/4 v10, 0x2

    .line 423
    .end local v12    # "childWidthSpec":I
    .end local v13    # "measuredWidth":I
    :cond_4
    iget-boolean v11, v2, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v9, :cond_5

    move v7, v8

    nop

    .line 424
    .local v7, "expandable":Z
    :cond_5
    iput-boolean v7, v2, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 426
    iput v10, v2, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 427
    mul-int v8, v10, p1

    .line 428
    .local v8, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v11, v5}, Landroid/view/View;->measure(II)V

    .line 430
    return v10
.end method

.method private onMeasureExactFormat(II)V
    .locals 44
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 174
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 175
    .local v1, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 176
    .local v2, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 178
    .local v3, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 179
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 181
    .local v5, "heightPadding":I
    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Landroid/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    .line 184
    .local v6, "itemHeightSpec":I
    sub-int/2addr v2, v4

    .line 187
    iget v8, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    div-int v8, v2, v8

    .line 188
    .local v8, "cellCount":I
    iget v9, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    rem-int v9, v2, v9

    .line 190
    .local v9, "cellSizeRemaining":I
    const/4 v10, 0x0

    if-nez v8, :cond_0

    .line 192
    invoke-virtual {v0, v2, v10}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 193
    return-void

    .line 196
    :cond_0
    iget v11, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    div-int v12, v9, v8

    add-int/2addr v11, v12

    .line 198
    .local v11, "cellSize":I
    move v12, v8

    .line 199
    .local v12, "cellsRemaining":I
    const/4 v13, 0x0

    .line 200
    .local v13, "maxChildHeight":I
    const/4 v14, 0x0

    .line 201
    .local v14, "maxCellsUsed":I
    const/4 v15, 0x0

    .line 202
    .local v15, "expandableItemCount":I
    const/16 v16, 0x0

    .line 203
    .local v16, "visibleItemCount":I
    const/16 v17, 0x0

    .line 206
    .local v17, "hasOverflow":Z
    const-wide/16 v18, 0x0

    .line 208
    .local v18, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v10

    .line 209
    .local v10, "childCount":I
    move/from16 v21, v3

    move v3, v13

    move/from16 v13, v16

    move/from16 v16, v15

    move v15, v14

    move v14, v12

    const/4 v12, 0x0

    .local v3, "maxChildHeight":I
    .local v12, "i":I
    .local v13, "visibleItemCount":I
    .local v14, "cellsRemaining":I
    .local v15, "maxCellsUsed":I
    .local v16, "expandableItemCount":I
    .local v21, "heightSize":I
    :goto_0
    move/from16 v22, v4

    .end local v4    # "widthPadding":I
    .local v22, "widthPadding":I
    if-ge v12, v10, :cond_8

    .line 210
    invoke-virtual {v0, v12}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 211
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    move/from16 v23, v8

    const/16 v8, 0x8

    .end local v8    # "cellCount":I
    .local v23, "cellCount":I
    if-ne v7, v8, :cond_1

    .line 209
    .end local v4    # "child":Landroid/view/View;
    move/from16 v26, v5

    move/from16 v24, v9

    goto/16 :goto_4

    .line 213
    .restart local v4    # "child":Landroid/view/View;
    :cond_1
    instance-of v7, v4, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 214
    .local v7, "isGeneratedItem":Z
    add-int/lit8 v13, v13, 0x1

    .line 216
    if-eqz v7, :cond_2

    .line 219
    iget v8, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v24, v9

    iget v9, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    .end local v9    # "cellSizeRemaining":I
    .local v24, "cellSizeRemaining":I
    move/from16 v25, v13

    const/4 v13, 0x0

    invoke-virtual {v4, v8, v13, v9, v13}, Landroid/view/View;->setPadding(IIII)V

    .end local v13    # "visibleItemCount":I
    .local v25, "visibleItemCount":I
    goto :goto_1

    .line 222
    .end local v24    # "cellSizeRemaining":I
    .end local v25    # "visibleItemCount":I
    .restart local v9    # "cellSizeRemaining":I
    .restart local v13    # "visibleItemCount":I
    :cond_2
    move/from16 v24, v9

    move/from16 v25, v13

    const/4 v13, 0x0

    .end local v9    # "cellSizeRemaining":I
    .end local v13    # "visibleItemCount":I
    .restart local v24    # "cellSizeRemaining":I
    .restart local v25    # "visibleItemCount":I
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/ActionMenuView$LayoutParams;

    .line 223
    .local v8, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iput-boolean v13, v8, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 224
    iput v13, v8, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 225
    iput v13, v8, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 226
    iput-boolean v13, v8, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 227
    iput v13, v8, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 228
    iput v13, v8, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 229
    if-eqz v7, :cond_3

    move-object v9, v4

    check-cast v9, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    iput-boolean v9, v8, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 232
    iget-boolean v9, v8, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    move v9, v14

    .line 234
    .local v9, "cellsAvailable":I
    :goto_3
    invoke-static {v4, v11, v9, v6, v5}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v13

    .line 237
    .local v13, "cellsUsed":I
    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 238
    move/from16 v26, v5

    iget-boolean v5, v8, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .end local v5    # "heightPadding":I
    .local v26, "heightPadding":I
    if-eqz v5, :cond_5

    add-int/lit8 v16, v16, 0x1

    .line 239
    :cond_5
    iget-boolean v5, v8, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_6

    const/16 v17, 0x1

    .line 241
    :cond_6
    sub-int/2addr v14, v13

    .line 242
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 243
    const/4 v5, 0x1

    if-ne v13, v5, :cond_7

    shl-int/2addr v5, v12

    move/from16 v28, v3

    move-object/from16 v27, v4

    int-to-long v3, v5

    .end local v3    # "maxChildHeight":I
    .end local v4    # "child":Landroid/view/View;
    .local v27, "child":Landroid/view/View;
    .local v28, "maxChildHeight":I
    or-long v3, v18, v3

    .line 209
    .end local v7    # "isGeneratedItem":Z
    .end local v8    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v9    # "cellsAvailable":I
    .end local v13    # "cellsUsed":I
    .end local v18    # "smallestItemsAt":J
    .end local v27    # "child":Landroid/view/View;
    .local v3, "smallestItemsAt":J
    move-wide/from16 v18, v3

    move/from16 v13, v25

    move/from16 v3, v28

    goto :goto_4

    .end local v28    # "maxChildHeight":I
    .local v3, "maxChildHeight":I
    .restart local v18    # "smallestItemsAt":J
    :cond_7
    move/from16 v28, v3

    move/from16 v13, v25

    .end local v25    # "visibleItemCount":I
    .local v13, "visibleItemCount":I
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v5, v26

    move/from16 v7, p2

    goto/16 :goto_0

    .line 248
    .end local v12    # "i":I
    .end local v23    # "cellCount":I
    .end local v24    # "cellSizeRemaining":I
    .end local v26    # "heightPadding":I
    .restart local v5    # "heightPadding":I
    .local v8, "cellCount":I
    .local v9, "cellSizeRemaining":I
    :cond_8
    move/from16 v26, v5

    move/from16 v23, v8

    move/from16 v24, v9

    .end local v5    # "heightPadding":I
    .end local v8    # "cellCount":I
    .end local v9    # "cellSizeRemaining":I
    .restart local v23    # "cellCount":I
    .restart local v24    # "cellSizeRemaining":I
    .restart local v26    # "heightPadding":I
    const/4 v4, 0x2

    if-eqz v17, :cond_9

    if-ne v13, v4, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    .line 253
    .local v5, "centerSingleExpandedItem":Z
    :goto_5
    const/4 v7, 0x0

    .line 254
    .local v7, "needsExpansion":Z
    :goto_6
    if-lez v16, :cond_14

    if-lez v14, :cond_14

    .line 255
    const v12, 0x7fffffff

    .line 256
    .local v12, "minCells":I
    const-wide/16 v27, 0x0

    .line 257
    .local v27, "minCellsAt":J
    const/16 v25, 0x0

    .line 258
    .local v25, "minCellsItemCount":I
    move v8, v12

    move/from16 v4, v25

    const/4 v12, 0x0

    .end local v25    # "minCellsItemCount":I
    .local v4, "minCellsItemCount":I
    .local v8, "minCells":I
    .local v12, "i":I
    :goto_7
    move v9, v12

    .end local v12    # "i":I
    .local v9, "i":I
    if-ge v9, v10, :cond_d

    .line 259
    invoke-virtual {v0, v9}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 260
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    move/from16 v31, v7

    move-object/from16 v7, v25

    check-cast v7, Landroid/widget/ActionMenuView$LayoutParams;

    .line 263
    .local v7, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .local v31, "needsExpansion":Z
    move-object/from16 v32, v12

    iget-boolean v12, v7, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .end local v12    # "child":Landroid/view/View;
    .local v32, "child":Landroid/view/View;
    if-nez v12, :cond_a

    .line 258
    .end local v7    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v32    # "child":Landroid/view/View;
    move/from16 v34, v13

    goto :goto_8

    .line 266
    .restart local v7    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v32    # "child":Landroid/view/View;
    :cond_a
    iget v12, v7, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v12, v8, :cond_b

    .line 267
    iget v8, v7, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 268
    move/from16 v33, v8

    const/4 v12, 0x1

    shl-int v8, v12, v9

    .end local v8    # "minCells":I
    .local v33, "minCells":I
    move/from16 v34, v13

    int-to-long v12, v8

    .line 269
    .end local v13    # "visibleItemCount":I
    .end local v27    # "minCellsAt":J
    .local v12, "minCellsAt":J
    .local v34, "visibleItemCount":I
    const/4 v4, 0x1

    .line 258
    move-wide/from16 v27, v12

    move/from16 v8, v33

    goto :goto_8

    .line 270
    .end local v12    # "minCellsAt":J
    .end local v33    # "minCells":I
    .end local v34    # "visibleItemCount":I
    .restart local v8    # "minCells":I
    .restart local v13    # "visibleItemCount":I
    .restart local v27    # "minCellsAt":J
    :cond_b
    move/from16 v34, v13

    .end local v13    # "visibleItemCount":I
    .restart local v34    # "visibleItemCount":I
    iget v12, v7, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v12, v8, :cond_c

    .line 271
    const/4 v12, 0x1

    shl-int v13, v12, v9

    int-to-long v12, v13

    or-long v12, v27, v12

    .line 272
    .end local v27    # "minCellsAt":J
    .restart local v12    # "minCellsAt":J
    add-int/lit8 v4, v4, 0x1

    .line 258
    .end local v7    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v32    # "child":Landroid/view/View;
    move-wide/from16 v27, v12

    .end local v12    # "minCellsAt":J
    .restart local v27    # "minCellsAt":J
    :cond_c
    :goto_8
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "i":I
    .local v12, "i":I
    move/from16 v7, v31

    move/from16 v13, v34

    goto :goto_7

    .line 277
    .end local v12    # "i":I
    .end local v31    # "needsExpansion":Z
    .end local v34    # "visibleItemCount":I
    .local v7, "needsExpansion":Z
    .restart local v13    # "visibleItemCount":I
    :cond_d
    move/from16 v31, v7

    move/from16 v34, v13

    .end local v7    # "needsExpansion":Z
    .end local v13    # "visibleItemCount":I
    .restart local v31    # "needsExpansion":Z
    .restart local v34    # "visibleItemCount":I
    or-long v18, v18, v27

    .line 279
    if-le v4, v14, :cond_e

    .line 308
    .end local v4    # "minCellsItemCount":I
    .end local v8    # "minCells":I
    .end local v27    # "minCellsAt":J
    move/from16 v37, v5

    goto/16 :goto_d

    .line 282
    .restart local v4    # "minCellsItemCount":I
    .restart local v8    # "minCells":I
    .restart local v27    # "minCellsAt":J
    :cond_e
    add-int/lit8 v8, v8, 0x1

    .line 284
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9
    if-ge v7, v10, :cond_13

    .line 285
    invoke-virtual {v0, v7}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 286
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/ActionMenuView$LayoutParams;

    .line 287
    .local v12, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move/from16 v35, v4

    const/4 v13, 0x1

    shl-int v4, v13, v7

    .end local v4    # "minCellsItemCount":I
    .local v35, "minCellsItemCount":I
    move/from16 v36, v14

    int-to-long v13, v4

    .end local v14    # "cellsRemaining":I
    .local v36, "cellsRemaining":I
    and-long v13, v27, v13

    const-wide/16 v29, 0x0

    cmp-long v4, v13, v29

    if-nez v4, :cond_10

    .line 289
    iget v4, v12, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v4, v8, :cond_f

    const/4 v4, 0x1

    shl-int v13, v4, v7

    int-to-long v13, v13

    or-long v18, v18, v13

    .line 284
    .end local v5    # "centerSingleExpandedItem":Z
    .end local v9    # "child":Landroid/view/View;
    .end local v12    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v36    # "cellsRemaining":I
    .restart local v14    # "cellsRemaining":I
    .local v37, "centerSingleExpandedItem":Z
    :cond_f
    move/from16 v37, v5

    move/from16 v14, v36

    goto :goto_c

    .line 293
    .end local v14    # "cellsRemaining":I
    .end local v37    # "centerSingleExpandedItem":Z
    .restart local v5    # "centerSingleExpandedItem":Z
    .restart local v9    # "child":Landroid/view/View;
    .restart local v12    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v36    # "cellsRemaining":I
    :cond_10
    const/4 v4, 0x1

    if-eqz v5, :cond_12

    iget-boolean v13, v12, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v13, :cond_12

    move/from16 v14, v36

    if-ne v14, v4, :cond_11

    .line 295
    .end local v36    # "cellsRemaining":I
    .restart local v14    # "cellsRemaining":I
    iget v4, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int/2addr v4, v11

    iget v13, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v37, v5

    const/4 v5, 0x0

    invoke-virtual {v9, v4, v5, v13, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_a

    .line 297
    :cond_11
    move/from16 v37, v5

    .end local v5    # "centerSingleExpandedItem":Z
    .restart local v37    # "centerSingleExpandedItem":Z
    :goto_a
    goto :goto_b

    .end local v14    # "cellsRemaining":I
    .end local v37    # "centerSingleExpandedItem":Z
    .restart local v5    # "centerSingleExpandedItem":Z
    .restart local v36    # "cellsRemaining":I
    :cond_12
    move/from16 v37, v5

    move/from16 v14, v36

    .end local v5    # "centerSingleExpandedItem":Z
    .end local v36    # "cellsRemaining":I
    .restart local v14    # "cellsRemaining":I
    .restart local v37    # "centerSingleExpandedItem":Z
    :goto_b
    iget v4, v12, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v12, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 298
    iput-boolean v5, v12, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 299
    add-int/lit8 v14, v14, -0x1

    .line 284
    .end local v9    # "child":Landroid/view/View;
    .end local v12    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :goto_c
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v35

    move/from16 v5, v37

    goto :goto_9

    .line 302
    .end local v7    # "i":I
    .end local v35    # "minCellsItemCount":I
    .end local v37    # "centerSingleExpandedItem":Z
    .restart local v4    # "minCellsItemCount":I
    .restart local v5    # "centerSingleExpandedItem":Z
    :cond_13
    move/from16 v35, v4

    move/from16 v37, v5

    .end local v4    # "minCellsItemCount":I
    .end local v5    # "centerSingleExpandedItem":Z
    .restart local v35    # "minCellsItemCount":I
    .restart local v37    # "centerSingleExpandedItem":Z
    const/4 v7, 0x1

    .line 303
    .end local v8    # "minCells":I
    .end local v27    # "minCellsAt":J
    .end local v31    # "needsExpansion":Z
    .end local v35    # "minCellsItemCount":I
    .local v7, "needsExpansion":Z
    nop

    .line 253
    move/from16 v13, v34

    const/4 v4, 0x2

    goto/16 :goto_6

    .line 308
    .end local v34    # "visibleItemCount":I
    .end local v37    # "centerSingleExpandedItem":Z
    .restart local v5    # "centerSingleExpandedItem":Z
    .restart local v13    # "visibleItemCount":I
    :cond_14
    move/from16 v37, v5

    move/from16 v31, v7

    move/from16 v34, v13

    .end local v5    # "centerSingleExpandedItem":Z
    .end local v7    # "needsExpansion":Z
    .end local v13    # "visibleItemCount":I
    .end local v18    # "smallestItemsAt":J
    .local v4, "smallestItemsAt":J
    .restart local v31    # "needsExpansion":Z
    .restart local v34    # "visibleItemCount":I
    .restart local v37    # "centerSingleExpandedItem":Z
    :goto_d
    move-wide/from16 v4, v18

    if-nez v17, :cond_15

    move/from16 v13, v34

    const/4 v7, 0x1

    if-ne v13, v7, :cond_16

    .end local v34    # "visibleItemCount":I
    .restart local v13    # "visibleItemCount":I
    const/4 v7, 0x1

    goto :goto_e

    .end local v13    # "visibleItemCount":I
    .restart local v34    # "visibleItemCount":I
    :cond_15
    move/from16 v13, v34

    .end local v34    # "visibleItemCount":I
    .restart local v13    # "visibleItemCount":I
    :cond_16
    const/4 v7, 0x0

    .line 309
    .local v7, "singleItem":Z
    :goto_e
    if-lez v14, :cond_24

    const-wide/16 v8, 0x0

    cmp-long v12, v4, v8

    if-eqz v12, :cond_24

    add-int/lit8 v8, v13, -0x1

    if-lt v14, v8, :cond_18

    if-nez v7, :cond_18

    const/4 v8, 0x1

    if-le v15, v8, :cond_17

    goto :goto_f

    .line 365
    :cond_17
    move/from16 v40, v7

    move/from16 v39, v13

    goto/16 :goto_15

    .line 311
    :cond_18
    :goto_f
    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v8

    int-to-float v8, v8

    .line 313
    .local v8, "expandCount":F
    if-nez v7, :cond_1a

    .line 315
    const-wide/16 v18, 0x1

    and-long v18, v4, v18

    const-wide/16 v27, 0x0

    cmp-long v9, v18, v27

    if-eqz v9, :cond_19

    .line 316
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/ActionMenuView$LayoutParams;

    .line 317
    .restart local v12    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iget-boolean v9, v12, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v9, :cond_19

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    .line 319
    .end local v12    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_19
    add-int/lit8 v9, v10, -0x1

    const/4 v12, 0x1

    shl-int v9, v12, v9

    move/from16 v39, v13

    int-to-long v12, v9

    .end local v13    # "visibleItemCount":I
    .local v39, "visibleItemCount":I
    and-long/2addr v12, v4

    const-wide/16 v18, 0x0

    cmp-long v9, v12, v18

    if-eqz v9, :cond_1b

    .line 320
    add-int/lit8 v9, v10, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/ActionMenuView$LayoutParams;

    .line 321
    .local v9, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iget-boolean v12, v9, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v12, :cond_1b

    const/high16 v12, 0x3f000000    # 0.5f

    sub-float/2addr v8, v12

    .end local v9    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    goto :goto_10

    .line 325
    .end local v39    # "visibleItemCount":I
    .restart local v13    # "visibleItemCount":I
    :cond_1a
    move/from16 v39, v13

    .end local v13    # "visibleItemCount":I
    .restart local v39    # "visibleItemCount":I
    :cond_1b
    :goto_10
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-lez v9, :cond_1c

    .line 326
    mul-int v9, v14, v11

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v9, v9

    goto :goto_11

    :cond_1c
    const/4 v9, 0x0

    .line 328
    .local v9, "extraPixels":I
    :goto_11
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_12
    if-ge v12, v10, :cond_23

    .line 329
    move/from16 v40, v7

    const/4 v13, 0x1

    shl-int v7, v13, v12

    .end local v7    # "singleItem":Z
    .local v40, "singleItem":Z
    move/from16 v41, v8

    int-to-long v7, v7

    .end local v8    # "expandCount":F
    .local v41, "expandCount":F
    and-long/2addr v7, v4

    const-wide/16 v18, 0x0

    cmp-long v7, v7, v18

    if-nez v7, :cond_1d

    goto :goto_13

    .line 331
    :cond_1d
    invoke-virtual {v0, v12}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 332
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/ActionMenuView$LayoutParams;

    .line 333
    .local v8, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    instance-of v13, v7, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v13, :cond_1f

    .line 335
    iput v9, v8, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 336
    const/4 v13, 0x1

    iput-boolean v13, v8, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 337
    if-nez v12, :cond_1e

    iget-boolean v13, v8, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v13, :cond_1e

    .line 340
    neg-int v13, v9

    const/16 v20, 0x2

    div-int/lit8 v13, v13, 0x2

    iput v13, v8, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 342
    :cond_1e
    const/16 v31, 0x1

    .line 328
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :goto_13
    const/16 v20, 0x2

    goto :goto_14

    .line 343
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_1f
    iget-boolean v13, v8, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v13, :cond_20

    .line 344
    iput v9, v8, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 345
    const/4 v13, 0x1

    iput-boolean v13, v8, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 346
    neg-int v13, v9

    const/16 v20, 0x2

    div-int/lit8 v13, v13, 0x2

    iput v13, v8, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 347
    const/16 v31, 0x1

    goto :goto_14

    .line 352
    :cond_20
    const/16 v20, 0x2

    if-eqz v12, :cond_21

    .line 353
    div-int/lit8 v13, v9, 0x2

    iput v13, v8, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 355
    :cond_21
    add-int/lit8 v13, v10, -0x1

    if-eq v12, v13, :cond_22

    .line 356
    div-int/lit8 v13, v9, 0x2

    iput v13, v8, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 328
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_22
    :goto_14
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v40

    move/from16 v8, v41

    goto :goto_12

    .line 361
    .end local v12    # "i":I
    .end local v40    # "singleItem":Z
    .end local v41    # "expandCount":F
    .local v7, "singleItem":Z
    .local v8, "expandCount":F
    :cond_23
    move/from16 v40, v7

    move/from16 v41, v8

    .end local v7    # "singleItem":Z
    .end local v8    # "expandCount":F
    .restart local v40    # "singleItem":Z
    .restart local v41    # "expandCount":F
    const/4 v14, 0x0

    .end local v9    # "extraPixels":I
    .end local v41    # "expandCount":F
    goto :goto_15

    .line 365
    .end local v39    # "visibleItemCount":I
    .end local v40    # "singleItem":Z
    .restart local v7    # "singleItem":Z
    .restart local v13    # "visibleItemCount":I
    :cond_24
    move/from16 v40, v7

    move/from16 v39, v13

    .end local v7    # "singleItem":Z
    .end local v13    # "visibleItemCount":I
    .restart local v39    # "visibleItemCount":I
    .restart local v40    # "singleItem":Z
    :goto_15
    if-eqz v31, :cond_26

    .line 366
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_16
    move/from16 v8, v38

    .end local v38    # "i":I
    .local v8, "i":I
    if-ge v8, v10, :cond_26

    .line 367
    invoke-virtual {v0, v8}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 368
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/ActionMenuView$LayoutParams;

    .line 370
    .local v12, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iget-boolean v13, v12, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v13, :cond_25

    .line 366
    .end local v9    # "child":Landroid/view/View;
    .end local v12    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-wide/from16 v42, v4

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_17

    .line 372
    .restart local v9    # "child":Landroid/view/View;
    .restart local v12    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_25
    iget v13, v12, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr v13, v11

    iget v7, v12, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v13, v7

    .line 373
    .local v13, "width":I
    move-wide/from16 v42, v4

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v13, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .end local v4    # "smallestItemsAt":J
    .local v42, "smallestItemsAt":J
    invoke-virtual {v9, v4, v6}, Landroid/view/View;->measure(II)V

    .line 366
    .end local v9    # "child":Landroid/view/View;
    .end local v12    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v13    # "width":I
    :goto_17
    add-int/lit8 v38, v8, 0x1

    .end local v8    # "i":I
    .restart local v38    # "i":I
    move-wide/from16 v4, v42

    goto :goto_16

    .line 378
    .end local v38    # "i":I
    .end local v42    # "smallestItemsAt":J
    .restart local v4    # "smallestItemsAt":J
    :cond_26
    move-wide/from16 v42, v4

    const/high16 v7, 0x40000000    # 2.0f

    .end local v4    # "smallestItemsAt":J
    .restart local v42    # "smallestItemsAt":J
    if-eq v1, v7, :cond_27

    .line 379
    move v4, v3

    .end local v21    # "heightSize":I
    .local v4, "heightSize":I
    goto :goto_18

    .line 382
    .end local v4    # "heightSize":I
    .restart local v21    # "heightSize":I
    :cond_27
    move/from16 v4, v21

    .end local v21    # "heightSize":I
    .restart local v4    # "heightSize":I
    :goto_18
    invoke-virtual {v0, v2, v4}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 383
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 605
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 708
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 711
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 735
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 47
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2

    .line 578
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 580
    .local v0, "params":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 581
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 47
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 586
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 591
    if-eqz p1, :cond_2

    .line 592
    instance-of v0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    .line 593
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/widget/ActionMenuView$LayoutParams;)V

    goto :goto_0

    .line 594
    :cond_0
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_1

    .line 596
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 598
    :cond_1
    return-object v0

    .line 600
    .end local v0    # "result":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2

    .line 610
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 611
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 612
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .line 639
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    .line 640
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 641
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 642
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v2, Landroid/widget/ActionMenuView$MenuBuilderCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 643
    new-instance v1, Landroid/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 644
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 645
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_0

    .line 646
    iget-object v2, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V

    .line 645
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 647
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 648
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 651
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 562
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 563
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .line 110
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .line 718
    if-nez p1, :cond_0

    .line 719
    const/4 v0, 0x0

    return v0

    .line 721
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 722
    .local v0, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 723
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 724
    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    .line 725
    move-object v3, v0

    check-cast v3, Landroid/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 727
    :cond_1
    if-lez p1, :cond_2

    instance-of v3, v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 728
    move-object v3, v1

    check-cast v3, Landroid/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    .line 730
    :cond_2
    return v2
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 686
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 627
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 628
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 617
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 701
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 696
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 568
    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 124
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 129
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 131
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 134
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 541
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 542
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    .line 543
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 25
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object/from16 v0, p0

    .line 435
    iget-boolean v3, v0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-nez v3, :cond_0

    .line 436
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 437
    return-void

    .line 440
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v3

    .line 441
    .local v3, "childCount":I
    sub-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    .line 442
    .local v6, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 443
    .local v7, "dividerWidth":I
    const/4 v8, 0x0

    .line 444
    .local v8, "overflowWidth":I
    const/4 v9, 0x0

    .line 445
    .local v9, "nonOverflowWidth":I
    const/4 v10, 0x0

    .line 446
    .local v10, "nonOverflowCount":I
    sub-int v11, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    .line 447
    .local v11, "widthRemaining":I
    const/4 v12, 0x0

    .line 448
    .local v12, "hasOverflow":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->isLayoutRtl()Z

    move-result v13

    .line 449
    .local v13, "isLayoutRtl":Z
    move v15, v11

    move v11, v9

    move v9, v8

    const/4 v8, 0x0

    .local v8, "i":I
    .local v9, "overflowWidth":I
    .local v11, "nonOverflowWidth":I
    .local v15, "widthRemaining":I
    :goto_0
    if-ge v8, v3, :cond_6

    .line 450
    invoke-virtual {v0, v8}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 451
    .local v14, "v":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 452
    nop

    .line 449
    move/from16 v19, v6

    move/from16 v18, v13

    goto :goto_2

    .line 455
    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/ActionMenuView$LayoutParams;

    .line 456
    .local v4, "p":Landroid/widget/ActionMenuView$LayoutParams;
    iget-boolean v5, v4, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_4

    .line 457
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 458
    .end local v9    # "overflowWidth":I
    .local v5, "overflowWidth":I
    invoke-virtual {v0, v8}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 459
    add-int/2addr v5, v7

    .line 462
    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 465
    .local v9, "height":I
    if-eqz v13, :cond_3

    .line 466
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v17

    move/from16 v18, v13

    iget v13, v4, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .end local v13    # "isLayoutRtl":Z
    .local v18, "isLayoutRtl":Z
    add-int v17, v17, v13

    .line 467
    .local v17, "l":I
    add-int v13, v17, v5

    .local v13, "r":I
    goto :goto_1

    .line 469
    .end local v17    # "l":I
    .end local v18    # "isLayoutRtl":Z
    .local v13, "isLayoutRtl":Z
    :cond_3
    move/from16 v18, v13

    .end local v13    # "isLayoutRtl":Z
    .restart local v18    # "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v17

    sub-int v13, v13, v17

    iget v1, v4, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v13, v1

    .line 470
    .local v13, "r":I
    sub-int v17, v13, v5

    .restart local v17    # "l":I
    :goto_1
    move/from16 v1, v17

    .line 472
    .end local v17    # "l":I
    .local v1, "l":I
    div-int/lit8 v17, v9, 0x2

    sub-int v2, v6, v17

    .line 473
    .local v2, "t":I
    move/from16 v19, v6

    add-int v6, v2, v9

    .line 474
    .local v6, "b":I
    .local v19, "midVertical":I
    invoke-virtual {v14, v1, v2, v13, v6}, Landroid/view/View;->layout(IIII)V

    .line 476
    sub-int/2addr v15, v5

    .line 477
    const/4 v1, 0x1

    .line 478
    .end local v2    # "t":I
    .end local v6    # "b":I
    .end local v9    # "height":I
    .end local v12    # "hasOverflow":Z
    .end local v13    # "r":I
    .local v1, "hasOverflow":Z
    nop

    .line 449
    move v12, v1

    move v9, v5

    goto :goto_2

    .line 479
    .end local v1    # "hasOverflow":Z
    .end local v5    # "overflowWidth":I
    .end local v18    # "isLayoutRtl":Z
    .end local v19    # "midVertical":I
    .local v6, "midVertical":I
    .local v9, "overflowWidth":I
    .restart local v12    # "hasOverflow":Z
    .local v13, "isLayoutRtl":Z
    :cond_4
    move/from16 v19, v6

    move/from16 v18, v13

    .end local v6    # "midVertical":I
    .end local v13    # "isLayoutRtl":Z
    .restart local v18    # "isLayoutRtl":Z
    .restart local v19    # "midVertical":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v4, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v4, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 480
    .local v1, "size":I
    add-int/2addr v11, v1

    .line 481
    sub-int/2addr v15, v1

    .line 482
    invoke-virtual {v0, v8}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 483
    add-int/2addr v11, v7

    .line 485
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 449
    .end local v1    # "size":I
    .end local v4    # "p":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v14    # "v":Landroid/view/View;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move/from16 v13, v18

    move/from16 v6, v19

    goto :goto_0

    .line 489
    .end local v8    # "i":I
    .end local v18    # "isLayoutRtl":Z
    .end local v19    # "midVertical":I
    .restart local v6    # "midVertical":I
    .restart local v13    # "isLayoutRtl":Z
    :cond_6
    move/from16 v19, v6

    move/from16 v18, v13

    .end local v6    # "midVertical":I
    .end local v13    # "isLayoutRtl":Z
    .restart local v18    # "isLayoutRtl":Z
    .restart local v19    # "midVertical":I
    const/4 v14, 0x1

    if-ne v3, v14, :cond_7

    if-nez v12, :cond_7

    .line 491
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 492
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 493
    .local v2, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 494
    .local v4, "height":I
    sub-int v8, p4, p2

    div-int/lit8 v8, v8, 0x2

    .line 495
    .local v8, "midHorizontal":I
    div-int/lit8 v13, v2, 0x2

    sub-int v13, v8, v13

    .line 496
    .local v13, "l":I
    div-int/lit8 v14, v4, 0x2

    sub-int v14, v19, v14

    .line 497
    .local v14, "t":I
    add-int v5, v13, v2

    move/from16 v20, v2

    add-int v2, v14, v4

    .end local v2    # "width":I
    .local v20, "width":I
    invoke-virtual {v1, v13, v14, v5, v2}, Landroid/view/View;->layout(IIII)V

    .line 498
    return-void

    .line 501
    .end local v1    # "v":Landroid/view/View;
    .end local v4    # "height":I
    .end local v8    # "midHorizontal":I
    .end local v13    # "l":I
    .end local v14    # "t":I
    .end local v20    # "width":I
    :cond_7
    if-eqz v12, :cond_8

    const/4 v14, 0x0

    nop

    :cond_8
    sub-int v1, v10, v14

    .line 502
    .local v1, "spacerCount":I
    if-lez v1, :cond_9

    div-int v14, v15, v1

    goto :goto_3

    :cond_9
    const/4 v14, 0x0

    :goto_3
    const/4 v2, 0x0

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 504
    .local v4, "spacerSize":I
    if-eqz v18, :cond_d

    .line 505
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v5, v8

    .line 506
    .local v5, "startRight":I
    nop

    .local v2, "i":I
    :goto_4
    if-ge v2, v3, :cond_c

    .line 507
    invoke-virtual {v0, v2}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 508
    .local v8, "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/ActionMenuView$LayoutParams;

    .line 509
    .local v13, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v14

    move/from16 v21, v1

    const/16 v1, 0x8

    if-eq v14, v1, :cond_b

    .end local v1    # "spacerCount":I
    .local v21, "spacerCount":I
    iget-boolean v1, v13, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v1, :cond_a

    .line 510
    nop

    .line 506
    move/from16 v22, v7

    move/from16 v23, v9

    goto :goto_5

    .line 513
    :cond_a
    iget v1, v13, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v1

    .line 514
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 515
    .local v1, "width":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 516
    .local v14, "height":I
    div-int/lit8 v16, v14, 0x2

    sub-int v6, v19, v16

    .line 517
    .local v6, "t":I
    move/from16 v22, v7

    sub-int v7, v5, v1

    .end local v7    # "dividerWidth":I
    .local v22, "dividerWidth":I
    move/from16 v23, v9

    add-int v9, v6, v14

    .end local v9    # "overflowWidth":I
    .local v23, "overflowWidth":I
    invoke-virtual {v8, v7, v6, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 518
    iget v7, v13, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v7, v1

    add-int/2addr v7, v4

    sub-int/2addr v5, v7

    .end local v1    # "width":I
    .end local v6    # "t":I
    .end local v8    # "v":Landroid/view/View;
    .end local v13    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v14    # "height":I
    goto :goto_5

    .line 506
    .end local v22    # "dividerWidth":I
    .end local v23    # "overflowWidth":I
    .restart local v7    # "dividerWidth":I
    .restart local v9    # "overflowWidth":I
    :cond_b
    move/from16 v22, v7

    move/from16 v23, v9

    .end local v7    # "dividerWidth":I
    .end local v9    # "overflowWidth":I
    .restart local v22    # "dividerWidth":I
    .restart local v23    # "overflowWidth":I
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v21

    move/from16 v7, v22

    move/from16 v9, v23

    goto :goto_4

    .line 520
    .end local v2    # "i":I
    .end local v5    # "startRight":I
    .end local v21    # "spacerCount":I
    .end local v22    # "dividerWidth":I
    .end local v23    # "overflowWidth":I
    .local v1, "spacerCount":I
    .restart local v7    # "dividerWidth":I
    .restart local v9    # "overflowWidth":I
    :cond_c
    move/from16 v21, v1

    move/from16 v22, v7

    move/from16 v23, v9

    .end local v1    # "spacerCount":I
    .end local v7    # "dividerWidth":I
    .end local v9    # "overflowWidth":I
    .restart local v21    # "spacerCount":I
    .restart local v22    # "dividerWidth":I
    .restart local v23    # "overflowWidth":I
    goto :goto_8

    .line 521
    .end local v21    # "spacerCount":I
    .end local v22    # "dividerWidth":I
    .end local v23    # "overflowWidth":I
    .restart local v1    # "spacerCount":I
    .restart local v7    # "dividerWidth":I
    .restart local v9    # "overflowWidth":I
    :cond_d
    move/from16 v21, v1

    move/from16 v22, v7

    move/from16 v23, v9

    .end local v1    # "spacerCount":I
    .end local v7    # "dividerWidth":I
    .end local v9    # "overflowWidth":I
    .restart local v21    # "spacerCount":I
    .restart local v22    # "dividerWidth":I
    .restart local v23    # "overflowWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v1

    .line 522
    .local v1, "startLeft":I
    nop

    .restart local v2    # "i":I
    :goto_6
    if-ge v2, v3, :cond_10

    .line 523
    invoke-virtual {v0, v2}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 524
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/ActionMenuView$LayoutParams;

    .line 525
    .local v6, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_f

    iget-boolean v7, v6, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v7, :cond_e

    .line 526
    goto :goto_7

    .line 529
    :cond_e
    iget v7, v6, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    .line 530
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 531
    .local v7, "width":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 532
    .local v9, "height":I
    div-int/lit8 v13, v9, 0x2

    sub-int v13, v19, v13

    .line 533
    .local v13, "t":I
    add-int v14, v1, v7

    add-int v8, v13, v9

    invoke-virtual {v5, v1, v13, v14, v8}, Landroid/view/View;->layout(IIII)V

    .line 534
    iget v8, v6, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v4

    add-int/2addr v1, v8

    .line 522
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v7    # "width":I
    .end local v9    # "height":I
    .end local v13    # "t":I
    :cond_f
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 537
    .end local v1    # "startLeft":I
    .end local v2    # "i":I
    :cond_10
    :goto_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 143
    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    .line 144
    .local v0, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    .line 146
    iget-boolean v1, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eq v0, v1, :cond_1

    .line 147
    iput v3, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 152
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 153
    .local v1, "widthSize":I
    iget-boolean v4, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v1, v4, :cond_2

    .line 154
    iput v1, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 155
    iget-object v4, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 158
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v2

    .line 159
    .local v2, "childCount":I
    iget-boolean v4, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_3

    if-lez v2, :cond_3

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_2

    .line 163
    :cond_3
    move v4, v3

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 164
    invoke-virtual {p0, v4}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 165
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/ActionMenuView$LayoutParams;

    .line 166
    .local v6, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iput v3, v6, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v3, v6, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 163
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 168
    .end local v4    # "i":I
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 170
    :goto_2
    return-void
.end method

.method public peekMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    .line 668
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z

    .line 740
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 741
    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 659
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 660
    iput-object p2, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 661
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 137
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 138
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 551
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 552
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 553
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .line 573
    iput-boolean p1, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    .line 574
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 94
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    .line 95
    iput p1, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    .line 96
    if-nez p1, :cond_0

    .line 97
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 102
    :cond_1
    :goto_0
    return-void
.end method

.method public setPresenter(Landroid/widget/ActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/widget/ActionMenuPresenter;

    .line 118
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 119
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 120
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 677
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
