.class public Lcom/android/server/wifi/hotspot2/anqp/GenericBlobElement;
.super Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
.source "GenericBlobElement.java"


# instance fields
.field private final mData:[B


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "infoID"    # Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;

    .line 14
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)V

    .line 15
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/GenericBlobElement;->mData:[B

    .line 16
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/GenericBlobElement;->mData:[B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 17
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/GenericBlobElement;->mData:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/GenericBlobElement;->getID()Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/GenericBlobElement;->mData:[B

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
