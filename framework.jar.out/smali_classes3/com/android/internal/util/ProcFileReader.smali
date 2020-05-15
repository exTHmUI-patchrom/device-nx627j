.class public Lcom/android/internal/util/ProcFileReader;
.super Ljava/lang/Object;
.source "ProcFileReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final mBuffer:[B

.field private mLineFinished:Z

.field private final mStream:Ljava/io/InputStream;

.field private mTail:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    .line 49
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    .line 52
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    .line 53
    return-void
.end method

.method private consumeBuf(I)V
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    sub-int/2addr v2, p1

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 79
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 80
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    .line 83
    :cond_0
    return-void
.end method

.method private fillBuf()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    sub-int/2addr v0, v1

    .line 60
    .local v0, "length":I
    if-eqz v0, :cond_1

    .line 64
    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    iget v3, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 65
    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 66
    iget v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 68
    :cond_0
    return v1

    .line 61
    .end local v1    # "read":I
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "attempting to fill already-full buffer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private invalidLong(I)Ljava/lang/NumberFormatException;
    .locals 6
    .param p1, "tokenIndex"    # I

    .line 214
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, p1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private nextTokenIndex()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-boolean v0, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, -0x1

    return v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    .line 100
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-ge v0, v1, :cond_3

    .line 101
    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v1, v1, v0

    .line 102
    .local v1, "b":B
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 103
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    .line 104
    return v0

    .line 106
    :cond_1
    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 107
    return v0

    .line 100
    .end local v1    # "b":B
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_0

    .line 112
    :cond_4
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "End of stream while looking for token boundary"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseAndConsumeLong(I)J
    .locals 9
    .param p1, "tokenIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 193
    .local v0, "negative":Z
    :goto_0
    const-wide/16 v3, 0x0

    .line 194
    .local v3, "result":J
    if-eqz v0, :cond_1

    move v1, v2

    nop

    .local v1, "i":I
    :cond_1
    :goto_1
    if-ge v1, p1, :cond_4

    .line 195
    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v2, v2, v1

    add-int/lit8 v2, v2, -0x30

    .line 196
    .local v2, "digit":I
    if-ltz v2, :cond_3

    const/16 v5, 0x9

    if-gt v2, v5, :cond_3

    .line 202
    const-wide/16 v5, 0xa

    mul-long/2addr v5, v3

    int-to-long v7, v2

    sub-long/2addr v5, v7

    .line 203
    .local v5, "next":J
    cmp-long v7, v5, v3

    if-gtz v7, :cond_2

    .line 206
    move-wide v3, v5

    .line 194
    .end local v2    # "digit":I
    .end local v5    # "next":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    .restart local v2    # "digit":I
    .restart local v5    # "next":J
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/util/ProcFileReader;->invalidLong(I)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    .line 197
    .end local v5    # "next":J
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/util/ProcFileReader;->invalidLong(I)Ljava/lang/NumberFormatException;

    move-result-object v5

    throw v5

    .line 209
    .end local v1    # "i":I
    .end local v2    # "digit":I
    :cond_4
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 210
    if-eqz v0, :cond_5

    move-wide v1, v3

    goto :goto_2

    :cond_5
    neg-long v1, v3

    :goto_2
    return-wide v1
.end method

.method private parseAndConsumeString(I)Ljava/lang/String;
    .locals 4
    .param p1, "tokenIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 185
    .local v0, "s":Ljava/lang/String;
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 186
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 232
    return-void
.end method

.method public finishLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 128
    iput-boolean v1, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    .line 129
    return-void

    .line 132
    :cond_0
    nop

    .line 135
    .local v1, "i":I
    :goto_0
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-ge v1, v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v0, v0, v1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 137
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 138
    return-void

    .line 135
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_0

    .line 143
    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    const-string v2, "End of stream while looking for line boundary"

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasMoreData()Z
    .locals 1

    .line 119
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v0

    .line 223
    .local v0, "value":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 226
    long-to-int v2, v0

    return v2

    .line 224
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "parsed value larger than integer"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public nextLong()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v0

    .line 163
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 166
    invoke-direct {p0, v0}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeLong(I)J

    move-result-wide v1

    return-wide v1

    .line 164
    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Missing required long"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextOptionalLong(J)J
    .locals 3
    .param p1, "def"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v0

    .line 176
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 177
    return-wide p1

    .line 179
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public nextString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v0

    .line 151
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 154
    invoke-direct {p0, v0}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 152
    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Missing required string"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
