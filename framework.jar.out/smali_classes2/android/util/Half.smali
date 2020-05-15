.class public final Landroid/util/Half;
.super Ljava/lang/Number;
.source "Half.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Landroid/util/Half;",
        ">;"
    }
.end annotation


# static fields
.field public static final EPSILON:S = 0x1400s

.field private static final FP16_COMBINED:I = 0x7fff

.field private static final FP16_EXPONENT_BIAS:I = 0xf

.field private static final FP16_EXPONENT_MASK:I = 0x1f

.field private static final FP16_EXPONENT_MAX:I = 0x7c00

.field private static final FP16_EXPONENT_SHIFT:I = 0xa

.field private static final FP16_SIGNIFICAND_MASK:I = 0x3ff

.field private static final FP16_SIGN_MASK:I = 0x8000

.field private static final FP16_SIGN_SHIFT:I = 0xf

.field private static final FP32_DENORMAL_FLOAT:F

.field private static final FP32_DENORMAL_MAGIC:I = 0x3f000000

.field private static final FP32_EXPONENT_BIAS:I = 0x7f

.field private static final FP32_EXPONENT_MASK:I = 0xff

.field private static final FP32_EXPONENT_SHIFT:I = 0x17

.field private static final FP32_SIGNIFICAND_MASK:I = 0x7fffff

.field private static final FP32_SIGN_SHIFT:I = 0x1f

.field public static final LOWEST_VALUE:S = -0x401s

.field public static final MAX_EXPONENT:I = 0xf

.field public static final MAX_VALUE:S = 0x7bffs

.field public static final MIN_EXPONENT:I = -0xe

.field public static final MIN_NORMAL:S = 0x400s

.field public static final MIN_VALUE:S = 0x1s

.field public static final NEGATIVE_INFINITY:S = -0x400s

.field public static final NEGATIVE_ZERO:S = -0x8000s

.field public static final NaN:S = 0x7e00s

.field public static final POSITIVE_INFINITY:S = 0x7c00s

.field public static final POSITIVE_ZERO:S = 0x0s

.field public static final SIZE:I = 0x10


# instance fields
.field private final mValue:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sput v0, Landroid/util/Half;->FP32_DENORMAL_FLOAT:F

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    .line 203
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 204
    double-to-float v0, p1

    invoke-static {v0}, Landroid/util/Half;->toHalf(F)S

    move-result v0

    iput-short v0, p0, Landroid/util/Half;->mValue:S

    .line 205
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "value"    # F

    .line 191
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 192
    invoke-static {p1}, Landroid/util/Half;->toHalf(F)S

    move-result v0

    iput-short v0, p0, Landroid/util/Half;->mValue:S

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 224
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 225
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/Half;->toHalf(F)S

    move-result v0

    iput-short v0, p0, Landroid/util/Half;->mValue:S

    .line 226
    return-void
.end method

.method public constructor <init>(S)V
    .locals 0
    .param p1, "value"    # S

    .line 179
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 180
    iput-short p1, p0, Landroid/util/Half;->mValue:S

    .line 181
    return-void
.end method

.method public static abs(S)S
    .locals 1
    .param p0, "h"    # S

    .line 527
    and-int/lit16 v0, p0, 0x7fff

    int-to-short v0, v0

    return v0
.end method

.method public static ceil(S)S
    .locals 6
    .param p0, "h"    # S

    .line 581
    const v0, 0xffff

    and-int/2addr v0, p0

    .line 582
    .local v0, "bits":I
    and-int/lit16 v1, v0, 0x7fff

    .line 583
    .local v1, "e":I
    move v2, v0

    .line 585
    .local v2, "result":I
    const/16 v3, 0x3c00

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 586
    const v5, 0x8000

    and-int/2addr v2, v5

    .line 587
    shr-int/lit8 v5, v0, 0xf

    not-int v5, v5

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    and-int/2addr v4, v5

    neg-int v4, v4

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    goto :goto_1

    .line 588
    :cond_1
    const/16 v3, 0x6400

    if-ge v1, v3, :cond_2

    .line 589
    shr-int/lit8 v3, v1, 0xa

    rsub-int/lit8 v1, v3, 0x19

    .line 590
    shl-int v3, v4, v1

    sub-int/2addr v3, v4

    .line 591
    .local v3, "mask":I
    shr-int/lit8 v5, v0, 0xf

    sub-int/2addr v5, v4

    and-int v4, v3, v5

    add-int/2addr v2, v4

    .line 592
    not-int v4, v3

    and-int/2addr v2, v4

    .line 595
    .end local v3    # "mask":I
    :cond_2
    :goto_1
    int-to-short v3, v2

    return v3
.end method

.method public static compare(SS)I
    .locals 6
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 418
    invoke-static {p0, p1}, Landroid/util/Half;->less(SS)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 419
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Half;->greater(SS)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 424
    :cond_1
    and-int/lit16 v0, p0, 0x7fff

    const/16 v3, 0x7e00

    const/16 v4, 0x7c00

    if-le v0, v4, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, p0

    .line 425
    .local v0, "xBits":S
    :goto_0
    and-int/lit16 v5, p1, 0x7fff

    if-le v5, v4, :cond_3

    goto :goto_1

    :cond_3
    move v3, p1

    .line 427
    .local v3, "yBits":S
    :goto_1
    if-ne v0, v3, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    if-ge v0, v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1
.end method

.method public static copySign(SS)S
    .locals 2
    .param p0, "magnitude"    # S
    .param p1, "sign"    # S

    .line 509
    const v0, 0x8000

    and-int/2addr v0, p1

    and-int/lit16 v1, p0, 0x7fff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static equals(SS)Z
    .locals 3
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 795
    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    .line 796
    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v1, :cond_1

    return v2

    .line 798
    :cond_1
    if-eq p0, p1, :cond_3

    or-int v0, p0, p1

    and-int/lit16 v0, v0, 0x7fff

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public static floor(S)S
    .locals 6
    .param p0, "h"    # S

    .line 615
    const v0, 0xffff

    and-int v1, p0, v0

    .line 616
    .local v1, "bits":I
    and-int/lit16 v2, v1, 0x7fff

    .line 617
    .local v2, "e":I
    move v3, v1

    .line 619
    .local v3, "result":I
    const/16 v4, 0x3c00

    if-ge v2, v4, :cond_1

    .line 620
    const v5, 0x8000

    and-int/2addr v3, v5

    .line 621
    if-le v1, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr v0, v4

    or-int/2addr v3, v0

    goto :goto_1

    .line 622
    :cond_1
    const/16 v0, 0x6400

    if-ge v2, v0, :cond_2

    .line 623
    shr-int/lit8 v0, v2, 0xa

    rsub-int/lit8 v2, v0, 0x19

    .line 624
    const/4 v0, 0x1

    shl-int v4, v0, v2

    sub-int/2addr v4, v0

    .line 625
    .local v4, "mask":I
    shr-int/lit8 v0, v1, 0xf

    neg-int v0, v0

    and-int/2addr v0, v4

    add-int/2addr v3, v0

    .line 626
    not-int v0, v4

    and-int/2addr v3, v0

    .line 629
    .end local v4    # "mask":I
    :cond_2
    :goto_1
    int-to-short v0, v3

    return v0
.end method

.method public static getExponent(S)I
    .locals 1
    .param p0, "h"    # S

    .line 822
    ushr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, -0xf

    return v0
.end method

.method public static getSign(S)I
    .locals 1
    .param p0, "h"    # S

    .line 808
    const v0, 0x8000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getSignificand(S)I
    .locals 1
    .param p0, "h"    # S

    .line 833
    and-int/lit16 v0, p0, 0x3ff

    return v0
.end method

.method public static greater(SS)Z
    .locals 5
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 759
    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    .line 760
    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v1, :cond_1

    return v2

    .line 762
    :cond_1
    const v0, 0x8000

    and-int v1, p0, v0

    const v3, 0xffff

    if-eqz v1, :cond_2

    and-int v1, p0, v3

    sub-int v1, v0, v1

    goto :goto_0

    :cond_2
    and-int v1, p0, v3

    .line 763
    :goto_0
    and-int v4, p1, v0

    if-eqz v4, :cond_3

    and-int/2addr v3, p1

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_3
    and-int v0, p1, v3

    :goto_1
    if-le v1, v0, :cond_4

    const/4 v2, 0x1

    nop

    .line 762
    :cond_4
    return v2
.end method

.method public static greaterEquals(SS)Z
    .locals 5
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 777
    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    .line 778
    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v1, :cond_1

    return v2

    .line 780
    :cond_1
    const v0, 0x8000

    and-int v1, p0, v0

    const v3, 0xffff

    if-eqz v1, :cond_2

    and-int v1, p0, v3

    sub-int v1, v0, v1

    goto :goto_0

    :cond_2
    and-int v1, p0, v3

    .line 781
    :goto_0
    and-int v4, p1, v0

    if-eqz v4, :cond_3

    and-int/2addr v3, p1

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_3
    and-int v0, p1, v3

    :goto_1
    if-lt v1, v0, :cond_4

    const/4 v2, 0x1

    nop

    .line 780
    :cond_4
    return v2
.end method

.method public static halfToIntBits(S)I
    .locals 2
    .param p0, "h"    # S

    .line 463
    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-le v0, v1, :cond_0

    const/16 v0, 0x7e00

    goto :goto_0

    :cond_0
    const v0, 0xffff

    and-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method public static halfToRawIntBits(S)I
    .locals 1
    .param p0, "h"    # S

    .line 481
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static halfToShortBits(S)S
    .locals 2
    .param p0, "h"    # S

    .line 444
    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-le v0, v1, :cond_0

    const/16 v0, 0x7e00

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method public static hashCode(S)I
    .locals 1
    .param p0, "h"    # S

    .line 395
    invoke-static {p0}, Landroid/util/Half;->halfToIntBits(S)I

    move-result v0

    return v0
.end method

.method public static intBitsToHalf(I)S
    .locals 1
    .param p0, "bits"    # I

    .line 496
    const v0, 0xffff

    and-int/2addr v0, p0

    int-to-short v0, v0

    return v0
.end method

.method public static isInfinite(S)Z
    .locals 2
    .param p0, "h"    # S

    .line 845
    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNaN(S)Z
    .locals 2
    .param p0, "h"    # S

    .line 856
    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNormalized(S)Z
    .locals 2
    .param p0, "h"    # S

    .line 870
    and-int/lit16 v0, p0, 0x7c00

    if-eqz v0, :cond_0

    and-int/lit16 v0, p0, 0x7c00

    const/16 v1, 0x7c00

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static less(SS)Z
    .locals 5
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 723
    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    .line 724
    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v1, :cond_1

    return v2

    .line 726
    :cond_1
    const v0, 0x8000

    and-int v1, p0, v0

    const v3, 0xffff

    if-eqz v1, :cond_2

    and-int v1, p0, v3

    sub-int v1, v0, v1

    goto :goto_0

    :cond_2
    and-int v1, p0, v3

    .line 727
    :goto_0
    and-int v4, p1, v0

    if-eqz v4, :cond_3

    and-int/2addr v3, p1

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_3
    and-int v0, p1, v3

    :goto_1
    if-ge v1, v0, :cond_4

    const/4 v2, 0x1

    nop

    .line 726
    :cond_4
    return v2
.end method

.method public static lessEquals(SS)Z
    .locals 5
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 741
    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    .line 742
    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v1, :cond_1

    return v2

    .line 744
    :cond_1
    const v0, 0x8000

    and-int v1, p0, v0

    const v3, 0xffff

    if-eqz v1, :cond_2

    and-int v1, p0, v3

    sub-int v1, v0, v1

    goto :goto_0

    :cond_2
    and-int v1, p0, v3

    .line 745
    :goto_0
    and-int v4, p1, v0

    if-eqz v4, :cond_3

    and-int/2addr v3, p1

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_3
    and-int v0, p1, v3

    :goto_1
    if-gt v1, v0, :cond_4

    const/4 v2, 0x1

    nop

    .line 744
    :cond_4
    return v2
.end method

.method public static max(SS)S
    .locals 4
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 701
    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7e00

    const/16 v2, 0x7c00

    if-le v0, v2, :cond_0

    return v1

    .line 702
    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v2, :cond_1

    return v1

    .line 704
    :cond_1
    and-int/lit16 v0, p0, 0x7fff

    const v1, 0x8000

    if-nez v0, :cond_3

    and-int/lit16 v0, p1, 0x7fff

    if-nez v0, :cond_3

    .line 705
    and-int v0, p0, v1

    if-eqz v0, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    move v0, p0

    :goto_0
    return v0

    .line 708
    :cond_3
    and-int v0, p0, v1

    const v2, 0xffff

    if-eqz v0, :cond_4

    and-int v0, p0, v2

    sub-int v0, v1, v0

    goto :goto_1

    :cond_4
    and-int v0, p0, v2

    .line 709
    :goto_1
    and-int v3, p1, v1

    if-eqz v3, :cond_5

    and-int/2addr v2, p1

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_5
    and-int v1, p1, v2

    :goto_2
    if-le v0, v1, :cond_6

    .line 708
    move v0, p0

    goto :goto_3

    :cond_6
    move v0, p1

    :goto_3
    return v0
.end method

.method public static min(SS)S
    .locals 4
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 676
    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7e00

    const/16 v2, 0x7c00

    if-le v0, v2, :cond_0

    return v1

    .line 677
    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v2, :cond_1

    return v1

    .line 679
    :cond_1
    and-int/lit16 v0, p0, 0x7fff

    const v1, 0x8000

    if-nez v0, :cond_3

    and-int/lit16 v0, p1, 0x7fff

    if-nez v0, :cond_3

    .line 680
    and-int v0, p0, v1

    if-eqz v0, :cond_2

    move v0, p0

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    return v0

    .line 683
    :cond_3
    and-int v0, p0, v1

    const v2, 0xffff

    if-eqz v0, :cond_4

    and-int v0, p0, v2

    sub-int v0, v1, v0

    goto :goto_1

    :cond_4
    and-int v0, p0, v2

    .line 684
    :goto_1
    and-int v3, p1, v1

    if-eqz v3, :cond_5

    and-int/2addr v2, p1

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_5
    and-int v1, p1, v2

    :goto_2
    if-ge v0, v1, :cond_6

    .line 683
    move v0, p0

    goto :goto_3

    :cond_6
    move v0, p1

    :goto_3
    return v0
.end method

.method public static parseHalf(Ljava/lang/String;)S
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1029
    invoke-static {p0}, Lsun/misc/FloatingDecimal;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/Half;->toHalf(F)S

    move-result v0

    return v0
.end method

.method public static round(S)S
    .locals 6
    .param p0, "h"    # S

    .line 547
    const v0, 0xffff

    and-int v1, p0, v0

    .line 548
    .local v1, "bits":I
    and-int/lit16 v2, v1, 0x7fff

    .line 549
    .local v2, "e":I
    move v3, v1

    .line 551
    .local v3, "result":I
    const/16 v4, 0x3c00

    if-ge v2, v4, :cond_1

    .line 552
    const v5, 0x8000

    and-int/2addr v3, v5

    .line 553
    const/16 v5, 0x3800

    if-lt v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr v0, v4

    or-int/2addr v3, v0

    goto :goto_1

    .line 554
    :cond_1
    const/16 v0, 0x6400

    if-ge v2, v0, :cond_2

    .line 555
    shr-int/lit8 v0, v2, 0xa

    rsub-int/lit8 v2, v0, 0x19

    .line 556
    const/4 v0, 0x1

    shl-int v4, v0, v2

    sub-int/2addr v4, v0

    .line 557
    .local v4, "mask":I
    add-int/lit8 v5, v2, -0x1

    shl-int/2addr v0, v5

    add-int/2addr v3, v0

    .line 558
    not-int v0, v4

    and-int/2addr v3, v0

    .line 561
    .end local v4    # "mask":I
    :cond_2
    :goto_1
    int-to-short v0, v3

    return v0
.end method

.method public static toFloat(S)F
    .locals 8
    .param p0, "h"    # S

    .line 889
    const v0, 0xffff

    and-int/2addr v0, p0

    .line 890
    .local v0, "bits":I
    const v1, 0x8000

    and-int/2addr v1, v0

    .line 891
    .local v1, "s":I
    ushr-int/lit8 v2, v0, 0xa

    const/16 v3, 0x1f

    and-int/2addr v2, v3

    .line 892
    .local v2, "e":I
    and-int/lit16 v4, v0, 0x3ff

    .line 894
    .local v4, "m":I
    const/4 v5, 0x0

    .line 895
    .local v5, "outE":I
    const/4 v6, 0x0

    .line 897
    .local v6, "outM":I
    if-nez v2, :cond_1

    .line 898
    if-eqz v4, :cond_3

    .line 900
    const/high16 v3, 0x3f000000    # 0.5f

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 901
    .local v3, "o":F
    sget v7, Landroid/util/Half;->FP32_DENORMAL_FLOAT:F

    sub-float/2addr v3, v7

    .line 902
    if-nez v1, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    neg-float v7, v3

    :goto_0
    return v7

    .line 905
    .end local v3    # "o":F
    :cond_1
    shl-int/lit8 v6, v4, 0xd

    .line 906
    if-ne v2, v3, :cond_2

    .line 907
    const/16 v5, 0xff

    goto :goto_1

    .line 909
    :cond_2
    add-int/lit8 v3, v2, -0xf

    add-int/lit8 v5, v3, 0x7f

    .line 913
    :cond_3
    :goto_1
    shl-int/lit8 v3, v1, 0x10

    shl-int/lit8 v7, v5, 0x17

    or-int/2addr v3, v7

    or-int/2addr v3, v6

    .line 914
    .local v3, "out":I
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    return v7
.end method

.method public static toHalf(F)S
    .locals 8
    .param p0, "f"    # F

    .line 941
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 942
    .local v0, "bits":I
    ushr-int/lit8 v1, v0, 0x1f

    .line 943
    .local v1, "s":I
    ushr-int/lit8 v2, v0, 0x17

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 944
    .local v2, "e":I
    const v4, 0x7fffff

    and-int/2addr v4, v0

    .line 946
    .local v4, "m":I
    const/4 v5, 0x0

    .line 947
    .local v5, "outE":I
    const/4 v6, 0x0

    .line 949
    .local v6, "outM":I
    if-ne v2, v3, :cond_1

    .line 950
    const/16 v5, 0x1f

    .line 951
    if-eqz v4, :cond_0

    const/16 v3, 0x200

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v6, v3

    goto :goto_1

    .line 953
    :cond_1
    add-int/lit8 v3, v2, -0x7f

    add-int/lit8 v2, v3, 0xf

    .line 954
    const/16 v3, 0x1f

    if-lt v2, v3, :cond_2

    .line 955
    const/16 v5, 0x31

    goto :goto_1

    .line 956
    :cond_2
    if-gtz v2, :cond_5

    .line 957
    const/16 v3, -0xa

    if-ge v2, v3, :cond_3

    goto :goto_1

    .line 962
    :cond_3
    const/high16 v3, 0x800000

    or-int/2addr v3, v4

    rsub-int/lit8 v7, v2, 0x1

    shr-int/2addr v3, v7

    .line 963
    .end local v4    # "m":I
    .local v3, "m":I
    and-int/lit16 v4, v3, 0x1000

    if-eqz v4, :cond_4

    add-int/lit16 v3, v3, 0x2000

    .line 964
    .end local v3    # "m":I
    .restart local v4    # "m":I
    :cond_4
    move v4, v3

    shr-int/lit8 v6, v4, 0xd

    goto :goto_1

    .line 967
    :cond_5
    move v5, v2

    .line 968
    shr-int/lit8 v6, v4, 0xd

    .line 969
    and-int/lit16 v3, v4, 0x1000

    if-eqz v3, :cond_6

    .line 971
    shl-int/lit8 v3, v5, 0xa

    or-int/2addr v3, v6

    .line 972
    .local v3, "out":I
    add-int/lit8 v3, v3, 0x1

    .line 973
    shl-int/lit8 v7, v1, 0xf

    or-int/2addr v7, v3

    int-to-short v7, v7

    return v7

    .line 978
    .end local v3    # "out":I
    :cond_6
    :goto_1
    shl-int/lit8 v3, v1, 0xf

    shl-int/lit8 v7, v5, 0xa

    or-int/2addr v3, v7

    or-int/2addr v3, v6

    int-to-short v3, v3

    return v3
.end method

.method public static toHexString(S)Ljava/lang/String;
    .locals 8
    .param p0, "h"    # S

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1076
    .local v0, "o":Ljava/lang/StringBuilder;
    const v1, 0xffff

    and-int/2addr v1, p0

    .line 1077
    .local v1, "bits":I
    ushr-int/lit8 v2, v1, 0xf

    .line 1078
    .local v2, "s":I
    ushr-int/lit8 v3, v1, 0xa

    const/16 v4, 0x1f

    and-int/2addr v3, v4

    .line 1079
    .local v3, "e":I
    and-int/lit16 v5, v1, 0x3ff

    .line 1081
    .local v5, "m":I
    const/16 v6, 0x2d

    if-ne v3, v4, :cond_2

    .line 1082
    if-nez v5, :cond_1

    .line 1083
    if-eqz v2, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1084
    :cond_0
    const-string v4, "Infinity"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1086
    :cond_1
    const-string v4, "NaN"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1089
    :cond_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1090
    :cond_3
    if-nez v3, :cond_5

    .line 1091
    if-nez v5, :cond_4

    .line 1092
    const-string v4, "0x0.0p0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1094
    :cond_4
    const-string v4, "0x0."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 1096
    .local v4, "significand":Ljava/lang/String;
    const-string v6, "0{2,}$"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    const-string/jumbo v6, "p-14"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    .end local v4    # "significand":Ljava/lang/String;
    goto :goto_0

    .line 1100
    :cond_5
    const-string v4, "0x1."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 1102
    .restart local v4    # "significand":Ljava/lang/String;
    const-string v6, "0{2,}$"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    const/16 v6, 0x70

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1104
    add-int/lit8 v6, v3, -0xf

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    .end local v4    # "significand":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static toString(S)Ljava/lang/String;
    .locals 1
    .param p0, "h"    # S

    .line 1043
    invoke-static {p0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trunc(S)S
    .locals 5
    .param p0, "h"    # S

    .line 648
    const v0, 0xffff

    and-int/2addr v0, p0

    .line 649
    .local v0, "bits":I
    and-int/lit16 v1, v0, 0x7fff

    .line 650
    .local v1, "e":I
    move v2, v0

    .line 652
    .local v2, "result":I
    const/16 v3, 0x3c00

    if-ge v1, v3, :cond_0

    .line 653
    const v3, 0x8000

    and-int/2addr v2, v3

    goto :goto_0

    .line 654
    :cond_0
    const/16 v3, 0x6400

    if-ge v1, v3, :cond_1

    .line 655
    shr-int/lit8 v3, v1, 0xa

    rsub-int/lit8 v1, v3, 0x19

    .line 656
    const/4 v3, 0x1

    shl-int v4, v3, v1

    sub-int/2addr v4, v3

    .line 657
    .local v4, "mask":I
    not-int v3, v4

    and-int/2addr v2, v3

    .line 660
    .end local v4    # "mask":I
    :cond_1
    :goto_0
    int-to-short v3, v2

    return v3
.end method

.method public static valueOf(F)Landroid/util/Half;
    .locals 1
    .param p0, "f"    # F

    .line 999
    new-instance v0, Landroid/util/Half;

    invoke-direct {v0, p0}, Landroid/util/Half;-><init>(F)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/Half;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 1014
    new-instance v0, Landroid/util/Half;

    invoke-direct {v0, p0}, Landroid/util/Half;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(S)Landroid/util/Half;
    .locals 1
    .param p0, "h"    # S

    .line 989
    new-instance v0, Landroid/util/Half;

    invoke-direct {v0, p0}, Landroid/util/Half;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    .line 247
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Landroid/util/Half;)I
    .locals 2
    .param p1, "h"    # Landroid/util/Half;

    .line 384
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    iget-short v1, p1, Landroid/util/Half;->mValue:S

    invoke-static {v0, v1}, Landroid/util/Half;->compare(SS)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 94
    check-cast p1, Landroid/util/Half;

    invoke-virtual {p0, p1}, Landroid/util/Half;->compareTo(Landroid/util/Half;)I

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .locals 2

    .line 307
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 334
    instance-of v0, p1, Landroid/util/Half;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/util/Half;

    iget-short v0, v0, Landroid/util/Half;->mValue:S

    .line 335
    invoke-static {v0}, Landroid/util/Half;->halfToIntBits(S)I

    move-result v0

    iget-short v1, p0, Landroid/util/Half;->mValue:S

    invoke-static {v1}, Landroid/util/Half;->halfToIntBits(S)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0
.end method

.method public floatValue()F
    .locals 1

    .line 295
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    return v0
.end method

.method public halfValue()S
    .locals 1

    .line 235
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 348
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->hashCode(S)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 271
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public isNaN()Z
    .locals 1

    .line 317
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->isNaN(S)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 283
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    .line 259
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 360
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toString(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
