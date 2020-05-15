.class public Landroid/graphics/RadialGradient;
.super Landroid/graphics/Shader;
.source "RadialGradient.java"


# static fields
.field private static final TYPE_COLORS_AND_POSITIONS:I = 0x1

.field private static final TYPE_COLOR_CENTER_AND_COLOR_EDGE:I = 0x2


# instance fields
.field private mCenterColor:I

.field private mColors:[I

.field private mEdgeColor:I

.field private mPositions:[F

.field private mRadius:F

.field private mTileMode:Landroid/graphics/Shader$TileMode;

.field private mType:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(FFFIILandroid/graphics/Shader$TileMode;)V
    .locals 2
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F
    .param p4, "centerColor"    # I
    .param p5, "edgeColor"    # I
    .param p6, "tileMode"    # Landroid/graphics/Shader$TileMode;

    .line 89
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 90
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/RadialGradient;->mType:I

    .line 94
    iput p1, p0, Landroid/graphics/RadialGradient;->mX:F

    .line 95
    iput p2, p0, Landroid/graphics/RadialGradient;->mY:F

    .line 96
    iput p3, p0, Landroid/graphics/RadialGradient;->mRadius:F

    .line 97
    iput p4, p0, Landroid/graphics/RadialGradient;->mCenterColor:I

    .line 98
    iput p5, p0, Landroid/graphics/RadialGradient;->mEdgeColor:I

    .line 99
    iput-object p6, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 100
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "radius must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V
    .locals 2
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F
    .param p4, "colors"    # [I
    .param p5, "stops"    # [F
    .param p6, "tileMode"    # Landroid/graphics/Shader$TileMode;

    .line 59
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 60
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_4

    .line 63
    array-length v0, p4

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 66
    if-eqz p5, :cond_1

    array-length v0, p4

    array-length v1, p5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color and position arrays must be of equal length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/RadialGradient;->mType:I

    .line 70
    iput p1, p0, Landroid/graphics/RadialGradient;->mX:F

    .line 71
    iput p2, p0, Landroid/graphics/RadialGradient;->mY:F

    .line 72
    iput p3, p0, Landroid/graphics/RadialGradient;->mRadius:F

    .line 73
    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/graphics/RadialGradient;->mColors:[I

    .line 74
    if-eqz p5, :cond_2

    invoke-virtual {p5}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Landroid/graphics/RadialGradient;->mPositions:[F

    .line 75
    iput-object p6, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 76
    return-void

    .line 64
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "needs >= 2 number of colors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "radius must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeCreate1(JFFF[I[FI)J
.end method

.method private static native nativeCreate2(JFFFIII)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 9

    .line 119
    iget v0, p0, Landroid/graphics/RadialGradient;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 120
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v3, p0, Landroid/graphics/RadialGradient;->mX:F

    iget v4, p0, Landroid/graphics/RadialGradient;->mY:F

    iget v5, p0, Landroid/graphics/RadialGradient;->mRadius:F

    iget-object v1, p0, Landroid/graphics/RadialGradient;->mColors:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [I

    .line 121
    iget-object v1, p0, Landroid/graphics/RadialGradient;->mPositions:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/RadialGradient;->mPositions:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v8, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .local v0, "copy":Landroid/graphics/RadialGradient;
    goto :goto_2

    .line 123
    .end local v0    # "copy":Landroid/graphics/RadialGradient;
    :cond_1
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v2, p0, Landroid/graphics/RadialGradient;->mX:F

    iget v3, p0, Landroid/graphics/RadialGradient;->mY:F

    iget v4, p0, Landroid/graphics/RadialGradient;->mRadius:F

    iget v5, p0, Landroid/graphics/RadialGradient;->mCenterColor:I

    iget v6, p0, Landroid/graphics/RadialGradient;->mEdgeColor:I

    iget-object v7, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 125
    .restart local v0    # "copy":Landroid/graphics/RadialGradient;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/graphics/RadialGradient;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 126
    return-object v0
.end method

.method createNativeInstance(J)J
    .locals 10
    .param p1, "nativeMatrix"    # J

    .line 104
    iget v0, p0, Landroid/graphics/RadialGradient;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 105
    iget v4, p0, Landroid/graphics/RadialGradient;->mX:F

    iget v5, p0, Landroid/graphics/RadialGradient;->mY:F

    iget v6, p0, Landroid/graphics/RadialGradient;->mRadius:F

    iget-object v7, p0, Landroid/graphics/RadialGradient;->mColors:[I

    iget-object v8, p0, Landroid/graphics/RadialGradient;->mPositions:[F

    iget-object v0, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    iget v9, v0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move-wide v2, p1

    invoke-static/range {v2 .. v9}, Landroid/graphics/RadialGradient;->nativeCreate1(JFFF[I[FI)J

    move-result-wide v0

    return-wide v0

    .line 108
    :cond_0
    iget v4, p0, Landroid/graphics/RadialGradient;->mX:F

    iget v5, p0, Landroid/graphics/RadialGradient;->mY:F

    iget v6, p0, Landroid/graphics/RadialGradient;->mRadius:F

    iget v7, p0, Landroid/graphics/RadialGradient;->mCenterColor:I

    iget v8, p0, Landroid/graphics/RadialGradient;->mEdgeColor:I

    iget-object v0, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    iget v9, v0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move-wide v2, p1

    invoke-static/range {v2 .. v9}, Landroid/graphics/RadialGradient;->nativeCreate2(JFFFIII)J

    move-result-wide v0

    return-wide v0
.end method
