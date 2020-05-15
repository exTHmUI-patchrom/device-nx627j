.class public Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;
.super Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
.source "NAIRealmElement.java"


# instance fields
.field private final mRealmDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;",
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
            "Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p1, "realmDataList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;>;"
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)V

    .line 44
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;->mRealmDataList:Ljava/util/List;

    .line 45
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;
    .locals 3
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "realmDataList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;>;"
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v1

    long-to-int v1, v1

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 60
    .local v1, "count":I
    :goto_0
    if-lez v1, :cond_0

    .line 61
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 65
    .end local v1    # "count":I
    :cond_0
    new-instance v1, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;

    invoke-direct {v1, v0}, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;-><init>(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 74
    if-ne p0, p1, :cond_0

    .line 75
    const/4 v0, 0x1

    return v0

    .line 77
    :cond_0
    instance-of v0, p1, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;

    if-nez v0, :cond_1

    .line 78
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;

    .line 81
    .local v0, "that":Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;->mRealmDataList:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;->mRealmDataList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getRealmDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;->mRealmDataList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;->mRealmDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NAIRealmElement{mRealmDataList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;->mRealmDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
