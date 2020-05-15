.class public abstract Landroid/util/Spline;
.super Ljava/lang/Object;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Spline$LinearSpline;,
        Landroid/util/Spline$MonotoneCubicSpline;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLinearSpline([F[F)Landroid/util/Spline;
    .locals 1
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .line 91
    new-instance v0, Landroid/util/Spline$LinearSpline;

    invoke-direct {v0, p0, p1}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    return-object v0
.end method

.method public static createMonotoneCubicSpline([F[F)Landroid/util/Spline;
    .locals 1
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .line 72
    new-instance v0, Landroid/util/Spline$MonotoneCubicSpline;

    invoke-direct {v0, p0, p1}, Landroid/util/Spline$MonotoneCubicSpline;-><init>([F[F)V

    return-object v0
.end method

.method public static createSpline([F[F)Landroid/util/Spline;
    .locals 2
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .line 41
    invoke-static {p0}, Landroid/util/Spline;->isStrictlyIncreasing([F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-static {p1}, Landroid/util/Spline;->isMonotonic([F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p0, p1}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    return-object v0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The control points must all have strictly increasing X values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isMonotonic([F)Z
    .locals 6
    .param p0, "x"    # [F

    .line 110
    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 113
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 114
    .local v1, "prev":F
    const/4 v2, 0x1

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "prev":F
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 115
    aget v4, p0, v1

    .line 116
    .local v4, "curr":F
    cmpg-float v5, v4, v3

    if-gez v5, :cond_0

    .line 117
    return v0

    .line 119
    :cond_0
    move v3, v4

    .line 114
    .end local v4    # "curr":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_1
    return v2

    .line 111
    .end local v3    # "prev":F
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be at least two control points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isStrictlyIncreasing([F)Z
    .locals 6
    .param p0, "x"    # [F

    .line 95
    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 98
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 99
    .local v1, "prev":F
    const/4 v2, 0x1

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "prev":F
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 100
    aget v4, p0, v1

    .line 101
    .local v4, "curr":F
    cmpg-float v5, v4, v3

    if-gtz v5, :cond_0

    .line 102
    return v0

    .line 104
    :cond_0
    move v3, v4

    .line 99
    .end local v4    # "curr":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "i":I
    :cond_1
    return v2

    .line 96
    .end local v3    # "prev":F
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be at least two control points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract interpolate(F)F
.end method
