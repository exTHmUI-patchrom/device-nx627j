.class public final Landroid/graphics/LargeBitmap;
.super Ljava/lang/Object;
.source "LargeBitmap.java"


# instance fields
.field private mNativeLargeBitmap:J

.field private mRecycled:Z


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativeLbm"    # J

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    .line 41
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 103
    iget-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    if-nez v0, :cond_0

    .line 106
    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeClean(J)V
.end method

.method private static native nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 53
    const-string v0, "decodeRegion called on recycled large bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/LargeBitmap;->checkRecycled(Ljava/lang/String;)V

    .line 54
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/LargeBitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/LargeBitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 56
    iget-wide v2, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int v6, v0, v1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v0, v1

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Landroid/graphics/LargeBitmap;->nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rectangle is not inside the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .line 109
    invoke-virtual {p0}, Landroid/graphics/LargeBitmap;->recycle()V

    .line 110
    return-void
.end method

.method public getHeight()I
    .locals 2

    .line 68
    const-string v0, "getHeight called on recycled large bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/LargeBitmap;->checkRecycled(Ljava/lang/String;)V

    .line 69
    iget-wide v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    invoke-static {v0, v1}, Landroid/graphics/LargeBitmap;->nativeGetHeight(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 62
    const-string v0, "getWidth called on recycled large bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/LargeBitmap;->checkRecycled(Ljava/lang/String;)V

    .line 63
    iget-wide v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    invoke-static {v0, v1}, Landroid/graphics/LargeBitmap;->nativeGetWidth(J)I

    move-result v0

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .locals 2

    .line 82
    iget-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    if-nez v0, :cond_0

    .line 83
    iget-wide v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    invoke-static {v0, v1}, Landroid/graphics/LargeBitmap;->nativeClean(J)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    .line 86
    :cond_0
    return-void
.end method
