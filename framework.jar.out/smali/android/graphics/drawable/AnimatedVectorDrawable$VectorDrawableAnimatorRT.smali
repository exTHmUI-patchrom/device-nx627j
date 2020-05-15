.class public Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VectorDrawableAnimatorRT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT$AnimationEndTask;
    }
.end annotation


# static fields
.field private static final END_ANIMATION:I = 0x4

.field private static final MAX_SAMPLE_POINTS:I = 0x12c

.field private static final RESET_ANIMATION:I = 0x3

.field private static final REVERSE_ANIMATION:I = 0x2

.field private static final START_ANIMATION:I = 0x1


# instance fields
.field private mContainsSequentialAnimators:Z

.field private final mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mInitialized:Z

.field private mIsInfinite:Z

.field private mIsReversible:Z

.field private mLastListenerId:I

.field private mLastSeenTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/RenderNode;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field private final mPendingAnimationActions:Landroid/util/IntArray;

.field private mSetPtr:J

.field private final mSetRefBasePtr:Lcom/android/internal/util/VirtualRefBasePtr;

.field private final mStartDelays:Landroid/util/LongArray;

.field private mStarted:Z

.field private mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1239
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 1240
    new-instance v1, Landroid/util/LongArray;

    invoke-direct {v1}, Landroid/util/LongArray;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    .line 1241
    new-instance v1, Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-direct {v1}, Landroid/animation/PropertyValuesHolder$PropertyValues;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    .line 1243
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    .line 1244
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    .line 1245
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1246
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    .line 1247
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    .line 1248
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    .line 1251
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    .line 1252
    iput v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    .line 1253
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    .line 1257
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 1258
    invoke-static {}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$800()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    .line 1261
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    iget-wide v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetRefBasePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1262
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/util/IntArray;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    .line 1231
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$200(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    .line 1231
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    .param p1, "x1"    # I

    .line 1231
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->onAnimationEnd(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    .param p1, "x1"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    .line 1231
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->transferPendingActions(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V

    return-void
.end method

.method private addPendingAction(I)V
    .locals 1
    .param p1, "pendingAnimationAction"    # I

    .line 1597
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1598
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 1599
    return-void
.end method

.method private static callOnFinished(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .locals 4
    .param p0, "set"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    .param p1, "id"    # I

    .line 1778
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1779
    .local v0, "isUIThread":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1780
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->onAnimationEnd(I)V

    goto :goto_1

    .line 1782
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT$AnimationEndTask;

    invoke-direct {v2, p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT$AnimationEndTask;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1785
    :goto_1
    return-void
.end method

.method private static createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F
    .locals 6
    .param p0, "dataSource"    # Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;
    .param p1, "duration"    # J

    .line 1500
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->getFrameCount(J)I

    move-result v0

    .line 1501
    .local v0, "numAnimFrames":I
    new-array v1, v0, [F

    .line 1502
    .local v1, "values":[F
    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    .line 1503
    .local v2, "lastFrame":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1504
    int-to-float v4, v3

    div-float/2addr v4, v2

    .line 1505
    .local v4, "fraction":F
    invoke-interface {p0, v4}, Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;->getValueAtFraction(F)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v1, v3

    .line 1503
    .end local v4    # "fraction":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1507
    .end local v3    # "i":I
    :cond_0
    return-object v1
.end method

.method private static createIntDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[I
    .locals 6
    .param p0, "dataSource"    # Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;
    .param p1, "duration"    # J

    .line 1512
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->getFrameCount(J)I

    move-result v0

    .line 1513
    .local v0, "numAnimFrames":I
    new-array v1, v0, [I

    .line 1514
    .local v1, "values":[I
    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    .line 1515
    .local v2, "lastFrame":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1516
    int-to-float v4, v3

    div-float/2addr v4, v2

    .line 1517
    .local v4, "fraction":F
    invoke-interface {p0, v4}, Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;->getValueAtFraction(F)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v3

    .line 1515
    .end local v4    # "fraction":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1519
    .end local v3    # "i":I
    :cond_0
    return-object v1
.end method

.method private createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V
    .locals 22
    .param p1, "propertyPtr"    # J
    .param p3, "extraDelay"    # J
    .param p5, "animator"    # Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    .line 1524
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v1

    .line 1525
    .local v1, "duration":J
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getRepeatCount()I

    move-result v15

    .line 1526
    .local v15, "repeatCount":I
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getStartDelay()J

    move-result-wide v3

    add-long v3, p3, v3

    .line 1527
    .local v3, "startDelay":J
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v14

    .line 1528
    .local v14, "interpolator":Landroid/animation/TimeInterpolator;
    nop

    .line 1529
    invoke-static {v14, v1, v2}, Landroid/view/RenderNodeAnimatorSetHelper;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    move-result-wide v16

    .line 1531
    .local v16, "nativeInterpolator":J
    long-to-float v5, v3

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-long v11, v5

    .line 1532
    .end local v3    # "startDelay":J
    .local v11, "startDelay":J
    long-to-float v3, v1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-long v1, v3

    .line 1534
    iget-object v3, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    invoke-virtual {v3, v11, v12}, Landroid/util/LongArray;->add(J)V

    .line 1535
    iget-wide v3, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    .line 1536
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getRepeatMode()I

    move-result v18

    .line 1535
    move-wide/from16 v5, p1

    move-wide/from16 v7, v16

    move-wide v9, v11

    move-wide/from16 v19, v11

    move-wide v11, v1

    .end local v11    # "startDelay":J
    .local v19, "startDelay":J
    move v13, v15

    move-object/from16 v21, v14

    move/from16 v14, v18

    .end local v14    # "interpolator":Landroid/animation/TimeInterpolator;
    .local v21, "interpolator":Landroid/animation/TimeInterpolator;
    invoke-static/range {v3 .. v14}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$1800(JJJJJII)V

    .line 1537
    return-void
.end method

.method private createRTAnimator(Landroid/animation/ObjectAnimator;J)V
    .locals 8
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "startTime"    # J

    .line 1319
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 1320
    .local v6, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v7

    .line 1321
    .local v7, "target":Ljava/lang/Object;
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_0

    .line 1322
    move-object v3, v7

    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VGroup;J)V

    goto :goto_2

    .line 1324
    :cond_0
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VPath;

    if-eqz v0, :cond_4

    .line 1325
    const/4 v0, 0x0

    .line 1325
    .local v0, "i":I
    :goto_0
    array-length v1, v6

    if-ge v0, v1, :cond_5

    .line 1326
    aget-object v1, v6, v0

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-virtual {v1, v2}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    .line 1327
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    instance-of v1, v1, Landroid/util/PathParser$PathData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    const-string/jumbo v2, "pathData"

    .line 1328
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1329
    move-object v1, v7

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VPath;

    invoke-direct {p0, p1, v1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VPath;J)V

    goto :goto_1

    .line 1331
    :cond_1
    instance-of v1, v7, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    if-eqz v1, :cond_2

    .line 1332
    move-object v1, v7

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-direct {p0, p1, v1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForFullPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VFullPath;J)V

    goto :goto_1

    .line 1334
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$900(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->access$100(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1325
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1335
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ClipPath only supports PathData property"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1339
    .end local v0    # "i":I
    :cond_4
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v0, :cond_5

    .line 1340
    move-object v3, v7

    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForRootGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;J)V

    .line 1343
    :cond_5
    :goto_2
    return-void
.end method

.method private createRTAnimatorForFullPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VFullPath;J)V
    .locals 9
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "target"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;
    .param p3, "startTime"    # J

    .line 1395
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPropertyIndex(Ljava/lang/String;)I

    move-result v6

    .line 1397
    .local v6, "propertyId":I
    invoke-virtual {p2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getNativePtr()J

    move-result-wide v7

    .line 1398
    .local v7, "nativePtr":J
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1416
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1426
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$900(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->access$100(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1427
    return-void

    .line 1429
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v2, v2, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Only float, int or PathData value is supported for Paths."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1417
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 1418
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1417
    invoke-static {v7, v8, v6, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$1500(JIII)J

    move-result-wide v0

    .line 1419
    .local v0, "propertyPtr":J
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v2, v2, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v2, :cond_7

    .line 1421
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v2, v2, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1422
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v3

    .line 1421
    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createIntDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[I

    move-result-object v2

    .line 1423
    .local v2, "dataPoints":[I
    array-length v3, v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$1600(J[II)V

    .line 1424
    .end local v2    # "dataPoints":[I
    goto :goto_2

    .line 1399
    .end local v0    # "propertyPtr":J
    :cond_4
    :goto_1
    if-gez v6, :cond_6

    .line 1400
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$900(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->access$100(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1401
    return-void

    .line 1403
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v2, v2, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not supported for FullPath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1407
    :cond_6
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    .line 1408
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1407
    invoke-static {v7, v8, v6, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$1400(JIFF)J

    move-result-wide v0

    .line 1409
    .restart local v0    # "propertyPtr":J
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v2, v2, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v2, :cond_7

    .line 1411
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v2, v2, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1412
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v3

    .line 1411
    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    move-result-object v2

    .line 1413
    .local v2, "dataPoints":[F
    array-length v3, v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$1200(J[FI)V

    .line 1414
    .end local v2    # "dataPoints":[F
    nop

    .line 1429
    :cond_7
    :goto_2
    move-wide v1, v0

    .line 1434
    .end local v0    # "propertyPtr":J
    .local v1, "propertyPtr":J
    move-object v0, p0

    move-wide v3, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    .line 1435
    return-void
.end method

.method private createRTAnimatorForGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VGroup;J)V
    .locals 14
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;
    .param p2, "animator"    # Landroid/animation/ObjectAnimator;
    .param p3, "target"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .param p4, "startTime"    # J

    move-object v6, p0

    move-object v7, p1

    .line 1349
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getNativePtr()J

    move-result-wide v8

    .line 1351
    .local v8, "nativePtr":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    array-length v0, v7

    if-ge v10, v0, :cond_3

    .line 1353
    aget-object v0, v7, v10

    iget-object v1, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-virtual {v0, v1}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    .line 1354
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getPropertyIndex(Ljava/lang/String;)I

    move-result v11

    .line 1355
    .local v11, "propertyId":I
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-eq v0, v1, :cond_0

    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    .line 1360
    goto :goto_1

    .line 1362
    :cond_0
    if-gez v11, :cond_1

    .line 1367
    goto :goto_1

    .line 1369
    :cond_1
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    .line 1370
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1369
    invoke-static {v8, v9, v11, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$1100(JIFF)J

    move-result-wide v12

    .line 1371
    .local v12, "propertyPtr":J
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v0, :cond_2

    .line 1372
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1373
    invoke-virtual/range {p2 .. p2}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v1

    .line 1372
    invoke-static {v0, v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    move-result-object v0

    .line 1374
    .local v0, "dataPoints":[F
    array-length v1, v0

    invoke-static {v12, v13, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$1200(J[FI)V

    .line 1376
    .end local v0    # "dataPoints":[F
    :cond_2
    move-object v0, v6

    move-wide v1, v12

    move-wide/from16 v3, p4

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    .line 1351
    .end local v12    # "propertyPtr":J
    :goto_1
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "i":I
    .local v0, "i":I
    goto :goto_0

    .line 1378
    .end local v0    # "i":I
    .end local v11    # "propertyId":I
    :cond_3
    return-void
.end method

.method private createRTAnimatorForPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VPath;J)V
    .locals 15
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "target"    # Landroid/graphics/drawable/VectorDrawable$VPath;
    .param p3, "startTime"    # J

    move-object v6, p0

    .line 1382
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/VectorDrawable$VPath;->getNativePtr()J

    move-result-wide v7

    .line 1383
    .local v7, "nativePtr":J
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/PathParser$PathData;

    .line 1384
    invoke-virtual {v0}, Landroid/util/PathParser$PathData;->getNativePtr()J

    move-result-wide v9

    .line 1385
    .local v9, "startPathDataPtr":J
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/PathParser$PathData;

    .line 1386
    invoke-virtual {v0}, Landroid/util/PathParser$PathData;->getNativePtr()J

    move-result-wide v11

    .line 1387
    .local v11, "endPathDataPtr":J
    move-wide v0, v7

    move-wide v2, v9

    move-wide v4, v11

    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$1300(JJJ)J

    move-result-wide v13

    .line 1389
    .local v13, "propertyPtr":J
    move-object v0, v6

    move-wide v1, v13

    move-wide/from16 v3, p3

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    .line 1390
    return-void
.end method

.method private createRTAnimatorForRootGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;J)V
    .locals 14
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;
    .param p2, "animator"    # Landroid/animation/ObjectAnimator;
    .param p3, "target"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p4, "startTime"    # J

    move-object v6, p0

    move-object v7, p1

    .line 1440
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v8

    .line 1441
    .local v8, "nativePtr":J
    invoke-virtual/range {p2 .. p2}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1442
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$900(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->access$100(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1443
    return-void

    .line 1445
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only alpha is supported for root group"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1449
    :cond_1
    const/4 v0, 0x0

    .line 1450
    .local v0, "startValue":Ljava/lang/Float;
    const/4 v1, 0x0

    .line 1451
    .local v1, "endValue":Ljava/lang/Float;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v7

    if-ge v2, v3, :cond_3

    .line 1452
    aget-object v3, v7, v2

    iget-object v4, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-virtual {v3, v4}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    .line 1453
    iget-object v3, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v3, v3, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    const-string v4, "alpha"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1454
    iget-object v3, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v3, v3, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Ljava/lang/Float;

    .line 1455
    iget-object v3, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v3, v3, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Ljava/lang/Float;

    .line 1456
    goto :goto_1

    .line 1451
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1459
    .end local v0    # "startValue":Ljava/lang/Float;
    .end local v1    # "endValue":Ljava/lang/Float;
    .end local v2    # "i":I
    .local v10, "startValue":Ljava/lang/Float;
    .local v11, "endValue":Ljava/lang/Float;
    :cond_3
    :goto_1
    move-object v10, v0

    move-object v11, v1

    if-nez v10, :cond_5

    if-nez v11, :cond_5

    .line 1460
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$900(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->access$100(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1461
    return-void

    .line 1463
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No alpha values are specified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1466
    :cond_5
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v8, v9, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$1700(JFF)J

    move-result-wide v12

    .line 1467
    .local v12, "propertyPtr":J
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v0, :cond_6

    .line 1469
    iget-object v0, v6, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1470
    invoke-virtual/range {p2 .. p2}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v1

    .line 1469
    invoke-static {v0, v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    move-result-object v0

    .line 1471
    .local v0, "dataPoints":[F
    array-length v1, v0

    invoke-static {v12, v13, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$1200(J[FI)V

    .line 1473
    .end local v0    # "dataPoints":[F
    :cond_6
    move-object v0, v6

    move-wide v1, v12

    move-wide/from16 v3, p4

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    .line 1474
    return-void
.end method

.method private endAnimation()V
    .locals 2

    .line 1684
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$2000(J)V

    .line 1685
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1686
    return-void
.end method

.method private static getFrameCount(J)I
    .locals 7
    .param p0, "duration"    # J

    .line 1480
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v0

    .line 1481
    .local v0, "frameIntervalNanos":J
    const-wide/32 v2, 0xf4240

    div-long v2, v0, v2

    long-to-int v2, v2

    .line 1482
    .local v2, "animIntervalMs":I
    long-to-double v3, p0

    int-to-double v5, v2

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 1484
    .local v3, "numAnimFrames":I
    const/4 v4, 0x2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1485
    const/16 v4, 0x12c

    if-le v3, v4, :cond_0

    .line 1486
    const-string v4, "AnimatedVectorDrawable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duration for the animation is too long :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", the animation will subsample the keyframe or path data."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    const/16 v3, 0x12c

    .line 1490
    :cond_0
    return v3
.end method

.method private handlePendingAction(I)V
    .locals 3
    .param p1, "pendingAnimationAction"    # I

    .line 1562
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1563
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->startAnimation()V

    goto :goto_0

    .line 1564
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1565
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->reverseAnimation()V

    goto :goto_0

    .line 1566
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1567
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->resetAnimation()V

    goto :goto_0

    .line 1568
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1569
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->endAnimation()V

    .line 1574
    :goto_0
    return-void

    .line 1571
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animation action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateOwningView()V
    .locals 1

    .line 1593
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->invalidateSelf()V

    .line 1594
    return-void
.end method

.method private onAnimationEnd(I)V
    .locals 2
    .param p1, "listenerId"    # I

    .line 1759
    iget v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    if-eq p1, v0, :cond_0

    .line 1760
    return-void

    .line 1765
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1768
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1769
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_1

    .line 1770
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1772
    :cond_1
    return-void
.end method

.method private parseAnimatorSet(Landroid/animation/AnimatorSet;J)V
    .locals 6
    .param p1, "set"    # Landroid/animation/AnimatorSet;
    .param p2, "startTime"    # J

    .line 1294
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 1296
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->shouldPlayTogether()Z

    move-result v1

    .line 1298
    .local v1, "playTogether":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1299
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 1301
    .local v3, "animator":Landroid/animation/Animator;
    instance-of v4, v3, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    .line 1302
    move-object v4, v3

    check-cast v4, Landroid/animation/AnimatorSet;

    invoke-direct {p0, v4, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->parseAnimatorSet(Landroid/animation/AnimatorSet;J)V

    goto :goto_1

    .line 1303
    :cond_0
    instance-of v4, v3, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_1

    .line 1304
    move-object v4, v3

    check-cast v4, Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v4, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimator(Landroid/animation/ObjectAnimator;J)V

    .line 1308
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 1310
    invoke-virtual {v3}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v4

    add-long/2addr p2, v4

    .line 1311
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    .line 1298
    .end local v3    # "animator":Landroid/animation/Animator;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1314
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private resetAnimation()V
    .locals 2

    .line 1690
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$2100(J)V

    .line 1691
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1692
    return-void
.end method

.method private reverseAnimation()V
    .locals 4

    .line 1696
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1697
    iget-wide v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    iget v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    invoke-static {v1, v2, p0, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$2200(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    .line 1698
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1699
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 1700
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1702
    :cond_0
    return-void
.end method

.method private startAnimation()V
    .locals 4

    .line 1668
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1669
    iget-wide v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    iget v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    invoke-static {v1, v2, p0, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$1900(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    .line 1670
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1671
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 1672
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1674
    :cond_0
    return-void
.end method

.method private transferPendingActions(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V
    .locals 5
    .param p1, "animatorSet"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    .line 1804
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1805
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    .line 1806
    .local v1, "pendingAction":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1807
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->start()V

    goto :goto_1

    .line 1808
    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1809
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->end()V

    goto :goto_1

    .line 1810
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1811
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reverse()V

    goto :goto_1

    .line 1812
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1813
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reset()V

    .line 1804
    .end local v1    # "pendingAction":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1815
    .restart local v1    # "pendingAction":I
    :cond_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animation action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1819
    .end local v0    # "i":I
    .end local v1    # "pendingAction":I
    :cond_4
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 1820
    return-void
.end method

.method private useLastSeenTarget()Z
    .locals 2

    .line 1577
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RenderNode;

    .line 1579
    .local v0, "target":Landroid/view/RenderNode;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useTarget(Landroid/view/RenderNode;)Z

    move-result v1

    return v1

    .line 1581
    .end local v0    # "target":Landroid/view/RenderNode;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private useTarget(Landroid/view/RenderNode;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/RenderNode;

    .line 1585
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/RenderNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1586
    invoke-virtual {p1, p0}, Landroid/view/RenderNode;->registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V

    .line 1587
    const/4 v0, 0x1

    return v0

    .line 1589
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public canReverse()Z
    .locals 1

    .line 1710
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    return v0
.end method

.method public end()V
    .locals 1

    .line 1619
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_0

    .line 1620
    return-void

    .line 1623
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1624
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->endAnimation()V

    goto :goto_0

    .line 1626
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    .line 1628
    :goto_0
    return-void
.end method

.method public getAnimatorNativePtr()J
    .locals 2

    .line 1705
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    return-wide v0
.end method

.method public init(Landroid/animation/AnimatorSet;)V
    .locals 9
    .param p1, "set"    # Landroid/animation/AnimatorSet;

    .line 1266
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_4

    .line 1271
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->parseAnimatorSet(Landroid/animation/AnimatorSet;J)V

    .line 1272
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$900(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v2

    iget-object v2, v2, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 1273
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable;->getNativeTree()J

    move-result-wide v2

    .line 1274
    .local v2, "vectorDrawableTreePtr":J
    iget-wide v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-static {v4, v5, v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$1000(JJ)V

    .line 1275
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    .line 1276
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iput-boolean v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    .line 1279
    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    .line 1280
    iget-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    if-eqz v4, :cond_1

    .line 1281
    iput-boolean v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    goto :goto_2

    .line 1284
    :cond_1
    move v4, v6

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    invoke-virtual {v5}, Landroid/util/LongArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1285
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    invoke-virtual {v5, v4}, Landroid/util/LongArray;->get(I)J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-lez v5, :cond_2

    .line 1286
    iput-boolean v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    .line 1287
    return-void

    .line 1284
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1291
    .end local v4    # "i":I
    :cond_3
    :goto_2
    return-void

    .line 1268
    .end local v2    # "vectorDrawableTreePtr":J
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "VectorDrawableAnimator cannot be re-initialized"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInfinite()Z
    .locals 1

    .line 1745
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1720
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_0

    .line 1721
    const/4 v0, 0x0

    return v0

    .line 1723
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 1715
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1738
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1739
    move-object v0, p1

    check-cast v0, Landroid/view/DisplayListCanvas;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->recordLastSeenTarget(Landroid/view/DisplayListCanvas;)V

    .line 1741
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .line 1751
    return-void
.end method

.method protected recordLastSeenTarget(Landroid/view/DisplayListCanvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .line 1545
    invoke-static {p1}, Landroid/view/RenderNodeAnimatorSetHelper;->getTarget(Landroid/view/DisplayListCanvas;)Landroid/view/RenderNode;

    move-result-object v0

    .line 1546
    .local v0, "node":Landroid/view/RenderNode;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    .line 1548
    iget-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1549
    :cond_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useTarget(Landroid/view/RenderNode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1553
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1554
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->handlePendingAction(I)V

    .line 1553
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1556
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 1559
    :cond_2
    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 1733
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 1734
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1632
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_0

    .line 1633
    return-void

    .line 1636
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1637
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->resetAnimation()V

    goto :goto_0

    .line 1639
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    .line 1641
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 1756
    return-void
.end method

.method public reverse()V
    .locals 1

    .line 1647
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1650
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1654
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->reverseAnimation()V

    goto :goto_0

    .line 1656
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    .line 1658
    :goto_0
    return-void

    .line 1648
    :cond_2
    :goto_1
    return-void
.end method

.method public setListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 1728
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 1729
    return-void
.end method

.method public start()V
    .locals 1

    .line 1603
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_0

    .line 1604
    return-void

    .line 1607
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1611
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->startAnimation()V

    goto :goto_0

    .line 1613
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    .line 1615
    :goto_0
    return-void
.end method
