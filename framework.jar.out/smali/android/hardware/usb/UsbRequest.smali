.class public Landroid/hardware/usb/UsbRequest;
.super Ljava/lang/Object;
.source "UsbRequest.java"


# static fields
.field static final MAX_USBFS_BUFFER_SIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "UsbRequest"


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mClientData:Ljava/lang/Object;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private mEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mIsUsingNewQueue:Z

.field private mLength:I

.field private final mLock:Ljava/lang/Object;

.field private mNativeContext:J

.field private mTempBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method private native native_cancel()Z
.end method

.method private native native_close()V
.end method

.method private native native_dequeue_array([BIZ)I
.end method

.method private native native_dequeue_direct()I
.end method

.method private native native_init(Landroid/hardware/usb/UsbDeviceConnection;IIII)Z
.end method

.method private native native_queue(Ljava/nio/ByteBuffer;II)Z
.end method

.method private native native_queue_array([BIZ)Z
.end method

.method private native native_queue_direct(Ljava/nio/ByteBuffer;IZ)Z
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .line 361
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_cancel()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 4

    .line 111
    iget-wide v0, p0, Landroid/hardware/usb/UsbRequest;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 113
    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 114
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_close()V

    .line 115
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 117
    :cond_0
    return-void
.end method

.method dequeue(Z)V
    .locals 8
    .param p1, "useBufferOverflowInsteadOfIllegalArg"    # Z

    .line 299
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 302
    .local v0, "isSend":Z
    :goto_0
    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 303
    :try_start_0
    iget-boolean v3, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 304
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_dequeue_direct()I

    move-result v3

    .line 305
    .local v3, "bytesTransferred":I
    iput-boolean v1, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    .line 307
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_1

    goto/16 :goto_4

    .line 309
    :cond_1
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_2

    .line 310
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_4

    .line 312
    :cond_2
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 318
    if-eqz v0, :cond_3

    .line 319
    :try_start_1
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 325
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 322
    :cond_3
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    :goto_1
    :try_start_2
    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    .line 326
    goto :goto_4

    .line 325
    :goto_2
    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    throw v1

    .line 329
    .end local v3    # "bytesTransferred":I
    :cond_4
    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 330
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_dequeue_direct()I

    move-result v3

    .restart local v3    # "bytesTransferred":I
    goto :goto_3

    .line 332
    .end local v3    # "bytesTransferred":I
    :cond_5
    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget v5, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    invoke-direct {p0, v3, v5, v0}, Landroid/hardware/usb/UsbRequest;->native_dequeue_array([BIZ)I

    move-result v3

    .line 334
    .restart local v3    # "bytesTransferred":I
    :goto_3
    if-ltz v3, :cond_7

    .line 335
    iget v5, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 337
    .local v5, "bytesToStore":I
    :try_start_3
    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 346
    goto :goto_4

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    if-eqz p1, :cond_6

    .line 340
    :try_start_4
    const-string v4, "UsbRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Buffer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " does not have enough space to read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    new-instance v4, Ljava/nio/BufferOverflowException;

    invoke-direct {v4}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v4

    .line 344
    :cond_6
    throw v1

    .line 350
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "bytesToStore":I
    :cond_7
    :goto_4
    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    .line 351
    iput v1, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    .line 352
    monitor-exit v2

    move v1, v3

    .line 353
    .end local v3    # "bytesTransferred":I
    .local v1, "bytesTransferred":I
    return-void

    .line 352
    .end local v1    # "bytesTransferred":I
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 122
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 126
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbRequest;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 129
    nop

    .line 130
    return-void

    .line 128
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getClientData()Ljava/lang/Object;
    .locals 1

    .line 151
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mClientData:Ljava/lang/Object;

    return-object v0
.end method

.method public getEndpoint()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z
    .locals 7
    .param p1, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;
    .param p2, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;

    .line 94
    iput-object p2, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 95
    const-string v0, "connection"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDeviceConnection;

    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 97
    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v3

    .line 98
    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v6

    .line 97
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/usb/UsbRequest;->native_init(Landroid/hardware/usb/UsbDeviceConnection;IIII)Z

    move-result v0

    .line 100
    .local v0, "wasInitialized":Z
    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 104
    :cond_0
    return v0
.end method

.method public queue(Ljava/nio/ByteBuffer;)Z
    .locals 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 242
    iget-wide v0, p0, Landroid/hardware/usb/UsbRequest;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string/jumbo v3, "request is not initialized"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 245
    iget-boolean v0, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    xor-int/2addr v0, v1

    const-string/jumbo v3, "this request is currently queued"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 247
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 250
    .local v0, "isSend":Z
    :goto_1
    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 251
    :try_start_0
    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    .line 253
    const/4 v4, 0x0

    if-nez p1, :cond_2

    .line 255
    iput-boolean v1, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    .line 256
    invoke-direct {p0, v4, v2, v2}, Landroid/hardware/usb/UsbRequest;->native_queue(Ljava/nio/ByteBuffer;II)Z

    move-result v1

    .line 256
    .local v1, "wasQueued":Z
    goto :goto_4

    .line 258
    .end local v1    # "wasQueued":Z
    :cond_2
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDeviceConnection;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x1c

    if-ge v5, v6, :cond_3

    .line 261
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v6, 0x4000

    const-string/jumbo v7, "number of remaining bytes"

    invoke-static {v5, v2, v6, v7}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 266
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v5, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v1

    :goto_3
    const-string v6, "buffer can not be read-only when receiving data"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 269
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    if-nez v5, :cond_7

    .line 270
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    .line 272
    if-eqz v0, :cond_6

    .line 274
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 275
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 276
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 277
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 281
    :cond_6
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    move-object p1, v5

    .line 284
    :cond_7
    iput-boolean v1, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    .line 285
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-direct {p0, p1, v1, v5}, Landroid/hardware/usb/UsbRequest;->native_queue(Ljava/nio/ByteBuffer;II)Z

    move-result v1

    .line 287
    .restart local v1    # "wasQueued":Z
    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    if-nez v1, :cond_8

    .line 290
    iput-boolean v2, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    .line 291
    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    .line 292
    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    .line 295
    :cond_8
    return v1

    .line 287
    .end local v1    # "wasQueued":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queue(Ljava/nio/ByteBuffer;I)Z
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 192
    .local v0, "out":Z
    :goto_0
    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_1

    const/16 v2, 0x4000

    if-le p2, v2, :cond_1

    .line 194
    const/16 p2, 0x4000

    .line 197
    :cond_1
    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 199
    :try_start_0
    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    .line 200
    iput p2, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    .line 205
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/usb/UsbRequest;->native_queue_direct(Ljava/nio/ByteBuffer;IZ)Z

    move-result v3

    .local v3, "result":Z
    :goto_1
    goto :goto_2

    .line 207
    .end local v3    # "result":Z
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 208
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {p0, v3, p2, v0}, Landroid/hardware/usb/UsbRequest;->native_queue_array([BIZ)Z

    move-result v3

    goto :goto_1

    .line 210
    .restart local v3    # "result":Z
    :goto_2
    nop

    .line 212
    if-nez v3, :cond_3

    .line 213
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    .line 214
    iput v1, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    .line 216
    :cond_3
    monitor-exit v2

    .line 218
    return v3

    .line 210
    .end local v3    # "result":Z
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "buffer is not direct and has no array"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setClientData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .line 164
    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mClientData:Ljava/lang/Object;

    .line 165
    return-void
.end method
