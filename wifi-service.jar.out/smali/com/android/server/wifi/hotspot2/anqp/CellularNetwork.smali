.class public Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;
.super Ljava/lang/Object;
.source "CellularNetwork.java"


# static fields
.field public static final IEI_CONTENT_LENGTH_MASK:I = 0x7f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final IEI_TYPE_PLMN_LIST:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MNC_2DIGIT_VALUE:I = 0xf

.field public static final PLMN_DATA_BYTES:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CellularNetwork"


# instance fields
.field private final mPlmnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p1, "plmnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;->mPlmnList:Ljava/util/List;

    .line 69
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;
    .locals 6
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 81
    .local v0, "ieiType":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit8 v1, v1, 0x7f

    .line 84
    .local v1, "ieiSize":I
    if-eqz v0, :cond_0

    .line 85
    const-string v2, "CellularNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore unsupported IEI Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 88
    const/4 v2, 0x0

    return-object v2

    .line 92
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 96
    .local v2, "plmnCount":I
    mul-int/lit8 v3, v2, 0x3

    add-int/lit8 v3, v3, 0x1

    if-ne v1, v3, :cond_2

    .line 102
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v3, "plmnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-lez v2, :cond_1

    .line 104
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;->parsePlmn(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 107
    :cond_1
    new-instance v4, Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;

    invoke-direct {v4, v3}, Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;-><init>(Ljava/util/List;)V

    return-object v4

    .line 97
    .end local v3    # "plmnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IEI size and PLMN count mismatched: IEI Size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " PLMN Count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static parsePlmn(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 9
    .param p0, "payload"    # Ljava/nio/ByteBuffer;

    .line 151
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 152
    .local v0, "plmn":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 155
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xf00

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xf0

    or-int/2addr v2, v3

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    const/16 v5, 0xf

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    .line 158
    .local v2, "mcc":I
    const/4 v4, 0x2

    aget-byte v6, v0, v4

    shl-int/lit8 v6, v6, 0x4

    and-int/lit16 v6, v6, 0xf0

    aget-byte v7, v0, v4

    shr-int/lit8 v7, v7, 0x4

    and-int/2addr v7, v5

    or-int/2addr v6, v7

    .line 162
    .local v6, "mnc":I
    aget-byte v7, v0, v3

    shr-int/lit8 v7, v7, 0x4

    and-int/2addr v7, v5

    .line 163
    .local v7, "mncDigit3":I
    if-eq v7, v5, :cond_0

    .line 164
    const-string v5, "%03x%03x"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v1

    shl-int/lit8 v1, v6, 0x4

    or-int/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 165
    :cond_0
    const-string v5, "%03x%02x"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 163
    :goto_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 116
    if-ne p0, p1, :cond_0

    .line 117
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_0
    instance-of v0, p1, Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;

    if-nez v0, :cond_1

    .line 120
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;

    .line 123
    .local v0, "that":Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;->mPlmnList:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;->mPlmnList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getPlmns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;->mPlmnList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;->mPlmnList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellularNetwork{mPlmnList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;->mPlmnList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
