.class public Landroid/net/wifi/aware/TlvBufferUtils;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;,
        Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;,
        Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static isValid([BII)Z
    .locals 5
    .param p0, "array"    # [B
    .param p1, "typeSize"    # I
    .param p2, "lengthSize"    # I

    .line 554
    if-ltz p1, :cond_5

    const/4 v0, 0x2

    if-gt p1, v0, :cond_5

    .line 558
    if-lez p2, :cond_4

    if-gt p2, v0, :cond_4

    .line 562
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 563
    return v0

    .line 566
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 567
    .local v2, "nextTlvIndex":I
    :goto_0
    add-int v3, v2, p1

    add-int/2addr v3, p2

    array-length v4, p0

    if-gt v3, v4, :cond_2

    .line 568
    add-int/2addr v2, p1

    .line 569
    if-ne p2, v0, :cond_1

    .line 570
    aget-byte v3, p0, v2

    add-int/2addr v3, p2

    add-int/2addr v2, v3

    goto :goto_0

    .line 572
    :cond_1
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, v2, v3}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v3

    add-int/2addr v3, p2

    add-int/2addr v2, v3

    goto :goto_0

    .line 577
    :cond_2
    array-length v3, p0

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    .line 559
    .end local v2    # "nextTlvIndex":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid arguments - lengthSize must be 1 or 2: lengthSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid arguments - typeSize must be 0, 1, or 2: typeSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
