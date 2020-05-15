.class public Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;
.super Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;
.source "CredentialType.java"


# static fields
.field public static final CREDENTIAL_TYPE_ANONYMOUS:I = 0x9

.field public static final CREDENTIAL_TYPE_CERTIFICATE:I = 0x6

.field public static final CREDENTIAL_TYPE_HARDWARE_TOKEN:I = 0x4

.field public static final CREDENTIAL_TYPE_NFC:I = 0x3

.field public static final CREDENTIAL_TYPE_NONE:I = 0x8

.field public static final CREDENTIAL_TYPE_SIM:I = 0x1

.field public static final CREDENTIAL_TYPE_SOFTWARE_TOKEN:I = 0x5

.field public static final CREDENTIAL_TYPE_USERNAME_PASSWORD:I = 0x7

.field public static final CREDENTIAL_TYPE_USIM:I = 0x2

.field public static final CREDENTIAL_TYPE_VENDOR_SPECIFIC:I = 0xa

.field public static final EXPECTED_LENGTH_VALUE:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "authType"    # I
    .param p2, "credType"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;-><init>(I)V

    .line 54
    iput p2, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;->mType:I

    .line 55
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;IZ)Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;
    .locals 3
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .param p2, "tunneled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 72
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 73
    .local v0, "credType":I
    if-eqz p2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    .line 74
    :cond_0
    const/4 v1, 0x5

    .line 75
    .local v1, "authType":I
    :goto_0
    new-instance v2, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;-><init>(II)V

    return-object v2

    .line 70
    .end local v0    # "credType":I
    .end local v1    # "authType":I
    :cond_1
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

    .line 84
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 85
    return v0

    .line 87
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 88
    return v2

    .line 90
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;

    .line 91
    .local v1, "that":Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;
    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;->mType:I

    iget v4, v1, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;->mType:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getType()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CredentialType{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
