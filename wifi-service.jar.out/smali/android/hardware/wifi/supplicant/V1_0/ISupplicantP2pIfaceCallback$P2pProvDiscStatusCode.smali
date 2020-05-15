.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$P2pProvDiscStatusCode;
.super Ljava/lang/Object;
.source "ISupplicantP2pIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "P2pProvDiscStatusCode"
.end annotation


# static fields
.field public static final INFO_UNAVAILABLE:B = 0x4t

.field public static final REJECTED:B = 0x2t

.field public static final SUCCESS:B = 0x0t

.field public static final TIMEOUT:B = 0x1t

.field public static final TIMEOUT_JOIN:B = 0x3t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(B)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # B

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 294
    .local v1, "flipped":B
    const-string v2, "SUCCESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 296
    const-string v2, "TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    or-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    .line 299
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 300
    const-string v2, "REJECTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    or-int/lit8 v2, v1, 0x2

    int-to-byte v1, v2

    .line 303
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 304
    const-string v2, "TIMEOUT_JOIN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    or-int/lit8 v2, v1, 0x3

    int-to-byte v1, v2

    .line 307
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 308
    const-string v2, "INFO_UNAVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    or-int/lit8 v2, v1, 0x4

    int-to-byte v1, v2

    .line 311
    :cond_3
    if-eq p0, v1, :cond_4

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_4
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(B)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # B

    .line 273
    if-nez p0, :cond_0

    .line 274
    const-string v0, "SUCCESS"

    return-object v0

    .line 276
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 277
    const-string v0, "TIMEOUT"

    return-object v0

    .line 279
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 280
    const-string v0, "REJECTED"

    return-object v0

    .line 282
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 283
    const-string v0, "TIMEOUT_JOIN"

    return-object v0

    .line 285
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 286
    const-string v0, "INFO_UNAVAILABLE"

    return-object v0

    .line 288
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
