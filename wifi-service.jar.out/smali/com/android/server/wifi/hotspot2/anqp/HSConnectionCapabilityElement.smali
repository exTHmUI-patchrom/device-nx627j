.class public Lcom/android/server/wifi/hotspot2/anqp/HSConnectionCapabilityElement;
.super Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
.source "HSConnectionCapabilityElement.java"


# instance fields
.field private final mStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;",
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
            "Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p1, "statusList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;>;"
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)V

    .line 42
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSConnectionCapabilityElement;->mStatusList:Ljava/util/List;

    .line 43
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/HSConnectionCapabilityElement;
    .locals 2
    .param p0, "payload"    # Ljava/nio/ByteBuffer;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "statusList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_0
    new-instance v1, Lcom/android/server/wifi/hotspot2/anqp/HSConnectionCapabilityElement;

    invoke-direct {v1, v0}, Lcom/android/server/wifi/hotspot2/anqp/HSConnectionCapabilityElement;-><init>(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 66
    if-ne p0, p1, :cond_0

    .line 67
    const/4 v0, 0x1

    return v0

    .line 69
    :cond_0
    instance-of v0, p1, Lcom/android/server/wifi/hotspot2/anqp/HSConnectionCapabilityElement;

    if-nez v0, :cond_1

    .line 70
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/HSConnectionCapabilityElement;

    .line 73
    .local v0, "that":Lcom/android/server/wifi/hotspot2/anqp/HSConnectionCapabilityElement;
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSConnectionCapabilityElement;->mStatusList:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/anqp/HSConnectionCapabilityElement;->mStatusList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getStatusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSConnectionCapabilityElement;->mStatusList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSConnectionCapabilityElement;->mStatusList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSConnectionCapability{mStatusList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSConnectionCapabilityElement;->mStatusList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
