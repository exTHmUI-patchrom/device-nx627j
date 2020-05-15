.class public Lnubia/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static PNG_HEAD_FORMAT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnubia/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    return-void

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeSampleSize(Lnubia/util/InputStreamLoader;I)I
    .locals 6
    .param p0, "isLoader"    # Lnubia/util/InputStreamLoader;
    .param p1, "sizeAfterDoubled"    # I

    .line 28
    const/4 v0, 0x1

    .line 29
    .local v0, "scale":I
    if-lez p1, :cond_0

    .line 30
    invoke-static {p0}, Lnubia/util/ImageUtils;->getBitmapSize(Lnubia/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 31
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v2, v3

    div-int/2addr v2, p1

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 32
    .local v2, "d":D
    :goto_0
    mul-int/lit8 v4, v0, 0x2

    int-to-double v4, v4

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_0

    .line 33
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "d":D
    :cond_0
    return v0
.end method

.method public static cropBitmapToAnother(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z
    .locals 12
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dst"    # Landroid/graphics/Bitmap;
    .param p2, "diacardOld"    # Z

    .line 47
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 49
    .local v0, "oldWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 50
    .local v1, "oldHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 51
    .local v2, "newWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 53
    .local v3, "newHeight":I
    int-to-float v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    int-to-float v6, v0

    div-float/2addr v4, v6

    int-to-float v6, v3

    mul-float/2addr v5, v6

    int-to-float v6, v1

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 55
    .local v4, "scale":F
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 56
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 57
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 60
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 62
    .local v7, "canvas":Landroid/graphics/Canvas;
    int-to-float v8, v2

    int-to-float v9, v0

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    int-to-float v10, v3

    int-to-float v11, v1

    mul-float/2addr v11, v4

    sub-float/2addr v10, v11

    div-float/2addr v10, v9

    invoke-virtual {v7, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    invoke-virtual {v7, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 67
    const/4 v8, 0x0

    invoke-virtual {v7, p0, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 68
    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 70
    :cond_0
    return v6

    .line 72
    .end local v0    # "oldWidth":I
    .end local v1    # "oldHeight":I
    .end local v2    # "newWidth":I
    .end local v3    # "newHeight":I
    .end local v4    # "scale":F
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static final getBitmap(Lnubia/util/InputStreamLoader;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "isLoader"    # Lnubia/util/InputStreamLoader;
    .param p1, "sizeAfterDoubled"    # I

    .line 83
    invoke-static {}, Lnubia/util/ImageUtils;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 84
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, p1}, Lnubia/util/ImageUtils;->computeSampleSize(Lnubia/util/InputStreamLoader;I)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 85
    const/4 v1, 0x0

    .line 87
    .local v1, "result":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lnubia/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 100
    .end local v2    # "i":I
    :goto_1
    invoke-virtual {p0}, Lnubia/util/InputStreamLoader;->close()V

    goto :goto_3

    .restart local v2    # "i":I
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 97
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 92
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 95
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 96
    const/4 v4, 0x2

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0}, Lnubia/util/InputStreamLoader;->close()V

    .line 101
    nop

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :goto_2
    invoke-virtual {p0}, Lnubia/util/InputStreamLoader;->close()V

    throw v3

    .line 103
    .end local v2    # "i":I
    :cond_0
    :goto_3
    return-object v1
.end method

.method public static getBitmap(Lnubia/util/InputStreamLoader;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "isLoader"    # Lnubia/util/InputStreamLoader;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 115
    mul-int v0, p1, p2

    const/4 v1, 0x2

    mul-int/2addr v1, v0

    .line 116
    .local v1, "sizeAfterDoubled":I
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 117
    :cond_0
    const/4 v1, -0x1

    .line 118
    :cond_1
    invoke-static {p0, v1}, Lnubia/util/ImageUtils;->getBitmap(Lnubia/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    .local v0, "result":Landroid/graphics/Bitmap;
    if-lez v1, :cond_2

    .line 120
    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v2}, Lnubia/util/ImageUtils;->scaleBitmapToDesire(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    :cond_2
    return-object v0
.end method

.method public static getBitmap(Lnubia/util/InputStreamLoader;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "inputstreamloader"    # Lnubia/util/InputStreamLoader;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "result":Landroid/graphics/Bitmap;
    const/4 v1, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    invoke-static {p0}, Lnubia/util/ImageUtils;->getBitmapSize(Lnubia/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 136
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 138
    :try_start_0
    invoke-static {}, Lnubia/util/ImageUtils;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    move-object v2, v3

    .line 139
    iput-object p3, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 140
    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 141
    invoke-virtual {p0}, Lnubia/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 142
    :catch_0
    move-exception v3

    .line 143
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lnubia/util/InputStreamLoader;->close()V

    .line 146
    goto :goto_2

    .line 145
    :goto_1
    invoke-virtual {p0}, Lnubia/util/InputStreamLoader;->close()V

    throw v1

    .line 148
    :cond_0
    :goto_2
    if-nez v0, :cond_1

    .line 149
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    if-eqz v0, :cond_2

    .line 152
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    .line 153
    invoke-static {v0, p1, p2, v1}, Lnubia/util/ImageUtils;->scaleBitmapToDesire(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 155
    :cond_2
    invoke-static {p0, p1, p2}, Lnubia/util/ImageUtils;->getBitmap(Lnubia/util/InputStreamLoader;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    :cond_3
    :goto_3
    return-object v0
.end method

.method public static final getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 167
    new-instance v0, Lnubia/util/InputStreamLoader;

    invoke-direct {v0, p0}, Lnubia/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnubia/util/ImageUtils;->getBitmapSize(Lnubia/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method public static final getBitmapSize(Lnubia/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .param p0, "isLoader"    # Lnubia/util/InputStreamLoader;

    .line 177
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 180
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 181
    invoke-virtual {p0}, Lnubia/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lnubia/util/InputStreamLoader;->close()V

    .line 186
    nop

    .line 187
    return-object v0

    .line 185
    :goto_1
    invoke-virtual {p0}, Lnubia/util/InputStreamLoader;->close()V

    throw v1
.end method

.method public static getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .line 191
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 192
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 193
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 194
    const/4 v2, 0x1

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 195
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 196
    return-object v0
.end method

.method public static isPngFormat(Lnubia/util/InputStreamLoader;)Z
    .locals 6
    .param p0, "isLoader"    # Lnubia/util/InputStreamLoader;

    .line 206
    const/4 v0, 0x0

    .line 208
    .local v0, "isPng":Z
    :try_start_0
    invoke-virtual {p0}, Lnubia/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1

    .line 209
    .local v1, "is":Ljava/io/InputStream;
    sget-object v2, Lnubia/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    array-length v2, v2

    .line 210
    .local v2, "pngMinSize":I
    const/4 v3, 0x0

    .line 211
    .local v3, "offset":I
    new-array v4, v2, [B

    .line 213
    .local v4, "data":[B
    :goto_0
    if-ge v3, v2, :cond_1

    .line 215
    sub-int v5, v2, v3

    invoke-virtual {v1, v4, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 216
    .local v5, "count":I
    if-gez v5, :cond_0

    .line 217
    goto :goto_1

    .line 219
    :cond_0
    add-int/2addr v3, v5

    .line 220
    .end local v5    # "count":I
    goto :goto_0

    .line 222
    :cond_1
    :goto_1
    if-lt v3, v2, :cond_2

    .line 223
    invoke-static {v4}, Lnubia/util/ImageUtils;->isPngFormat([B)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v5

    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "pngMinSize":I
    .end local v3    # "offset":I
    .end local v4    # "data":[B
    goto :goto_2

    .line 227
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lnubia/util/InputStreamLoader;->close()V

    .line 228
    nop

    .line 229
    return v0

    .line 227
    :goto_3
    invoke-virtual {p0}, Lnubia/util/InputStreamLoader;->close()V

    throw v1
.end method

.method public static isPngFormat([B)Z
    .locals 4
    .param p0, "bytes"    # [B

    .line 239
    const/4 v0, 0x1

    .line 240
    .local v0, "result":Z
    if-eqz p0, :cond_2

    array-length v1, p0

    sget-object v2, Lnubia/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 244
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lnubia/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 245
    aget-byte v2, p0, v1

    sget-object v3, Lnubia/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_1

    .line 246
    const/4 v0, 0x0

    .line 247
    goto :goto_2

    .line 244
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "i":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 252
    :cond_3
    :goto_2
    return v0
.end method

.method public static saveBitmapToLocal(Lnubia/util/InputStreamLoader;Ljava/lang/String;II)Z
    .locals 4
    .param p0, "isLoader"    # Lnubia/util/InputStreamLoader;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "result":Z
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 268
    invoke-static {p0}, Lnubia/util/ImageUtils;->getBitmapSize(Lnubia/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 269
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_1

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_1

    .line 270
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v2, p2, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, p3, :cond_0

    .line 272
    invoke-static {p0, p1}, Lnubia/util/ImageUtils;->saveToFile(Lnubia/util/InputStreamLoader;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 274
    :cond_0
    invoke-static {p0, p2, p3}, Lnubia/util/ImageUtils;->getBitmap(Lnubia/util/InputStreamLoader;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 275
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 276
    invoke-static {p0}, Lnubia/util/ImageUtils;->isPngFormat(Lnubia/util/InputStreamLoader;)Z

    move-result v3

    invoke-static {v2, p1, v3}, Lnubia/util/ImageUtils;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result v0

    .line 277
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 282
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return v0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 293
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnubia/util/ImageUtils;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "needCompress"    # Z

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "result":Z
    if-eqz p0, :cond_1

    .line 308
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 310
    .local v1, "fos":Ljava/io/FileOutputStream;
    if-eqz p2, :cond_0

    .line 311
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .local v2, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_0

    .line 313
    .end local v2    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 314
    .restart local v2    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    :goto_0
    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 315
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    const/4 v0, 0x1

    .line 319
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_1

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return v0
.end method

.method private static saveToFile(Lnubia/util/InputStreamLoader;Ljava/lang/String;)Z
    .locals 2
    .param p0, "isLoader"    # Lnubia/util/InputStreamLoader;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 334
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Lnubia/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 336
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 337
    invoke-virtual {p0}, Lnubia/util/InputStreamLoader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    const/4 v1, 0x1

    return v1

    .line 339
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 340
    .local v0, "localException":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static scaleBitmapToDesire(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "discardOld"    # Z

    .line 355
    const/4 v0, 0x0

    .line 357
    .local v0, "result":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 359
    move-object v0, p0

    goto :goto_0

    .line 361
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 362
    .local v1, "config":Landroid/graphics/Bitmap$Config;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 363
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    move-object v1, v2

    .line 365
    :cond_1
    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    .line 366
    invoke-static {p0, v0, p3}, Lnubia/util/ImageUtils;->cropBitmapToAnother(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v1    # "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    goto :goto_1

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method
