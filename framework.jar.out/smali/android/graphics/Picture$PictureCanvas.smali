.class Landroid/graphics/Picture$PictureCanvas;
.super Landroid/graphics/Canvas;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Picture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PictureCanvas"
.end annotation


# instance fields
.field mHoldsHwBitmap:Z

.field private final mPicture:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>(Landroid/graphics/Picture;J)V
    .locals 1
    .param p1, "pict"    # Landroid/graphics/Picture;
    .param p2, "nativeCanvas"    # J

    .line 213
    invoke-direct {p0, p2, p3}, Landroid/graphics/Canvas;-><init>(J)V

    .line 214
    iput-object p1, p0, Landroid/graphics/Picture$PictureCanvas;->mPicture:Landroid/graphics/Picture;

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Picture$PictureCanvas;->mDensity:I

    .line 217
    return-void
.end method


# virtual methods
.method public drawPicture(Landroid/graphics/Picture;)V
    .locals 2
    .param p1, "picture"    # Landroid/graphics/Picture;

    .line 226
    iget-object v0, p0, Landroid/graphics/Picture$PictureCanvas;->mPicture:Landroid/graphics/Picture;

    if-eq v0, p1, :cond_0

    .line 229
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 230
    return-void

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot draw a picture into its recording canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onHwBitmapInSwMode()V
    .locals 1

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Picture$PictureCanvas;->mHoldsHwBitmap:Z

    .line 235
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 221
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot call setBitmap on a picture canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
