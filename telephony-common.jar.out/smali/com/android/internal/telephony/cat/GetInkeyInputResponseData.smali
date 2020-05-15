.class Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final GET_INKEY_NO:B = 0x0t

.field protected static final GET_INKEY_YES:B = 0x1t


# instance fields
.field public mInData:Ljava/lang/String;

.field private mIsPacked:Z

.field private mIsUcs2:Z

.field private mIsYesNo:Z

.field private mYesNoResponse:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "inData"    # Ljava/lang/String;
    .param p2, "ucs2"    # Z
    .param p3, "packed"    # Z

    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 82
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 83
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "yesNoResponse"    # Z

    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 94
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    .line 95
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 6
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .line 99
    if-nez p1, :cond_0

    .line 100
    return-void

    .line 104
    :cond_0
    const/16 v0, 0x80

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    or-int/2addr v0, v1

    .line 105
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 109
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 110
    new-array v1, v2, [B

    .line 111
    .local v1, "data":[B
    iget-boolean v4, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    aput-byte v4, v1, v3

    goto :goto_2

    .line 112
    .end local v1    # "data":[B
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 116
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string v4, "UTF-16BE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .restart local v1    # "data":[B
    goto :goto_0

    .line 119
    .end local v1    # "data":[B
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 121
    invoke-static {v1, v3, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v1

    .line 126
    .local v1, "tempData":[B
    array-length v4, v1

    sub-int/2addr v4, v2

    new-array v4, v4, [B

    .line 127
    .local v4, "data":[B
    array-length v5, v1

    sub-int/2addr v5, v2

    invoke-static {v1, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 128
    .end local v1    # "tempData":[B
    nop

    .line 129
    move-object v1, v4

    goto :goto_0

    .end local v4    # "data":[B
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "data":[B
    :goto_0
    goto :goto_1

    .line 133
    .end local v1    # "data":[B
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Lcom/android/internal/telephony/EncodeException;
    new-array v1, v3, [B

    .local v1, "data":[B
    goto :goto_1

    .line 131
    .end local v1    # "data":[B
    :catch_1
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-array v1, v3, [B

    .line 135
    .local v1, "data":[B
    :goto_1
    goto :goto_2

    .line 137
    .end local v1    # "data":[B
    :cond_4
    new-array v1, v3, [B

    .line 147
    .restart local v1    # "data":[B
    :goto_2
    array-length v4, v1

    add-int/2addr v4, v2

    const/16 v5, 0xff

    if-gt v4, v5, :cond_5

    .line 148
    array-length v4, v1

    add-int/2addr v4, v2

    invoke-static {p1, v4}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    goto :goto_3

    .line 151
    :cond_5
    new-array v1, v3, [B

    .line 156
    :goto_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v2, :cond_6

    .line 157
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 158
    :cond_6
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v2, :cond_7

    .line 159
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 161
    :cond_7
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 164
    :goto_4
    array-length v2, v1

    :goto_5
    if-ge v3, v2, :cond_8

    aget-byte v4, v1, v3

    .line 165
    .local v4, "b":B
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 164
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 167
    :cond_8
    return-void
.end method
