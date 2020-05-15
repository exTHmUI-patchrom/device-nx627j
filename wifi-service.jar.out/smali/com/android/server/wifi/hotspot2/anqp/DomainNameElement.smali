.class public Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;
.super Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
.source "DomainNameElement.java"


# instance fields
.field private final mDomains:Ljava/util/List;
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
    .locals 1
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

    .line 45
    .local p1, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)V

    .line 46
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;->mDomains:Ljava/util/List;

    .line 47
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;
    .locals 2
    .param p0, "payload"    # Ljava/nio/ByteBuffer;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {p0, v1}, Lcom/android/server/wifi/ByteBufferReader;->readStringWithByteLength(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    new-instance v1, Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;

    invoke-direct {v1, v0}, Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;-><init>(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 72
    if-ne p0, p1, :cond_0

    .line 73
    const/4 v0, 0x1

    return v0

    .line 75
    :cond_0
    instance-of v0, p1, Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;

    if-nez v0, :cond_1

    .line 76
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;

    .line 79
    .local v0, "that":Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;->mDomains:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;->mDomains:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getDomains()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;->mDomains:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;->mDomains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DomainName{mDomains="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;->mDomains:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
