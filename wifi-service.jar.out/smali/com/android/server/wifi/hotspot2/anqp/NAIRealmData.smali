.class public Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;
.super Ljava/lang/Object;
.source "NAIRealmData.java"


# static fields
.field public static final NAI_ENCODING_UTF8_MASK:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NAI_REALM_STRING_SEPARATOR:Ljava/lang/String; = ";"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mEAPMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p1, "realms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "eapMethods":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    .line 56
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    .line 57
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;
    .locals 7
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 69
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 71
    .local v0, "length":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 76
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 79
    .local v1, "utf8":Z
    nop

    .line 80
    if-eqz v1, :cond_1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 79
    :goto_1
    invoke-static {p0, v2}, Lcom/android/server/wifi/ByteBufferReader;->readStringWithByteLength(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "realm":Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 84
    .local v3, "realmList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 85
    .local v4, "methodCount":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v5, "eapMethodList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;>;"
    :goto_2
    if-lez v4, :cond_2

    .line 87
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 90
    :cond_2
    new-instance v6, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;

    invoke-direct {v6, v3, v5}, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v6

    .line 72
    .end local v1    # "utf8":Z
    .end local v2    # "realm":Ljava/lang/String;
    .end local v3    # "realmList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "methodCount":I
    .end local v5    # "eapMethodList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;>;"
    :cond_3
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid data length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 103
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 104
    return v0

    .line 106
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 107
    return v2

    .line 109
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;

    .line 110
    .local v1, "that":Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getEAPMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRealms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NAIRealmElement{mRealms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mEAPMethods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
