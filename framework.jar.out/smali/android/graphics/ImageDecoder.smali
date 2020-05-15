.class public final Landroid/graphics/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageDecoder$MemoryPolicy;,
        Landroid/graphics/ImageDecoder$Allocator;,
        Landroid/graphics/ImageDecoder$OnPartialImageListener;,
        Landroid/graphics/ImageDecoder$DecodeException;,
        Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;,
        Landroid/graphics/ImageDecoder$IncompleteException;,
        Landroid/graphics/ImageDecoder$ImageInfo;,
        Landroid/graphics/ImageDecoder$FileSource;,
        Landroid/graphics/ImageDecoder$AssetSource;,
        Landroid/graphics/ImageDecoder$ResourceSource;,
        Landroid/graphics/ImageDecoder$AssetInputStreamSource;,
        Landroid/graphics/ImageDecoder$InputStreamSource;,
        Landroid/graphics/ImageDecoder$ContentResolverSource;,
        Landroid/graphics/ImageDecoder$ByteBufferSource;,
        Landroid/graphics/ImageDecoder$ByteArraySource;,
        Landroid/graphics/ImageDecoder$Source;
    }
.end annotation


# static fields
.field public static final ALLOCATOR_DEFAULT:I = 0x0

.field public static final ALLOCATOR_HARDWARE:I = 0x3

.field public static final ALLOCATOR_SHARED_MEMORY:I = 0x2

.field public static final ALLOCATOR_SOFTWARE:I = 0x1

.field public static final ERROR_SOURCE_ERROR:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_SOURCE_EXCEPTION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_SOURCE_INCOMPLETE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_POLICY_DEFAULT:I = 0x1

.field public static final MEMORY_POLICY_LOW_RAM:I

.field public static sApiLevel:I


# instance fields
.field private mAllocator:I

.field private final mAnimated:Z

.field private mAssetFd:Landroid/content/res/AssetFileDescriptor;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConserveMemory:Z

.field private mCropRect:Landroid/graphics/Rect;

.field private mDecodeAsAlphaMask:Z

.field private mDesiredColorSpace:Landroid/graphics/ColorSpace;

.field private mDesiredHeight:I

.field private mDesiredWidth:I

.field private final mHeight:I

.field private mInputStream:Ljava/io/InputStream;

.field private final mIsNinePatch:Z

.field private mMutable:Z

.field private mNativePtr:J

.field private mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

.field private mOutPaddingRect:Landroid/graphics/Rect;

.field private mOwnsInputStream:Z

.field private mPostProcessor:Landroid/graphics/PostProcessor;

.field private mSource:Landroid/graphics/ImageDecoder$Source;

.field private mTempStorage:[B

.field private mUnpremultipliedRequired:Z

.field private final mWidth:I


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 1705
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method private constructor <init>(JIIZZ)V
    .locals 2
    .param p1, "nativePtr"    # J
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "animated"    # Z
    .param p6, "isNinePatch"    # Z

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    .line 756
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    .line 757
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    .line 758
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    .line 759
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    .line 773
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 774
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 783
    iput-wide p1, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    .line 784
    iput p3, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    .line 785
    iput p4, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    .line 786
    iput p3, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    .line 787
    iput p4, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    .line 788
    iput-boolean p5, p0, Landroid/graphics/ImageDecoder;->mAnimated:Z

    .line 789
    iput-boolean p6, p0, Landroid/graphics/ImageDecoder;->mIsNinePatch:Z

    .line 790
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method static synthetic access$100([BIILandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/ImageDecoder;->nCreate([BIILandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/graphics/ImageDecoder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/ImageDecoder;

    .line 169
    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/graphics/ImageDecoder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/graphics/ImageDecoder;

    .line 169
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mAnimated:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/graphics/ImageDecoder;)Landroid/graphics/ColorSpace;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/ImageDecoder;

    .line 169
    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/nio/ByteBuffer;IILandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 1
    .param p0, "x0"    # Ljava/nio/ByteBuffer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/nio/ByteBuffer;IILandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/io/InputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-static {p0, p1, p2}, Landroid/graphics/ImageDecoder;->createFromStream(Ljava/io/InputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/io/FileDescriptor;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 1
    .param p0, "x0"    # Ljava/io/FileDescriptor;
    .param p1, "x1"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/io/FileDescriptor;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Landroid/graphics/ImageDecoder;Landroid/content/res/AssetFileDescriptor;)Landroid/content/res/AssetFileDescriptor;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/ImageDecoder;
    .param p1, "x1"    # Landroid/content/res/AssetFileDescriptor;

    .line 169
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    return-object p1
.end method

.method static synthetic access$600(Landroid/content/res/AssetManager$AssetInputStream;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/AssetManager$AssetInputStream;
    .param p1, "x1"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->createFromAsset(Landroid/content/res/AssetManager$AssetInputStream;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/io/File;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 1
    .param p0, "x0"    # Ljava/io/File;
    .param p1, "x1"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->createFromFile(Ljava/io/File;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/graphics/ImageDecoder;)I
    .locals 1
    .param p0, "x0"    # Landroid/graphics/ImageDecoder;

    .line 169
    iget v0, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    return v0
.end method

.method static synthetic access$900(Landroid/graphics/ImageDecoder;)I
    .locals 1
    .param p0, "x0"    # Landroid/graphics/ImageDecoder;

    .line 169
    iget v0, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    return v0
.end method

.method private callHeaderDecoded(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;Landroid/graphics/ImageDecoder$Source;)V
    .locals 3
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .param p2, "src"    # Landroid/graphics/ImageDecoder$Source;

    .line 1615
    if-eqz p1, :cond_0

    .line 1616
    new-instance v0, Landroid/graphics/ImageDecoder$ImageInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/ImageDecoder$ImageInfo;-><init>(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$1;)V

    .line 1618
    .local v0, "info":Landroid/graphics/ImageDecoder$ImageInfo;
    :try_start_0
    invoke-interface {p1, p0, v0, p2}, Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;->onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1620
    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder$ImageInfo;->access$1402(Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder;)Landroid/graphics/ImageDecoder;

    .line 1621
    goto :goto_0

    .line 1620
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder$ImageInfo;->access$1402(Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder;)Landroid/graphics/ImageDecoder;

    throw v2

    .line 1623
    .end local v0    # "info":Landroid/graphics/ImageDecoder$ImageInfo;
    :cond_0
    :goto_0
    return-void
.end method

.method private checkState()V
    .locals 4

    .line 1562
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 1566
    iget v0, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    iget-object v2, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Landroid/graphics/ImageDecoder;->checkSubset(IILandroid/graphics/Rect;)V

    .line 1568
    iget v0, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1569
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    if-nez v0, :cond_1

    .line 1572
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1573
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot make HARDWARE Alpha mask Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1570
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot make mutable HARDWARE Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1577
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    if-nez v0, :cond_3

    goto :goto_1

    .line 1578
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot draw to unpremultiplied pixels!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1581
    :cond_4
    :goto_1
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v0, :cond_7

    .line 1582
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    instance-of v0, v0, Landroid/graphics/ColorSpace$Rgb;

    if-eqz v0, :cond_6

    .line 1586
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 1587
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The target color space must use an ICC parametric transfer function - provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1583
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The target color space must use the RGB color model - provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1591
    :cond_7
    :goto_2
    return-void

    .line 1563
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use closed ImageDecoder!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkSubset(IILandroid/graphics/Rect;)V
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "r"    # Landroid/graphics/Rect;

    .line 1594
    if-nez p2, :cond_0

    .line 1595
    return-void

    .line 1597
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-gt v0, p0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v0, p1, :cond_1

    .line 1601
    return-void

    .line 1598
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not contained by scaled image bounds: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computeDensity(Landroid/graphics/ImageDecoder$Source;)I
    .locals 7
    .param p1, "src"    # Landroid/graphics/ImageDecoder$Source;

    .line 1779
    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->requestedResize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1780
    const/4 v0, 0x0

    return v0

    .line 1783
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$Source;->getDensity()I

    move-result v0

    .line 1784
    .local v0, "srcDensity":I
    if-nez v0, :cond_1

    .line 1785
    return v0

    .line 1793
    :cond_1
    iget-boolean v1, p0, Landroid/graphics/ImageDecoder;->mIsNinePatch:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-nez v1, :cond_2

    .line 1794
    return v0

    .line 1804
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$Source;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1805
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    if-ne v2, v0, :cond_3

    .line 1806
    return v0

    .line 1809
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$Source;->computeDstDensity()I

    move-result v2

    .line 1810
    .local v2, "dstDensity":I
    if-ne v0, v2, :cond_4

    .line 1811
    return v0

    .line 1816
    :cond_4
    if-ge v0, v2, :cond_5

    sget v3, Landroid/graphics/ImageDecoder;->sApiLevel:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_5

    .line 1817
    return v0

    .line 1820
    :cond_5
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 1821
    .local v3, "scale":F
    iget v4, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 1822
    .local v4, "scaledWidth":I
    iget v6, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float/2addr v6, v5

    float-to-int v5, v6

    .line 1823
    .local v5, "scaledHeight":I
    invoke-virtual {p0, v4, v5}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 1824
    return v2
.end method

.method private static createFromAsset(Landroid/content/res/AssetManager$AssetInputStream;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 5
    .param p0, "ais"    # Landroid/content/res/AssetManager$AssetInputStream;
    .param p1, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    const/4 v0, 0x0

    .line 488
    .local v0, "decoder":Landroid/graphics/ImageDecoder;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v2

    .line 489
    .local v2, "asset":J
    invoke-static {v2, v3, p1}, Landroid/graphics/ImageDecoder;->nCreate(JLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 491
    .end local v2    # "asset":J
    if-nez v0, :cond_0

    .line 492
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 494
    :cond_0
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 495
    iput-boolean v1, v0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 497
    nop

    .line 498
    :goto_0
    return-object v0

    .line 491
    :catchall_0
    move-exception v2

    if-nez v0, :cond_1

    .line 492
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 494
    :cond_1
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 495
    iput-boolean v1, v0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    :goto_1
    throw v2
.end method

.method private static createFromFile(Ljava/io/File;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 312
    .local v0, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 314
    .local v1, "fd":Ljava/io/FileDescriptor;
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    :try_start_0
    sget v5, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {v1, v2, v3, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    nop

    .line 319
    const/4 v2, 0x0

    .line 321
    .local v2, "decoder":Landroid/graphics/ImageDecoder;
    :try_start_1
    invoke-static {v1, p1}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/io/FileDescriptor;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 323
    if-nez v2, :cond_0

    .line 324
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 326
    :cond_0
    iput-object v0, v2, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 327
    iput-boolean v4, v2, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 329
    nop

    .line 330
    :goto_0
    return-object v2

    .line 323
    :catchall_0
    move-exception v3

    if-nez v2, :cond_1

    .line 324
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 326
    :cond_1
    iput-object v0, v2, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 327
    iput-boolean v4, v2, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    :goto_1
    throw v3

    .line 315
    .end local v2    # "decoder":Landroid/graphics/ImageDecoder;
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Landroid/system/ErrnoException;
    invoke-static {v0, v4, p1}, Landroid/graphics/ImageDecoder;->createFromStream(Ljava/io/InputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v3

    return-object v3
.end method

.method private static createFromStream(Ljava/io/InputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "closeInputStream"    # Z
    .param p2, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 338
    .local v0, "storage":[B
    const/4 v1, 0x0

    .line 340
    .local v1, "decoder":Landroid/graphics/ImageDecoder;
    :try_start_0
    invoke-static {p0, v0, p2}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/io/InputStream;[BLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 342
    if-nez v1, :cond_0

    .line 343
    if-eqz p1, :cond_1

    .line 344
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 347
    :cond_0
    iput-object p0, v1, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 348
    iput-boolean p1, v1, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 349
    iput-object v0, v1, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    .line 351
    nop

    .line 353
    :cond_1
    :goto_0
    return-object v1

    .line 342
    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    .line 343
    if-eqz p1, :cond_3

    .line 344
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 347
    :cond_2
    iput-object p0, v1, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 348
    iput-boolean p1, v1, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 349
    iput-object v0, v1, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    :cond_3
    :goto_1
    throw v2
.end method

.method public static createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 846
    new-instance v0, Landroid/graphics/ImageDecoder$ContentResolverSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/ImageDecoder$ContentResolverSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static createSource(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)Landroid/graphics/ImageDecoder$Source;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 858
    new-instance v0, Landroid/graphics/ImageDecoder$ContentResolverSource;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$ContentResolverSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static createSource(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/ImageDecoder$Source;
    .locals 1
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 867
    new-instance v0, Landroid/graphics/ImageDecoder$AssetSource;

    invoke-direct {v0, p0, p1}, Landroid/graphics/ImageDecoder$AssetSource;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSource(Landroid/content/res/Resources;I)Landroid/graphics/ImageDecoder$Source;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .line 823
    new-instance v0, Landroid/graphics/ImageDecoder$ResourceSource;

    invoke-direct {v0, p0, p1}, Landroid/graphics/ImageDecoder$ResourceSource;-><init>(Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method public static createSource(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/ImageDecoder$Source;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "is"    # Ljava/io/InputStream;

    .line 942
    new-instance v0, Landroid/graphics/ImageDecoder$InputStreamSource;

    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/ImageDecoder$InputStreamSource;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static createSource(Landroid/content/res/Resources;Ljava/io/InputStream;I)Landroid/graphics/ImageDecoder$Source;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "density"    # I

    .line 956
    new-instance v0, Landroid/graphics/ImageDecoder$InputStreamSource;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$InputStreamSource;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 969
    new-instance v0, Landroid/graphics/ImageDecoder$FileSource;

    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder$FileSource;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 929
    new-instance v0, Landroid/graphics/ImageDecoder$ByteBufferSource;

    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder$ByteBufferSource;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static createSource([B)Landroid/graphics/ImageDecoder$Source;
    .locals 2
    .param p0, "data"    # [B

    .line 907
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/ImageDecoder;->createSource([BII)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    return-object v0
.end method

.method public static createSource([BII)Landroid/graphics/ImageDecoder$Source;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 889
    if-eqz p0, :cond_1

    .line 892
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_0

    .line 897
    new-instance v0, Landroid/graphics/ImageDecoder$ByteArraySource;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$ByteArraySource;-><init>([BII)V

    return-object v0

    .line 894
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "invalid offset/length!"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null byte[] in createSource!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1852
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeBitmapImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1743
    if-eqz p1, :cond_0

    .line 1747
    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeBitmapImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1744
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener cannot be null! Use decodeBitmap(Source) to not have a listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeBitmapImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1754
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder$Source;->createImageDecoder()Landroid/graphics/ImageDecoder;

    move-result-object v0

    .line 1755
    .local v0, "decoder":Landroid/graphics/ImageDecoder;
    const/4 v1, 0x0

    :try_start_0
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;

    .line 1756
    invoke-direct {v0, p1, p0}, Landroid/graphics/ImageDecoder;->callHeaderDecoded(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;Landroid/graphics/ImageDecoder$Source;)V

    .line 1760
    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder;->computeDensity(Landroid/graphics/ImageDecoder$Source;)I

    move-result v2

    .line 1761
    .local v2, "srcDensity":I
    invoke-direct {v0}, Landroid/graphics/ImageDecoder;->decodeBitmapInternal()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1762
    .local v3, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1764
    iget-object v4, v0, Landroid/graphics/ImageDecoder;->mOutPaddingRect:Landroid/graphics/Rect;

    .line 1765
    .local v4, "padding":Landroid/graphics/Rect;
    if-eqz v4, :cond_0

    .line 1766
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    .line 1767
    .local v5, "np":[B
    if-eqz v5, :cond_0

    invoke-static {v5}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1768
    iget-wide v6, v0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v6, v7, v4}, Landroid/graphics/ImageDecoder;->nGetPadding(JLandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1772
    .end local v5    # "np":[B
    :cond_0
    nop

    .line 1773
    if-eqz v0, :cond_1

    invoke-static {v1, v0}, Landroid/graphics/ImageDecoder;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1772
    :cond_1
    return-object v3

    .line 1773
    .end local v2    # "srcDensity":I
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "padding":Landroid/graphics/Rect;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1754
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1773
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v1, v0}, Landroid/graphics/ImageDecoder;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v2
.end method

.method private decodeBitmapInternal()Landroid/graphics/Bitmap;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1606
    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->checkState()V

    .line 1607
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    iget-object v2, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget v4, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v5, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    iget-object v6, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    iget-boolean v7, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    iget v8, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    iget-boolean v9, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    iget-boolean v10, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    iget-boolean v11, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    iget-object v12, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    move-object v2, p0

    invoke-static/range {v0 .. v12}, Landroid/graphics/ImageDecoder;->nDecodeBitmap(JLandroid/graphics/ImageDecoder;ZIILandroid/graphics/Rect;ZIZZZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeDrawable(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1724
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeDrawableImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1641
    if-eqz p1, :cond_0

    .line 1645
    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeDrawableImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 1642
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener cannot be null! Use decodeDrawable(Source) to not have a listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeDrawableImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;
    .locals 19
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1652
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/ImageDecoder$Source;->createImageDecoder()Landroid/graphics/ImageDecoder;

    move-result-object v2

    .line 1653
    .local v2, "decoder":Landroid/graphics/ImageDecoder;
    const/4 v3, 0x0

    :try_start_0
    iput-object v1, v2, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1654
    move-object/from16 v4, p1

    :try_start_1
    invoke-direct {v2, v4, v1}, Landroid/graphics/ImageDecoder;->callHeaderDecoded(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;Landroid/graphics/ImageDecoder$Source;)V

    .line 1656
    iget-boolean v0, v2, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    if-nez v0, :cond_8

    .line 1663
    iget-boolean v0, v2, Landroid/graphics/ImageDecoder;->mMutable:Z

    if-nez v0, :cond_7

    .line 1670
    invoke-direct {v2, v1}, Landroid/graphics/ImageDecoder;->computeDensity(Landroid/graphics/ImageDecoder$Source;)I

    move-result v0

    .line 1671
    .local v0, "srcDensity":I
    iget-boolean v5, v2, Landroid/graphics/ImageDecoder;->mAnimated:Z

    if-eqz v5, :cond_2

    .line 1674
    iget-object v5, v2, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-nez v5, :cond_0

    .line 1675
    move-object v8, v3

    goto :goto_0

    :cond_0
    move-object v8, v2

    .line 1676
    .local v8, "postProcessPtr":Landroid/graphics/ImageDecoder;
    :goto_0
    new-instance v16, Landroid/graphics/drawable/AnimatedImageDrawable;

    iget-wide v6, v2, Landroid/graphics/ImageDecoder;->mNativePtr:J

    iget v9, v2, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v10, v2, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    .line 1679
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/ImageDecoder$Source;->computeDstDensity()I

    move-result v12

    iget-object v13, v2, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    iget-object v14, v2, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    iget-object v15, v2, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v5, v16

    move v11, v0

    invoke-direct/range {v5 .. v15}, Landroid/graphics/drawable/AnimatedImageDrawable;-><init>(JLandroid/graphics/ImageDecoder;IIIILandroid/graphics/Rect;Ljava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V

    move-object/from16 v5, v16

    .line 1682
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    iput-object v3, v2, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 1683
    iput-object v3, v2, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1684
    nop

    .line 1705
    if-eqz v2, :cond_1

    invoke-static {v3, v2}, Landroid/graphics/ImageDecoder;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1684
    :cond_1
    return-object v5

    .line 1687
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "postProcessPtr":Landroid/graphics/ImageDecoder;
    :cond_2
    :try_start_2
    invoke-direct {v2}, Landroid/graphics/ImageDecoder;->decodeBitmapInternal()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1688
    .local v5, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v5, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1690
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/ImageDecoder$Source;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v13, v6

    .line 1691
    .local v13, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v6

    move-object v14, v6

    .line 1692
    .local v14, "np":[B
    if-eqz v14, :cond_5

    invoke-static {v14}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1693
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v15, v6

    .line 1694
    .local v15, "opticalInsets":Landroid/graphics/Rect;
    invoke-virtual {v5, v15}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    .line 1695
    iget-object v6, v2, Landroid/graphics/ImageDecoder;->mOutPaddingRect:Landroid/graphics/Rect;

    .line 1696
    .local v6, "padding":Landroid/graphics/Rect;
    if-nez v6, :cond_3

    .line 1697
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v7

    .line 1699
    .end local v6    # "padding":Landroid/graphics/Rect;
    .local v12, "padding":Landroid/graphics/Rect;
    :cond_3
    move-object v12, v6

    iget-wide v6, v2, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v6, v7, v12}, Landroid/graphics/ImageDecoder;->nGetPadding(JLandroid/graphics/Rect;)V

    .line 1700
    new-instance v16, Landroid/graphics/drawable/NinePatchDrawable;

    const/16 v17, 0x0

    move-object/from16 v6, v16

    move-object v7, v13

    move-object v8, v5

    move-object v9, v14

    move-object v10, v12

    move-object v11, v15

    move-object/from16 v18, v12

    move-object/from16 v12, v17

    .end local v12    # "padding":Landroid/graphics/Rect;
    .local v18, "padding":Landroid/graphics/Rect;
    invoke-direct/range {v6 .. v12}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1705
    if-eqz v2, :cond_4

    invoke-static {v3, v2}, Landroid/graphics/ImageDecoder;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1700
    :cond_4
    return-object v16

    .line 1704
    .end local v15    # "opticalInsets":Landroid/graphics/Rect;
    .end local v18    # "padding":Landroid/graphics/Rect;
    :cond_5
    :try_start_3
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v13, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1705
    if-eqz v2, :cond_6

    invoke-static {v3, v2}, Landroid/graphics/ImageDecoder;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1704
    :cond_6
    return-object v6

    .line 1664
    .end local v0    # "srcDensity":I
    .end local v5    # "bm":Landroid/graphics/Bitmap;
    .end local v13    # "res":Landroid/content/res/Resources;
    .end local v14    # "np":[B
    :cond_7
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot decode a mutable Drawable!"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1659
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot decode a Drawable with unpremultiplied pixels!"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1705
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1652
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1705
    :catchall_1
    move-exception v0

    move-object/from16 v4, p1

    goto :goto_2

    .line 1652
    :catch_1
    move-exception v0

    move-object/from16 v4, p1

    :goto_1
    move-object v3, v0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1705
    :goto_2
    if-eqz v2, :cond_9

    invoke-static {v3, v2}, Landroid/graphics/ImageDecoder;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_9
    throw v0
.end method

.method private getColorSpace()Landroid/graphics/ColorSpace;
    .locals 2

    .line 1834
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->nGetColorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method private getMimeType()Ljava/lang/String;
    .locals 2

    .line 1829
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->nGetMimeType(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTargetDimension(III)I
    .locals 3
    .param p1, "original"    # I
    .param p2, "sampleSize"    # I
    .param p3, "computed"    # I

    .line 1052
    if-lt p2, p1, :cond_0

    .line 1053
    const/4 v0, 0x1

    return v0

    .line 1058
    :cond_0
    div-int v0, p1, p2

    .line 1059
    .local v0, "target":I
    if-ne p3, v0, :cond_1

    .line 1060
    return p3

    .line 1066
    :cond_1
    mul-int v1, p3, p2

    .line 1067
    .local v1, "reverse":I
    sub-int v2, v1, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p2, :cond_2

    .line 1069
    return p3

    .line 1073
    :cond_2
    return v0
.end method

.method private static native nClose(J)V
.end method

.method private static native nCreate(JLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nCreate(Ljava/io/FileDescriptor;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nCreate(Ljava/io/InputStream;[BLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nCreate(Ljava/nio/ByteBuffer;IILandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nCreate([BIILandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nDecodeBitmap(JLandroid/graphics/ImageDecoder;ZIILandroid/graphics/Rect;ZIZZZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nGetColorSpace(J)Landroid/graphics/ColorSpace;
.end method

.method private static native nGetMimeType(J)Ljava/lang/String;
.end method

.method private static native nGetPadding(JLandroid/graphics/Rect;)V
.end method

.method private static native nGetSampledSize(JI)Landroid/util/Size;
.end method

.method private onPartialImage(ILjava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/graphics/ImageDecoder$DecodeException;
        }
    .end annotation

    .line 1873
    new-instance v0, Landroid/graphics/ImageDecoder$DecodeException;

    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;

    invoke-direct {v0, p1, p2, v1}, Landroid/graphics/ImageDecoder$DecodeException;-><init>(ILjava/lang/Throwable;Landroid/graphics/ImageDecoder$Source;)V

    .line 1874
    .local v0, "exception":Landroid/graphics/ImageDecoder$DecodeException;
    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    .line 1875
    invoke-interface {v1, v0}, Landroid/graphics/ImageDecoder$OnPartialImageListener;->onPartialImage(Landroid/graphics/ImageDecoder$DecodeException;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1878
    return-void

    .line 1876
    :cond_0
    throw v0
.end method

.method private postProcessAndRelease(Landroid/graphics/Canvas;)I
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1861
    :try_start_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    invoke-interface {v0, p1}, Landroid/graphics/PostProcessor;->onPostProcess(Landroid/graphics/Canvas;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1863
    invoke-virtual {p1}, Landroid/graphics/Canvas;->release()V

    .line 1861
    return v0

    .line 1863
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->release()V

    throw v0
.end method

.method private requestedResize()Z
    .locals 2

    .line 1112
    iget v0, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1544
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 1545
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1546
    return-void

    .line 1548
    :cond_0
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->nClose(J)V

    .line 1549
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    .line 1551
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    if-eqz v0, :cond_1

    .line 1552
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1554
    :cond_1
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1556
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 1557
    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 1558
    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    .line 1559
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 796
    :try_start_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 801
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 802
    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 804
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 807
    nop

    .line 808
    return-void

    .line 806
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAllocator()I
    .locals 1

    .line 1182
    iget v0, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    return v0
.end method

.method public getAsAlphaMask()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1497
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->getDecodeAsAlphaMask()Z

    move-result v0

    return v0
.end method

.method public getConserveMemory()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1432
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    return v0
.end method

.method public getCrop()Landroid/graphics/Rect;
    .locals 1

    .line 1308
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDecodeAsAlphaMask()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1489
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    return v0
.end method

.method public getMemorySizePolicy()I
    .locals 1

    .line 1416
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getMutable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1371
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->isMutableRequired()Z

    move-result v0

    return v0
.end method

.method public getOnPartialImageListener()Landroid/graphics/ImageDecoder$OnPartialImageListener;
    .locals 1

    .line 1280
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    return-object v0
.end method

.method public getPostProcessor()Landroid/graphics/PostProcessor;
    .locals 1

    .line 1258
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    return-object v0
.end method

.method public getRequireUnpremultiplied()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1226
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->isUnpremultipliedRequired()Z

    move-result v0

    return v0
.end method

.method public getSampledSize(I)Landroid/util/Size;
    .locals 4
    .param p1, "sampleSize"    # I

    .line 990
    if-lez p1, :cond_1

    .line 994
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 998
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/ImageDecoder;->nGetSampledSize(JI)Landroid/util/Size;

    move-result-object v0

    return-object v0

    .line 995
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageDecoder is closed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 991
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sampleSize must be positive! provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDecodeAsAlphaMaskEnabled()Z
    .locals 1

    .line 1481
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    return v0
.end method

.method public isMutableRequired()Z
    .locals 1

    .line 1363
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    return v0
.end method

.method public isUnpremultipliedRequired()Z
    .locals 1

    .line 1218
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    return v0
.end method

.method public setAllocator(I)V
    .locals 3
    .param p1, "allocator"    # I

    .line 1171
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 1174
    iput p1, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    .line 1175
    return-void

    .line 1172
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid allocator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsAlphaMask(Z)Landroid/graphics/ImageDecoder;
    .locals 0
    .param p1, "asAlphaMask"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1468
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setDecodeAsAlphaMask(Z)Landroid/graphics/ImageDecoder;

    .line 1469
    return-object p0
.end method

.method public setConserveMemory(Z)V
    .locals 0
    .param p1, "conserveMemory"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1424
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    .line 1425
    return-void
.end method

.method public setCrop(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "subset"    # Landroid/graphics/Rect;

    .line 1300
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    .line 1301
    return-void
.end method

.method public setDecodeAsAlphaMask(Z)Landroid/graphics/ImageDecoder;
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1459
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setDecodeAsAlphaMaskEnabled(Z)V

    .line 1460
    return-object p0
.end method

.method public setDecodeAsAlphaMaskEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1451
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    .line 1452
    return-void
.end method

.method public setMemorySizePolicy(I)V
    .locals 1
    .param p1, "policy"    # I

    .line 1408
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    .line 1409
    return-void
.end method

.method public setMutable(Z)Landroid/graphics/ImageDecoder;
    .locals 0
    .param p1, "mutable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1355
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setMutableRequired(Z)V

    .line 1356
    return-object p0
.end method

.method public setMutableRequired(Z)V
    .locals 0
    .param p1, "mutable"    # Z

    .line 1347
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    .line 1348
    return-void
.end method

.method public setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnPartialImageListener;

    .line 1272
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    .line 1273
    return-void
.end method

.method public setOutPaddingRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "outPadding"    # Landroid/graphics/Rect;

    .line 1323
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mOutPaddingRect:Landroid/graphics/Rect;

    .line 1324
    return-void
.end method

.method public setPostProcessor(Landroid/graphics/PostProcessor;)V
    .locals 0
    .param p1, "postProcessor"    # Landroid/graphics/PostProcessor;

    .line 1250
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    .line 1251
    return-void
.end method

.method public setRequireUnpremultiplied(Z)Landroid/graphics/ImageDecoder;
    .locals 0
    .param p1, "unpremultipliedRequired"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1210
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setUnpremultipliedRequired(Z)V

    .line 1211
    return-object p0
.end method

.method public setResize(I)Landroid/graphics/ImageDecoder;
    .locals 0
    .param p1, "sampleSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1046
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    .line 1047
    return-object p0
.end method

.method public setResize(II)Landroid/graphics/ImageDecoder;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1007
    invoke-virtual {p0, p1, p2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 1008
    return-object p0
.end method

.method public setTargetColorSpace(Landroid/graphics/ColorSpace;)V
    .locals 0
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 1531
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    .line 1532
    return-void
.end method

.method public setTargetSampleSize(I)V
    .locals 4
    .param p1, "sampleSize"    # I

    .line 1105
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->getSampledSize(I)Landroid/util/Size;

    move-result-object v0

    .line 1106
    .local v0, "size":Landroid/util/Size;
    iget v1, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-direct {p0, v1, p1, v2}, Landroid/graphics/ImageDecoder;->getTargetDimension(III)I

    move-result v1

    .line 1107
    .local v1, "targetWidth":I
    iget v2, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, p1, v3}, Landroid/graphics/ImageDecoder;->getTargetDimension(III)I

    move-result v2

    .line 1108
    .local v2, "targetHeight":I
    invoke-virtual {p0, v1, v2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 1109
    return-void
.end method

.method public setTargetSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1032
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 1037
    iput p1, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    .line 1038
    iput p2, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    .line 1039
    return-void

    .line 1033
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dimensions must be positive! provided ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUnpremultipliedRequired(Z)V
    .locals 0
    .param p1, "unpremultipliedRequired"    # Z

    .line 1202
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    .line 1203
    return-void
.end method
