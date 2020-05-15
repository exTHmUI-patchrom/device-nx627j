.class public Landroid/accessibilityservice/GestureDescription$StrokeDescription;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrokeDescription"
.end annotation


# static fields
.field private static final INVALID_STROKE_ID:I = -0x1

.field static sIdCounter:I


# instance fields
.field mContinued:Z

.field mContinuedStrokeId:I

.field mEndTime:J

.field mId:I

.field mPath:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field mStartTime:J

.field mTapLocation:[F

.field private mTimeToLengthConversion:F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;JJ)V
    .locals 7
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "startTime"    # J
    .param p4, "duration"    # J

    .line 229
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJZ)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;JJZ)V
    .locals 7
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "startTime"    # J
    .param p4, "duration"    # J
    .param p6, "willContinue"    # Z

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    .line 248
    iput-boolean p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    .line 249
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "Duration must be positive"

    invoke-static {v2, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 250
    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    const-string v1, "Start time must not be negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    const-string v1, "Path is empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 252
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 253
    .local v0, "bounds":Landroid/graphics/RectF;
    invoke-virtual {p1, v0, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 254
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    const-string v1, "Path bounds must not be negative"

    invoke-static {v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 257
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    .line 258
    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1, p1, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 259
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 261
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 262
    .local v1, "tempPath":Landroid/graphics/Path;
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 263
    const/4 v3, 0x2

    new-array v3, v3, [F

    iput-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    .line 264
    new-instance v3, Landroid/graphics/PathMeasure;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 265
    .local v3, "pathMeasure":Landroid/graphics/PathMeasure;
    iget-object v5, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 267
    .end local v1    # "tempPath":Landroid/graphics/Path;
    .end local v3    # "pathMeasure":Landroid/graphics/PathMeasure;
    :cond_3
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v1

    if-nez v1, :cond_4

    .line 274
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 275
    iput-wide p2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    .line 276
    add-long v1, p2, p4

    iput-wide v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    .line 277
    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getLength()F

    move-result v1

    long-to-float v2, p4

    div-float/2addr v1, v2

    iput v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTimeToLengthConversion:F

    .line 278
    sget v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->sIdCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->sIdCounter:I

    iput v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    .line 279
    return-void

    .line 268
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Path has more than one contour"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public continueStroke(Landroid/graphics/Path;JJZ)Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    .locals 8
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "startTime"    # J
    .param p4, "duration"    # J
    .param p6, "willContinue"    # Z

    .line 335
    iget-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    if-eqz v0, :cond_0

    .line 339
    new-instance v0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJZ)V

    .line 341
    .local v0, "strokeDescription":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    iget v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    iput v1, v0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    .line 342
    return-object v0

    .line 336
    .end local v0    # "strokeDescription":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only strokes marked willContinue can be continued"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContinuedStrokeId()I
    .locals 1

    .line 361
    iget v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    return v0
.end method

.method public getDuration()J
    .locals 4

    .line 305
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 316
    iget v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    return v0
.end method

.method getLength()F
    .locals 1

    .line 365
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    return v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    .line 287
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method getPosForTime(J[F)Z
    .locals 4
    .param p1, "time"    # J
    .param p3, "pos"    # [F

    .line 370
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    aput v0, p3, v1

    .line 372
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    aput v0, p3, v1

    .line 373
    return v1

    .line 375
    :cond_0
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 377
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getLength()F

    move-result v2

    invoke-virtual {v0, v2, p3, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v0

    return v0

    .line 379
    :cond_1
    iget v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTimeToLengthConversion:F

    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    mul-float/2addr v0, v2

    .line 380
    .local v0, "length":F
    iget-object v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v2, v0, p3, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v1

    return v1
.end method

.method public getStartTime()J
    .locals 2

    .line 296
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    return-wide v0
.end method

.method hasPointForTime(J)Z
    .locals 2
    .param p1, "time"    # J

    .line 384
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public willContinue()Z
    .locals 1

    .line 351
    iget-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    return v0
.end method
