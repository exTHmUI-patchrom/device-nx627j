.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$EapPhase2Method;
.super Ljava/lang/Object;
.source "ISupplicantStaNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EapPhase2Method"
.end annotation


# static fields
.field public static final AKA:I = 0x6

.field public static final AKA_PRIME:I = 0x7

.field public static final GTC:I = 0x4

.field public static final MSPAP:I = 0x2

.field public static final MSPAPV2:I = 0x3

.field public static final NONE:I = 0x0

.field public static final PAP:I = 0x1

.field public static final SIM:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 519
    .local v1, "flipped":I
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 521
    const-string v2, "PAP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    or-int/lit8 v1, v1, 0x1

    .line 524
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 525
    const-string v2, "MSPAP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    or-int/lit8 v1, v1, 0x2

    .line 528
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 529
    const-string v2, "MSPAPV2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    or-int/lit8 v1, v1, 0x3

    .line 532
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 533
    const-string v2, "GTC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    or-int/lit8 v1, v1, 0x4

    .line 536
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 537
    const-string v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    or-int/lit8 v1, v1, 0x5

    .line 540
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 541
    const-string v2, "AKA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    or-int/lit8 v1, v1, 0x6

    .line 544
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 545
    const-string v2, "AKA_PRIME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    or-int/lit8 v1, v1, 0x7

    .line 548
    :cond_6
    if-eq p0, v1, :cond_7

    .line 549
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

    .line 551
    :cond_7
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 489
    if-nez p0, :cond_0

    .line 490
    const-string v0, "NONE"

    return-object v0

    .line 492
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 493
    const-string v0, "PAP"

    return-object v0

    .line 495
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 496
    const-string v0, "MSPAP"

    return-object v0

    .line 498
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 499
    const-string v0, "MSPAPV2"

    return-object v0

    .line 501
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 502
    const-string v0, "GTC"

    return-object v0

    .line 504
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 505
    const-string v0, "SIM"

    return-object v0

    .line 507
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 508
    const-string v0, "AKA"

    return-object v0

    .line 510
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 511
    const-string v0, "AKA_PRIME"

    return-object v0

    .line 513
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
