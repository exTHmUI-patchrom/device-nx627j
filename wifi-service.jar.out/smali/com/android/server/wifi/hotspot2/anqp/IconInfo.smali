.class public Lcom/android/server/wifi/hotspot2/anqp/IconInfo;
.super Ljava/lang/Object;
.source "IconInfo.java"


# static fields
.field private static final LANGUAGE_CODE_LENGTH:I = 0x3


# instance fields
.field private final mFileName:Ljava/lang/String;

.field private final mHeight:I

.field private final mIconType:Ljava/lang/String;

.field private final mLanguage:Ljava/lang/String;

.field private final mWidth:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "iconType"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mWidth:I

    .line 52
    iput p2, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mHeight:I

    .line 53
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mLanguage:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mIconType:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mFileName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/IconInfo;
    .locals 12
    .param p0, "payload"    # Ljava/nio/ByteBuffer;

    .line 66
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v2

    long-to-int v0, v2

    const v2, 0xffff

    and-int/2addr v0, v2

    .line 68
    .local v0, "width":I
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, v3, v1}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v3

    long-to-int v1, v3

    and-int/2addr v1, v2

    .line 72
    .local v1, "height":I
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/4 v3, 0x3

    invoke-static {p0, v3, v2}, Lcom/android/server/wifi/ByteBufferReader;->readString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "language":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 76
    invoke-static {p0, v3}, Lcom/android/server/wifi/ByteBufferReader;->readStringWithByteLength(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, "iconType":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 78
    invoke-static {p0, v3}, Lcom/android/server/wifi/ByteBufferReader;->readStringWithByteLength(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    .line 80
    .local v10, "fileName":Ljava/lang/String;
    new-instance v11, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;

    move-object v3, v11

    move v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 105
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 106
    return v0

    .line 108
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 109
    return v2

    .line 112
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;

    .line 113
    .local v1, "that":Lcom/android/server/wifi/hotspot2/anqp/IconInfo;
    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mWidth:I

    iget v4, v1, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mWidth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mHeight:I

    iget v4, v1, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mHeight:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mLanguage:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mLanguage:Ljava/lang/String;

    .line 115
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mIconType:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mIconType:Ljava/lang/String;

    .line 116
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mFileName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mFileName:Ljava/lang/String;

    .line 117
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 113
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mHeight:I

    return v0
.end method

.method public getIconType()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mIconType:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 122
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mLanguage:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mIconType:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mFileName:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IconInfo{Width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", IconType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mIconType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', FileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/IconInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
