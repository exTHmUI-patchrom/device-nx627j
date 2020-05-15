.class Lcom/android/server/am/TaskLaunchParamsModifier;
.super Ljava/lang/Object;
.source "TaskLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;


# static fields
.field private static final ALLOW_RESTART:Z = true

.field private static final BOUNDS_CONFLICT_MIN_DISTANCE:I = 0x4

.field private static final MARGIN_SIZE_DENOMINATOR:I = 0x4

.field private static final MINIMAL_STEP:I = 0x1

.field private static final SHIFT_POLICY_DIAGONAL_DOWN:I = 0x1

.field private static final SHIFT_POLICY_HORIZONTAL_LEFT:I = 0x3

.field private static final SHIFT_POLICY_HORIZONTAL_RIGHT:I = 0x2

.field private static final STEP_DENOMINATOR:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final WINDOW_SIZE_DENOMINATOR:I = 0x2


# instance fields
.field private final mAvailableRect:Landroid/graphics/Rect;

.field private mDefaultFreeformHeight:I

.field private mDefaultFreeformStartX:I

.field private mDefaultFreeformStartY:I

.field private mDefaultFreeformWidth:I

.field private mDisplay:Landroid/view/Display;

.field private mIsPort:Z

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpOriginal:Landroid/graphics/Rect;

.field private final mTmpProposal:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    return-void
.end method

.method private static boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z
    .locals 5
    .param p0, "proposal"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    .line 326
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 327
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 328
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v3

    if-nez v3, :cond_1

    .line 329
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 330
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-static {p0, v3}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0, v3}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 331
    invoke-static {p0, v3}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 332
    invoke-static {p0, v3}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 333
    :cond_0
    return v1

    .line 326
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "bounds":Landroid/graphics/Rect;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 337
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static final closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    .line 351
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 352
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 351
    :goto_0
    return v0
.end method

.method private static final closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    .line 341
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 342
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 341
    :goto_0
    return v0
.end method

.method private static final closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    .line 356
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 357
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 356
    :goto_0
    return v0
.end method

.method private static final closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    .line 346
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 347
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 346
    :goto_0
    return v0
.end method

.method private getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)I
    .locals 3
    .param p1, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p2, "availableRect"    # Landroid/graphics/Rect;

    .line 211
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformHeight(Landroid/graphics/Rect;)I

    move-result v0

    .line 212
    .local v0, "height":I
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v1, :cond_0

    .line 213
    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    .line 215
    :cond_0
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 216
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 218
    :cond_1
    return v0
.end method

.method private getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)I
    .locals 3
    .param p1, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p2, "availableRect"    # Landroid/graphics/Rect;

    .line 200
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformWidth(Landroid/graphics/Rect;)I

    move-result v0

    .line 201
    .local v0, "width":I
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-lez v1, :cond_0

    .line 202
    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    .line 204
    :cond_0
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 205
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 207
    :cond_1
    return v0
.end method

.method static getFreeformHeight(Landroid/graphics/Rect;)I
    .locals 1
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 184
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static getFreeformStartLeft(Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 169
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method static getFreeformStartTop(Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 174
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method static getFreeformWidth(Landroid/graphics/Rect;)I
    .locals 1
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 179
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static getHorizontalStep(Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 189
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static getVerticalStep(Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 194
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private initPipRect()V
    .locals 3

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 88
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mIsPort:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActivityManagerService;->initPipRect(ZLandroid/graphics/Rect;)V

    .line 90
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mDefaultFreeformStartX:I

    .line 91
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mDefaultFreeformStartY:I

    .line 92
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mDefaultFreeformWidth:I

    .line 93
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mDefaultFreeformHeight:I

    .line 94
    return-void
.end method

.method private position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V
    .locals 6
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "proposal"    # Landroid/graphics/Rect;
    .param p4, "allowRestart"    # Z
    .param p5, "shiftPolicy"    # I
    .param p6, "result"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "ZI",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 265
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "restarted":Z
    :cond_0
    invoke-static {p3, p1}, Lcom/android/server/am/TaskLaunchParamsModifier;->boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 270
    invoke-direct {p0, p3, p2, p5}, Lcom/android/server/am/TaskLaunchParamsModifier;->shiftStartingPoint(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 271
    invoke-direct {p0, p3, p2, p5}, Lcom/android/server/am/TaskLaunchParamsModifier;->shiftedTooFar(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    if-nez p4, :cond_1

    .line 275
    iget-object v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 276
    goto :goto_0

    .line 280
    :cond_1
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 281
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 282
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    .line 280
    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 283
    const/4 v0, 0x1

    .line 285
    :cond_2
    if-eqz v0, :cond_0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartLeft(Landroid/graphics/Rect;)I

    move-result v2

    if-gt v1, v2, :cond_3

    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 286
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartTop(Landroid/graphics/Rect;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 291
    nop

    .line 294
    :cond_4
    :goto_0
    invoke-virtual {p6, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 295
    return-void
.end method

.method private positionBottomLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 10
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "result"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object v7, p0

    move-object v8, p2

    .line 223
    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    iget v3, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 225
    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, p1

    move-object v2, v8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    .line 227
    return-void
.end method

.method private positionBottomRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 10
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "result"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object v7, p0

    move-object v8, p2

    .line 231
    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 233
    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, v7

    move-object v1, p1

    move-object v2, v8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    .line 235
    return-void
.end method

.method private positionCenter(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 11
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "result"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object v7, p0

    .line 255
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartLeft(Landroid/graphics/Rect;)I

    move-result v8

    .line 256
    .local v8, "defaultFreeformLeft":I
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartTop(Landroid/graphics/Rect;)I

    move-result v9

    .line 257
    .local v9, "defaultFreeformTop":I
    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    add-int v1, v8, p3

    add-int v2, v9, p4

    invoke-virtual {v0, v8, v9, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 259
    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    .line 261
    return-void
.end method

.method private positionTopLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 10
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "result"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object v7, p0

    move-object v8, p2

    .line 239
    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget v4, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 241
    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, p1

    move-object v2, v8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    .line 243
    return-void
.end method

.method private positionTopRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 10
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "result"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object v7, p0

    move-object v8, p2

    .line 247
    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 249
    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, v7

    move-object v1, p1

    move-object v2, v8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    .line 251
    return-void
.end method

.method private shiftStartingPoint(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "posposal"    # Landroid/graphics/Rect;
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "shiftPolicy"    # I

    .line 309
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getHorizontalStep(Landroid/graphics/Rect;)I

    move-result v0

    .line 310
    .local v0, "defaultFreeformStepHorizontal":I
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getVerticalStep(Landroid/graphics/Rect;)I

    move-result v1

    .line 312
    .local v1, "defaultFreeformStepVertical":I
    const/4 v2, 0x0

    packed-switch p3, :pswitch_data_0

    .line 320
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 314
    :pswitch_0
    neg-int v3, v0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 315
    goto :goto_0

    .line 317
    :pswitch_1
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 318
    nop

    .line 323
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shiftedTooFar(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 4
    .param p1, "start"    # Landroid/graphics/Rect;
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "shiftPolicy"    # I

    .line 298
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p3, :pswitch_data_0

    .line 304
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_3

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_2

    goto :goto_0

    .line 300
    :pswitch_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 302
    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    .line 304
    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I
    .locals 16
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "currentParams"    # Lcom/android/server/am/LaunchParamsController$LaunchParams;
    .param p7, "outParams"    # Lcom/android/server/am/LaunchParamsController$LaunchParams;

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 113
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 117
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 119
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 121
    move-object/from16 v10, p7

    iget-object v11, v10, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 123
    .local v11, "resultBounds":Landroid/graphics/Rect;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/TaskLaunchParamsModifier;->initPipRect()V

    .line 124
    const/4 v12, 0x2

    if-nez v8, :cond_1

    .line 125
    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mDefaultFreeformStartX:I

    iget v2, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mDefaultFreeformStartY:I

    iget v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mDefaultFreeformStartX:I

    iget v4, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mDefaultFreeformWidth:I

    add-int/2addr v3, v4

    iget v4, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mDefaultFreeformStartY:I

    iget v5, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mDefaultFreeformHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 128
    iget-object v2, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    iget-object v3, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, v9

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    .line 130
    return v12

    .line 134
    :cond_1
    if-nez v8, :cond_2

    .line 135
    iget-object v2, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformWidth(Landroid/graphics/Rect;)I

    move-result v3

    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    .line 136
    invoke-static {v0}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformHeight(Landroid/graphics/Rect;)I

    move-result v4

    .line 135
    move-object v0, v7

    move-object v1, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionCenter(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 137
    return v12

    .line 140
    :cond_2
    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-direct {v7, v8, v0}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)I

    move-result v6

    .line 141
    .local v6, "width":I
    iget-object v0, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-direct {v7, v8, v0}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)I

    move-result v13

    .line 142
    .local v13, "height":I
    iget v0, v8, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v14, v0, 0x70

    .line 143
    .local v14, "verticalGravity":I
    iget v0, v8, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v5, v0, 0x7

    .line 144
    .local v5, "horizontalGravity":I
    const/16 v0, 0x30

    const/4 v1, 0x5

    if-ne v14, v0, :cond_4

    .line 145
    if-ne v5, v1, :cond_3

    .line 146
    iget-object v2, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    move-object v0, v7

    move-object v1, v9

    move v3, v6

    move v4, v13

    move v12, v5

    move-object v5, v11

    .end local v5    # "horizontalGravity":I
    .local v12, "horizontalGravity":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionTopRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 148
    .end local v12    # "horizontalGravity":I
    .restart local v5    # "horizontalGravity":I
    :cond_3
    move v12, v5

    .end local v5    # "horizontalGravity":I
    .restart local v12    # "horizontalGravity":I
    iget-object v2, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    move-object v0, v7

    move-object v1, v9

    move v3, v6

    move v4, v13

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionTopLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto :goto_0

    .line 150
    .end local v12    # "horizontalGravity":I
    .restart local v5    # "horizontalGravity":I
    :cond_4
    move v12, v5

    .end local v5    # "horizontalGravity":I
    .restart local v12    # "horizontalGravity":I
    const/16 v0, 0x50

    if-ne v14, v0, :cond_6

    .line 151
    if-ne v12, v1, :cond_5

    .line 152
    iget-object v2, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    move-object v0, v7

    move-object v1, v9

    move v3, v6

    move v4, v13

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionBottomRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto :goto_0

    .line 154
    :cond_5
    iget-object v2, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    move-object v0, v7

    move-object v1, v9

    move v3, v6

    move v4, v13

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionBottomLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto :goto_0

    .line 159
    :cond_6
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unsupported gravity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", positioning in the center instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v2, v7, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    move-object v0, v7

    move-object v1, v9

    move v3, v6

    move v4, v13

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionCenter(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 164
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 114
    .end local v6    # "width":I
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v11    # "resultBounds":Landroid/graphics/Rect;
    .end local v12    # "horizontalGravity":I
    .end local v13    # "height":I
    .end local v14    # "verticalGravity":I
    :cond_7
    :goto_1
    move-object/from16 v10, p7

    const/4 v0, 0x0

    return v0
.end method

.method public setPort(Lcom/android/server/am/ActivityManagerService;Z)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "isPort"    # Z

    .line 97
    iput-object p1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 98
    iput-boolean p2, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mIsPort:Z

    .line 99
    invoke-direct {p0}, Lcom/android/server/am/TaskLaunchParamsModifier;->initPipRect()V

    .line 100
    return-void
.end method
