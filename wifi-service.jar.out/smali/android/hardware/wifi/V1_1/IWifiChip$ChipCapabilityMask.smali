.class public final Landroid/hardware/wifi/V1_1/IWifiChip$ChipCapabilityMask;
.super Ljava/lang/Object;
.source "IWifiChip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_1/IWifiChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChipCapabilityMask"
.end annotation


# static fields
.field public static final D2AP_RTT:I = 0x400

.field public static final D2D_RTT:I = 0x200

.field public static final DEBUG_ERROR_ALERTS:I = 0x80

.field public static final DEBUG_HOST_WAKE_REASON_STATS:I = 0x40

.field public static final DEBUG_MEMORY_DRIVER_DUMP:I = 0x2

.field public static final DEBUG_MEMORY_FIRMWARE_DUMP:I = 0x1

.field public static final DEBUG_RING_BUFFER_CONNECT_EVENT:I = 0x4

.field public static final DEBUG_RING_BUFFER_POWER_EVENT:I = 0x8

.field public static final DEBUG_RING_BUFFER_VENDOR_DATA:I = 0x20

.field public static final DEBUG_RING_BUFFER_WAKELOCK_EVENT:I = 0x10

.field public static final SET_TX_POWER_LIMIT:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 149
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 150
    const-string v2, "DEBUG_MEMORY_FIRMWARE_DUMP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    or-int/lit8 v1, v1, 0x1

    .line 153
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 154
    const-string v2, "DEBUG_MEMORY_DRIVER_DUMP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    or-int/lit8 v1, v1, 0x2

    .line 157
    :cond_1
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 158
    const-string v2, "DEBUG_RING_BUFFER_CONNECT_EVENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    or-int/lit8 v1, v1, 0x4

    .line 161
    :cond_2
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 162
    const-string v2, "DEBUG_RING_BUFFER_POWER_EVENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    or-int/lit8 v1, v1, 0x8

    .line 165
    :cond_3
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 166
    const-string v2, "DEBUG_RING_BUFFER_WAKELOCK_EVENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    or-int/lit8 v1, v1, 0x10

    .line 169
    :cond_4
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 170
    const-string v2, "DEBUG_RING_BUFFER_VENDOR_DATA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    or-int/lit8 v1, v1, 0x20

    .line 173
    :cond_5
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 174
    const-string v2, "DEBUG_HOST_WAKE_REASON_STATS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    or-int/lit8 v1, v1, 0x40

    .line 177
    :cond_6
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 178
    const-string v2, "DEBUG_ERROR_ALERTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    or-int/lit16 v1, v1, 0x80

    .line 181
    :cond_7
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 182
    const-string v2, "SET_TX_POWER_LIMIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    or-int/lit16 v1, v1, 0x100

    .line 185
    :cond_8
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    .line 186
    const-string v2, "D2D_RTT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    or-int/lit16 v1, v1, 0x200

    .line 189
    :cond_9
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    .line 190
    const-string v2, "D2AP_RTT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    or-int/lit16 v1, v1, 0x400

    .line 193
    :cond_a
    if-eq p0, v1, :cond_b

    .line 194
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

    .line 196
    :cond_b
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 110
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 111
    const-string v0, "DEBUG_MEMORY_FIRMWARE_DUMP"

    return-object v0

    .line 113
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 114
    const-string v0, "DEBUG_MEMORY_DRIVER_DUMP"

    return-object v0

    .line 116
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 117
    const-string v0, "DEBUG_RING_BUFFER_CONNECT_EVENT"

    return-object v0

    .line 119
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 120
    const-string v0, "DEBUG_RING_BUFFER_POWER_EVENT"

    return-object v0

    .line 122
    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    .line 123
    const-string v0, "DEBUG_RING_BUFFER_WAKELOCK_EVENT"

    return-object v0

    .line 125
    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    .line 126
    const-string v0, "DEBUG_RING_BUFFER_VENDOR_DATA"

    return-object v0

    .line 128
    :cond_5
    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    .line 129
    const-string v0, "DEBUG_HOST_WAKE_REASON_STATS"

    return-object v0

    .line 131
    :cond_6
    const/16 v0, 0x80

    if-ne p0, v0, :cond_7

    .line 132
    const-string v0, "DEBUG_ERROR_ALERTS"

    return-object v0

    .line 134
    :cond_7
    const/16 v0, 0x100

    if-ne p0, v0, :cond_8

    .line 135
    const-string v0, "SET_TX_POWER_LIMIT"

    return-object v0

    .line 137
    :cond_8
    const/16 v0, 0x200

    if-ne p0, v0, :cond_9

    .line 138
    const-string v0, "D2D_RTT"

    return-object v0

    .line 140
    :cond_9
    const/16 v0, 0x400

    if-ne p0, v0, :cond_a

    .line 141
    const-string v0, "D2AP_RTT"

    return-object v0

    .line 143
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
