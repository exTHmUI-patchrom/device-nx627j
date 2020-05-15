.class Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationChunkedStreamer.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;,
        Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CHUNK_SIZE:I = 0x10000


# instance fields
.field private mBuffered:[B

.field private mBufferedLength:I

.field private mBufferedOffset:I

.field private mConsumedInputSizeBytes:J

.field private final mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

.field private final mMaxChunkSize:I

.field private mProducedOutputSizeBytes:J


# direct methods
.method public constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V
    .locals 1
    .param p1, "operation"    # Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    .line 82
    const/high16 v0, 0x10000

    invoke-direct {p0, p1, v0}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V
    .locals 1
    .param p1, "operation"    # Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;
    .param p2, "maxChunkSize"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 86
    iput-object p1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    .line 87
    iput p2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mMaxChunkSize:I

    .line 88
    return-void
.end method


# virtual methods
.method public doFinal([BII[B[B)[B
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLength"    # I
    .param p4, "signature"    # [B
    .param p5, "additionalEntropy"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 210
    if-nez p3, :cond_0

    .line 212
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    .line 213
    const/4 p2, 0x0

    .line 217
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->update([BII)[B

    move-result-object v0

    .line 218
    .local v0, "output":[B
    invoke-virtual {p0}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->flush()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object v0

    .line 220
    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-interface {v1, p4, p5}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->finish([B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v1

    .line 221
    .local v1, "opResult":Landroid/security/keymaster/OperationResult;
    if-eqz v1, :cond_2

    .line 223
    iget v2, v1, Landroid/security/keymaster/OperationResult;->resultCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 226
    iget-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    iget-object v4, v1, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 228
    iget-object v2, v1, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-static {v0, v2}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object v2

    return-object v2

    .line 224
    :cond_1
    iget v2, v1, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v2}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v2

    throw v2

    .line 222
    :cond_2
    new-instance v2, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v2}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v2
.end method

.method public flush()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 232
    iget v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    if-gtz v0, :cond_0

    .line 233
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v0

    .line 238
    :cond_0
    const/4 v0, 0x0

    .line 239
    .local v0, "bufferedOutput":Ljava/io/ByteArrayOutputStream;
    :goto_0
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    const/4 v2, 0x1

    if-lez v1, :cond_9

    .line 240
    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    iget v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    iget v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    invoke-static {v1, v3, v4}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v1

    .line 241
    .local v1, "chunk":[B
    iget-object v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-interface {v3, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)Landroid/security/keymaster/OperationResult;

    move-result-object v3

    .line 242
    .local v3, "opResult":Landroid/security/keymaster/OperationResult;
    if-eqz v3, :cond_8

    .line 244
    iget v4, v3, Landroid/security/keymaster/OperationResult;->resultCode:I

    if-ne v4, v2, :cond_7

    .line 248
    iget v4, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    if-gtz v4, :cond_1

    .line 250
    goto/16 :goto_3

    .line 253
    :cond_1
    iget v2, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    array-length v4, v1

    if-lt v2, v4, :cond_2

    .line 255
    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 256
    const/4 v2, 0x0

    iput v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    .line 257
    iput v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    goto :goto_1

    .line 260
    :cond_2
    iput-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 261
    iget v2, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    iput v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    .line 262
    array-length v2, v1

    iget v4, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    .line 265
    :goto_1
    iget v2, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    array-length v4, v1

    if-gt v2, v4, :cond_6

    .line 271
    iget-object v2, v3, Landroid/security/keymaster/OperationResult;->output:[B

    if-eqz v2, :cond_5

    iget-object v2, v3, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v2, v2

    if-lez v2, :cond_5

    .line 273
    if-nez v0, :cond_4

    .line 275
    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    if-nez v2, :cond_3

    .line 277
    iget-wide v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    iget-object v2, v3, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v2, v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 278
    iget-object v2, v3, Landroid/security/keymaster/OperationResult;->output:[B

    return-object v2

    .line 281
    :cond_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v2

    .line 286
    :cond_4
    :try_start_0
    iget-object v2, v3, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    goto :goto_2

    .line 287
    :catch_0
    move-exception v2

    .line 288
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/security/ProviderException;

    const-string v5, "Failed to buffer output"

    invoke-direct {v4, v5, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 291
    .end local v1    # "chunk":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_5
    :goto_2
    goto :goto_0

    .line 266
    .restart local v1    # "chunk":[B
    .restart local v3    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_6
    new-instance v2, Landroid/security/KeyStoreException;

    const/16 v4, -0x3e8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Keystore consumed more input than provided. Provided: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", consumed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 245
    :cond_7
    iget v2, v3, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v2}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v2

    throw v2

    .line 243
    :cond_8
    new-instance v2, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v2}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v2

    .line 293
    .end local v1    # "chunk":[B
    .end local v3    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_9
    :goto_3
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    if-lez v1, :cond_b

    .line 294
    new-instance v1, Landroid/security/KeyStoreException;

    const/16 v3, -0x15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keystore failed to consume last "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    if-eq v5, v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_a
    const-string v2, "byte"

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " of input"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 300
    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_5

    :cond_c
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    .line 301
    .local v1, "result":[B
    :goto_5
    iget-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    array-length v4, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 302
    return-object v1
.end method

.method public getConsumedInputSizeBytes()J
    .locals 2

    .line 307
    iget-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    return-wide v0
.end method

.method public getProducedOutputSizeBytes()J
    .locals 2

    .line 312
    iget-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    return-wide v0
.end method

.method public update([BII)[B
    .locals 10
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 92
    if-nez p3, :cond_0

    .line 94
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    .line 99
    .local v0, "bufferedOutput":Ljava/io/ByteArrayOutputStream;
    :goto_0
    if-lez p3, :cond_c

    .line 102
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    add-int/2addr v1, p3

    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mMaxChunkSize:I

    if-le v1, v2, :cond_1

    .line 105
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mMaxChunkSize:I

    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    sub-int v7, v1, v2

    .line 106
    .local v7, "inputBytesInChunk":I
    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    iget v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    move-object v4, p1

    move v5, p2

    move v6, v7

    invoke-static/range {v1 .. v6}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    move-result-object v1

    .local v1, "chunk":[B
    goto :goto_1

    .line 110
    .end local v1    # "chunk":[B
    .end local v7    # "inputBytesInChunk":I
    :cond_1
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    array-length v1, p1

    if-ne p3, v1, :cond_2

    .line 114
    move-object v1, p1

    .line 115
    .restart local v1    # "chunk":[B
    array-length v7, p1

    .restart local v7    # "inputBytesInChunk":I
    goto :goto_1

    .line 118
    .end local v1    # "chunk":[B
    .end local v7    # "inputBytesInChunk":I
    :cond_2
    move v6, p3

    .line 119
    .local v6, "inputBytesInChunk":I
    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    iget v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    move-object v4, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    move-result-object v1

    move v7, v6

    .line 124
    .end local v6    # "inputBytesInChunk":I
    .restart local v1    # "chunk":[B
    .restart local v7    # "inputBytesInChunk":I
    :goto_1
    add-int/2addr p2, v7

    .line 125
    sub-int/2addr p3, v7

    .line 126
    iget-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    int-to-long v4, v7

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    .line 128
    iget-object v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-interface {v2, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)Landroid/security/keymaster/OperationResult;

    move-result-object v2

    .line 129
    .local v2, "opResult":Landroid/security/keymaster/OperationResult;
    if-eqz v2, :cond_b

    .line 131
    iget v3, v2, Landroid/security/keymaster/OperationResult;->resultCode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 135
    iget v3, v2, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    array-length v4, v1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    .line 137
    sget-object v3, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 138
    iput v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    .line 139
    iput v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    goto :goto_2

    .line 140
    :cond_3
    iget v3, v2, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    const/16 v4, -0x3e8

    if-gtz v3, :cond_5

    .line 142
    if-gtz p3, :cond_4

    .line 150
    iput-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 151
    iput v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    .line 152
    array-length v3, v1

    iput v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    goto :goto_2

    .line 146
    :cond_4
    new-instance v3, Landroid/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Keystore consumed nothing from max-sized chunk: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 153
    :cond_5
    iget v3, v2, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    array-length v5, v1

    if-ge v3, v5, :cond_9

    .line 155
    iput-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 156
    iget v3, v2, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    iput v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    .line 157
    array-length v3, v1

    iget v4, v2, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    .line 164
    :goto_2
    iget-object v3, v2, Landroid/security/keymaster/OperationResult;->output:[B

    if-eqz v3, :cond_8

    iget-object v3, v2, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v3, v3

    if-lez v3, :cond_8

    .line 165
    if-lez p3, :cond_6

    .line 167
    if-nez v0, :cond_8

    .line 168
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v3

    .line 170
    :try_start_0
    iget-object v3, v2, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_4

    .line 171
    :catch_0
    move-exception v3

    .line 172
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/security/ProviderException;

    const-string v5, "Failed to buffer output"

    invoke-direct {v4, v5, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 178
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6
    if-nez v0, :cond_7

    .line 180
    iget-object v3, v2, Landroid/security/keymaster/OperationResult;->output:[B

    .local v3, "result":[B
    goto :goto_3

    .line 184
    .end local v3    # "result":[B
    :cond_7
    :try_start_1
    iget-object v3, v2, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    nop

    .line 188
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 190
    .restart local v3    # "result":[B
    :goto_3
    iget-wide v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    array-length v6, v3

    int-to-long v8, v6

    add-long/2addr v4, v8

    iput-wide v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 191
    return-object v3

    .line 185
    .end local v3    # "result":[B
    :catch_1
    move-exception v3

    .line 186
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/security/ProviderException;

    const-string v5, "Failed to buffer output"

    invoke-direct {v4, v5, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 194
    .end local v1    # "chunk":[B
    .end local v2    # "opResult":Landroid/security/keymaster/OperationResult;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "inputBytesInChunk":I
    :cond_8
    :goto_4
    goto/16 :goto_0

    .line 159
    .restart local v1    # "chunk":[B
    .restart local v2    # "opResult":Landroid/security/keymaster/OperationResult;
    .restart local v7    # "inputBytesInChunk":I
    :cond_9
    new-instance v3, Landroid/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Keystore consumed more input than provided. Provided: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", consumed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 132
    :cond_a
    iget v3, v2, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v3}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v3

    throw v3

    .line 130
    :cond_b
    new-instance v3, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v3}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v3

    .line 197
    .end local v1    # "chunk":[B
    .end local v2    # "opResult":Landroid/security/keymaster/OperationResult;
    .end local v7    # "inputBytesInChunk":I
    :cond_c
    if-nez v0, :cond_d

    .line 199
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    .local v1, "result":[B
    goto :goto_5

    .line 201
    .end local v1    # "result":[B
    :cond_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 203
    .restart local v1    # "result":[B
    :goto_5
    iget-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    array-length v4, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 204
    return-object v1
.end method
