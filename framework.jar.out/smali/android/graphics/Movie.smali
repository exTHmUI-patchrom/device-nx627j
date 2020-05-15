.class public Landroid/graphics/Movie;
.super Ljava/lang/Object;
.source "Movie.java"


# instance fields
.field private mNativeMovie:J


# direct methods
.method private constructor <init>(J)V
    .locals 2
    .param p1, "nativeMovie"    # J

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 34
    iput-wide p1, p0, Landroid/graphics/Movie;->mNativeMovie:J

    .line 35
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native movie creation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native decodeByteArray([BII)Landroid/graphics/Movie;
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;
    .locals 2
    .param p0, "pathName"    # Ljava/lang/String;

    .line 77
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .local v0, "is":Ljava/io/InputStream;
    nop

    .line 80
    nop

    .line 82
    invoke-static {v0}, Landroid/graphics/Movie;->decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    return-object v1

    .line 79
    .end local v0    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_0
    instance-of v0, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_1

    .line 60
    move-object v0, p0

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v0

    .line 61
    .local v0, "asset":J
    invoke-static {v0, v1}, Landroid/graphics/Movie;->nativeDecodeAsset(J)Landroid/graphics/Movie;

    move-result-object v2

    return-object v2

    .line 64
    .end local v0    # "asset":J
    :cond_1
    invoke-static {p0}, Landroid/graphics/Movie;->nativeDecodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    return-object v0
.end method

.method private static decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "moov":Landroid/graphics/Movie;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    move-object v0, v1

    .line 99
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 107
    :goto_0
    return-object v0
.end method

.method private native nDraw(JFFJ)V
.end method

.method private static native nativeDecodeAsset(J)Landroid/graphics/Movie;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
.end method

.method private static native nativeDestructor(J)V
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/Movie;->nDraw(JFFJ)V

    .line 53
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v1

    .line 48
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    .line 47
    :goto_0
    move-wide v5, v3

    goto :goto_1

    .line 48
    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 47
    :goto_1
    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/Movie;->nDraw(JFFJ)V

    .line 49
    return-void
.end method

.method public native duration()I
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 88
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Movie;->mNativeMovie:J

    invoke-static {v0, v1}, Landroid/graphics/Movie;->nativeDestructor(J)V

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Movie;->mNativeMovie:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 92
    nop

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native height()I
.end method

.method public native isOpaque()Z
.end method

.method public native setTime(I)Z
.end method

.method public native width()I
.end method
