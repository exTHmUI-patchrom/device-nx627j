.class public Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;
.super Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
.source "HSIconFileElement.java"


# static fields
.field public static final STATUS_CODE_FILE_NOT_FOUND:I = 0x1

.field public static final STATUS_CODE_SUCCESS:I = 0x0

.field public static final STATUS_CODE_UNSPECIFIED_ERROR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HSIconFileElement"


# instance fields
.field private final mIconData:[B

.field private final mIconType:Ljava/lang/String;

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;[B)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "iconType"    # Ljava/lang/String;
    .param p3, "iconData"    # [B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 60
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSIconFile:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)V

    .line 61
    iput p1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;->mStatusCode:I

    .line 62
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;->mIconType:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;->mIconData:[B

    .line 64
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;
    .locals 5
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 78
    .local v0, "status":I
    if-eqz v0, :cond_0

    .line 80
    const-string v1, "HSIconFileElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Icon file download failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v1, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;-><init>(ILjava/lang/String;[B)V

    return-object v1

    .line 85
    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 86
    invoke-static {p0, v1}, Lcom/android/server/wifi/ByteBufferReader;->readStringWithByteLength(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "iconType":Ljava/lang/String;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x2

    .line 90
    invoke-static {p0, v2, v3}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v2

    long-to-int v2, v2

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 91
    .local v2, "iconDataLength":I
    new-array v3, v2, [B

    .line 92
    .local v3, "iconData":[B
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 94
    new-instance v4, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;

    invoke-direct {v4, v0, v1, v3}, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;-><init>(ILjava/lang/String;[B)V

    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 99
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 100
    return v0

    .line 102
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 103
    return v2

    .line 105
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;

    .line 106
    .local v1, "that":Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;
    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;->mStatusCode:I

    iget v4, v1, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;->mStatusCode:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;->mIconType:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;->mIconType:Ljava/lang/String;

    .line 107
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;->mIconData:[B

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;->mIconData:[B

    .line 108
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 106
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;->mStatusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;->mIconType:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;->mIconData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSIconFileElement{mStatusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;->mStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mIconType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSIconFileElement;->mIconType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
