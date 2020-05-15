.class public final Lcom/android/internal/view/menu/IconMenuView;
.super Landroid/view/ViewGroup;
.source "IconMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/IconMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/IconMenuView$SavedState;
    }
.end annotation


# static fields
.field private static final ITEM_CAPTION_CYCLE_DELAY:I = 0x3e8


# instance fields
.field private mAnimations:I

.field private mHasStaleChildren:Z

.field private mHorizontalDivider:Landroid/graphics/drawable/Drawable;

.field private mHorizontalDividerHeight:I

.field private mHorizontalDividerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mItemBackground:Landroid/graphics/drawable/Drawable;

.field private mLastChildrenCaptionMode:Z

.field private mLayout:[I

.field private mLayoutNumRows:I

.field private mMaxItems:I

.field private mMaxItemsPerRow:I

.field private mMaxRows:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBeingLongpressed:Z

.field private mMoreIcon:Landroid/graphics/drawable/Drawable;

.field private mNumActualItemsShown:I

.field private mRowHeight:I

.field private mVerticalDivider:Landroid/graphics/drawable/Drawable;

.field private mVerticalDividerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalDividerWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 129
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    .line 131
    sget-object v1, Lcom/android/internal/R$styleable;->IconMenuView:[I

    .line 132
    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 133
    .local v1, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x40

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mRowHeight:I

    .line 134
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    .line 135
    const/4 v4, 0x4

    const/4 v5, 0x6

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItems:I

    .line 136
    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    .line 137
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 138
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    sget-object v5, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v5, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 141
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/view/menu/IconMenuView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    .line 142
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    .line 144
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 145
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mAnimations:I

    .line 147
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    const/4 v4, -0x1

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    .line 152
    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    if-ne v2, v4, :cond_0

    iput v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    .line 158
    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    if-ne v2, v4, :cond_1

    iput v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    .line 161
    :cond_1
    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setWillNotDraw(Z)V

    .line 167
    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/IconMenuView;->setFocusableInTouchMode(Z)V

    .line 169
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setDescendantFocusability(I)V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/IconMenuView;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/IconMenuView;

    .line 51
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private calculateItemFittingMetadata(I)V
    .locals 7
    .param p1, "width"    # I

    .line 658
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    .line 659
    .local v0, "maxNumItemsPerRow":I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v1

    .line 660
    .local v1, "numItems":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 661
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .line 663
    .local v3, "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    .line 664
    move v4, v0

    .local v4, "curNumItemsPerRow":I
    :goto_1
    if-lez v4, :cond_1

    .line 667
    iget v5, v3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->desiredWidth:I

    div-int v6, p1, v4

    if-ge v5, v6, :cond_0

    .line 669
    iput v4, v3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    .line 670
    goto :goto_2

    .line 665
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 660
    .end local v3    # "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .end local v4    # "curNumItemsPerRow":I
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 674
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private doItemsFit()Z
    .locals 10

    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, "itemPos":I
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    .line 255
    .local v1, "layout":[I
    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 256
    .local v2, "numRows":I
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .local v0, "row":I
    .local v4, "itemPos":I
    :goto_0
    const/4 v5, 0x1

    if-ge v0, v2, :cond_3

    .line 257
    aget v6, v1, v0

    .line 263
    .local v6, "numItemsOnRow":I
    if-ne v6, v5, :cond_0

    .line 264
    add-int/lit8 v4, v4, 0x1

    .line 265
    goto :goto_2

    .line 268
    :cond_0
    move v5, v4

    move v4, v6

    .local v4, "itemsOnRowCounter":I
    .local v5, "itemPos":I
    :goto_1
    if-lez v4, :cond_2

    .line 270
    add-int/lit8 v7, v5, 0x1

    .local v7, "itemPos":I
    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 271
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .line 272
    .local v8, "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    iget v9, v8, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    if-ge v9, v6, :cond_1

    .line 273
    return v3

    .line 269
    .end local v5    # "child":Landroid/view/View;
    .end local v8    # "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 268
    move v5, v7

    goto :goto_1

    .line 256
    .end local v4    # "itemsOnRowCounter":I
    .end local v6    # "numItemsOnRow":I
    .end local v7    # "itemPos":I
    .local v5, "itemPos":I
    :cond_2
    move v4, v5

    .end local v5    # "itemPos":I
    .local v4, "itemPos":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "row":I
    :cond_3
    return v5
.end method

.method private layoutItems(I)V
    .locals 3
    .param p1, "width"    # I

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v0

    .line 183
    .local v0, "numItems":I
    if-nez v0, :cond_0

    .line 184
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 185
    return-void

    .line 189
    :cond_0
    int-to-float v1, v0

    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 190
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 196
    .local v1, "curNumRows":I
    :goto_0
    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    if-gt v1, v2, :cond_3

    .line 197
    invoke-direct {p0, v1, v0}, Lcom/android/internal/view/menu/IconMenuView;->layoutItemsUsingGravity(II)V

    .line 199
    if-lt v1, v0, :cond_1

    .line 201
    goto :goto_1

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/view/menu/IconMenuView;->doItemsFit()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    goto :goto_1

    .line 196
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_3
    :goto_1
    return-void
.end method

.method private layoutItemsUsingGravity(II)V
    .locals 6
    .param p1, "numRows"    # I
    .param p2, "numItems"    # I

    .line 221
    div-int v0, p2, p1

    .line 222
    .local v0, "numBaseItemsPerRow":I
    rem-int v1, p2, p1

    .line 229
    .local v1, "numLeftoverItems":I
    sub-int v2, p1, v1

    .line 231
    .local v2, "rowsThatGetALeftoverItem":I
    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    .line 232
    .local v3, "layout":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 233
    aput v0, v3, v4

    .line 236
    if-lt v4, v2, :cond_0

    .line 237
    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 232
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 241
    .end local v4    # "i":I
    :cond_1
    iput p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 242
    return-void
.end method

.method private positionChildren(II)V
    .locals 20
    .param p1, "menuWidth"    # I
    .param p2, "menuHeight"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 327
    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 328
    :cond_0
    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 331
    :cond_1
    iget v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 332
    .local v2, "numRows":I
    add-int/lit8 v3, v2, -0x1

    .line 333
    .local v3, "numRowsMinus1":I
    iget-object v4, v0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    .line 336
    .local v4, "numItemsForRow":[I
    const/4 v5, 0x0

    .line 338
    .local v5, "itemPos":I
    const/4 v6, 0x0

    .line 343
    .local v6, "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    const/4 v7, 0x0

    .line 347
    .local v7, "itemTop":F
    iget v8, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    add-int/lit8 v9, v2, -0x1

    mul-int/2addr v8, v9

    sub-int v8, p2, v8

    int-to-float v8, v8

    int-to-float v10, v2

    div-float/2addr v8, v10

    .line 350
    .local v8, "itemHeight":F
    move v11, v7

    move v7, v5

    const/4 v5, 0x0

    .local v5, "row":I
    .local v7, "itemPos":I
    .local v11, "itemTop":F
    :goto_0
    if-ge v5, v2, :cond_6

    .line 352
    const/4 v12, 0x0

    .line 355
    .local v12, "itemLeft":F
    iget v13, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    aget v14, v4, v5

    add-int/lit8 v14, v14, -0x1

    mul-int/2addr v13, v14

    sub-int v13, v1, v13

    int-to-float v13, v13

    aget v14, v4, v5

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 358
    .local v13, "itemWidth":F
    move v14, v12

    move-object v12, v6

    const/4 v6, 0x0

    .local v6, "itemPosOnRow":I
    .local v12, "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .local v14, "itemLeft":F
    :goto_1
    aget v15, v4, v5

    if-ge v6, v15, :cond_3

    .line 360
    invoke-virtual {v0, v7}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 361
    .local v15, "child":Landroid/view/View;
    float-to-int v10, v13

    move/from16 v16, v2

    const/high16 v2, 0x40000000    # 2.0f

    .end local v2    # "numRows":I
    .local v16, "numRows":I
    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move-object/from16 v17, v4

    float-to-int v4, v8

    .line 362
    .end local v4    # "numItemsForRow":[I
    .local v17, "numItemsForRow":[I
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 361
    invoke-virtual {v15, v10, v2}, Landroid/view/View;->measure(II)V

    .line 365
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .line 366
    float-to-int v2, v14

    iput v2, v12, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->left:I

    .line 367
    add-float v2, v14, v13

    float-to-int v2, v2

    iput v2, v12, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    .line 368
    float-to-int v2, v11

    iput v2, v12, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->top:I

    .line 369
    add-float v2, v11, v8

    float-to-int v2, v2

    iput v2, v12, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->bottom:I

    .line 372
    add-float/2addr v14, v13

    .line 373
    add-int/lit8 v7, v7, 0x1

    .line 376
    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 377
    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/Rect;

    float-to-int v10, v14

    move/from16 v18, v7

    float-to-int v7, v11

    .end local v7    # "itemPos":I
    .local v18, "itemPos":I
    iget v9, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    int-to-float v9, v9

    add-float/2addr v9, v14

    float-to-int v9, v9

    move-object/from16 v19, v12

    add-float v12, v11, v8

    .end local v12    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .local v19, "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    float-to-int v12, v12

    invoke-direct {v4, v10, v7, v9, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 385
    .end local v18    # "itemPos":I
    .end local v19    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .restart local v7    # "itemPos":I
    .restart local v12    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_2
    move/from16 v18, v7

    move-object/from16 v19, v12

    .end local v7    # "itemPos":I
    .end local v12    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .restart local v18    # "itemPos":I
    .restart local v19    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :goto_2
    iget v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    int-to-float v2, v2

    add-float/2addr v14, v2

    .line 358
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v16

    move-object/from16 v4, v17

    move/from16 v7, v18

    move-object/from16 v12, v19

    goto :goto_1

    .line 389
    .end local v6    # "itemPosOnRow":I
    .end local v15    # "child":Landroid/view/View;
    .end local v16    # "numRows":I
    .end local v17    # "numItemsForRow":[I
    .end local v18    # "itemPos":I
    .end local v19    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .restart local v2    # "numRows":I
    .restart local v4    # "numItemsForRow":[I
    .restart local v7    # "itemPos":I
    .restart local v12    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_3
    move/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "numRows":I
    .end local v4    # "numItemsForRow":[I
    .restart local v16    # "numRows":I
    .restart local v17    # "numItemsForRow":[I
    if-eqz v12, :cond_4

    .line 390
    iput v1, v12, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    .line 393
    :cond_4
    add-float/2addr v11, v8

    .line 396
    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    if-ge v5, v3, :cond_5

    .line 397
    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/Rect;

    float-to-int v6, v11

    iget v9, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    int-to-float v9, v9

    add-float/2addr v9, v11

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-direct {v4, v10, v6, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    iget v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    int-to-float v2, v2

    add-float/2addr v11, v2

    goto :goto_3

    .line 350
    :cond_5
    const/4 v10, 0x0

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object v6, v12

    move/from16 v2, v16

    move-object/from16 v4, v17

    goto/16 :goto_0

    .line 403
    .end local v5    # "row":I
    .end local v12    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .end local v13    # "itemWidth":F
    .end local v14    # "itemLeft":F
    .end local v16    # "numRows":I
    .end local v17    # "numItemsForRow":[I
    .restart local v2    # "numRows":I
    .restart local v4    # "numItemsForRow":[I
    .local v6, "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_6
    move/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "numRows":I
    .end local v4    # "numItemsForRow":[I
    .restart local v16    # "numRows":I
    .restart local v17    # "numItemsForRow":[I
    return-void
.end method

.method private setChildrenCaptionMode(Z)V
    .locals 2
    .param p1, "shortcut"    # Z

    .line 644
    iput-boolean p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLastChildrenCaptionMode:Z

    .line 646
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 647
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/IconMenuItemView;

    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/IconMenuItemView;->setCaptionMode(Z)V

    .line 646
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 649
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setCycleShortcutCaptionMode(Z)V
    .locals 1
    .param p1, "cycleShortcutAndNormal"    # Z

    .line 593
    if-nez p1, :cond_0

    .line 598
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 599
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    .line 600
    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    goto :goto_0

    .line 605
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    .line 608
    :goto_0
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 479
    instance-of v0, p1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    return v0
.end method

.method createMoreItemView()Lcom/android/internal/view/menu/IconMenuItemView;
    .locals 6

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 293
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 295
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090070

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/IconMenuItemView;

    .line 298
    .local v2, "itemView":Lcom/android/internal/view/menu/IconMenuItemView;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 299
    .local v3, "r":Landroid/content/res/Resources;
    const v4, 0x10403cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/view/menu/IconMenuItemView;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 303
    new-instance v4, Lcom/android/internal/view/menu/IconMenuView$1;

    invoke-direct {v4, p0}, Lcom/android/internal/view/menu/IconMenuView$1;-><init>(Lcom/android/internal/view/menu/IconMenuView;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/view/menu/IconMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    return-object v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 538
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    .line 539
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 540
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 541
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 542
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 544
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    if-eqz v0, :cond_1

    .line 547
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    .line 548
    return v1

    .line 552
    :cond_1
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 558
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 473
    new-instance v0, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getItemBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLayout()[I
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    return-object v0
.end method

.method public getLayoutNumRows()I
    .locals 1

    .line 532
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    return v0
.end method

.method getMaxItems()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItems:I

    return v0
.end method

.method getNumActualItemsShown()I
    .locals 1

    .line 498
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mNumActualItemsShown:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .line 506
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mAnimations:I

    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 316
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 317
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 468
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method markStaleChildren()V
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHasStaleChildren:Z

    if-nez v0, :cond_0

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHasStaleChildren:Z

    .line 488
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->requestLayout()V

    .line 490
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 563
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 565
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->requestFocus()Z

    .line 566
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 570
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    .line 571
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 572
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 446
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 447
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 449
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    .line 450
    .local v1, "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 451
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 452
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 450
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 456
    .end local v1    # "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v2    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 457
    if-eqz v0, :cond_1

    .line 459
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    .line 460
    .restart local v1    # "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 461
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 462
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 460
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 465
    .end local v1    # "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 433
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 434
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 435
    .local v1, "child":Landroid/view/View;
    nop

    .line 436
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .line 439
    .local v2, "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    iget v3, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->left:I

    iget v4, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->top:I

    iget v5, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    iget v6, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 433
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 442
    .end local v0    # "i":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 407
    const v0, 0x7fffffff

    invoke-static {v0, p1}, Lcom/android/internal/view/menu/IconMenuView;->resolveSize(II)I

    move-result v0

    .line 408
    .local v0, "measuredWidth":I
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->calculateItemFittingMetadata(I)V

    .line 409
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->layoutItems(I)V

    .line 413
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 414
    .local v1, "layoutNumRows":I
    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mRowHeight:I

    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    sub-int/2addr v2, v3

    .line 418
    .local v2, "desiredHeight":I
    nop

    .line 419
    invoke-static {v2, p2}, Lcom/android/internal/view/menu/IconMenuView;->resolveSize(II)I

    move-result v3

    .line 418
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/view/menu/IconMenuView;->setMeasuredDimension(II)V

    .line 422
    if-lez v1, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/view/menu/IconMenuView;->positionChildren(II)V

    .line 425
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 693
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    .line 694
    .local v0, "ss":Lcom/android/internal/view/menu/IconMenuView$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/IconMenuView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 696
    iget v1, v0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 697
    return-void

    .line 700
    :cond_0
    iget v1, v0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 701
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 702
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 704
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 678
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 680
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 682
    .local v1, "focusedView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 683
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, v1, :cond_0

    .line 684
    new-instance v3, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    invoke-direct {v3, v0, v2}, Lcom/android/internal/view/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v3

    .line 682
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 688
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Lcom/android/internal/view/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .line 577
    if-nez p1, :cond_0

    .line 578
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    .line 581
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 582
    return-void
.end method

.method public run()V
    .locals 2

    .line 618
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 621
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLastChildrenCaptionMode:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    goto :goto_0

    .line 626
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    .line 627
    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    .line 631
    :goto_0
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 632
    return-void
.end method

.method setNumActualItemsShown(I)V
    .locals 0
    .param p1, "count"    # I

    .line 502
    iput p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mNumActualItemsShown:I

    .line 503
    return-void
.end method
