.class public Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;
.super Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;
.source "InnerAuthEAP.java"


# static fields
.field public static final EXPECTED_LENGTH_VALUE:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mEAPMethodID:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "eapMethodID"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 40
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;-><init>(I)V

    .line 41
    iput p1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;->mEAPMethodID:I

    .line 42
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;I)Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;
    .locals 3
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 57
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 58
    .local v0, "eapMethodID":I
    new-instance v1, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;

    invoke-direct {v1, v0}, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;-><init>(I)V

    return-object v1

    .line 55
    .end local v0    # "eapMethodID":I
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

    .line 67
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 68
    return v0

    .line 70
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 71
    return v2

    .line 73
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;

    .line 74
    .local v1, "that":Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;
    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;->mEAPMethodID:I

    iget v4, v1, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;->mEAPMethodID:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getEAPMethodID()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;->mEAPMethodID:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;->mEAPMethodID:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InnerAuthEAP{mEAPMethodID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;->mEAPMethodID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
