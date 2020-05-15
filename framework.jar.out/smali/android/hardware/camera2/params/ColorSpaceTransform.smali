.class public final Landroid/hardware/camera2/params/ColorSpaceTransform;
.super Ljava/lang/Object;
.source "ColorSpaceTransform.java"


# static fields
.field private static final COLUMNS:I = 0x3

.field private static final COUNT:I = 0x9

.field private static final COUNT_INT:I = 0x12

.field private static final OFFSET_DENOMINATOR:I = 0x1

.field private static final OFFSET_NUMERATOR:I = 0x0

.field private static final RATIONAL_SIZE:I = 0x2

.field private static final ROWS:I = 0x3


# instance fields
.field private final mElements:[I


# direct methods
.method public constructor <init>([I)V
    .locals 3
    .param p1, "elements"    # [I

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string v0, "elements must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    array-length v0, p1

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "i":I
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    .line 123
    return-void

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "elements must be 18 length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([Landroid/util/Rational;)V
    .locals 5
    .param p1, "elements"    # [Landroid/util/Rational;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "elements must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    array-length v0, p1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 78
    const/16 v0, 0x12

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    .line 80
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "element["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] must not be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v2, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v0

    aget-object v4, p1, v1

    invoke-virtual {v4}, Landroid/util/Rational;->getNumerator()I

    move-result v4

    aput v4, v2, v3

    .line 83
    iget-object v2, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p1, v1

    invoke-virtual {v4}, Landroid/util/Rational;->getDenominator()I

    move-result v4

    aput v4, v2, v3

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "elements must be 9 length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toShortString()Ljava/lang/String;
    .locals 10

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "row":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "row":I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_3

    .line 278
    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    move v5, v1

    move v1, v2

    .local v1, "col":I
    .local v5, "i":I
    :goto_1
    const/4 v6, 0x2

    if-ge v1, v4, :cond_1

    .line 280
    iget-object v7, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v8, v5, 0x0

    aget v7, v7, v8

    .line 281
    .local v7, "numerator":I
    iget-object v8, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v9, v5, 0x1

    aget v8, v8, v9

    .line 282
    .local v8, "denominator":I
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    if-ge v1, v6, :cond_0

    .line 286
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .end local v7    # "numerator":I
    .end local v8    # "denominator":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 289
    .end local v1    # "col":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    if-ge v3, v6, :cond_2

    .line 291
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_0

    .line 294
    .end local v3    # "row":I
    .end local v5    # "i":I
    :cond_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public copyElements([II)V
    .locals 4
    .param p1, "destination"    # [I
    .param p2, "offset"    # I

    .line 198
    const-string/jumbo v0, "offset must not be negative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 199
    const-string v0, "destination must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 205
    const/4 v0, 0x0

    .line 205
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 206
    add-int v2, v0, p2

    iget-object v3, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    aget v3, v3, v0

    aput v3, p1, v2

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 201
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destination too small to fit elements"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyElements([Landroid/util/Rational;I)V
    .locals 7
    .param p1, "destination"    # [Landroid/util/Rational;
    .param p2, "offset"    # I

    .line 163
    const-string/jumbo v0, "offset must not be negative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 164
    const-string v0, "destination must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 169
    const/4 v0, 0x0

    .line 169
    .local v0, "i":I
    const/4 v2, 0x0

    .line 169
    .local v2, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 170
    iget-object v3, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v4, v2, 0x0

    aget v3, v3, v4

    .line 171
    .local v3, "numerator":I
    iget-object v4, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    .line 173
    .local v4, "denominator":I
    add-int v5, v0, p2

    new-instance v6, Landroid/util/Rational;

    invoke-direct {v6, v3, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v6, p1, v5

    .line 169
    .end local v3    # "numerator":I
    .end local v4    # "denominator":I
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 175
    .end local v0    # "i":I
    .end local v2    # "j":I
    :cond_0
    return-void

    .line 166
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destination too small to fit elements"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;

    .line 220
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 221
    return v0

    .line 223
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 224
    return v1

    .line 226
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    if-eqz v2, :cond_4

    .line 227
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 228
    .local v2, "other":Landroid/hardware/camera2/params/ColorSpaceTransform;
    const/4 v3, 0x0

    .local v3, "i":I
    move v4, v3

    move v3, v0

    .local v3, "j":I
    .local v4, "i":I
    :goto_0
    const/16 v5, 0x9

    if-ge v4, v5, :cond_3

    .line 229
    iget-object v5, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v6, v3, 0x0

    aget v5, v5, v6

    .line 230
    .local v5, "numerator":I
    iget-object v6, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v7, v3, 0x1

    aget v6, v6, v7

    .line 231
    .local v6, "denominator":I
    iget-object v7, v2, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v8, v3, 0x0

    aget v7, v7, v8

    .line 232
    .local v7, "numeratorOther":I
    iget-object v8, v2, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v9, v3, 0x1

    aget v8, v8, v9

    .line 233
    .local v8, "denominatorOther":I
    new-instance v9, Landroid/util/Rational;

    invoke-direct {v9, v5, v6}, Landroid/util/Rational;-><init>(II)V

    .line 234
    .local v9, "r":Landroid/util/Rational;
    new-instance v10, Landroid/util/Rational;

    invoke-direct {v10, v7, v8}, Landroid/util/Rational;-><init>(II)V

    .line 235
    .local v10, "rOther":Landroid/util/Rational;
    invoke-virtual {v9, v10}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 236
    return v0

    .line 228
    .end local v5    # "numerator":I
    .end local v6    # "denominator":I
    .end local v7    # "numeratorOther":I
    .end local v8    # "denominatorOther":I
    .end local v9    # "r":Landroid/util/Rational;
    .end local v10    # "rOther":Landroid/util/Rational;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 239
    .end local v3    # "j":I
    .end local v4    # "i":I
    :cond_3
    return v1

    .line 241
    .end local v2    # "other":Landroid/hardware/camera2/params/ColorSpaceTransform;
    :cond_4
    return v0
.end method

.method public getElement(II)Landroid/util/Rational;
    .locals 3
    .param p1, "column"    # I
    .param p2, "row"    # I

    .line 136
    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 138
    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 142
    iget-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/lit8 v1, p2, 0x3

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    .line 143
    .local v0, "numerator":I
    iget-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/lit8 v2, p2, 0x3

    add-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    .line 145
    .local v1, "denominator":I
    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v0, v1}, Landroid/util/Rational;-><init>(II)V

    return-object v2

    .line 139
    .end local v0    # "numerator":I
    .end local v1    # "denominator":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "row out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "column out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 249
    iget-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 263
    const-string v0, "ColorSpaceTransform%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Landroid/hardware/camera2/params/ColorSpaceTransform;->toShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
