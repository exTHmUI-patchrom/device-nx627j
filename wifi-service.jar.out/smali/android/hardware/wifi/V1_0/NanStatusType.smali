.class public final Landroid/hardware/wifi/V1_0/NanStatusType;
.super Ljava/lang/Object;
.source "NanStatusType.java"


# static fields
.field public static final ALREADY_ENABLED:I = 0xa

.field public static final FOLLOWUP_TX_QUEUE_FULL:I = 0xb

.field public static final INTERNAL_FAILURE:I = 0x1

.field public static final INVALID_ARGS:I = 0x5

.field public static final INVALID_NDP_ID:I = 0x7

.field public static final INVALID_PEER_ID:I = 0x6

.field public static final INVALID_SESSION_ID:I = 0x3

.field public static final NAN_NOT_ALLOWED:I = 0x8

.field public static final NO_OTA_ACK:I = 0x9

.field public static final NO_RESOURCES_AVAILABLE:I = 0x4

.field public static final PROTOCOL_FAILURE:I = 0x2

.field public static final SUCCESS:I = 0x0

.field public static final UNSUPPORTED_CONCURRENCY_NAN_DISABLED:I = 0xc


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

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 88
    .local v1, "flipped":I
    const-string v2, "SUCCESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 90
    const-string v2, "INTERNAL_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x1

    .line 93
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 94
    const-string v2, "PROTOCOL_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0x2

    .line 97
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 98
    const-string v2, "INVALID_SESSION_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit8 v1, v1, 0x3

    .line 101
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 102
    const-string v2, "NO_RESOURCES_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit8 v1, v1, 0x4

    .line 105
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 106
    const-string v2, "INVALID_ARGS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit8 v1, v1, 0x5

    .line 109
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 110
    const-string v2, "INVALID_PEER_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit8 v1, v1, 0x6

    .line 113
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 114
    const-string v2, "INVALID_NDP_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    or-int/lit8 v1, v1, 0x7

    .line 117
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 118
    const-string v2, "NAN_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit8 v1, v1, 0x8

    .line 121
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 122
    const-string v2, "NO_OTA_ACK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v1, v1, 0x9

    .line 125
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 126
    const-string v2, "ALREADY_ENABLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit8 v1, v1, 0xa

    .line 129
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 130
    const-string v2, "FOLLOWUP_TX_QUEUE_FULL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    or-int/lit8 v1, v1, 0xb

    .line 133
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 134
    const-string v2, "UNSUPPORTED_CONCURRENCY_NAN_DISABLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/lit8 v1, v1, 0xc

    .line 137
    :cond_b
    if-eq p0, v1, :cond_c

    .line 138
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

    .line 140
    :cond_c
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 43
    if-nez p0, :cond_0

    .line 44
    const-string v0, "SUCCESS"

    return-object v0

    .line 46
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 47
    const-string v0, "INTERNAL_FAILURE"

    return-object v0

    .line 49
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 50
    const-string v0, "PROTOCOL_FAILURE"

    return-object v0

    .line 52
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 53
    const-string v0, "INVALID_SESSION_ID"

    return-object v0

    .line 55
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 56
    const-string v0, "NO_RESOURCES_AVAILABLE"

    return-object v0

    .line 58
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 59
    const-string v0, "INVALID_ARGS"

    return-object v0

    .line 61
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 62
    const-string v0, "INVALID_PEER_ID"

    return-object v0

    .line 64
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 65
    const-string v0, "INVALID_NDP_ID"

    return-object v0

    .line 67
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 68
    const-string v0, "NAN_NOT_ALLOWED"

    return-object v0

    .line 70
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 71
    const-string v0, "NO_OTA_ACK"

    return-object v0

    .line 73
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 74
    const-string v0, "ALREADY_ENABLED"

    return-object v0

    .line 76
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 77
    const-string v0, "FOLLOWUP_TX_QUEUE_FULL"

    return-object v0

    .line 79
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 80
    const-string v0, "UNSUPPORTED_CONCURRENCY_NAN_DISABLED"

    return-object v0

    .line 82
    :cond_c
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
