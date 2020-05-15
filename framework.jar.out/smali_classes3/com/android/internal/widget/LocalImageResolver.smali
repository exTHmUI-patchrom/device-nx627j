.class public Lcom/android/internal/widget/LocalImageResolver;
.super Ljava/lang/Object;
.source "LocalImageResolver.java"


# static fields
.field private static final MAX_SAFE_ICON_SIZE_PX:I = 0x1e0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBoundsOptionsForImage(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 65
    .local v0, "input":Ljava/io/InputStream;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 66
    .local v1, "onlyBoundsOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 67
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 68
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 69
    return-object v1
.end method

.method private static getPowerOfTwoForSampleRatio(D)I
    .locals 2
    .param p0, "ratio"    # D

    .line 73
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 74
    .local v0, "k":I
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static resolveImage(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lcom/android/internal/widget/LocalImageResolver;->getBoundsOptionsForImage(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 41
    .local v0, "onlyBoundsOptions":Landroid/graphics/BitmapFactory$Options;
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v1, v3, :cond_0

    goto :goto_2

    .line 46
    :cond_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v1, v3, :cond_1

    .line 47
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0

    .line 48
    :cond_1
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 50
    .local v1, "originalSize":I
    :goto_0
    const/16 v3, 0x1e0

    if-le v1, v3, :cond_2

    .line 51
    div-int/lit16 v3, v1, 0x1e0

    int-to-double v3, v3

    goto :goto_1

    .line 52
    :cond_2
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 54
    .local v3, "ratio":D
    :goto_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 55
    .local v5, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v3, v4}, Lcom/android/internal/widget/LocalImageResolver;->getPowerOfTwoForSampleRatio(D)I

    move-result v6

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 57
    .local v6, "input":Ljava/io/InputStream;
    invoke-static {v6, v2, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 58
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 59
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v7

    .line 42
    .end local v1    # "originalSize":I
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "ratio":D
    .end local v5    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "input":Ljava/io/InputStream;
    :cond_3
    :goto_2
    return-object v2
.end method
