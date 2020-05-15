.class public final Landroid/hardware/camera2/params/TonemapCurve;
.super Ljava/lang/Object;
.source "TonemapCurve.java"


# static fields
.field public static final CHANNEL_BLUE:I = 0x2

.field public static final CHANNEL_GREEN:I = 0x1

.field public static final CHANNEL_RED:I = 0x0

.field public static final LEVEL_BLACK:F = 0.0f

.field public static final LEVEL_WHITE:F = 1.0f

.field private static final MIN_CURVE_LENGTH:I = 0x4

.field private static final OFFSET_POINT_IN:I = 0x0

.field private static final OFFSET_POINT_OUT:I = 0x1

.field public static final POINT_SIZE:I = 0x2

.field private static final TONEMAP_MIN_CURVE_POINTS:I = 0x2


# instance fields
.field private final mBlue:[F

.field private final mGreen:[F

.field private mHashCalculated:Z

.field private mHashCode:I

.field private final mRed:[F


# direct methods
.method public constructor <init>([F[F[F)V
    .locals 3
    .param p1, "red"    # [F
    .param p2, "green"    # [F
    .param p3, "blue"    # [F

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCalculated:Z

    .line 106
    const-string/jumbo v0, "red must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "green must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "blue must not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v0, "red"

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V

    .line 111
    const-string v0, "green"

    invoke-static {p2, v1, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V

    .line 112
    const-string v0, "blue"

    invoke-static {p3, v1, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V

    .line 114
    const-string/jumbo v0, "red"

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V

    .line 115
    const-string v0, "green"

    invoke-static {p2, v1, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V

    .line 116
    const-string v0, "blue"

    invoke-static {p3, v1, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V

    .line 118
    const-string/jumbo v0, "red"

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 119
    const-string v0, "green"

    invoke-static {p2, v2, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 120
    const-string v0, "blue"

    invoke-static {p3, v2, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 122
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    .line 123
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    .line 124
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    .line 125
    return-void
.end method

.method private static checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V
    .locals 3
    .param p0, "array"    # [F
    .param p1, "divisible"    # I
    .param p2, "arrayName"    # Ljava/lang/String;

    .line 129
    array-length v0, p0

    rem-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 133
    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " size must be divisible by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V
    .locals 3
    .param p0, "array"    # [F
    .param p1, "minLength"    # I
    .param p2, "arrayName"    # Ljava/lang/String;

    .line 150
    array-length v0, p0

    if-lt v0, p1, :cond_0

    .line 154
    return-void

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " size must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkArgumentColorChannel(I)I
    .locals 2
    .param p0, "colorChannel"    # I

    .line 136
    packed-switch p0, :pswitch_data_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colorChannel out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :pswitch_0
    nop

    .line 145
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private curveToString(I)Ljava/lang/String;
    .locals 6
    .param p1, "colorChannel"    # I

    .line 310
    invoke-static {p1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentColorChannel(I)I

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object v1

    .line 313
    .local v1, "curve":[F
    array-length v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 314
    .local v2, "pointCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 315
    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    aget v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 317
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    add-int/lit8 v5, v4, 0x1

    aget v5, v1, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 319
    const-string v5, "), "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 322
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 323
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getCurve(I)[F
    .locals 2
    .param p1, "colorChannel"    # I

    .line 328
    packed-switch p1, :pswitch_data_0

    .line 336
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "colorChannel out of range"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 334
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    return-object v0

    .line 332
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    return-object v0

    .line 330
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public copyColorCurve(I[FI)V
    .locals 3
    .param p1, "colorChannel"    # I
    .param p2, "destination"    # [F
    .param p3, "offset"    # I

    .line 234
    const-string/jumbo v0, "offset must not be negative"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 235
    const-string v0, "destination must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    array-length v0, p2

    add-int/2addr v0, p3

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 241
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object v0

    .line 242
    .local v0, "curve":[F
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    return-void

    .line 238
    .end local v0    # "curve":[F
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destination too small to fit elements"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 255
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 256
    return v0

    .line 258
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 259
    return v1

    .line 261
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/TonemapCurve;

    if-eqz v2, :cond_3

    .line 262
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/TonemapCurve;

    .line 263
    .local v2, "other":Landroid/hardware/camera2/params/TonemapCurve;
    iget-object v3, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    iget-object v4, v2, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    iget-object v4, v2, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    .line 264
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    iget-object v4, v2, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    .line 265
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 263
    move v0, v1

    goto :goto_0

    .line 265
    :cond_2
    nop

    .line 263
    :goto_0
    return v0

    .line 267
    .end local v2    # "other":Landroid/hardware/camera2/params/TonemapCurve;
    :cond_3
    return v0
.end method

.method public getPoint(II)Landroid/graphics/PointF;
    .locals 4
    .param p1, "colorChannel"    # I
    .param p2, "index"    # I

    .line 189
    invoke-static {p1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentColorChannel(I)I

    .line 190
    if-ltz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 194
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object v0

    .line 196
    .local v0, "curve":[F
    mul-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v1, v0, v1

    .line 197
    .local v1, "pIn":F
    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, v0, v2

    .line 199
    .local v2, "pOut":F
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3

    .line 191
    .end local v0    # "curve":[F
    .end local v1    # "pIn":F
    .end local v2    # "pOut":F
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPointCount(I)I
    .locals 1
    .param p1, "colorChannel"    # I

    .line 165
    invoke-static {p1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentColorChannel(I)I

    .line 167
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object v0

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 275
    iget-boolean v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCalculated:Z

    if-eqz v0, :cond_0

    .line 277
    iget v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCode:I

    return v0

    .line 280
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [[F

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    aput-object v2, v0, v1

    iget-object v1, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v3, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    aput-object v3, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCode:I

    .line 281
    iput-boolean v2, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCalculated:Z

    .line 283
    iget v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TonemapCurve{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->curveToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v1, ", G:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->curveToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, ", B:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->curveToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
