.class public Landroid/widget/FrameLayout;
.super Landroid/view/ViewGroup;
.source "FrameLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHILD_GRAVITY:I = 0x800033


# instance fields
.field private mForegroundPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mMeasureAllChildren:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 63
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 66
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 69
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 72
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 63
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 66
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 69
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 72
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 94
    sget-object v1, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 97
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    .line 101
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    return-void
.end method

.method private getPaddingBottomWithForeground()I
    .locals 2

    .line 165
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 166
    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    .line 165
    :goto_0
    return v0
.end method

.method private getPaddingTopWithForeground()I
    .locals 2

    .line 160
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 161
    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v1

    .line 160
    :goto_0
    return v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 380
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 403
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 405
    const-string/jumbo v0, "measurement:measureAllChildren"

    iget-boolean v1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 406
    const-string/jumbo v0, "padding:foregroundPaddingLeft"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 407
    const-string/jumbo v0, "padding:foregroundPaddingTop"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 408
    const-string/jumbo v0, "padding:foregroundPaddingRight"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 409
    const-string/jumbo v0, "padding:foregroundPaddingBottom"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 410
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 146
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 385
    sget-boolean v0, Landroid/widget/FrameLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1

    .line 386
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 387
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    return-object v0

    .line 388
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 389
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 392
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 370
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 397
    const-class v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConsiderGoneChildrenWhenMeasuring()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 355
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    move-result v0

    return v0
.end method

.method public getMeasureAllChildren()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    return v0
.end method

.method getPaddingLeftWithForeground()I
    .locals 2

    .line 150
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 151
    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    .line 150
    :goto_0
    return v0
.end method

.method getPaddingRightWithForeground()I
    .locals 2

    .line 155
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 156
    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v1

    .line 155
    :goto_0
    return v0
.end method

.method layoutChildren(IIIIZ)V
    .locals 19
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "forceLeftGravity"    # Z

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 267
    .local v0, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v1

    .line 268
    .local v1, "parentLeft":I
    sub-int v4, p3, p1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v5

    sub-int/2addr v4, v5

    .line 270
    .local v4, "parentRight":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v5

    .line 271
    .local v5, "parentTop":I
    sub-int v6, p4, p2

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v7

    sub-int/2addr v6, v7

    .line 273
    .local v6, "parentBottom":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v0, :cond_8

    .line 274
    move-object/from16 v8, p0

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 275
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_7

    .line 276
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 278
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 279
    .local v11, "width":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 284
    .local v12, "height":I
    iget v13, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 285
    .local v13, "gravity":I
    move v14, v0

    const/4 v0, -0x1

    .end local v0    # "count":I
    .local v14, "count":I
    if-ne v13, v0, :cond_0

    .line 286
    const v13, 0x800033

    .line 289
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    .line 290
    .local v0, "layoutDirection":I
    invoke-static {v13, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v15

    .line 291
    .local v15, "absoluteGravity":I
    move/from16 v16, v0

    and-int/lit8 v0, v13, 0x70

    .line 293
    .local v0, "verticalGravity":I
    .local v16, "layoutDirection":I
    and-int/lit8 v2, v15, 0x7

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 299
    :cond_1
    if-nez p5, :cond_2

    .line 300
    sub-int v3, v4, v11

    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v2

    .line 301
    .local v3, "childLeft":I
    goto :goto_2

    .line 305
    .end local v3    # "childLeft":I
    :cond_2
    :goto_1
    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v1, v2

    goto :goto_2

    .line 295
    :cond_3
    sub-int v2, v4, v1

    sub-int/2addr v2, v11

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iget v3, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v3, v2, v3

    .line 297
    .restart local v3    # "childLeft":I
    nop

    .line 305
    :goto_2
    move v2, v3

    .line 308
    .end local v3    # "childLeft":I
    .local v2, "childLeft":I
    const/16 v3, 0x10

    if-eq v0, v3, :cond_6

    const/16 v3, 0x30

    if-eq v0, v3, :cond_5

    const/16 v3, 0x50

    if-eq v0, v3, :cond_4

    .line 320
    iget v3, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    move/from16 v17, v0

    goto :goto_3

    .line 317
    :cond_4
    sub-int v3, v6, v12

    move/from16 v17, v0

    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .end local v0    # "verticalGravity":I
    .local v17, "verticalGravity":I
    sub-int/2addr v3, v0

    .line 318
    .local v3, "childTop":I
    goto :goto_3

    .line 310
    .end local v3    # "childTop":I
    .end local v17    # "verticalGravity":I
    .restart local v0    # "verticalGravity":I
    :cond_5
    move/from16 v17, v0

    .end local v0    # "verticalGravity":I
    .restart local v17    # "verticalGravity":I
    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v3, v5, v0

    .line 311
    .restart local v3    # "childTop":I
    goto :goto_3

    .line 313
    .end local v3    # "childTop":I
    .end local v17    # "verticalGravity":I
    .restart local v0    # "verticalGravity":I
    :cond_6
    move/from16 v17, v0

    .end local v0    # "verticalGravity":I
    .restart local v17    # "verticalGravity":I
    sub-int v0, v6, v5

    sub-int/2addr v0, v12

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    iget v3, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v3, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v0, v3

    .line 315
    .restart local v3    # "childTop":I
    nop

    .line 320
    :goto_3
    move v0, v3

    .line 323
    .end local v3    # "childTop":I
    .local v0, "childTop":I
    add-int v3, v2, v11

    move/from16 v18, v1

    add-int v1, v0, v12

    .end local v1    # "parentLeft":I
    .local v18, "parentLeft":I
    invoke-virtual {v9, v2, v0, v3, v1}, Landroid/view/View;->layout(IIII)V

    .end local v0    # "childTop":I
    .end local v2    # "childLeft":I
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "width":I
    .end local v12    # "height":I
    .end local v13    # "gravity":I
    .end local v15    # "absoluteGravity":I
    .end local v16    # "layoutDirection":I
    .end local v17    # "verticalGravity":I
    goto :goto_4

    .line 273
    .end local v14    # "count":I
    .end local v18    # "parentLeft":I
    .local v0, "count":I
    .restart local v1    # "parentLeft":I
    :cond_7
    move v14, v0

    move/from16 v18, v1

    .end local v0    # "count":I
    .end local v1    # "parentLeft":I
    .restart local v14    # "count":I
    .restart local v18    # "parentLeft":I
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move v0, v14

    move/from16 v1, v18

    goto/16 :goto_0

    .line 326
    .end local v7    # "i":I
    .end local v14    # "count":I
    .end local v18    # "parentLeft":I
    .restart local v0    # "count":I
    .restart local v1    # "parentLeft":I
    :cond_8
    move-object/from16 v8, p0

    move v14, v0

    move/from16 v18, v1

    .end local v0    # "count":I
    .end local v1    # "parentLeft":I
    .restart local v14    # "count":I
    .restart local v18    # "parentLeft":I
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 261
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->layoutChildren(IIIIZ)V

    .line 262
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v6, p0

    move/from16 v7, p1

    .line 171
    move/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v9

    .line 173
    .local v9, "count":I
    nop

    .line 174
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v0, v11, :cond_1

    .line 175
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v11, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v13, v0

    .line 176
    .local v13, "measureMatchParentChildren":Z
    iget-object v0, v6, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "maxHeight":I
    const/4 v1, 0x0

    .line 180
    .local v1, "maxWidth":I
    const/4 v2, 0x0

    .line 182
    .local v2, "childState":I
    move v15, v0

    move v14, v1

    move v5, v2

    const/4 v0, 0x0

    .end local v1    # "maxWidth":I
    .end local v2    # "childState":I
    .local v0, "i":I
    .local v5, "childState":I
    .local v14, "maxWidth":I
    .local v15, "maxHeight":I
    :goto_2
    move v4, v0

    .end local v0    # "i":I
    .local v4, "i":I
    const/4 v3, -0x1

    if-ge v4, v9, :cond_6

    .line 183
    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 184
    .local v2, "child":Landroid/view/View;
    iget-boolean v0, v6, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    if-nez v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    goto :goto_3

    .line 182
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    move/from16 v16, v4

    goto :goto_4

    .line 185
    .restart local v2    # "child":Landroid/view/View;
    :cond_3
    :goto_3
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v6

    move-object v1, v2

    move-object v11, v2

    move v2, v7

    .end local v2    # "child":Landroid/view/View;
    .local v11, "child":Landroid/view/View;
    move v12, v3

    move/from16 v3, v16

    move/from16 v16, v4

    move v4, v8

    .end local v4    # "i":I
    .local v16, "i":I
    move v10, v5

    move/from16 v5, v17

    .end local v5    # "childState":I
    .local v10, "childState":I
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 186
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 187
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    nop

    .line 188
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 187
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 189
    .end local v14    # "maxWidth":I
    .restart local v1    # "maxWidth":I
    nop

    .line 190
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 189
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 191
    .end local v15    # "maxHeight":I
    .local v2, "maxHeight":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v10, v3}, Landroid/widget/FrameLayout;->combineMeasuredStates(II)I

    move-result v3

    .line 192
    .end local v10    # "childState":I
    .local v3, "childState":I
    if-eqz v13, :cond_5

    .line 193
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v4, v12, :cond_4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v4, v12, :cond_5

    .line 195
    :cond_4
    iget-object v4, v6, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "child":Landroid/view/View;
    :cond_5
    move v14, v1

    move v15, v2

    move v5, v3

    .end local v1    # "maxWidth":I
    .end local v2    # "maxHeight":I
    .end local v3    # "childState":I
    .restart local v5    # "childState":I
    .restart local v14    # "maxWidth":I
    .restart local v15    # "maxHeight":I
    :goto_4
    add-int/lit8 v0, v16, 0x1

    .end local v16    # "i":I
    .local v0, "i":I
    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_2

    .line 202
    .end local v0    # "i":I
    :cond_6
    move v12, v3

    move v10, v5

    .end local v5    # "childState":I
    .restart local v10    # "childState":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v14, v0

    .line 203
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    .line 206
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 207
    .end local v15    # "maxHeight":I
    .local v0, "maxHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 210
    .end local v14    # "maxWidth":I
    .restart local v1    # "maxWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 211
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_7

    .line 212
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 213
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 216
    :cond_7
    invoke-static {v1, v7, v10}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v4, v10, 0x10

    .line 217
    invoke-static {v0, v8, v4}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v4

    .line 216
    invoke-virtual {v6, v3, v4}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 220
    iget-object v3, v6, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 221
    .end local v9    # "count":I
    .local v3, "count":I
    const/4 v4, 0x1

    if-le v3, v4, :cond_a

    .line 222
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    if-ge v4, v3, :cond_a

    .line 223
    iget-object v5, v6, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 224
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 227
    .local v9, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v11, v12, :cond_8

    .line 228
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    .line 229
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v14

    sub-int/2addr v11, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v14

    sub-int/2addr v11, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v11, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v11, v14

    .line 228
    const/4 v14, 0x0

    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 231
    .local v11, "width":I
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v11, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 233
    .local v11, "childWidthMeasureSpec":I
    goto :goto_6

    .line 234
    .end local v11    # "childWidthMeasureSpec":I
    :cond_8
    nop

    .line 235
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v14

    add-int/2addr v11, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v11, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 234
    invoke-static {v7, v11, v14}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v11

    .line 241
    .restart local v11    # "childWidthMeasureSpec":I
    :goto_6
    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v14, v12, :cond_9

    .line 242
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    .line 243
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v15

    sub-int/2addr v14, v15

    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v14, v15

    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v14, v15

    .line 242
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 245
    .local v14, "height":I
    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 247
    .local v14, "childHeightMeasureSpec":I
    goto :goto_7

    .line 248
    .end local v14    # "childHeightMeasureSpec":I
    :cond_9
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v15, 0x0

    .line 249
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v14

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v16

    add-int v14, v14, v16

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v12

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v12

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 248
    invoke-static {v8, v14, v12}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v14

    .restart local v14    # "childHeightMeasureSpec":I
    :goto_7
    move v12, v14

    .line 254
    .end local v14    # "childHeightMeasureSpec":I
    .local v12, "childHeightMeasureSpec":I
    invoke-virtual {v5, v11, v12}, Landroid/view/View;->measure(II)V

    .line 222
    .end local v5    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11    # "childWidthMeasureSpec":I
    .end local v12    # "childHeightMeasureSpec":I
    add-int/lit8 v4, v4, 0x1

    const/4 v12, -0x1

    goto/16 :goto_5

    .line 257
    .end local v4    # "i":I
    :cond_a
    return-void
.end method

.method public setForegroundGravity(I)V
    .locals 3
    .param p1, "foregroundGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 115
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 116
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setForegroundGravity(I)V

    .line 119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    .local v0, "foreground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    move-result v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 121
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 122
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 124
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 125
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 126
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 128
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_0
    goto :goto_0

    .line 129
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 130
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 131
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 132
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 135
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 137
    .end local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method

.method public setMeasureAllChildren(Z)V
    .locals 0
    .param p1, "measureAll"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 339
    iput-boolean p1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 340
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 375
    const/4 v0, 0x0

    return v0
.end method
