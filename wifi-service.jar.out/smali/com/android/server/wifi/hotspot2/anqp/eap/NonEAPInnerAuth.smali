.class public Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;
.super Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;
.source "NonEAPInnerAuth.java"


# static fields
.field public static final AUTH_TYPE_CHAP:I = 0x2

.field private static final AUTH_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final AUTH_TYPE_MSCHAP:I = 0x3

.field public static final AUTH_TYPE_MSCHAPV2:I = 0x4

.field public static final AUTH_TYPE_PAP:I = 0x1

.field public static final AUTH_TYPE_UNKNOWN:I = 0x0

.field public static final EXPECTED_LENGTH_VALUE:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAuthType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->AUTH_TYPE_MAP:Ljava/util/Map;

    .line 43
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->AUTH_TYPE_MAP:Ljava/util/Map;

    const-string v1, "PAP"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->AUTH_TYPE_MAP:Ljava/util/Map;

    const-string v1, "CHAP"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->AUTH_TYPE_MAP:Ljava/util/Map;

    const-string v1, "MS-CHAP"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->AUTH_TYPE_MAP:Ljava/util/Map;

    const-string v1, "MS-CHAP-V2"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "authType"    # I

    .line 55
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;-><init>(I)V

    .line 56
    iput p1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->mAuthType:I

    .line 57
    return-void
.end method

.method public static getAuthTypeID(Ljava/lang/String;)I
    .locals 1
    .param p0, "typeStr"    # Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->AUTH_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->AUTH_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;I)Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;
    .locals 3
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 71
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 72
    .local v0, "authType":I
    new-instance v1, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;

    invoke-direct {v1, v0}, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;-><init>(I)V

    return-object v1

    .line 69
    .end local v0    # "authType":I
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 90
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 91
    return v0

    .line 93
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 94
    return v2

    .line 96
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;

    .line 97
    .local v1, "that":Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;
    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->mAuthType:I

    iget v4, v1, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->mAuthType:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->mAuthType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NonEAPInnerAuth{mAuthType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->mAuthType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
