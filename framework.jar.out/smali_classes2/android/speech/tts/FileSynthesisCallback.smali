.class Landroid/speech/tts/FileSynthesisCallback;
.super Landroid/speech/tts/AbstractSynthesisCallback;
.source "FileSynthesisCallback.java"


# static fields
.field private static final DBG:Z = false

.field private static final MAX_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "FileSynthesisRequest"

.field private static final WAV_FORMAT_PCM:S = 0x1s

.field private static final WAV_HEADER_LENGTH:I = 0x2c


# instance fields
.field private mAudioFormat:I

.field private mChannelCount:I

.field private final mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

.field private mDone:Z

.field private mFileChannel:Ljava/nio/channels/FileChannel;

.field private mSampleRateInHz:I

.field private mStarted:Z

.field private final mStateLock:Ljava/lang/Object;

.field protected mStatusCode:I


# direct methods
.method constructor <init>(Ljava/nio/channels/FileChannel;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Z)V
    .locals 1
    .param p1, "fileChannel"    # Ljava/nio/channels/FileChannel;
    .param p2, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p3, "clientIsUsingV2"    # Z

    .line 59
    invoke-direct {p0, p3}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>(Z)V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    .line 52
    iput-boolean v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    .line 60
    iput-object p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 61
    iput-object p2, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 62
    iput v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 63
    return-void
.end method

.method private cleanUp()V
    .locals 0

    .line 85
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->closeFile()V

    .line 86
    return-void
.end method

.method private closeFile()V
    .locals 1

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 94
    return-void
.end method

.method private makeWavHeader(IIII)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "sampleRateInHz"    # I
    .param p2, "audioFormat"    # I
    .param p3, "channelCount"    # I
    .param p4, "dataLength"    # I

    .line 286
    invoke-static {p2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v0

    .line 287
    .local v0, "sampleSizeInBytes":I
    mul-int v1, p1, v0

    mul-int/2addr v1, p3

    .line 288
    .local v1, "byteRate":I
    mul-int v2, v0, p3

    int-to-short v2, v2

    .line 289
    .local v2, "blockAlign":S
    mul-int/lit8 v3, v0, 0x8

    int-to-short v3, v3

    .line 291
    .local v3, "bitsPerSample":S
    const/16 v4, 0x2c

    new-array v4, v4, [B

    .line 292
    .local v4, "headerBuf":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 293
    .local v5, "header":Ljava/nio/ByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 295
    const/4 v6, 0x4

    new-array v7, v6, [B

    fill-array-data v7, :array_0

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 296
    add-int/lit8 v7, p4, 0x2c

    add-int/lit8 v7, v7, -0x8

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 297
    new-array v7, v6, [B

    fill-array-data v7, :array_1

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 298
    new-array v7, v6, [B

    fill-array-data v7, :array_2

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 299
    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 300
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 301
    int-to-short v7, p3

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 302
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 303
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 304
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 305
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 306
    new-array v6, v6, [B

    fill-array-data v6, :array_3

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 307
    invoke-virtual {v5, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 308
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 310
    return-object v5

    :array_0
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x57t
        0x41t
        0x56t
        0x45t
    .end array-data

    :array_2
    .array-data 1
        0x66t
        0x6dt
        0x74t
        0x20t
    .end array-data

    :array_3
    .array-data 1
        0x64t
        0x61t
        0x74t
        0x61t
    .end array-data
.end method


# virtual methods
.method public audioAvailable([BII)I
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "fileChannel":Ljava/nio/channels/FileChannel;
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    iget v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/speech/tts/FileSynthesisCallback;->errorCodeOnStop()I

    move-result v2

    monitor-exit v1

    return v2

    .line 164
    :cond_0
    iget v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 166
    monitor-exit v1

    return v3

    .line 168
    :cond_1
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    const/4 v4, -0x5

    if-nez v2, :cond_2

    .line 169
    const-string v2, "FileSynthesisRequest"

    const-string v5, "File not open"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 171
    monitor-exit v1

    return v3

    .line 173
    :cond_2
    iget-boolean v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    if-nez v2, :cond_3

    .line 174
    const-string v2, "FileSynthesisRequest"

    const-string v4, "Start method was not called"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    monitor-exit v1

    return v3

    .line 177
    :cond_3
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    move-object v0, v2

    .line 178
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 180
    new-array v2, p3, [B

    .line 181
    .local v2, "bufferCopy":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 182
    iget-object v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v5, v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnAudioAvailable([B)V

    .line 185
    :try_start_1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    return v1

    .line 187
    :catch_0
    move-exception v1

    move-object v5, v1

    .line 188
    .local v5, "ex":Ljava/io/IOException;
    const-string v1, "FileSynthesisRequest"

    const-string v6, "Failed to write to output file descriptor"

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    iget-object v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 190
    :try_start_2
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 191
    iput v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 192
    monitor-exit v6

    .line 193
    return v3

    .line 192
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 178
    .end local v2    # "bufferCopy":[B
    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public done()I
    .locals 9

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "fileChannel":Ljava/nio/channels/FileChannel;
    const/4 v1, 0x0

    .line 203
    .local v1, "sampleRateInHz":I
    const/4 v2, 0x0

    .line 204
    .local v2, "audioFormat":I
    const/4 v3, 0x0

    .line 206
    .local v3, "channelCount":I
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 207
    :try_start_0
    iget-boolean v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    const/4 v6, -0x1

    if-eqz v5, :cond_0

    .line 208
    const-string v5, "FileSynthesisRequest"

    const-string v7, "Duplicate call to done()"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    monitor-exit v4

    return v6

    .line 213
    :cond_0
    iget v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    const/4 v7, -0x2

    if-ne v5, v7, :cond_1

    .line 215
    invoke-virtual {p0}, Landroid/speech/tts/FileSynthesisCallback;->errorCodeOnStop()I

    move-result v5

    monitor-exit v4

    return v5

    .line 217
    :cond_1
    iget v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    if-eq v5, v7, :cond_2

    .line 218
    iget-object v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iget v7, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    invoke-interface {v5, v7}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 219
    monitor-exit v4

    return v6

    .line 221
    :cond_2
    iget-object v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-nez v5, :cond_3

    .line 222
    const-string v5, "FileSynthesisRequest"

    const-string v7, "File not open"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    monitor-exit v4

    return v6

    .line 225
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    .line 226
    iget-object v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    move-object v0, v5

    .line 227
    iget v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mSampleRateInHz:I

    move v1, v5

    .line 228
    iget v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mAudioFormat:I

    move v2, v5

    .line 229
    iget v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mChannelCount:I

    move v3, v5

    .line 230
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 234
    const-wide/16 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 235
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v7, 0x2c

    sub-long/2addr v4, v7

    long-to-int v4, v4

    .line 236
    .local v4, "dataLength":I
    nop

    .line 237
    invoke-direct {p0, v1, v2, v3, v4}, Landroid/speech/tts/FileSynthesisCallback;->makeWavHeader(IIII)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 236
    invoke-virtual {v0, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 239
    iget-object v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    :try_start_2
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->closeFile()V

    .line 241
    iget-object v7, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v7}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    .line 242
    const/4 v7, 0x0

    monitor-exit v5

    return v7

    .line 243
    :catchall_0
    move-exception v7

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 244
    .end local v4    # "dataLength":I
    :catch_0
    move-exception v4

    move-object v5, v4

    .line 245
    .local v5, "ex":Ljava/io/IOException;
    const-string v4, "FileSynthesisRequest"

    const-string v7, "Failed to write to output file descriptor"

    invoke-static {v4, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    iget-object v7, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 247
    :try_start_4
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 248
    monitor-exit v7

    .line 249
    return v6

    .line 248
    :catchall_1
    move-exception v4

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 230
    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_2
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5
.end method

.method public error()V
    .locals 1

    .line 255
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/speech/tts/FileSynthesisCallback;->error(I)V

    .line 256
    return-void
.end method

.method public error(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .line 261
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    if-eqz v1, :cond_0

    .line 263
    monitor-exit v0

    return-void

    .line 265
    :cond_0
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 266
    iput p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 267
    monitor-exit v0

    .line 268
    return-void

    .line 267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxBufferSize()I
    .locals 1

    .line 98
    const/16 v0, 0x2000

    return v0
.end method

.method public hasFinished()Z
    .locals 2

    .line 279
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    monitor-exit v0

    return v1

    .line 281
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasStarted()Z
    .locals 2

    .line 272
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    monitor-exit v0

    return v1

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rangeStart(III)V
    .locals 1
    .param p1, "markerInFrames"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 315
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnRangeStart(III)V

    .line 316
    return-void
.end method

.method public start(III)I
    .locals 5
    .param p1, "sampleRateInHz"    # I
    .param p2, "audioFormat"    # I
    .param p3, "channelCount"    # I

    .line 107
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 110
    const-string v0, "FileSynthesisRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio format encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not supported. Please use one of AudioFormat.ENCODING_PCM_8BIT, AudioFormat.ENCODING_PCM_16BIT or AudioFormat.ENCODING_PCM_FLOAT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnBeginSynthesis(III)V

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "fileChannel":Ljava/nio/channels/FileChannel;
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    iget v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 120
    invoke-virtual {p0}, Landroid/speech/tts/FileSynthesisCallback;->errorCodeOnStop()I

    move-result v2

    monitor-exit v1

    return v2

    .line 122
    :cond_1
    iget v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    .line 124
    monitor-exit v1

    return v3

    .line 126
    :cond_2
    iget-boolean v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    if-eqz v2, :cond_3

    .line 127
    const-string v2, "FileSynthesisRequest"

    const-string v4, "Start called twice"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    monitor-exit v1

    return v3

    .line 130
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    .line 131
    iput p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mSampleRateInHz:I

    .line 132
    iput p2, p0, Landroid/speech/tts/FileSynthesisCallback;->mAudioFormat:I

    .line 133
    iput p3, p0, Landroid/speech/tts/FileSynthesisCallback;->mChannelCount:I

    .line 135
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 136
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    move-object v0, v2

    .line 137
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    const/16 v1, 0x2c

    :try_start_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    const/4 v1, 0x0

    return v1

    .line 142
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 143
    .local v2, "ex":Ljava/io/IOException;
    const-string v1, "FileSynthesisRequest"

    const-string v4, "Failed to write wav header to output file descriptor"

    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 145
    :try_start_2
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 146
    const/4 v1, -0x5

    iput v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 147
    monitor-exit v4

    .line 148
    return v3

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 137
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method stop()V
    .locals 3

    .line 67
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    if-eqz v1, :cond_0

    .line 69
    monitor-exit v0

    return-void

    .line 71
    :cond_0
    iget v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 72
    monitor-exit v0

    return-void

    .line 75
    :cond_1
    iput v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 76
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 77
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
