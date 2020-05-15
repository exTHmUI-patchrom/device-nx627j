.class public final Landroid/media/AmrInputStream;
.super Ljava/io/InputStream;
.source "AmrInputStream.java"


# static fields
.field private static final SAMPLES_PER_FRAME:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "AmrInputStream"


# instance fields
.field private final mBuf:[B

.field private mBufIn:I

.field private mBufOut:I

.field mCodec:Landroid/media/MediaCodec;

.field mInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mInputStream:Ljava/io/InputStream;

.field private mOneByte:[B

.field mSawInputEOS:Z

.field mSawOutputEOS:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 56
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 46
    const/16 v0, 0x140

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/AmrInputStream;->mBuf:[B

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 48
    iput v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    .line 51
    const/4 v1, 0x1

    new-array v2, v1, [B

    iput-object v2, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    .line 57
    const-string v2, "AmrInputStream"

    const-string v3, "@@@@ AmrInputStream is not a public API @@@@"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object p1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 60
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    .line 61
    .local v2, "format":Landroid/media/MediaFormat;
    const-string/jumbo v3, "mime"

    const-string v4, "audio/3gpp"

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v3, "sample-rate"

    const/16 v4, 0x1f40

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 63
    const-string v3, "channel-count"

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 64
    const-string v3, "bitrate"

    const/16 v4, 0x2fa8

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 66
    new-instance v3, Landroid/media/MediaCodecList;

    invoke-direct {v3, v0}, Landroid/media/MediaCodecList;-><init>(I)V

    move-object v0, v3

    .line 67
    .local v0, "mcl":Landroid/media/MediaCodecList;
    invoke-virtual {v0, v2}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 70
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    iput-object v5, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 71
    iget-object v5, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v2, v4, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 75
    iget-object v1, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v5, :cond_0

    .line 78
    iget-object v5, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 80
    :cond_0
    iput-object v4, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 83
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, p0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 84
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    :cond_0
    iput-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 184
    :try_start_1
    iget-object v1, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :cond_1
    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 189
    nop

    .line 190
    nop

    .line 191
    return-void

    .line 188
    :catchall_0
    move-exception v1

    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    throw v1

    .line 182
    :catchall_1
    move-exception v1

    iput-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 184
    :try_start_2
    iget-object v2, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_2

    .line 185
    iget-object v2, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 188
    :cond_2
    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 189
    nop

    .line 188
    throw v1

    :catchall_2
    move-exception v1

    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    throw v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "AmrInputStream"

    const-string v1, "AmrInputStream wasn\'t closed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 199
    :cond_0
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    .line 92
    .local v0, "rtn":I
    if-ne v0, v1, :cond_0

    const/16 v1, 0xff

    iget-object v3, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    aget-byte v2, v3, v2

    and-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 15
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    .line 108
    iget-object v1, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_9

    .line 112
    iget v1, v0, Landroid/media/AmrInputStream;->mBufOut:I

    iget v2, v0, Landroid/media/AmrInputStream;->mBufIn:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_5

    iget-boolean v1, v0, Landroid/media/AmrInputStream;->mSawOutputEOS:Z

    if-nez v1, :cond_5

    .line 114
    iput v4, v0, Landroid/media/AmrInputStream;->mBufOut:I

    .line 115
    iput v4, v0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 118
    :goto_0
    iget-boolean v1, v0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    const/4 v2, 0x4

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    if-nez v1, :cond_4

    .line 119
    iget-object v1, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 120
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 122
    goto :goto_4

    .line 125
    :cond_0
    move v6, v4

    .line 125
    .local v6, "numRead":I
    :goto_1
    const/16 v7, 0x140

    if-ge v6, v7, :cond_2

    .line 126
    iget-object v8, v0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v9, v0, Landroid/media/AmrInputStream;->mBuf:[B

    sub-int/2addr v7, v6

    invoke-virtual {v8, v9, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 127
    .local v7, "n":I
    if-ne v7, v3, :cond_1

    .line 128
    iput-boolean v5, v0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    .line 129
    goto :goto_2

    .line 131
    :cond_1
    add-int/2addr v6, v7

    .line 132
    .end local v7    # "n":I
    goto :goto_1

    .line 133
    :cond_2
    :goto_2
    iget-object v5, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 134
    .local v5, "buf":Ljava/nio/ByteBuffer;
    iget-object v7, v0, Landroid/media/AmrInputStream;->mBuf:[B

    invoke-virtual {v5, v7, v4, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 135
    iget-object v8, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    .line 139
    iget-boolean v7, v0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    if-eqz v7, :cond_3

    .line 135
    move v14, v2

    goto :goto_3

    .line 139
    :cond_3
    nop

    .line 135
    move v14, v4

    :goto_3
    move v9, v1

    move v11, v6

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 141
    .end local v1    # "index":I
    .end local v5    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "numRead":I
    goto :goto_0

    .line 144
    :cond_4
    :goto_4
    iget-object v1, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    iget-object v8, v0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v8, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 145
    .restart local v1    # "index":I
    if-ltz v1, :cond_5

    .line 146
    iget-object v6, v0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v6, v0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 147
    iget-object v6, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 148
    .local v6, "out":Ljava/nio/ByteBuffer;
    iget-object v7, v0, Landroid/media/AmrInputStream;->mBuf:[B

    iget v8, v0, Landroid/media/AmrInputStream;->mBufIn:I

    invoke-virtual {v6, v7, v4, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 149
    iget-object v7, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 150
    iget-object v7, v0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_5

    .line 151
    iput-boolean v5, v0, Landroid/media/AmrInputStream;->mSawOutputEOS:Z

    .line 156
    .end local v1    # "index":I
    .end local v6    # "out":Ljava/nio/ByteBuffer;
    :cond_5
    iget v1, v0, Landroid/media/AmrInputStream;->mBufOut:I

    iget v2, v0, Landroid/media/AmrInputStream;->mBufIn:I

    if-ge v1, v2, :cond_7

    .line 158
    iget v1, v0, Landroid/media/AmrInputStream;->mBufIn:I

    iget v2, v0, Landroid/media/AmrInputStream;->mBufOut:I

    sub-int/2addr v1, v2

    move/from16 v2, p3

    if-le v2, v1, :cond_6

    .line 159
    iget v1, v0, Landroid/media/AmrInputStream;->mBufIn:I

    iget v3, v0, Landroid/media/AmrInputStream;->mBufOut:I

    sub-int/2addr v1, v3

    .line 159
    .end local p3    # "length":I
    .local v1, "length":I
    goto :goto_5

    .line 161
    .end local v1    # "length":I
    .restart local p3    # "length":I
    :cond_6
    move v1, v2

    .line 161
    .end local p3    # "length":I
    .restart local v1    # "length":I
    :goto_5
    iget-object v2, v0, Landroid/media/AmrInputStream;->mBuf:[B

    iget v3, v0, Landroid/media/AmrInputStream;->mBufOut:I

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-static {v2, v3, v5, v6, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 162
    iget v2, v0, Landroid/media/AmrInputStream;->mBufOut:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/media/AmrInputStream;->mBufOut:I

    .line 163
    return v1

    .line 166
    .end local v1    # "length":I
    .restart local p3    # "length":I
    :cond_7
    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v2, p3

    iget-boolean v1, v0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Landroid/media/AmrInputStream;->mSawOutputEOS:Z

    if-eqz v1, :cond_8

    .line 168
    return v3

    .line 172
    :cond_8
    return v4

    .line 109
    :cond_9
    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v2, p3

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "not open"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
