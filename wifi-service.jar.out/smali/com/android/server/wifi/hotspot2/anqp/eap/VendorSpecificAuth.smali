.class public Lcom/android/server/wifi/hotspot2/anqp/eap/VendorSpecificAuth;
.super Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;
.source "VendorSpecificAuth.java"


# instance fields
.field private final mData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 37
    const/16 v0, 0xdd

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;-><init>(I)V

    .line 38
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/VendorSpecificAuth;->mData:[B

    .line 39
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;I)Lcom/android/server/wifi/hotspot2/anqp/eap/VendorSpecificAuth;
    .locals 2
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I

    .line 50
    new-array v0, p1, [B

    .line 51
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 52
    new-instance v1, Lcom/android/server/wifi/hotspot2/anqp/eap/VendorSpecificAuth;

    invoke-direct {v1, v0}, Lcom/android/server/wifi/hotspot2/anqp/eap/VendorSpecificAuth;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 61
    if-ne p1, p0, :cond_0

    .line 62
    const/4 v0, 0x1

    return v0

    .line 64
    :cond_0
    instance-of v0, p1, Lcom/android/server/wifi/hotspot2/anqp/eap/VendorSpecificAuth;

    if-nez v0, :cond_1

    .line 65
    const/4 v0, 0x0

    return v0

    .line 67
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/eap/VendorSpecificAuth;

    .line 68
    .local v0, "that":Lcom/android/server/wifi/hotspot2/anqp/eap/VendorSpecificAuth;
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/VendorSpecificAuth;->mData:[B

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/anqp/eap/VendorSpecificAuth;->mData:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public getData()[B
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/VendorSpecificAuth;->mData:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/VendorSpecificAuth;->mData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VendorSpecificAuth{mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/VendorSpecificAuth;->mData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
