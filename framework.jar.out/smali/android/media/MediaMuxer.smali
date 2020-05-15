.class public final Landroid/media/MediaMuxer;
.super Ljava/lang/Object;
.source "MediaMuxer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaMuxer$Format;,
        Landroid/media/MediaMuxer$OutputFormat;
    }
.end annotation


# static fields
.field private static final MUXER_STATE_INITIALIZED:I = 0x0

.field private static final MUXER_STATE_STARTED:I = 0x1

.field private static final MUXER_STATE_STOPPED:I = 0x2

.field private static final MUXER_STATE_UNINITIALIZED:I = -0x1


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mLastTrackIndex:I

.field private mNativeObject:J

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 250
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;I)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 308
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 309
    iput v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    .line 354
    invoke-direct {p0, p1, p2}, Landroid/media/MediaMuxer;->setUpMediaMuxer(Ljava/io/FileDescriptor;I)V

    .line 355
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 308
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 309
    iput v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    .line 323
    if-eqz p1, :cond_1

    .line 328
    const/4 v0, 0x0

    .line 330
    .local v0, "file":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rws"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 331
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 332
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 333
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-direct {p0, v1, p2}, Landroid/media/MediaMuxer;->setUpMediaMuxer(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    nop

    .line 336
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 339
    return-void

    .line 335
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    throw v1

    .line 324
    .end local v0    # "file":Ljava/io/RandomAccessFile;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "path must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeAddTrack(J[Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeSetLocation(JII)V
.end method

.method private static native nativeSetOrientationHint(JI)V
.end method

.method private static native nativeSetup(Ljava/io/FileDescriptor;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeStart(J)V
.end method

.method private static native nativeStop(J)V
.end method

.method private static native nativeWriteSampleData(JILjava/nio/ByteBuffer;IIJI)V
.end method

.method private setUpMediaMuxer(Ljava/io/FileDescriptor;I)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    .line 361
    invoke-static {p1, p2}, Landroid/media/MediaMuxer;->nativeSetup(Ljava/io/FileDescriptor;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    .line 362
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 363
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 364
    return-void

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)I
    .locals 9
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 601
    if-eqz p1, :cond_5

    .line 604
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v0, :cond_4

    .line 607
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 610
    const/4 v0, -0x1

    .line 612
    .local v0, "trackIndex":I
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v1

    .line 614
    .local v1, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 615
    .local v2, "keys":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 616
    .local v3, "values":[Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    .line 617
    .local v4, "mapSize":I
    if-lez v4, :cond_2

    .line 618
    new-array v2, v4, [Ljava/lang/String;

    .line 619
    new-array v3, v4, [Ljava/lang/Object;

    .line 620
    const/4 v5, 0x0

    .line 621
    .local v5, "i":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 622
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v2, v5

    .line 623
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v5

    .line 624
    add-int/lit8 v5, v5, 0x1

    .line 625
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 626
    :cond_0
    iget-wide v6, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v6, v7, v2, v3}, Landroid/media/MediaMuxer;->nativeAddTrack(J[Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 627
    .end local v5    # "i":I
    nop

    .line 633
    iget v5, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    if-ge v5, v0, :cond_1

    .line 636
    iput v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    .line 637
    return v0

    .line 634
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid format."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 628
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "format must not be empty."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 608
    .end local v0    # "trackIndex":I
    .end local v1    # "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "keys":[Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/Object;
    .end local v4    # "mapSize":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Muxer has been released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Muxer is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "format must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 464
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 467
    :cond_0
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 468
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/media/MediaMuxer;->nativeRelease(J)V

    .line 469
    iput-wide v2, p0, Landroid/media/MediaMuxer;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 473
    nop

    .line 474
    return-void

    .line 472
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public release()V
    .locals 4

    .line 693
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 694
    invoke-virtual {p0}, Landroid/media/MediaMuxer;->stop()V

    .line 696
    :cond_0
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 697
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/media/MediaMuxer;->nativeRelease(J)V

    .line 698
    iput-wide v2, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    .line 699
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 701
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 702
    return-void
.end method

.method public setLocation(FF)V
    .locals 7
    .param p1, "latitude"    # F
    .param p2, "longitude"    # F

    .line 409
    const v0, 0x461c4000    # 10000.0f

    mul-float v1, p1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 410
    .local v1, "latitudex10000":I
    mul-float/2addr v0, p2

    float-to-double v5, v0

    add-double/2addr v5, v3

    double-to-int v0, v5

    .line 412
    .local v0, "longitudex10000":I
    const v2, 0xdbba0

    if-gt v1, v2, :cond_2

    const v2, -0xdbba0

    if-lt v1, v2, :cond_2

    .line 416
    const v2, 0x1b7740

    if-gt v0, v2, :cond_1

    const v2, -0x1b7740

    if-lt v0, v2, :cond_1

    .line 421
    iget v2, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v2, :cond_0

    iget-wide v2, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 422
    iget-wide v2, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v2, v3, v1, v0}, Landroid/media/MediaMuxer;->nativeSetLocation(JII)V

    .line 426
    return-void

    .line 424
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t set location due to wrong state."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 417
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Longitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " out of range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 413
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Latitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " out of range."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 414
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setOrientationHint(I)V
    .locals 3
    .param p1, "degrees"    # I

    .line 382
    if-eqz p1, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_1
    :goto_0
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v0, :cond_2

    .line 386
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/media/MediaMuxer;->nativeSetOrientationHint(JI)V

    .line 391
    return-void

    .line 388
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set rotation degrees due to wrong state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 4

    .line 436
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 439
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v0, :cond_0

    .line 440
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/media/MediaMuxer;->nativeStart(J)V

    .line 441
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 445
    return-void

    .line 443
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t start due to wrong state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Muxer has been released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 2

    .line 453
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 454
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/media/MediaMuxer;->nativeStop(J)V

    .line 455
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 459
    return-void

    .line 457
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t stop due to wrong state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 11
    .param p1, "trackIndex"    # I
    .param p2, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .line 656
    if-ltz p1, :cond_5

    iget v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    if-gt p1, v0, :cond_5

    .line 660
    if-eqz p2, :cond_4

    .line 664
    if-eqz p3, :cond_3

    .line 667
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v0, :cond_2

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    if-ltz v0, :cond_2

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    .line 668
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 674
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 678
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 682
    iget-wide v2, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    iget v6, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v7, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v8, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v10, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move v4, p1

    move-object v5, p2

    invoke-static/range {v2 .. v10}, Landroid/media/MediaMuxer;->nativeWriteSampleData(JILjava/nio/ByteBuffer;IIJI)V

    .line 685
    return-void

    .line 679
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t write, muxer is not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Muxer has been released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferInfo must specify a valid buffer offset, size and presentation time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferInfo must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteBuffer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "trackIndex is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
