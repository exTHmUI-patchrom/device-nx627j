.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$EapMethod;
.super Ljava/lang/Object;
.source "ISupplicantStaNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EapMethod"
.end annotation


# static fields
.field public static final AKA:I = 0x5

.field public static final AKA_PRIME:I = 0x6

.field public static final PEAP:I = 0x0

.field public static final PWD:I = 0x3

.field public static final SIM:I = 0x4

.field public static final TLS:I = 0x1

.field public static final TTLS:I = 0x2

.field public static final WFA_UNAUTH_TLS:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 440
    .local v1, "flipped":I
    const-string v2, "PEAP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 442
    const-string v2, "TLS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    or-int/lit8 v1, v1, 0x1

    .line 445
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 446
    const-string v2, "TTLS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    or-int/lit8 v1, v1, 0x2

    .line 449
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 450
    const-string v2, "PWD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    or-int/lit8 v1, v1, 0x3

    .line 453
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 454
    const-string v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    or-int/lit8 v1, v1, 0x4

    .line 457
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 458
    const-string v2, "AKA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    or-int/lit8 v1, v1, 0x5

    .line 461
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 462
    const-string v2, "AKA_PRIME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    or-int/lit8 v1, v1, 0x6

    .line 465
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 466
    const-string v2, "WFA_UNAUTH_TLS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    or-int/lit8 v1, v1, 0x7

    .line 469
    :cond_6
    if-eq p0, v1, :cond_7

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_7
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 410
    if-nez p0, :cond_0

    .line 411
    const-string v0, "PEAP"

    return-object v0

    .line 413
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 414
    const-string v0, "TLS"

    return-object v0

    .line 416
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 417
    const-string v0, "TTLS"

    return-object v0

    .line 419
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 420
    const-string v0, "PWD"

    return-object v0

    .line 422
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 423
    const-string v0, "SIM"

    return-object v0

    .line 425
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 426
    const-string v0, "AKA"

    return-object v0

    .line 428
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 429
    const-string v0, "AKA_PRIME"

    return-object v0

    .line 431
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 432
    const-string v0, "WFA_UNAUTH_TLS"

    return-object v0

    .line 434
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
