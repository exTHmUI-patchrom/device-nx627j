.class public abstract Lcom/android/server/wifi/hotspot2/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final EUI48Length:I = 0x6

.field private static final EUI48Mask:J = 0xffffffffffffL

.field private static final EUI64Length:I = 0x8

.field private static final PLMNText:[Ljava/lang/String;

.field public static final UNSET_TIME:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    const-string v0, "org"

    const-string v1, "3gppnetwork"

    const-string v2, "mcc*"

    const-string v3, "mnc*"

    const-string v4, "wlan"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hotspot2/Utils;->PLMNText:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToBingoCard(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .line 235
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 236
    .local v0, "dup":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v1, "sbx":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 238
    const-string v2, "%02x "

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 241
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    const-string v2, "%c"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->toAscii(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 245
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static bytesToBingoCard(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "len"    # I

    .line 229
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 230
    .local v0, "dup":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 231
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->bytesToBingoCard(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Comparable<",
            "TT;>;TT;)I"
        }
    .end annotation

    .line 217
    .local p0, "c1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TT;>;"
    .local p1, "c2":Ljava/lang/Comparable;, "TT;"
    if-nez p0, :cond_1

    .line 218
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 220
    :cond_1
    if-nez p1, :cond_2

    .line 221
    const/4 v0, 0x1

    return v0

    .line 224
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static fromHex(CZ)I
    .locals 3
    .param p0, "ch"    # C
    .param p1, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 189
    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    .line 190
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 191
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    .line 192
    add-int/lit8 v1, p0, 0xa

    sub-int/2addr v1, v0

    return v1

    .line 193
    :cond_1
    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    .line 194
    add-int/lit8 v1, p0, 0xa

    sub-int/2addr v1, v0

    return v1

    .line 195
    :cond_2
    if-eqz p1, :cond_3

    .line 196
    const/4 v0, -0x1

    return v0

    .line 198
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad hex-character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMccMnc(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 82
    .local p0, "domain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/android/server/wifi/hotspot2/Utils;->PLMNText:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 83
    return-object v2

    .line 86
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "n":I
    :goto_0
    sget-object v3, Lcom/android/server/wifi/hotspot2/Utils;->PLMNText:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 87
    sget-object v3, Lcom/android/server/wifi/hotspot2/Utils;->PLMNText:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 88
    .local v3, "expect":Ljava/lang/String;
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 89
    .local v4, "len":I
    :goto_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v0, v3, v0, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 90
    return-object v2

    .line 86
    .end local v3    # "expect":Ljava/lang/String;
    .end local v4    # "len":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "n":I
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "prefix":Ljava/lang/String;
    nop

    .local v0, "n":I
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 97
    .local v3, "ch":C
    const/16 v4, 0x30

    if-lt v3, v4, :cond_5

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    goto :goto_3

    .line 95
    .end local v3    # "ch":C
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 98
    .restart local v3    # "ch":C
    :cond_5
    :goto_3
    return-object v2

    .line 101
    .end local v0    # "n":I
    .end local v3    # "ch":C
    :cond_6
    return-object v1
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    shr-int/2addr v0, v1

    new-array v0, v0, [B

    .line 178
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 179
    .local v1, "position":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "n":I
    .local v3, "position":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 180
    nop

    .line 181
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v2}, Lcom/android/server/wifi/hotspot2/Utils;->fromHex(CZ)I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    .line 182
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v2}, Lcom/android/server/wifi/hotspot2/Utils;->fromHex(CZ)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 183
    add-int/lit8 v3, v3, 0x1

    .line 179
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 185
    .end local v1    # "n":I
    :cond_0
    return-object v0

    .line 175
    .end local v0    # "data":[B
    .end local v3    # "position":I
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Odd length hex string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;

    .line 26
    const-string v0, "HS20"

    return-object v0
.end method

.method static isDecimal(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 207
    const/4 v0, 0x0

    move v1, v0

    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 208
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 209
    .local v2, "ch":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-le v2, v3, :cond_0

    goto :goto_1

    .line 207
    .end local v2    # "ch":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .restart local v2    # "ch":C
    :cond_1
    :goto_1
    return v0

    .line 213
    .end local v1    # "n":I
    .end local v2    # "ch":C
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static macToString(J)Ljava/lang/String;
    .locals 11
    .param p0, "mac"    # J

    .line 66
    const-wide/high16 v0, -0x1000000000000L

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 67
    .local v0, "len":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 69
    .local v3, "first":Z
    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v4, v1

    .local v4, "n":I
    :goto_1
    move v1, v4

    .end local v4    # "n":I
    .local v1, "n":I
    if-ltz v1, :cond_2

    .line 70
    if-eqz v3, :cond_1

    .line 71
    const/4 v3, 0x0

    goto :goto_2

    .line 74
    :cond_1
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    :goto_2
    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    ushr-long v7, p0, v1

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 v4, v1, -0x8

    .end local v1    # "n":I
    .restart local v4    # "n":I
    goto :goto_1

    .line 78
    .end local v4    # "n":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseMac(Ljava/lang/String;)J
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .line 47
    if-eqz p0, :cond_3

    .line 50
    const-wide/16 v0, 0x0

    .line 51
    .local v0, "mac":J
    const/4 v2, 0x0

    .line 52
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 53
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Lcom/android/server/wifi/hotspot2/Utils;->fromHex(CZ)I

    move-result v4

    .line 54
    .local v4, "nibble":I
    if-ltz v4, :cond_0

    .line 55
    const/4 v5, 0x4

    shl-long v5, v0, v5

    int-to-long v7, v4

    or-long v0, v5, v7

    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 52
    .end local v4    # "nibble":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v3    # "n":I
    :cond_1
    const/16 v3, 0xc

    if-lt v2, v3, :cond_2

    and-int/lit8 v3, v2, 0x1

    if-eq v3, v5, :cond_2

    .line 62
    return-wide v0

    .line 60
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad MAC address: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    .end local v0    # "mac":J
    .end local v2    # "count":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null MAC adddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static roamingConsortiumsToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 116
    .local p0, "ois":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 118
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 119
    .local v3, "oi":J
    if-eqz v1, :cond_0

    .line 120
    const/4 v1, 0x0

    goto :goto_1

    .line 122
    :cond_0
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v5

    const/16 v6, 0x28

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v5, v6, :cond_1

    .line 125
    const-string v5, "%06x"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 127
    :cond_1
    const-string v5, "%010x"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .end local v3    # "oi":J
    :goto_2
    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static roamingConsortiumsToString([J)Ljava/lang/String;
    .locals 6
    .param p0, "ois"    # [J

    .line 105
    if-nez p0, :cond_0

    .line 106
    const-string v0, "null"

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v3, p0, v2

    .line 110
    .local v3, "oi":J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v3    # "oi":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->roamingConsortiumsToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static splitDomain(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 33
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 34
    .local v0, "at":I
    if-ltz v0, :cond_1

    .line 35
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 37
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "labels":[Ljava/lang/String;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 39
    .local v3, "labelList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    array-length v4, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v2, v1

    .line 40
    .local v5, "label":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 39
    .end local v5    # "label":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_2
    return-object v3
.end method

.method private static toAscii(I)C
    .locals 1
    .param p0, "b"    # I

    .line 203
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    int-to-char v0, p0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2e

    :goto_0
    return v0
.end method

.method public static toHMS(J)Ljava/lang/String;
    .locals 17
    .param p0, "millis"    # J

    .line 249
    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    move-wide v4, v0

    goto :goto_0

    :cond_0
    neg-long v4, v0

    .line 250
    .local v4, "time":J
    :goto_0
    const-wide/16 v6, 0x3e8

    div-long v8, v4, v6

    .line 251
    .local v8, "tmp":J
    mul-long/2addr v6, v8

    sub-long v6, v4, v6

    .line 253
    .local v6, "ms":J
    move-wide v4, v8

    .line 254
    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    .line 255
    mul-long v12, v8, v10

    sub-long v12, v4, v12

    .line 257
    .local v12, "s":J
    move-wide v4, v8

    .line 258
    div-long/2addr v8, v10

    .line 259
    mul-long/2addr v10, v8

    sub-long v10, v4, v10

    .line 261
    .local v10, "m":J
    const-string v14, "%s%d:%02d:%02d.%03d"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const-string v2, "-"

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    aput-object v2, v15, v16

    const/4 v2, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v2, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v2, 0x3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v2, 0x4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v15, v2

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "octets"    # [B

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 167
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    .line 168
    .local v4, "o":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v4, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .end local v4    # "o":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B

    .line 148
    if-nez p0, :cond_0

    .line 149
    const-string v0, "null"

    return-object v0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 153
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 154
    .local v1, "first":Z
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .end local v1    # "first":Z
    .local v4, "first":Z
    :goto_0
    if-ge v1, v2, :cond_2

    aget-byte v5, p0, v1

    .line 155
    .local v5, "b":B
    if-eqz v4, :cond_1

    .line 156
    const/4 v4, 0x0

    goto :goto_1

    .line 158
    :cond_1
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    :goto_1
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    and-int/lit16 v8, v5, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .end local v5    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toUTCString(J)Ljava/lang/String;
    .locals 6
    .param p0, "ms"    # J

    .line 265
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 266
    const-string v0, "unset"

    return-object v0

    .line 268
    :cond_0
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 269
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 270
    const-string v1, "%4d/%02d/%02d %2d:%02d:%02dZ"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 271
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 272
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 273
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const/16 v5, 0xb

    .line 274
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const/16 v5, 0xc

    .line 275
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0xd

    .line 276
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 270
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toUnicodeEscapedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 135
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 136
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 137
    .local v3, "ch":C
    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_0

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 141
    :cond_0
    const-string v4, "\\u"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%04x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .end local v3    # "ch":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v2    # "n":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 280
    if-nez p0, :cond_0

    .line 281
    const/4 v0, 0x0

    return-object v0

    .line 283
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 287
    :cond_1
    return-object p0
.end method
