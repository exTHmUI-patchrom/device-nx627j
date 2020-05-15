.class public final Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFate;
.super Ljava/lang/Object;
.source "WifiDebugRxPacketFate.java"


# static fields
.field public static final DRV_DROP_FILTER:I = 0x7

.field public static final DRV_DROP_INVALID:I = 0x8

.field public static final DRV_DROP_NOBUFS:I = 0x9

.field public static final DRV_DROP_OTHER:I = 0xa

.field public static final DRV_QUEUED:I = 0x6

.field public static final FW_DROP_FILTER:I = 0x2

.field public static final FW_DROP_INVALID:I = 0x3

.field public static final FW_DROP_NOBUFS:I = 0x4

.field public static final FW_DROP_OTHER:I = 0x5

.field public static final FW_QUEUED:I = 0x1

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 90
    .local v1, "flipped":I
    const-string v2, "SUCCESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 92
    const-string v2, "FW_QUEUED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    or-int/lit8 v1, v1, 0x1

    .line 95
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 96
    const-string v2, "FW_DROP_FILTER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    or-int/lit8 v1, v1, 0x2

    .line 99
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 100
    const-string v2, "FW_DROP_INVALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    or-int/lit8 v1, v1, 0x3

    .line 103
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 104
    const-string v2, "FW_DROP_NOBUFS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    or-int/lit8 v1, v1, 0x4

    .line 107
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 108
    const-string v2, "FW_DROP_OTHER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    or-int/lit8 v1, v1, 0x5

    .line 111
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 112
    const-string v2, "DRV_QUEUED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    or-int/lit8 v1, v1, 0x6

    .line 115
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 116
    const-string v2, "DRV_DROP_FILTER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    or-int/lit8 v1, v1, 0x7

    .line 119
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 120
    const-string v2, "DRV_DROP_INVALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    or-int/lit8 v1, v1, 0x8

    .line 123
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 124
    const-string v2, "DRV_DROP_NOBUFS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    or-int/lit8 v1, v1, 0x9

    .line 127
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 128
    const-string v2, "DRV_DROP_OTHER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    or-int/lit8 v1, v1, 0xa

    .line 131
    :cond_9
    if-eq p0, v1, :cond_a

    .line 132
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

    .line 134
    :cond_a
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 51
    if-nez p0, :cond_0

    .line 52
    const-string v0, "SUCCESS"

    return-object v0

    .line 54
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 55
    const-string v0, "FW_QUEUED"

    return-object v0

    .line 57
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 58
    const-string v0, "FW_DROP_FILTER"

    return-object v0

    .line 60
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 61
    const-string v0, "FW_DROP_INVALID"

    return-object v0

    .line 63
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 64
    const-string v0, "FW_DROP_NOBUFS"

    return-object v0

    .line 66
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 67
    const-string v0, "FW_DROP_OTHER"

    return-object v0

    .line 69
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 70
    const-string v0, "DRV_QUEUED"

    return-object v0

    .line 72
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 73
    const-string v0, "DRV_DROP_FILTER"

    return-object v0

    .line 75
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 76
    const-string v0, "DRV_DROP_INVALID"

    return-object v0

    .line 78
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 79
    const-string v0, "DRV_DROP_NOBUFS"

    return-object v0

    .line 81
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 82
    const-string v0, "DRV_DROP_OTHER"

    return-object v0

    .line 84
    :cond_a
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
