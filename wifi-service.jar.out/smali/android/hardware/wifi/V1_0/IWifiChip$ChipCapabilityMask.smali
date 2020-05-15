.class public final Landroid/hardware/wifi/V1_0/IWifiChip$ChipCapabilityMask;
.super Ljava/lang/Object;
.source "IWifiChip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_0/IWifiChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChipCapabilityMask"
.end annotation


# static fields
.field public static final DEBUG_ERROR_ALERTS:I = 0x80

.field public static final DEBUG_HOST_WAKE_REASON_STATS:I = 0x40

.field public static final DEBUG_MEMORY_DRIVER_DUMP:I = 0x2

.field public static final DEBUG_MEMORY_FIRMWARE_DUMP:I = 0x1

.field public static final DEBUG_RING_BUFFER_CONNECT_EVENT:I = 0x4

.field public static final DEBUG_RING_BUFFER_POWER_EVENT:I = 0x8

.field public static final DEBUG_RING_BUFFER_VENDOR_DATA:I = 0x20

.field public static final DEBUG_RING_BUFFER_WAKELOCK_EVENT:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 696
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 697
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 698
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 699
    const-string v2, "DEBUG_MEMORY_FIRMWARE_DUMP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    or-int/lit8 v1, v1, 0x1

    .line 702
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 703
    const-string v2, "DEBUG_MEMORY_DRIVER_DUMP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    or-int/lit8 v1, v1, 0x2

    .line 706
    :cond_1
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 707
    const-string v2, "DEBUG_RING_BUFFER_CONNECT_EVENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    or-int/lit8 v1, v1, 0x4

    .line 710
    :cond_2
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 711
    const-string v2, "DEBUG_RING_BUFFER_POWER_EVENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    or-int/lit8 v1, v1, 0x8

    .line 714
    :cond_3
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 715
    const-string v2, "DEBUG_RING_BUFFER_WAKELOCK_EVENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    or-int/lit8 v1, v1, 0x10

    .line 718
    :cond_4
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 719
    const-string v2, "DEBUG_RING_BUFFER_VENDOR_DATA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    or-int/lit8 v1, v1, 0x20

    .line 722
    :cond_5
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 723
    const-string v2, "DEBUG_HOST_WAKE_REASON_STATS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    or-int/lit8 v1, v1, 0x40

    .line 726
    :cond_6
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 727
    const-string v2, "DEBUG_ERROR_ALERTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    or-int/lit16 v1, v1, 0x80

    .line 730
    :cond_7
    if-eq p0, v1, :cond_8

    .line 731
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

    .line 733
    :cond_8
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 668
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 669
    const-string v0, "DEBUG_MEMORY_FIRMWARE_DUMP"

    return-object v0

    .line 671
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 672
    const-string v0, "DEBUG_MEMORY_DRIVER_DUMP"

    return-object v0

    .line 674
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 675
    const-string v0, "DEBUG_RING_BUFFER_CONNECT_EVENT"

    return-object v0

    .line 677
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 678
    const-string v0, "DEBUG_RING_BUFFER_POWER_EVENT"

    return-object v0

    .line 680
    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    .line 681
    const-string v0, "DEBUG_RING_BUFFER_WAKELOCK_EVENT"

    return-object v0

    .line 683
    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    .line 684
    const-string v0, "DEBUG_RING_BUFFER_VENDOR_DATA"

    return-object v0

    .line 686
    :cond_5
    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    .line 687
    const-string v0, "DEBUG_HOST_WAKE_REASON_STATS"

    return-object v0

    .line 689
    :cond_6
    const/16 v0, 0x80

    if-ne p0, v0, :cond_7

    .line 690
    const-string v0, "DEBUG_ERROR_ALERTS"

    return-object v0

    .line 692
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
