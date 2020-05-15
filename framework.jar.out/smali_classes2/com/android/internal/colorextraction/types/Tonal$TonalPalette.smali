.class public Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
.super Ljava/lang/Object;
.source "Tonal.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/types/Tonal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TonalPalette"
.end annotation


# instance fields
.field public final h:[F

.field public final l:[F

.field public final maxHue:F

.field public final minHue:F

.field public final s:[F


# direct methods
.method constructor <init>([F[F[F)V
    .locals 5
    .param p1, "h"    # [F
    .param p2, "s"    # [F
    .param p3, "l"    # [F

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_1

    .line 422
    iput-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    .line 423
    iput-object p2, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    .line 424
    iput-object p3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    .line 426
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 427
    .local v0, "minHue":F
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 429
    .local v1, "maxHue":F
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p1, v3

    .line 430
    .local v4, "v":F
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 431
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 429
    .end local v4    # "v":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 434
    :cond_0
    iput v0, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    .line 435
    iput v1, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    .line 436
    return-void

    .line 418
    .end local v0    # "minHue":F
    .end local v1    # "maxHue":F
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "All arrays should have the same size. h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " s: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " l: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
