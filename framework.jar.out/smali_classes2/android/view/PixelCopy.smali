.class public final Landroid/view/PixelCopy;
.super Ljava/lang/Object;
.source "PixelCopy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PixelCopy$OnPixelCopyFinishedListener;,
        Landroid/view/PixelCopy$CopyResultStatus;
    }
.end annotation


# static fields
.field public static final ERROR_DESTINATION_INVALID:I = 0x5

.field public static final ERROR_SOURCE_INVALID:I = 0x4

.field public static final ERROR_SOURCE_NO_DATA:I = 0x3

.field public static final ERROR_TIMEOUT:I = 0x2

.field public static final ERROR_UNKNOWN:I = 0x1

.field public static final SUCCESS:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .locals 1
    .param p0, "source"    # Landroid/view/Surface;
    .param p1, "dest"    # Landroid/graphics/Bitmap;
    .param p2, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p3, "listenerThread"    # Landroid/os/Handler;

    .line 154
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 155
    return-void
.end method

.method public static request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .locals 2
    .param p0, "source"    # Landroid/view/Surface;
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Bitmap;
    .param p3, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p4, "listenerThread"    # Landroid/os/Handler;

    .line 179
    invoke-static {p2}, Landroid/view/PixelCopy;->validateBitmapDest(Landroid/graphics/Bitmap;)V

    .line 180
    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sourceRect is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->copySurfaceInto(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)I

    move-result v0

    .line 188
    .local v0, "result":I
    new-instance v1, Landroid/view/PixelCopy$1;

    invoke-direct {v1, p3, v0}, Landroid/view/PixelCopy$1;-><init>(Landroid/view/PixelCopy$OnPixelCopyFinishedListener;I)V

    invoke-virtual {p4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    return-void

    .line 181
    .end local v0    # "result":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface isn\'t valid, source.isValid() == false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .locals 1
    .param p0, "source"    # Landroid/view/SurfaceView;
    .param p1, "dest"    # Landroid/graphics/Bitmap;
    .param p2, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p3, "listenerThread"    # Landroid/os/Handler;

    .line 107
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 108
    return-void
.end method

.method public static request(Landroid/view/SurfaceView;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .locals 1
    .param p0, "source"    # Landroid/view/SurfaceView;
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Bitmap;
    .param p3, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p4, "listenerThread"    # Landroid/os/Handler;

    .line 132
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 134
    return-void
.end method

.method public static request(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .locals 1
    .param p0, "source"    # Landroid/view/Window;
    .param p1, "dest"    # Landroid/graphics/Bitmap;
    .param p2, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p3, "listenerThread"    # Landroid/os/Handler;

    .line 223
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 224
    return-void
.end method

.method public static request(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .locals 9
    .param p0, "source"    # Landroid/view/Window;
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Bitmap;
    .param p3, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p4, "listenerThread"    # Landroid/os/Handler;

    .line 257
    invoke-static {p2}, Landroid/view/PixelCopy;->validateBitmapDest(Landroid/graphics/Bitmap;)V

    .line 258
    if-eqz p0, :cond_4

    .line 261
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "surface":Landroid/view/Surface;
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 267
    .local v1, "root":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_1

    .line 268
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 269
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 270
    .local v2, "surfaceInsets":Landroid/graphics/Rect;
    if-nez p1, :cond_0

    .line 271
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/view/ViewRootImpl;->mWidth:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget v7, v1, Landroid/view/ViewRootImpl;->mHeight:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v3

    goto :goto_0

    .line 274
    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 277
    .end local v2    # "surfaceInsets":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 282
    return-void

    .line 278
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Window doesn\'t have a backing surface!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    .end local v0    # "surface":Landroid/view/Surface;
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only able to copy windows with decor views"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateBitmapDest(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 286
    if-eqz p0, :cond_2

    .line 289
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    return-void

    .line 293
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
