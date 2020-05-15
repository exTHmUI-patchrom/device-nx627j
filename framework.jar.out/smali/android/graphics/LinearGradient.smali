.class public Landroid/graphics/LinearGradient;
.super Landroid/graphics/Shader;
.source "LinearGradient.java"


# static fields
.field private static final TYPE_COLORS_AND_POSITIONS:I = 0x1

.field private static final TYPE_COLOR_START_AND_COLOR_END:I = 0x2


# instance fields
.field private mColor0:I

.field private mColor1:I

.field private mColors:[I

.field private mPositions:[F

.field private mTileMode:Landroid/graphics/Shader$TileMode;

.field private mType:I

.field private mX0:F

.field private mX1:F

.field private mY0:F

.field private mY1:F


# direct methods
.method public constructor <init>(FFFFIILandroid/graphics/Shader$TileMode;)V
    .locals 1
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "color0"    # I
    .param p6, "color1"    # I
    .param p7, "tile"    # Landroid/graphics/Shader$TileMode;

    .line 89
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/LinearGradient;->mType:I

    .line 91
    iput p1, p0, Landroid/graphics/LinearGradient;->mX0:F

    .line 92
    iput p2, p0, Landroid/graphics/LinearGradient;->mY0:F

    .line 93
    iput p3, p0, Landroid/graphics/LinearGradient;->mX1:F

    .line 94
    iput p4, p0, Landroid/graphics/LinearGradient;->mY1:F

    .line 95
    iput p5, p0, Landroid/graphics/LinearGradient;->mColor0:I

    .line 96
    iput p6, p0, Landroid/graphics/LinearGradient;->mColor1:I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/LinearGradient;->mColors:[I

    .line 98
    iput-object v0, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    .line 99
    iput-object p7, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 100
    return-void
.end method

.method public constructor <init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V
    .locals 2
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "colors"    # [I
    .param p6, "positions"    # [F
    .param p7, "tile"    # Landroid/graphics/Shader$TileMode;

    .line 59
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 60
    array-length v0, p5

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 63
    if-eqz p6, :cond_1

    array-length v0, p5

    array-length v1, p6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color and position arrays must be of equal length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/LinearGradient;->mType:I

    .line 67
    iput p1, p0, Landroid/graphics/LinearGradient;->mX0:F

    .line 68
    iput p2, p0, Landroid/graphics/LinearGradient;->mY0:F

    .line 69
    iput p3, p0, Landroid/graphics/LinearGradient;->mX1:F

    .line 70
    iput p4, p0, Landroid/graphics/LinearGradient;->mY1:F

    .line 71
    invoke-virtual {p5}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/graphics/LinearGradient;->mColors:[I

    .line 72
    if-eqz p6, :cond_2

    invoke-virtual {p6}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    .line 73
    iput-object p7, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 74
    return-void

    .line 61
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "needs >= 2 number of colors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native nativeCreate1(JFFFF[I[FI)J
.end method

.method private native nativeCreate2(JFFFFIII)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 10

    .line 119
    iget v0, p0, Landroid/graphics/LinearGradient;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 120
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v3, p0, Landroid/graphics/LinearGradient;->mX0:F

    iget v4, p0, Landroid/graphics/LinearGradient;->mY0:F

    iget v5, p0, Landroid/graphics/LinearGradient;->mX1:F

    iget v6, p0, Landroid/graphics/LinearGradient;->mY1:F

    iget-object v1, p0, Landroid/graphics/LinearGradient;->mColors:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [I

    .line 121
    iget-object v1, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v9, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .local v0, "copy":Landroid/graphics/LinearGradient;
    goto :goto_2

    .line 123
    .end local v0    # "copy":Landroid/graphics/LinearGradient;
    :cond_1
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Landroid/graphics/LinearGradient;->mX0:F

    iget v3, p0, Landroid/graphics/LinearGradient;->mY0:F

    iget v4, p0, Landroid/graphics/LinearGradient;->mX1:F

    iget v5, p0, Landroid/graphics/LinearGradient;->mY1:F

    iget v6, p0, Landroid/graphics/LinearGradient;->mColor0:I

    iget v7, p0, Landroid/graphics/LinearGradient;->mColor1:I

    iget-object v8, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 125
    .restart local v0    # "copy":Landroid/graphics/LinearGradient;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/graphics/LinearGradient;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 126
    return-object v0
.end method

.method createNativeInstance(J)J
    .locals 12
    .param p1, "nativeMatrix"    # J

    .line 104
    iget v0, p0, Landroid/graphics/LinearGradient;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 105
    iget v5, p0, Landroid/graphics/LinearGradient;->mX0:F

    iget v6, p0, Landroid/graphics/LinearGradient;->mY0:F

    iget v7, p0, Landroid/graphics/LinearGradient;->mX1:F

    iget v8, p0, Landroid/graphics/LinearGradient;->mY1:F

    iget-object v9, p0, Landroid/graphics/LinearGradient;->mColors:[I

    iget-object v10, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    iget-object v0, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    iget v11, v0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v2 .. v11}, Landroid/graphics/LinearGradient;->nativeCreate1(JFFFF[I[FI)J

    move-result-wide v0

    return-wide v0

    .line 108
    :cond_0
    iget v5, p0, Landroid/graphics/LinearGradient;->mX0:F

    iget v6, p0, Landroid/graphics/LinearGradient;->mY0:F

    iget v7, p0, Landroid/graphics/LinearGradient;->mX1:F

    iget v8, p0, Landroid/graphics/LinearGradient;->mY1:F

    iget v9, p0, Landroid/graphics/LinearGradient;->mColor0:I

    iget v10, p0, Landroid/graphics/LinearGradient;->mColor1:I

    iget-object v0, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    iget v11, v0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v2 .. v11}, Landroid/graphics/LinearGradient;->nativeCreate2(JFFFFIII)J

    move-result-wide v0

    return-wide v0
.end method
