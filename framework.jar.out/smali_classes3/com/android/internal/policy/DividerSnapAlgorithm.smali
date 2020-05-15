.class public Lcom/android/internal/policy/DividerSnapAlgorithm;
.super Ljava/lang/Object;
.source "DividerSnapAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    }
.end annotation


# static fields
.field private static final MIN_DISMISS_VELOCITY_DP_PER_SECOND:I = 0x258

.field private static final MIN_FLING_VELOCITY_DP_PER_SECOND:I = 0x190

.field private static final SNAP_FIXED_RATIO:I = 0x1

.field private static final SNAP_MODE_16_9:I = 0x0

.field private static final SNAP_MODE_MINIMIZED:I = 0x3

.field private static final SNAP_ONLY_1_1:I = 0x2


# instance fields
.field private final mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mDisplayHeight:I

.field private final mDisplayWidth:I

.field private final mDividerSize:I

.field private final mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mFixedRatio:F

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsHorizontalDivision:Z

.field private final mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mMinDismissVelocityPxPerSecond:F

.field private final mMinFlingVelocityPxPerSecond:F

.field private final mMinimalSizeResizableTask:I

.field private final mSnapMode:I

.field private final mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskHeightInMinimizedMode:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "dividerSize"    # I
    .param p5, "isHorizontalDivision"    # Z
    .param p6, "insets"    # Landroid/graphics/Rect;

    .line 105
    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;IZ)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;I)V
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "dividerSize"    # I
    .param p5, "isHorizontalDivision"    # Z
    .param p6, "insets"    # Landroid/graphics/Rect;
    .param p7, "dockSide"    # I

    .line 111
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;IZ)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;IZ)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "dividerSize"    # I
    .param p5, "isHorizontalDivision"    # Z
    .param p6, "insets"    # Landroid/graphics/Rect;
    .param p7, "dockSide"    # I
    .param p8, "isMinimizedMode"    # Z

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 117
    nop

    .line 118
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43c80000    # 400.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinFlingVelocityPxPerSecond:F

    .line 119
    nop

    .line 120
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44160000    # 600.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    .line 121
    iput p4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    .line 122
    iput p2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    .line 123
    iput p3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    .line 124
    iput-boolean p5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 126
    if-eqz p8, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 127
    :cond_0
    const v0, 0x10e003e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mSnapMode:I

    .line 128
    const v0, 0x1130004

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFixedRatio:F

    .line 130
    const v0, 0x1050079

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    .line 132
    const v0, 0x10501a8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTaskHeightInMinimizedMode:I

    .line 134
    invoke-direct {p0, p5, p7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateTargets(ZI)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 140
    return-void
.end method

.method private addFixedDivisionTargets(ZI)V
    .locals 6
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "dividerMax"    # I

    .line 306
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 307
    .local v0, "start":I
    :goto_0
    if-eqz p1, :cond_1

    .line 308
    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    goto :goto_1

    .line 309
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 310
    .local v1, "end":I
    :goto_1
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFixedRatio:F

    sub-int v3, v1, v0

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 311
    .local v2, "size":I
    add-int v3, v0, v2

    .line 312
    .local v3, "topPosition":I
    sub-int v4, v1, v2

    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int/2addr v4, v5

    .line 313
    .local v4, "bottomPosition":I
    invoke-direct {p0, p1, v3, v4, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addNonDismissingTargets(ZIII)V

    .line 314
    return-void
.end method

.method private addMiddleTarget(Z)V
    .locals 4
    .param p1, "isHorizontalDivision"    # Z

    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iget v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/policy/DockedDividerUtils;->calculateMiddlePosition(ZLandroid/graphics/Rect;III)I

    move-result v0

    .line 345
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v0, v3}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    return-void
.end method

.method private addMinimizedTarget(ZI)V
    .locals 4
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "dockedSide"    # I

    .line 351
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTaskHeightInMinimizedMode:I

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 352
    .local v0, "position":I
    if-nez p1, :cond_1

    .line 353
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 355
    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 356
    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int v0, v1, v2

    .line 359
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v0, v3}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    return-void
.end method

.method private addNonDismissingTargets(ZIII)V
    .locals 2
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "topPosition"    # I
    .param p3, "bottomPosition"    # I
    .param p4, "dividerMax"    # I

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, p2, v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->maybeAddTarget(II)V

    .line 300
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addMiddleTarget(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p4, v0

    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    add-int/2addr v1, p3

    sub-int/2addr v0, v1

    invoke-direct {p0, p3, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->maybeAddTarget(II)V

    .line 303
    return-void
.end method

.method private addRatio16_9Targets(ZI)V
    .locals 9
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "dividerMax"    # I

    .line 317
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 318
    .local v0, "start":I
    :goto_0
    if-eqz p1, :cond_1

    .line 319
    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    goto :goto_1

    .line 320
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 321
    .local v1, "end":I
    :goto_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 322
    .local v2, "startOther":I
    :goto_2
    if-eqz p1, :cond_3

    .line 323
    iget v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    goto :goto_3

    .line 324
    :cond_3
    iget v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 325
    .local v3, "endOther":I
    :goto_3
    const/high16 v4, 0x3f100000    # 0.5625f

    sub-int v5, v3, v2

    int-to-float v5, v5

    mul-float/2addr v4, v5

    .line 326
    .local v4, "size":F
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 327
    .local v5, "sizeInt":I
    add-int v6, v0, v5

    .line 328
    .local v6, "topPosition":I
    sub-int v7, v1, v5

    iget v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int/2addr v7, v8

    .line 329
    .local v7, "bottomPosition":I
    invoke-direct {p0, p1, v6, v7, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addNonDismissingTargets(ZIII)V

    .line 330
    return-void
.end method

.method private calculateTargets(ZI)V
    .locals 8
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "dockedSide"    # I

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 269
    if-eqz p1, :cond_0

    .line 270
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    goto :goto_0

    .line 271
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    .line 272
    .local v0, "dividerMax":I
    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 273
    .local v1, "navBarSize":I
    :goto_1
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    neg-int v2, v2

    .line 274
    .local v2, "startPos":I
    const/4 v3, 0x3

    if-ne p2, v3, :cond_2

    .line 275
    iget-object v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    .line 277
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v5, 0x1

    const v6, 0x3eb33333    # 0.35f

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mSnapMode:I

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 290
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addMinimizedTarget(ZI)V

    goto :goto_2

    .line 287
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addMiddleTarget(Z)V

    .line 288
    goto :goto_2

    .line 284
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addFixedDivisionTargets(ZI)V

    .line 285
    goto :goto_2

    .line 281
    :pswitch_3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addRatio16_9Targets(ZI)V

    .line 282
    nop

    .line 293
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    sub-int v5, v0, v1

    const/4 v7, 0x2

    invoke-direct {v4, v5, v0, v7, v6}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 88
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 89
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x105008a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 93
    .local v1, "dividerWindowWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 95
    .local v3, "dividerInsets":I
    new-instance v11, Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x2

    mul-int/2addr v4, v3

    sub-int v8, v1, v4

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x1

    if-ne v4, v9, :cond_0

    goto :goto_0

    :cond_0
    move v9, v2

    :goto_0
    move-object v4, v11

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    .line 95
    return-object v11
.end method

.method private getEndInset()I
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method private getStartInset()I
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method private maybeAddTarget(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "smallerSize"    # I

    .line 337
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    if-lt p2, v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p1, v2}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_0
    return-void
.end method

.method private snap(IZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 7
    .param p1, "position"    # I
    .param p2, "hardDismiss"    # Z

    .line 250
    const/4 v0, -0x1

    .line 251
    .local v0, "minIndex":I
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 252
    .local v1, "minDistance":F
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 253
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 254
    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 255
    .local v4, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget v5, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    .line 256
    .local v5, "distance":F
    if-eqz p2, :cond_0

    .line 257
    invoke-static {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->access$000(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v6

    div-float/2addr v5, v6

    .line 259
    :cond_0
    cmpg-float v6, v5, v1

    if-gez v6, :cond_1

    .line 260
    move v0, v3

    .line 261
    move v1, v5

    .line 253
    .end local v4    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .end local v5    # "distance":F
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v3
.end method


# virtual methods
.method public calculateDismissingFraction(I)F
    .locals 4
    .param p1, "position"    # I

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v0, :cond_0

    .line 195
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getStartInset()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 196
    invoke-direct {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getStartInset()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 195
    return v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 201
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 2
    .param p1, "position"    # I

    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->snap(IZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 184
    .local v0, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-ne v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-ne v0, v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    .line 189
    :cond_1
    return-object v0
.end method

.method public calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1
    .param p1, "position"    # I
    .param p2, "velocity"    # F

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    return-object v0
.end method

.method public calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 2
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "hardDismiss"    # Z

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    neg-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 172
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinFlingVelocityPxPerSecond:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 173
    invoke-direct {p0, p1, p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->snap(IZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    return-object v0

    .line 175
    :cond_2
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public cycleNonDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 4
    .param p1, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p2, "increment"    # I

    .line 403
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 404
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 405
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 406
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    .line 405
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 407
    .local v1, "newTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-ne v1, v2, :cond_0

    .line 408
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v2

    .line 409
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-ne v1, v2, :cond_1

    .line 410
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v2

    .line 412
    :cond_1
    return-object v1

    .line 415
    .end local v1    # "newTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_2
    return-object p1
.end method

.method public getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 2
    .param p1, "position"    # I

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_2

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getNextTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 3
    .param p1, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 368
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    .line 371
    :cond_0
    return-object p1
.end method

.method public getPreviousTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 3
    .param p1, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 376
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    .line 379
    :cond_0
    return-object p1
.end method

.method public isFirstSplitTargetAvailable()Z
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLastSplitTargetAvailable()Z
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSplitScreenFeasible()Z
    .locals 6

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 148
    .local v0, "statusBarSize":I
    iget-boolean v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 149
    .local v1, "navBarSize":I
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v2, :cond_1

    .line 150
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    goto :goto_1

    .line 151
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    .line 152
    .local v2, "size":I
    :goto_1
    sub-int v3, v2, v1

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int/2addr v3, v4

    .line 153
    .local v3, "availableSpace":I
    div-int/lit8 v4, v3, 0x2

    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    if-lt v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    return v4
.end method

.method public showMiddleSplitTargetForAccessibility()Z
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
