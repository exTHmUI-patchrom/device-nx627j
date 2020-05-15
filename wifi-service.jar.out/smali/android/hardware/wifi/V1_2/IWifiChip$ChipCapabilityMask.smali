.class public final Landroid/hardware/wifi/V1_2/IWifiChip$ChipCapabilityMask;
.super Ljava/lang/Object;
.source "IWifiChip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_2/IWifiChip;
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

.field public static final USE_BODY_HEAD_SAR:I = 0x800


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

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 156
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 157
    const-string v2, "DEBUG_MEMORY_FIRMWARE_DUMP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    or-int/lit8 v1, v1, 0x1

    .line 160
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 161
    const-string v2, "DEBUG_MEMORY_DRIVER_DUMP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    or-int/lit8 v1, v1, 0x2

    .line 164
    :cond_1
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 165
    const-string v2, "DEBUG_RING_BUFFER_CONNECT_EVENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    or-int/lit8 v1, v1, 0x4

    .line 168
    :cond_2
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 169
    const-string v2, "DEBUG_RING_BUFFER_POWER_EVENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    or-int/lit8 v1, v1, 0x8

    .line 172
    :cond_3
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 173
    const-string v2, "DEBUG_RING_BUFFER_WAKELOCK_EVENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    or-int/lit8 v1, v1, 0x10

    .line 176
    :cond_4
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 177
    const-string v2, "DEBUG_RING_BUFFER_VENDOR_DATA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    or-int/lit8 v1, v1, 0x20

    .line 180
    :cond_5
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 181
    const-string v2, "DEBUG_HOST_WAKE_REASON_STATS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    or-int/lit8 v1, v1, 0x40

    .line 184
    :cond_6
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 185
    const-string v2, "DEBUG_ERROR_ALERTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    or-int/lit16 v1, v1, 0x80

    .line 188
    :cond_7
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 189
    const-string v2, "SET_TX_POWER_LIMIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    or-int/lit16 v1, v1, 0x100

    .line 192
    :cond_8
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    .line 193
    const-string v2, "D2D_RTT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    or-int/lit16 v1, v1, 0x200

    .line 196
    :cond_9
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    .line 197
    const-string v2, "D2AP_RTT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    or-int/lit16 v1, v1, 0x400

    .line 200
    :cond_a
    and-int/lit16 v2, p0, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_b

    .line 201
    const-string v2, "USE_BODY_HEAD_SAR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    or-int/lit16 v1, v1, 0x800

    .line 204
    :cond_b
    if-eq p0, v1, :cond_c

    .line 205
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

    .line 207
    :cond_c
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 114
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 115
    const-string v0, "DEBUG_MEMORY_FIRMWARE_DUMP"

    return-object v0

    .line 117
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 118
    const-string v0, "DEBUG_MEMORY_DRIVER_DUMP"

    return-object v0

    .line 120
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 121
    const-string v0, "DEBUG_RING_BUFFER_CONNECT_EVENT"

    return-object v0

    .line 123
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 124
    const-string v0, "DEBUG_RING_BUFFER_POWER_EVENT"

    return-object v0

    .line 126
    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    .line 127
    const-string v0, "DEBUG_RING_BUFFER_WAKELOCK_EVENT"

    return-object v0

    .line 129
    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    .line 130
    const-string v0, "DEBUG_RING_BUFFER_VENDOR_DATA"

    return-object v0

    .line 132
    :cond_5
    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    .line 133
    const-string v0, "DEBUG_HOST_WAKE_REASON_STATS"

    return-object v0

    .line 135
    :cond_6
    const/16 v0, 0x80

    if-ne p0, v0, :cond_7

    .line 136
    const-string v0, "DEBUG_ERROR_ALERTS"

    return-object v0

    .line 138
    :cond_7
    const/16 v0, 0x100

    if-ne p0, v0, :cond_8

    .line 139
    const-string v0, "SET_TX_POWER_LIMIT"

    return-object v0

    .line 141
    :cond_8
    const/16 v0, 0x200

    if-ne p0, v0, :cond_9

    .line 142
    const-string v0, "D2D_RTT"

    return-object v0

    .line 144
    :cond_9
    const/16 v0, 0x400

    if-ne p0, v0, :cond_a

    .line 145
    const-string v0, "D2AP_RTT"

    return-object v0

    .line 147
    :cond_a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_b

    .line 148
    const-string v0, "USE_BODY_HEAD_SAR"

    return-object v0

    .line 150
    :cond_b
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
