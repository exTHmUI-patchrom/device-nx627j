.class public Landroid/media/ImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$SurfaceImage;,
        Landroid/media/ImageReader$ListenerHandler;,
        Landroid/media/ImageReader$OnImageAvailableListener;
    }
.end annotation


# static fields
.field private static final ACQUIRE_MAX_IMAGES:I = 0x2

.field private static final ACQUIRE_NO_BUFS:I = 0x1

.field private static final ACQUIRE_SUCCESS:I

.field private static final BUFFER_USAGE_UNKNOWN:J


# instance fields
.field private mAcquiredImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseLock:Ljava/lang/Object;

.field private mEstimatedNativeAllocBytes:I

.field private final mFormat:I

.field private final mHeight:I

.field private mIsReaderValid:Z

.field private mListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

.field private final mListenerLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field private mNativeContext:J

.field private final mNumPlanes:I

.field private final mSurface:Landroid/view/Surface;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1055
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1056
    invoke-static {}, Landroid/media/ImageReader;->nativeClassInit()V

    .line 1057
    return-void
.end method

.method protected constructor <init>(IIIIJ)V
    .locals 14
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "maxImages"    # I
    .param p5, "usage"    # J

    move-object v8, p0

    move v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    .line 229
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 764
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v8, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    .line 765
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v8, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    .line 766
    const/4 v0, 0x0

    iput-boolean v0, v8, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 771
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v8, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    .line 230
    iput v9, v8, Landroid/media/ImageReader;->mWidth:I

    .line 231
    iput v10, v8, Landroid/media/ImageReader;->mHeight:I

    .line 232
    iput v11, v8, Landroid/media/ImageReader;->mFormat:I

    .line 233
    move/from16 v12, p4

    iput v12, v8, Landroid/media/ImageReader;->mMaxImages:I

    .line 235
    const/4 v13, 0x1

    if-lt v9, v13, :cond_2

    if-lt v10, v13, :cond_2

    .line 239
    iget v0, v8, Landroid/media/ImageReader;->mMaxImages:I

    if-lt v0, v13, :cond_1

    .line 244
    const/16 v0, 0x11

    if-eq v11, v0, :cond_0

    .line 249
    iget v0, v8, Landroid/media/ImageReader;->mFormat:I

    invoke-static {v0}, Landroid/media/ImageUtils;->getNumPlanesForFormat(I)I

    move-result v0

    iput v0, v8, Landroid/media/ImageReader;->mNumPlanes:I

    .line 251
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/media/ImageReader;->nativeInit(Ljava/lang/Object;IIIIJ)V

    .line 253
    invoke-direct {v8}, Landroid/media/ImageReader;->nativeGetSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v8, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    .line 255
    iput-boolean v13, v8, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 262
    invoke-static {v9, v10, v11, v13}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    move-result v0

    iput v0, v8, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    .line 264
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, v8, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 265
    return-void

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NV21 format is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum outstanding image count must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The image dimensions must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$300(Landroid/media/ImageReader;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageReader;

    .line 58
    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/ImageReader;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageReader;

    .line 58
    iget-object v0, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/ImageReader;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageReader;

    .line 58
    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/ImageReader;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageReader;

    .line 58
    iget-boolean v0, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    return v0
.end method

.method static synthetic access$700(Landroid/media/ImageReader;Landroid/media/Image;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/ImageReader;
    .param p1, "x1"    # Landroid/media/Image;

    .line 58
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->releaseImage(Landroid/media/Image;)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/ImageReader;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageReader;

    .line 58
    iget v0, p0, Landroid/media/ImageReader;->mNumPlanes:I

    return v0
.end method

.method static synthetic access$900(Landroid/media/ImageReader;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageReader;

    .line 58
    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    return v0
.end method

.method private acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I
    .locals 5
    .param p1, "si"    # Landroid/media/ImageReader$SurfaceImage;

    .line 435
    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    const/4 v1, 0x1

    .line 438
    .local v1, "status":I
    :try_start_0
    iget-boolean v2, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    if-eqz v2, :cond_0

    .line 439
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeImageSetup(Landroid/media/Image;)I

    move-result v2

    move v1, v2

    .line 442
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 449
    new-instance v2, Ljava/lang/AssertionError;

    goto :goto_0

    .line 444
    :pswitch_0
    const/4 v2, 0x1

    iput-boolean v2, p1, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    .line 447
    :pswitch_1
    nop

    .line 454
    if-nez v1, :cond_1

    .line 455
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_1
    monitor-exit v0

    return v1

    .line 449
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown nativeImageSetup return code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 458
    .end local v1    # "status":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static isFormatUsageCombinationAllowed(IJ)Z
    .locals 4
    .param p0, "format"    # I
    .param p1, "usage"    # J

    .line 721
    invoke-static {p0}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    return v1

    .line 726
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 727
    return v1

    .line 730
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isImageOwnedbyMe(Landroid/media/Image;)Z
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    .line 713
    instance-of v0, p1, Landroid/media/ImageReader$SurfaceImage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 714
    return v1

    .line 716
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    .line 717
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    move-result-object v2

    if-ne v2, p0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native nativeClose()V
.end method

.method private synchronized native nativeDetachImage(Landroid/media/Image;)I
.end method

.method private synchronized native nativeDiscardFreeBuffers()V
.end method

.method private synchronized native nativeGetSurface()Landroid/view/Surface;
.end method

.method private synchronized native nativeImageSetup(Landroid/media/Image;)I
.end method

.method private synchronized native nativeInit(Ljava/lang/Object;IIIIJ)V
.end method

.method private synchronized native nativeReleaseImage(Landroid/media/Image;)V
.end method

.method public static newInstance(IIII)Landroid/media/ImageReader;
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "maxImages"    # I

    .line 132
    new-instance v7, Landroid/media/ImageReader;

    const-wide/16 v5, 0x0

    move-object v0, v7

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/ImageReader;-><init>(IIIIJ)V

    return-object v7
.end method

.method public static newInstance(IIIIJ)Landroid/media/ImageReader;
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "maxImages"    # I
    .param p4, "usage"    # J

    .line 219
    invoke-static {p2, p4, p5}, Landroid/media/ImageReader;->isFormatUsageCombinationAllowed(IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Landroid/media/ImageReader;

    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJ)V

    return-object v0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format usage combination is not supported: format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", usage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .locals 4
    .param p0, "selfRef"    # Ljava/lang/Object;

    .line 741
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 742
    .local v0, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/ImageReader;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    .line 743
    .local v1, "ir":Landroid/media/ImageReader;
    if-nez v1, :cond_0

    .line 744
    return-void

    .line 748
    :cond_0
    iget-object v2, v1, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 749
    :try_start_0
    iget-object v3, v1, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    .line 750
    .local v3, "handler":Landroid/os/Handler;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    if-eqz v3, :cond_1

    .line 752
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 754
    :cond_1
    return-void

    .line 750
    .end local v3    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private releaseImage(Landroid/media/Image;)V
    .locals 3
    .param p1, "i"    # Landroid/media/Image;

    .line 514
    instance-of v0, p1, Landroid/media/ImageReader$SurfaceImage;

    if-eqz v0, :cond_2

    .line 518
    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    .line 519
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    iget-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-nez v1, :cond_0

    .line 520
    return-void

    .line 523
    :cond_0
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->access$000(Landroid/media/ImageReader$SurfaceImage;)V

    .line 529
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeReleaseImage(Landroid/media/Image;)V

    .line 530
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    .line 531
    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 532
    return-void

    .line 524
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This image was not produced by this ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    .end local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This image was not produced by an ImageReader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public acquireLatestImage()Landroid/media/Image;
    .locals 3

    .line 386
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 387
    .local v0, "image":Landroid/media/Image;
    if-nez v0, :cond_0

    .line 388
    const/4 v1, 0x0

    return-object v1

    .line 392
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImageNoThrowISE()Landroid/media/Image;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    .local v1, "next":Landroid/media/Image;
    if-nez v1, :cond_2

    .line 394
    move-object v2, v0

    .line 395
    .local v2, "result":Landroid/media/Image;
    const/4 v0, 0x0

    .line 396
    nop

    .line 402
    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 396
    :cond_1
    return-object v2

    .line 398
    .end local v2    # "result":Landroid/media/Image;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    move-object v0, v1

    .line 400
    .end local v1    # "next":Landroid/media/Image;
    goto :goto_0

    .line 402
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 403
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_3
    throw v1
.end method

.method public acquireNextImage()Landroid/media/Image;
    .locals 6

    .line 492
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-direct {v0, p0, v1}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    .line 493
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    .line 495
    .local v1, "status":I
    packed-switch v1, :pswitch_data_0

    .line 506
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown nativeImageSetup return code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 501
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/media/ImageReader;->mMaxImages:I

    .line 504
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 502
    const-string/jumbo v4, "maxImages (%d) has already been acquired, call #close before acquiring more."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 499
    :pswitch_1
    const/4 v2, 0x0

    return-object v2

    .line 497
    :pswitch_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public acquireNextImageNoThrowISE()Landroid/media/Image;
    .locals 2

    .line 416
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-direct {v0, p0, v1}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    .line 417
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public close()V
    .locals 4

    .line 599
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 600
    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 610
    :cond_0
    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 611
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 612
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image;

    .line 613
    .local v3, "image":Landroid/media/Image;
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 614
    .end local v3    # "image":Landroid/media/Image;
    goto :goto_0

    .line 615
    :cond_1
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 617
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeClose()V

    .line 619
    iget v2, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    if-lez v2, :cond_2

    .line 620
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget v3, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 621
    iput v1, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    .line 623
    :cond_2
    monitor-exit v0

    .line 624
    return-void

    .line 623
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method detachImage(Landroid/media/Image;)V
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    .line 691
    if-eqz p1, :cond_2

    .line 694
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->isImageOwnedbyMe(Landroid/media/Image;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    .line 700
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 702
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->isAttachable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 706
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeDetachImage(Landroid/media/Image;)I

    .line 707
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->access$000(Landroid/media/ImageReader$SurfaceImage;)V

    .line 708
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/ImageReader$SurfaceImage;->access$102(Landroid/media/ImageReader$SurfaceImage;[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    .line 709
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ImageReader$SurfaceImage;->access$200(Landroid/media/ImageReader$SurfaceImage;Z)V

    .line 710
    return-void

    .line 703
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Image was already detached from this ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 695
    .end local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to detach an image that is not owned by this ImageReader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input image must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public discardFreeBuffers()V
    .locals 2

    .line 645
    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 646
    :try_start_0
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeDiscardFreeBuffers()V

    .line 647
    monitor-exit v0

    .line 648
    return-void

    .line 647
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 653
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 656
    nop

    .line 657
    return-void

    .line 655
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .line 290
    iget v0, p0, Landroid/media/ImageReader;->mHeight:I

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    .line 309
    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    return v0
.end method

.method public getMaxImages()I
    .locals 1

    .line 330
    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 350
    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 277
    iget v0, p0, Landroid/media/ImageReader;->mWidth:I

    return v0
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/ImageReader$OnImageAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 547
    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    if-eqz p1, :cond_4

    .line 549
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 550
    .local v1, "looper":Landroid/os/Looper;
    :goto_0
    if-eqz v1, :cond_3

    .line 554
    iget-object v2, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    invoke-virtual {v2}, Landroid/media/ImageReader$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v2, v1, :cond_2

    .line 555
    :cond_1
    new-instance v2, Landroid/media/ImageReader$ListenerHandler;

    invoke-direct {v2, p0, v1}, Landroid/media/ImageReader$ListenerHandler;-><init>(Landroid/media/ImageReader;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    .line 557
    :cond_2
    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 558
    .end local v1    # "looper":Landroid/os/Looper;
    goto :goto_1

    .line 551
    .restart local v1    # "looper":Landroid/os/Looper;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "handler is null but the current thread is not a looper"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 559
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 560
    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    .line 562
    :goto_1
    monitor-exit v0

    .line 563
    return-void

    .line 562
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
