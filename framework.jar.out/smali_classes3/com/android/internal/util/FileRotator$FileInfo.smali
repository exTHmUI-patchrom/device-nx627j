.class Lcom/android/internal/util/FileRotator$FileInfo;
.super Ljava/lang/Object;
.source "FileRotator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/FileRotator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field public endMillis:J

.field public final prefix:Ljava/lang/String;

.field public startMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->prefix:Ljava/lang/String;

    .line 410
    return-void
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .locals 5

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v0, "name":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/util/FileRotator$FileInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 450
    iget-wide v1, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 451
    iget-wide v1, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 453
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isActive()Z
    .locals 4

    .line 460
    iget-wide v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 418
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    iput-wide v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 420
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 421
    .local v0, "dotIndex":I
    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 424
    .local v1, "dashIndex":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 427
    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/FileRotator$FileInfo;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 430
    :cond_1
    add-int/lit8 v2, v0, 0x1

    :try_start_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 432
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 433
    const-wide v5, 0x7fffffffffffffffL

    iput-wide v5, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    goto :goto_0

    .line 435
    :cond_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    return v4

    .line 439
    :catch_0
    move-exception v2

    .line 440
    .local v2, "e":Ljava/lang/NumberFormatException;
    return v3

    .line 424
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    :goto_1
    return v3
.end method
