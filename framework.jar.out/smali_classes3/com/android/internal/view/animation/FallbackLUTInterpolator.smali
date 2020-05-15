.class public Lcom/android/internal/view/animation/FallbackLUTInterpolator;
.super Ljava/lang/Object;
.source "FallbackLUTInterpolator.java"

# interfaces
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# static fields
.field private static final MAX_SAMPLE_POINTS:I = 0x12c


# instance fields
.field private final mLut:[F

.field private mSourceInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>(Landroid/animation/TimeInterpolator;J)V
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p2, "duration"    # J

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->mSourceInterpolator:Landroid/animation/TimeInterpolator;

    .line 44
    invoke-static {p1, p2, p3}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->createLUT(Landroid/animation/TimeInterpolator;J)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->mLut:[F

    .line 45
    return-void
.end method

.method private static createLUT(Landroid/animation/TimeInterpolator;J)[F
    .locals 9
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p1, "duration"    # J

    .line 48
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v0

    .line 49
    .local v0, "frameIntervalNanos":J
    const-wide/32 v2, 0xf4240

    div-long v2, v0, v2

    long-to-int v2, v2

    .line 51
    .local v2, "animIntervalMs":I
    long-to-double v3, p1

    int-to-double v5, v2

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 52
    .local v3, "numAnimFrames":I
    const/16 v4, 0x12c

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 53
    new-array v4, v3, [F

    .line 54
    .local v4, "values":[F
    add-int/lit8 v5, v3, -0x1

    int-to-float v5, v5

    .line 55
    .local v5, "lastFrame":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_0

    .line 56
    int-to-float v7, v6

    div-float/2addr v7, v5

    .line 57
    .local v7, "inValue":F
    invoke-interface {p0, v7}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v8

    aput v8, v4, v6

    .line 55
    .end local v7    # "inValue":F
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 59
    .end local v6    # "i":I
    :cond_0
    return-object v4
.end method

.method public static createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J
    .locals 3
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p1, "duration"    # J

    .line 71
    invoke-static {p0, p1, p2}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->createLUT(Landroid/animation/TimeInterpolator;J)[F

    move-result-object v0

    .line 72
    .local v0, "lut":[F
    invoke-static {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createLutInterpolator([F)J

    move-result-wide v1

    return-wide v1
.end method


# virtual methods
.method public createNativeInterpolator()J
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->mLut:[F

    invoke-static {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createLutInterpolator([F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 1
    .param p1, "input"    # F

    .line 77
    iget-object v0, p0, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->mSourceInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
