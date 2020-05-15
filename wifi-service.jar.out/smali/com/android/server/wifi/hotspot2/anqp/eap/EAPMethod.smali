.class public Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;
.super Ljava/lang/Object;
.source "EAPMethod.java"


# instance fields
.field private final mAuthParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mEAPMethodID:I


# direct methods
.method public constructor <init>(ILjava/util/Map;)V
    .locals 0
    .param p1, "methodID"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;",
            ">;>;)V"
        }
    .end annotation

    .line 43
    .local p2, "authParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mEAPMethodID:I

    .line 45
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    .line 46
    return-void
.end method

.method private static addAuthParam(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;)V
    .locals 2
    .param p1, "authParam"    # Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;",
            ">;>;",
            "Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;",
            ")V"
        }
    .end annotation

    .line 117
    .local p0, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;>;>;"
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;->getAuthTypeID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 118
    .local v0, "authParams":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;>;"
    if-nez v0, :cond_0

    .line 119
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 120
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;->getAuthTypeID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;
    .locals 5
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 59
    .local v0, "length":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 63
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 64
    .local v1, "methodID":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 65
    .local v2, "authCount":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v3, "authParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;>;>;"
    :goto_0
    if-lez v2, :cond_0

    .line 67
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->parseAuthParam(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->addAuthParam(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;)V

    .line 68
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 70
    :cond_0
    new-instance v4, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;

    invoke-direct {v4, v1, v3}, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;-><init>(ILjava/util/Map;)V

    return-object v4

    .line 60
    .end local v1    # "methodID":I
    .end local v2    # "authCount":I
    .end local v3    # "authParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;>;>;"
    :cond_1
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

.method private static parseAuthParam(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;
    .locals 5
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 87
    .local v0, "authID":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 88
    .local v1, "length":I
    const/16 v2, 0xdd

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 104
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknow Auth Type ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :pswitch_0
    invoke-static {p0, v1, v3}, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;->parse(Ljava/nio/ByteBuffer;IZ)Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;

    move-result-object v2

    return-object v2

    .line 98
    :pswitch_1
    invoke-static {p0, v1, v2}, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;->parse(Ljava/nio/ByteBuffer;IZ)Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;

    move-result-object v2

    return-object v2

    .line 96
    :pswitch_2
    invoke-static {p0, v1, v3}, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->parse(Ljava/nio/ByteBuffer;IZ)Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;

    move-result-object v2

    return-object v2

    .line 94
    :pswitch_3
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;->parse(Ljava/nio/ByteBuffer;I)Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;

    move-result-object v2

    return-object v2

    .line 92
    :pswitch_4
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->parse(Ljava/nio/ByteBuffer;I)Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;

    move-result-object v2

    return-object v2

    .line 90
    :pswitch_5
    invoke-static {p0, v1, v2}, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->parse(Ljava/nio/ByteBuffer;IZ)Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;

    move-result-object v2

    return-object v2

    .line 102
    :cond_0
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/anqp/eap/VendorSpecificAuth;->parse(Ljava/nio/ByteBuffer;I)Lcom/android/server/wifi/hotspot2/anqp/eap/VendorSpecificAuth;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 135
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 136
    return v0

    .line 138
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 139
    return v2

    .line 141
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;

    .line 142
    .local v1, "that":Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;
    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mEAPMethodID:I

    iget v4, v1, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mEAPMethodID:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAuthParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;",
            ">;>;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getEAPMethodID()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mEAPMethodID:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 147
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mEAPMethodID:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EAPMethod{mEAPMethodID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mEAPMethodID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAuthParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
