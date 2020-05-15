.class public Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;
.super Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
.source "RoamingConsortiumElement.java"


# static fields
.field public static final MAXIMUM_OI_LENGTH:I = 0x8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MINIMUM_OI_LENGTH:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mOIs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "ois":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)V

    .line 39
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;->mOIs:Ljava/util/List;

    .line 40
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;
    .locals 5
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "OIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 55
    .local v1, "length":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    .line 58
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, v2, v1}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v1    # "length":I
    goto :goto_0

    .line 56
    .restart local v1    # "length":I
    :cond_0
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad OI length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    .end local v1    # "length":I
    :cond_1
    new-instance v1, Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;

    invoke-direct {v1, v0}, Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;-><init>(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 69
    if-ne p0, p1, :cond_0

    .line 70
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_0
    instance-of v0, p1, Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;

    if-nez v0, :cond_1

    .line 73
    const/4 v0, 0x0

    return v0

    .line 75
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;

    .line 76
    .local v0, "that":Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;->mOIs:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;->mOIs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getOIs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;->mOIs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;->mOIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoamingConsortium{mOis=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;->mOIs:Ljava/util/List;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->roamingConsortiumsToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
