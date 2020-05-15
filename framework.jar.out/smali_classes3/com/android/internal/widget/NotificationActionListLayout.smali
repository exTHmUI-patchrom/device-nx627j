.class public Lcom/android/internal/widget/NotificationActionListLayout;
.super Landroid/widget/LinearLayout;
.source "NotificationActionListLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mDefaultPaddingBottom:I

.field private mDefaultPaddingTop:I

.field private mEmphasizedHeight:I

.field private mEmphasizedMode:Z

.field private final mGravity:I

.field private mMeasureOrderOther:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasureOrderTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegularHeight:I

.field private mTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 317
    sget-object v0, Lcom/android/internal/widget/-$$Lambda$NotificationActionListLayout$uFZFEmIEBpI3kn6c3tNvvgmMSv8;->INSTANCE:Lcom/android/internal/widget/-$$Lambda$NotificationActionListLayout$uFZFEmIEBpI3kn6c3tNvvgmMSv8;

    sput-object v0, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/NotificationActionListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationActionListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    .line 63
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100af

    aput v2, v1, v0

    .line 64
    .local v1, "attrIds":[I
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 65
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mGravity:I

    .line 66
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method

.method private clearMeasureOrder()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 179
    return-void
.end method

.method static synthetic lambda$static$0(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 2
    .param p0, "a"    # Landroid/util/Pair;
    .param p1, "b"    # Landroid/util/Pair;

    .line 318
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method private rebuildMeasureOrder(II)V
    .locals 6
    .param p1, "capacityText"    # I
    .param p2, "capacityOther"    # I

    .line 160
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 161
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v0

    .line 164
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 165
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 166
    .local v2, "c":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 167
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 170
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v2    # "c":Landroid/view/View;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 174
    return-void
.end method

.method private updateHeights()V
    .locals 5

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 268
    .local v0, "paddingTop":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 270
    .local v1, "paddingBottom":I
    add-int v2, v1, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050124

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedHeight:I

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mRegularHeight:I

    .line 274
    return-void
.end method


# virtual methods
.method public getExtraMeasureHeight()I
    .locals 2

    .line 311
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    if-eqz v0, :cond_0

    .line 312
    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedHeight:I

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mRegularHeight:I

    sub-int/2addr v0, v1

    return v0

    .line 314
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 258
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingBottom:I

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingTop:I

    .line 261
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->updateHeights()V

    .line 262
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object/from16 v0, p0

    .line 200
    iget-boolean v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    if-eqz v3, :cond_0

    .line 201
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 202
    return-void

    .line 204
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->isLayoutRtl()Z

    move-result v3

    .line 205
    .local v3, "isLayoutRtl":Z
    iget v4, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingTop:I

    .line 206
    .local v4, "paddingTop":I
    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mGravity:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    move v5, v6

    .line 210
    .local v5, "centerAligned":Z
    if-eqz v5, :cond_2

    .line 211
    iget v6, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    add-int v6, v6, p2

    sub-int v8, p4, p2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    iget v8, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    .local v6, "childLeft":I
    goto :goto_1

    .line 213
    .end local v6    # "childLeft":I
    :cond_2
    iget v6, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    .line 214
    .restart local v6    # "childLeft":I
    const v8, 0x800003

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getLayoutDirection()I

    move-result v9

    invoke-static {v8, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    .line 215
    .local v8, "absoluteGravity":I
    const/4 v9, 0x5

    if-ne v8, v9, :cond_3

    .line 216
    sub-int v9, p4, p2

    iget v10, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    sub-int/2addr v9, v10

    add-int/2addr v6, v9

    .line 222
    .end local v8    # "absoluteGravity":I
    :cond_3
    :goto_1
    sub-int v10, p5, p3

    .line 225
    .local v10, "height":I
    sub-int v11, v10, v4

    iget v12, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingBottom:I

    sub-int/2addr v11, v12

    .line 227
    .local v11, "innerHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v12

    .line 229
    .local v12, "count":I
    const/4 v13, 0x0

    .line 230
    .local v13, "start":I
    const/4 v14, 0x1

    .line 232
    .local v14, "dir":I
    if-eqz v3, :cond_4

    .line 233
    add-int/lit8 v13, v12, -0x1

    .line 234
    const/4 v14, -0x1

    .line 237
    :cond_4
    nop

    .local v7, "i":I
    :goto_2
    if-ge v7, v12, :cond_6

    .line 238
    mul-int v15, v14, v7

    add-int/2addr v15, v13

    .line 239
    .local v15, "childIndex":I
    invoke-virtual {v0, v15}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 240
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 242
    .local v0, "childWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 244
    .local v2, "childHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move/from16 v17, v3

    move-object/from16 v3, v16

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 246
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .local v17, "isLayoutRtl":Z
    sub-int v16, v11, v2

    div-int/lit8 v16, v16, 0x2

    add-int v16, v4, v16

    move/from16 v18, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .end local v4    # "paddingTop":I
    .local v18, "paddingTop":I
    add-int v16, v16, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v4, v16, v4

    .line 249
    .local v4, "childTop":I
    move/from16 v19, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .end local v5    # "centerAligned":Z
    .local v19, "centerAligned":Z
    add-int/2addr v6, v5

    .line 250
    add-int v5, v6, v0

    add-int v8, v4, v2

    invoke-virtual {v1, v6, v4, v5, v8}, Landroid/view/View;->layout(IIII)V

    .line 251
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v0

    add-int/2addr v6, v5

    .end local v0    # "childWidth":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childHeight":I
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "childTop":I
    .end local v15    # "childIndex":I
    goto :goto_3

    .line 237
    .end local v17    # "isLayoutRtl":Z
    .end local v18    # "paddingTop":I
    .end local v19    # "centerAligned":Z
    .local v3, "isLayoutRtl":Z
    .local v4, "paddingTop":I
    .restart local v5    # "centerAligned":Z
    :cond_5
    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    .end local v3    # "isLayoutRtl":Z
    .end local v4    # "paddingTop":I
    .end local v5    # "centerAligned":Z
    .restart local v17    # "isLayoutRtl":Z
    .restart local v18    # "paddingTop":I
    .restart local v19    # "centerAligned":Z
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v0, p0

    goto :goto_2

    .line 254
    .end local v7    # "i":I
    .end local v17    # "isLayoutRtl":Z
    .end local v18    # "paddingTop":I
    .end local v19    # "centerAligned":Z
    .restart local v3    # "isLayoutRtl":Z
    .restart local v4    # "paddingTop":I
    .restart local v5    # "centerAligned":Z
    :cond_6
    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    .end local v3    # "isLayoutRtl":Z
    .end local v4    # "paddingTop":I
    .end local v5    # "centerAligned":Z
    .restart local v17    # "isLayoutRtl":Z
    .restart local v18    # "paddingTop":I
    .restart local v19    # "centerAligned":Z
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v6, p0

    .line 71
    iget-boolean v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 73
    return-void

    .line 75
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v7

    .line 76
    .local v7, "N":I
    const/4 v0, 0x0

    .line 77
    .local v0, "textViews":I
    const/4 v1, 0x0

    .line 78
    .local v1, "otherViews":I
    const/4 v2, 0x0

    .line 80
    .local v2, "notGoneChildren":I
    const/4 v3, 0x0

    move v8, v0

    move v9, v1

    move v10, v2

    move v0, v3

    .end local v1    # "otherViews":I
    .end local v2    # "notGoneChildren":I
    .local v0, "i":I
    .local v8, "textViews":I
    .local v9, "otherViews":I
    .local v10, "notGoneChildren":I
    :goto_0
    const/16 v11, 0x8

    if-ge v0, v7, :cond_3

    .line 81
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, "c":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 83
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 85
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 87
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v11, :cond_2

    .line 88
    add-int/lit8 v10, v10, 0x1

    .line 80
    .end local v1    # "c":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .line 95
    .local v0, "needRebuild":Z
    iget-object v1, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v8, v1, :cond_4

    iget-object v1, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v9, v1, :cond_5

    .line 97
    :cond_4
    const/4 v0, 0x1

    .line 99
    :cond_5
    if-nez v0, :cond_8

    .line 100
    iget-object v1, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 101
    .local v1, "size":I
    move v2, v0

    move v0, v3

    .local v0, "i":I
    .local v2, "needRebuild":Z
    :goto_2
    if-ge v0, v1, :cond_7

    .line 102
    iget-object v4, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 103
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/widget/TextView;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v12, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-eq v5, v12, :cond_6

    .line 104
    const/4 v2, 0x1

    .line 101
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/widget/TextView;>;"
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 109
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_7
    move v12, v2

    goto :goto_3

    .end local v2    # "needRebuild":Z
    .local v0, "needRebuild":Z
    :cond_8
    move v12, v0

    .end local v0    # "needRebuild":Z
    .local v12, "needRebuild":Z
    :goto_3
    if-eqz v12, :cond_9

    .line 110
    invoke-direct {v6, v8, v9}, Lcom/android/internal/widget/NotificationActionListLayout;->rebuildMeasureOrder(II)V

    .line 113
    :cond_9
    nop

    .line 114
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    move v0, v3

    :goto_4
    move v13, v0

    .line 116
    .local v13, "constrained":Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    sub-int v14, v0, v1

    .line 117
    .local v14, "innerWidth":I
    iget-object v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 118
    .local v15, "otherSize":I
    const/4 v0, 0x0

    .line 120
    .local v0, "usedWidth":I
    const/4 v1, 0x0

    .line 121
    .local v1, "measuredChildren":I
    move/from16 v16, v0

    move/from16 v17, v1

    .end local v0    # "usedWidth":I
    .end local v1    # "measuredChildren":I
    .local v3, "i":I
    .local v16, "usedWidth":I
    .local v17, "measuredChildren":I
    :goto_5
    move v5, v3

    .end local v3    # "i":I
    .local v5, "i":I
    if-ge v5, v7, :cond_e

    .line 125
    if-ge v5, v15, :cond_b

    .line 126
    iget-object v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "c":Landroid/view/View;
    goto :goto_6

    .line 128
    .end local v0    # "c":Landroid/view/View;
    :cond_b
    iget-object v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    sub-int v1, v5, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .restart local v0    # "c":Landroid/view/View;
    :goto_6
    move-object v4, v0

    .line 130
    .end local v0    # "c":Landroid/view/View;
    .local v4, "c":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v11, :cond_c

    .line 131
    nop

    .line 121
    move/from16 v21, v5

    move/from16 v20, v7

    goto :goto_7

    .line 133
    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 135
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move/from16 v0, v16

    .line 136
    .local v0, "usedWidthForChild":I
    if-eqz v13, :cond_d

    .line 141
    sub-int v1, v14, v16

    .line 142
    .local v1, "availableWidth":I
    sub-int v2, v10, v17

    div-int v2, v1, v2

    .line 144
    .local v2, "maxWidthForChild":I
    sub-int v0, v14, v2

    .line 147
    .end local v0    # "usedWidthForChild":I
    .end local v1    # "availableWidth":I
    .end local v2    # "maxWidthForChild":I
    .local v18, "usedWidthForChild":I
    :cond_d
    move/from16 v18, v0

    const/16 v19, 0x0

    move-object v0, v6

    move-object v1, v4

    move/from16 v2, p1

    move-object v11, v3

    move/from16 v3, v18

    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .local v11, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move/from16 v20, v7

    move-object v7, v4

    move/from16 v4, p2

    .end local v4    # "c":Landroid/view/View;
    .local v7, "c":Landroid/view/View;
    .local v20, "N":I
    move/from16 v21, v5

    move/from16 v5, v19

    .end local v5    # "i":I
    .local v21, "i":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/NotificationActionListLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 150
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    add-int v16, v16, v0

    .line 151
    add-int/lit8 v17, v17, 0x1

    .line 121
    .end local v7    # "c":Landroid/view/View;
    .end local v11    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v18    # "usedWidthForChild":I
    :goto_7
    add-int/lit8 v3, v21, 0x1

    .end local v21    # "i":I
    .local v3, "i":I
    move/from16 v7, v20

    const/16 v11, 0x8

    goto :goto_5

    .line 154
    .end local v3    # "i":I
    .end local v20    # "N":I
    .local v7, "N":I
    :cond_e
    move/from16 v20, v7

    .end local v7    # "N":I
    .restart local v20    # "N":I
    iget v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    add-int v0, v16, v0

    iget v1, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumWidth()I

    move-result v0

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    move-result v0

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumHeight()I

    move-result v2

    move/from16 v3, p2

    invoke-static {v2, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    move-result v2

    .line 155
    invoke-virtual {v6, v0, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->setMeasuredDimension(II)V

    .line 157
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 183
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    .line 184
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 190
    :cond_0
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 194
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    .line 195
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 196
    return-void
.end method

.method public setEmphasizedMode(Z)V
    .locals 8
    .param p1, "emphasizedMode"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 283
    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    .line 285
    if-eqz p1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 289
    .local v0, "paddingTop":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 291
    .local v1, "paddingBottom":I
    iget v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedHeight:I

    .line 292
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 294
    .local v3, "buttonPaddingInternal":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingStart()I

    move-result v4

    sub-int v5, v0, v3

    .line 296
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingEnd()I

    move-result v6

    sub-int v7, v1, v3

    .line 294
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/internal/widget/NotificationActionListLayout;->setPaddingRelative(IIII)V

    .line 298
    .end local v0    # "paddingTop":I
    .end local v1    # "paddingBottom":I
    .end local v3    # "buttonPaddingInternal":I
    goto :goto_0

    .line 299
    .end local v2    # "height":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingTop:I

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingEnd()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingBottom:I

    .line 299
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->setPaddingRelative(IIII)V

    .line 303
    iget v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mRegularHeight:I

    .restart local v2    # "height":I
    :goto_0
    move v0, v2

    .line 305
    .end local v2    # "height":I
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 306
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 307
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    return-void
.end method
