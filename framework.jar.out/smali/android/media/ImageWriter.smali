.class public Landroid/media/ImageWriter;
.super Ljava/lang/Object;
.source "ImageWriter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageWriter$WriterSurfaceImage;,
        Landroid/media/ImageWriter$ListenerHandler;,
        Landroid/media/ImageWriter$OnImageReleasedListener;
    }
.end annotation


# instance fields
.field private mDequeuedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mEstimatedNativeAllocBytes:I

.field private mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

.field private mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

.field private final mListenerLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field private mNativeContext:J

.field private mWriterFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 905
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 906
    invoke-static {}, Landroid/media/ImageWriter;->nativeClassInit()V

    .line 907
    return-void
.end method

.method protected constructor <init>(Landroid/view/Surface;II)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "maxImages"    # I
    .param p3, "format"    # I

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    .line 184
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    .line 189
    iput p2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    .line 191
    if-nez p3, :cond_0

    .line 192
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result p3

    .line 196
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1, p2, p3}, Landroid/media/ImageWriter;->nativeInit(Ljava/lang/Object;Landroid/view/Surface;II)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    .line 204
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v1

    .line 205
    .local v1, "surfSize":Landroid/util/Size;
    nop

    .line 206
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3, p3, v0}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    move-result v0

    iput v0, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    .line 208
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v2, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v0, v2}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 209
    return-void

    .line 185
    .end local v1    # "surfSize":Landroid/util/Size;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal input argument: surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", maxImages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private abortImage(Landroid/media/Image;)V
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    .line 629
    if-eqz p1, :cond_2

    .line 633
    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    move-object v0, p1

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 639
    .local v0, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    iget-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-nez v1, :cond_0

    .line 640
    return-void

    .line 649
    :cond_0
    iget-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Landroid/media/ImageWriter;->cancelImage(JLandroid/media/Image;)V

    .line 650
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 651
    invoke-static {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->access$000(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    .line 652
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    .line 653
    return-void

    .line 634
    .end local v0    # "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "It is illegal to abort some image that is not dequeued yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Landroid/media/ImageWriter;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageWriter;

    .line 87
    iget-object v0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/ImageWriter;)Landroid/media/ImageWriter$OnImageReleasedListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageWriter;

    .line 87
    iget-object v0, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/ImageWriter;Landroid/media/Image;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/ImageWriter;
    .param p1, "x1"    # Landroid/media/Image;

    .line 87
    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->abortImage(Landroid/media/Image;)V

    return-void
.end method

.method private attachAndQueueInputImage(Landroid/media/Image;)V
    .locals 16
    .param p1, "image"    # Landroid/media/Image;

    .line 540
    if-eqz p1, :cond_2

    .line 543
    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->isAttachable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 562
    .local v0, "crop":Landroid/graphics/Rect;
    move-object/from16 v14, p0

    iget-wide v2, v14, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getNativeContext()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v6

    .line 563
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v7

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 564
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTransform()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getScalingMode()I

    move-result v15

    .line 562
    move-object v1, v14

    move v14, v15

    invoke-direct/range {v1 .. v14}, Landroid/media/ImageWriter;->nativeAttachAndQueueImage(JJIJIIIIII)I

    .line 565
    return-void

    .line 554
    .end local v0    # "crop":Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image was not detached from last owner, or image  is not detachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not attach an image that is owned ImageWriter already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synchronized native cancelImage(JLandroid/media/Image;)V
.end method

.method private isImageOwnedByMe(Landroid/media/Image;)Z
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    .line 656
    instance-of v0, p1, Landroid/media/ImageWriter$WriterSurfaceImage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 657
    return v1

    .line 659
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 660
    .local v0, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v2

    if-eq v2, p0, :cond_1

    .line 661
    return v1

    .line 664
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private synchronized native nativeAttachAndQueueImage(JJIJIIIIII)I
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native nativeClose(J)V
.end method

.method private synchronized native nativeDequeueInputImage(JLandroid/media/Image;)V
.end method

.method private synchronized native nativeInit(Ljava/lang/Object;Landroid/view/Surface;II)J
.end method

.method private synchronized native nativeQueueInputImage(JLandroid/media/Image;JIIIIII)V
.end method

.method public static newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;
    .locals 2
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "maxImages"    # I

    .line 128
    new-instance v0, Landroid/media/ImageWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;II)V

    return-object v0
.end method

.method public static newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;
    .locals 3
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "maxImages"    # I
    .param p2, "format"    # I

    .line 174
    invoke-static {p2}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format is specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    :goto_0
    new-instance v0, Landroid/media/ImageWriter;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;II)V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .locals 4
    .param p0, "selfRef"    # Ljava/lang/Object;

    .line 595
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 596
    .local v0, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/ImageWriter;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageWriter;

    .line 597
    .local v1, "iw":Landroid/media/ImageWriter;
    if-nez v1, :cond_0

    .line 598
    return-void

    .line 602
    :cond_0
    iget-object v2, v1, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 603
    :try_start_0
    iget-object v3, v1, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    .line 604
    .local v3, "handler":Landroid/os/Handler;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    if-eqz v3, :cond_1

    .line 606
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 608
    :cond_1
    return-void

    .line 604
    .end local v3    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 489
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    .line 490
    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    .line 491
    .local v1, "image":Landroid/media/Image;
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 492
    .end local v1    # "image":Landroid/media/Image;
    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 494
    iget-wide v0, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Landroid/media/ImageWriter;->nativeClose(J)V

    .line 495
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/ImageWriter;->mNativeContext:J

    .line 497
    iget v0, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    if-lez v0, :cond_1

    .line 498
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 499
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    .line 501
    :cond_1
    return-void
.end method

.method public dequeueInputImage()Landroid/media/Image;
    .locals 3

    .line 286
    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroid/media/ImageWriter;->mMaxImages:I

    if-ge v0, v1, :cond_0

    .line 289
    new-instance v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-direct {v0, p0}, Landroid/media/ImageWriter$WriterSurfaceImage;-><init>(Landroid/media/ImageWriter;)V

    .line 290
    .local v0, "newImage":Landroid/media/ImageWriter$WriterSurfaceImage;
    iget-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v1, v2, v0}, Landroid/media/ImageWriter;->nativeDequeueInputImage(JLandroid/media/Image;)V

    .line 291
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    .line 293
    return-object v0

    .line 287
    .end local v0    # "newImage":Landroid/media/ImageWriter$WriterSurfaceImage;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already dequeued max number of Images "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 506
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 509
    nop

    .line 510
    return-void

    .line 508
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFormat()I
    .locals 1

    .line 407
    iget v0, p0, Landroid/media/ImageWriter;->mWriterFormat:I

    return v0
.end method

.method public getMaxImages()I
    .locals 1

    .line 235
    iget v0, p0, Landroid/media/ImageWriter;->mMaxImages:I

    return v0
.end method

.method public queueInputImage(Landroid/media/Image;)V
    .locals 14
    .param p1, "image"    # Landroid/media/Image;

    .line 349
    if-eqz p1, :cond_5

    .line 352
    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    move-result v0

    .line 353
    .local v0, "ownedByMe":Z
    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/media/ImageWriter$WriterSurfaceImage;

    iget-boolean v1, v1, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Image from ImageWriter is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 359
    invoke-virtual {p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/media/ImageReader;

    if-eqz v1, :cond_2

    .line 364
    invoke-virtual {p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    .line 366
    .local v1, "prevOwner":Landroid/media/ImageReader;
    invoke-virtual {v1, p1}, Landroid/media/ImageReader;->detachImage(Landroid/media/Image;)V

    .line 367
    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->attachAndQueueInputImage(Landroid/media/Image;)V

    .line 371
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 372
    return-void

    .line 360
    .end local v1    # "prevOwner":Landroid/media/ImageReader;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only images from ImageReader can be queued to ImageWriter, other image source is not supported yet!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    :cond_3
    invoke-virtual {p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 376
    .local v1, "crop":Landroid/graphics/Rect;
    iget-wide v3, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    iget v10, v1, Landroid/graphics/Rect;->right:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    .line 377
    invoke-virtual {p1}, Landroid/media/Image;->getTransform()I

    move-result v12

    invoke-virtual {p1}, Landroid/media/Image;->getScalingMode()I

    move-result v13

    .line 376
    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v13}, Landroid/media/ImageWriter;->nativeQueueInputImage(JLandroid/media/Image;JIIIIII)V

    .line 386
    if-eqz v0, :cond_4

    .line 387
    iget-object v2, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 389
    move-object v2, p1

    check-cast v2, Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 390
    .local v2, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    invoke-static {v2}, Landroid/media/ImageWriter$WriterSurfaceImage;->access$000(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    .line 391
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    .line 393
    .end local v2    # "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    :cond_4
    return-void

    .line 350
    .end local v0    # "ownedByMe":Z
    .end local v1    # "crop":Landroid/graphics/Rect;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/ImageWriter$OnImageReleasedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 457
    iget-object v0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    if-eqz p1, :cond_4

    .line 459
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 460
    .local v1, "looper":Landroid/os/Looper;
    :goto_0
    if-eqz v1, :cond_3

    .line 464
    iget-object v2, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    invoke-virtual {v2}, Landroid/media/ImageWriter$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v2, v1, :cond_2

    .line 465
    :cond_1
    new-instance v2, Landroid/media/ImageWriter$ListenerHandler;

    invoke-direct {v2, p0, v1}, Landroid/media/ImageWriter$ListenerHandler;-><init>(Landroid/media/ImageWriter;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    .line 467
    :cond_2
    iput-object p1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    .line 468
    .end local v1    # "looper":Landroid/os/Looper;
    goto :goto_1

    .line 461
    .restart local v1    # "looper":Landroid/os/Looper;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "handler is null but the current thread is not a looper"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 469
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    .line 470
    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    .line 472
    :goto_1
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
