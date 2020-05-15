.class public Landroid/media/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    }
.end annotation


# static fields
.field private static final MAX_NUM_PIXELS_MICRO_THUMBNAIL:I = 0x4b00

.field private static final MAX_NUM_PIXELS_THUMBNAIL:I = 0x30000

.field private static final OPTIONS_NONE:I = 0x0

.field public static final OPTIONS_RECYCLE_INPUT:I = 0x2

.field private static final OPTIONS_SCALE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailUtils"

.field public static final TARGET_SIZE_MICRO_THUMBNAIL:I = 0x60

.field public static final TARGET_SIZE_MINI_THUMBNAIL:I = 0x140

.field private static final UNCONSTRAINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p0, "c"    # Landroid/os/ParcelFileDescriptor;

    .line 341
    if-nez p0, :cond_0

    return-void

    .line 343
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 347
    :goto_0
    return-void
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .line 275
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    .line 276
    .local v0, "w":D
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, v2

    .line 278
    .local v2, "h":D
    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    .line 279
    move v6, v4

    goto :goto_0

    :cond_0
    mul-double v6, v0, v2

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 280
    .local v6, "lowerBound":I
    :goto_0
    if-ne p1, v5, :cond_1

    const/16 v7, 0x80

    goto :goto_1

    .line 281
    :cond_1
    int-to-double v7, p1

    div-double v7, v0, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v2, v9

    .line 282
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    .line 281
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v7, v7

    .line 284
    .local v7, "upperBound":I
    :goto_1
    if-ge v7, v6, :cond_2

    .line 286
    return v6

    .line 289
    :cond_2
    if-ne p2, v5, :cond_3

    if-ne p1, v5, :cond_3

    .line 291
    return v4

    .line 292
    :cond_3
    if-ne p1, v5, :cond_4

    .line 293
    return v6

    .line 295
    :cond_4
    return v7
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .line 257
    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 261
    .local v0, "initialSize":I
    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 262
    const/4 v1, 0x1

    .line 263
    .local v1, "roundedSize":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 264
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "roundedSize":I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/2addr v2, v1

    mul-int/2addr v1, v2

    .line 270
    .restart local v1    # "roundedSize":I
    :cond_1
    return v1
.end method

.method public static createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "kind"    # I

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 86
    .local v2, "wantMini":Z
    :goto_0
    const/16 v3, 0x60

    if-eqz v2, :cond_1

    .line 87
    const/16 v4, 0x140

    goto :goto_1

    .line 88
    :cond_1
    move v4, v3

    .line 89
    .local v4, "targetSize":I
    :goto_1
    if-eqz v2, :cond_2

    .line 90
    const/high16 v5, 0x30000

    goto :goto_2

    .line 91
    :cond_2
    const/16 v5, 0x4b00

    .line 92
    .local v5, "maxPixels":I
    :goto_2
    new-instance v6, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;-><init>(Landroid/media/ThumbnailUtils$1;)V

    .line 93
    .local v6, "sizedThumbnailBitmap":Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    const/4 v8, 0x0

    .line 94
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v9

    .line 95
    .local v9, "fileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v9, :cond_5

    .line 96
    iget v10, v9, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v11, 0x1f

    if-eq v10, v11, :cond_4

    iget v10, v9, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 97
    invoke-static {v10}, Landroid/media/MediaFile;->isRawImageFileType(I)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_3

    .line 100
    :cond_3
    iget v10, v9, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v11, 0x25

    if-ne v10, v11, :cond_5

    .line 101
    invoke-static {p0, v4, v5}, Landroid/media/ThumbnailUtils;->createThumbnailFromMetadataRetriever(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_4

    .line 98
    :cond_4
    :goto_3
    invoke-static {p0, v4, v5, v6}, Landroid/media/ThumbnailUtils;->createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V

    .line 99
    iget-object v8, v6, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 105
    :cond_5
    :goto_4
    if-nez v8, :cond_a

    .line 106
    move-object v10, v7

    .line 108
    .local v10, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v10, v11

    .line 109
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    .line 110
    .local v11, "fd":Ljava/io/FileDescriptor;
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 111
    .local v12, "options":Landroid/graphics/BitmapFactory$Options;
    iput v1, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 112
    iput-boolean v1, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 113
    invoke-static {v11, v7, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 114
    iget-boolean v1, v12, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v1, :cond_8

    iget v1, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v13, -0x1

    if-eq v1, v13, :cond_8

    iget v1, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v1, v13, :cond_6

    goto :goto_6

    .line 118
    :cond_6
    invoke-static {v12, v4, v5}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 120
    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 122
    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 123
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 124
    invoke-static {v11, v7, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v0

    .line 131
    .end local v11    # "fd":Ljava/io/FileDescriptor;
    .end local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    nop

    .line 132
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "ThumbnailUtils"

    const-string v7, ""

    invoke-static {v1, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v0    # "ex":Ljava/io/IOException;
    goto :goto_b

    .line 136
    :cond_7
    :goto_5
    goto :goto_b

    .line 116
    .restart local v11    # "fd":Ljava/io/FileDescriptor;
    .restart local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_8
    :goto_6
    nop

    .line 131
    nop

    .line 132
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 134
    :catch_1
    move-exception v0

    .line 135
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v1, "ThumbnailUtils"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Ljava/io/IOException;
    goto :goto_8

    .line 136
    :goto_7
    nop

    .line 116
    :goto_8
    return-object v7

    .line 130
    .end local v11    # "fd":Ljava/io/FileDescriptor;
    .end local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v0

    goto :goto_9

    .line 127
    :catch_2
    move-exception v0

    .line 128
    .local v0, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v1, "ThumbnailUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to decode file "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ". OutOfMemoryError."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    .end local v0    # "oom":Ljava/lang/OutOfMemoryError;
    if-eqz v10, :cond_7

    .line 132
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 125
    :catch_3
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/io/IOException;
    :try_start_5
    const-string v1, "ThumbnailUtils"

    const-string v7, ""

    invoke-static {v1, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 131
    .end local v0    # "ex":Ljava/io/IOException;
    if-eqz v10, :cond_7

    .line 132
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    .line 130
    :goto_9
    nop

    .line 131
    if-eqz v10, :cond_9

    .line 132
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_a

    .line 134
    :catch_4
    move-exception v1

    .line 135
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "ThumbnailUtils"

    const-string v7, ""

    invoke-static {v3, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "ex":Ljava/io/IOException;
    nop

    .line 136
    :cond_9
    :goto_a
    throw v0

    .line 141
    .end local v10    # "stream":Ljava/io/FileInputStream;
    :cond_a
    :goto_b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    .line 143
    const/4 v0, 0x2

    invoke-static {v8, v3, v3, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 147
    :cond_b
    return-object v8
.end method

.method private static createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "targetSize"    # I
    .param p2, "maxPixels"    # I
    .param p3, "sizedThumbBitmap"    # Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    .line 479
    if-nez p0, :cond_0

    return-void

    .line 481
    :cond_0
    const/4 v0, 0x0

    .line 482
    .local v0, "exif":Landroid/media/ExifInterface;
    const/4 v1, 0x0

    .line 484
    .local v1, "thumbData":[B
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 485
    invoke-virtual {v0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 488
    goto :goto_0

    .line 486
    :catch_0
    move-exception v2

    .line 487
    .local v2, "ex":Ljava/io/IOException;
    const-string v3, "ThumbnailUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 491
    .local v2, "fullOptions":Landroid/graphics/BitmapFactory$Options;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 492
    .local v3, "exifOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    .line 493
    .local v4, "exifThumbWidth":I
    const/4 v5, 0x0

    .line 496
    .local v5, "fullThumbWidth":I
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    .line 497
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 498
    array-length v8, v1

    invoke-static {v1, v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 499
    invoke-static {v3, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v8

    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 500
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v4, v8, v9

    .line 504
    :cond_1
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 505
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 506
    invoke-static {v2, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 507
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v6, v8

    .line 510
    .end local v5    # "fullThumbWidth":I
    .local v6, "fullThumbWidth":I
    if-eqz v1, :cond_3

    if-lt v4, v6, :cond_3

    .line 511
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 512
    .local v5, "width":I
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 513
    .local v8, "height":I
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 514
    array-length v9, v1

    invoke-static {v1, v7, v9, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 516
    iget-object v7, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_2

    .line 517
    iput-object v1, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailData:[B

    .line 518
    iput v5, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailWidth:I

    .line 519
    iput v8, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailHeight:I

    .line 521
    .end local v5    # "width":I
    .end local v8    # "height":I
    :cond_2
    goto :goto_1

    .line 522
    :cond_3
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 523
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 525
    :goto_1
    return-void
.end method

.method private static createThumbnailFromMetadataRetriever(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "targetSize"    # I
    .param p2, "maxPixels"    # I

    .line 529
    if-nez p0, :cond_0

    .line 530
    const/4 v0, 0x0

    return-object v0

    .line 532
    :cond_0
    const/4 v0, 0x0

    .line 533
    .local v0, "thumbnail":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 535
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 536
    new-instance v2, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    .line 537
    .local v2, "params":Landroid/media/MediaMetadataRetriever$BitmapParams;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    .line 538
    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2, p1, p2}, Landroid/media/MediaMetadataRetriever;->getThumbnailImageAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;II)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 542
    .end local v2    # "params":Landroid/media/MediaMetadataRetriever$BitmapParams;
    :goto_0
    nop

    .line 543
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    .line 542
    :catchall_0
    move-exception v2

    .line 543
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v2

    .line 539
    :catch_0
    move-exception v2

    goto :goto_0

    .line 546
    :goto_1
    return-object v0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "kind"    # I

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 161
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 162
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 169
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    :goto_0
    goto :goto_2

    .line 170
    :catch_0
    move-exception v2

    .line 173
    goto :goto_2

    .line 168
    :catchall_0
    move-exception v2

    .line 169
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 172
    goto :goto_1

    .line 170
    :catch_1
    move-exception v3

    .line 172
    :goto_1
    throw v2

    .line 165
    :catch_2
    move-exception v2

    .line 169
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .line 163
    :catch_3
    move-exception v2

    .line 169
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 175
    :goto_2
    if-nez v0, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 177
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 179
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 180
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 181
    .local v4, "height":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 182
    .local v5, "max":I
    const/16 v6, 0x200

    if-le v5, v6, :cond_1

    .line 183
    const/high16 v6, 0x44000000    # 512.0f

    int-to-float v7, v5

    div-float/2addr v6, v7

    .line 184
    .local v6, "scale":F
    int-to-float v7, v3

    mul-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 185
    .local v7, "w":I
    int-to-float v8, v4

    mul-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 186
    .local v8, "h":I
    invoke-static {v0, v7, v8, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "max":I
    .end local v6    # "scale":F
    .end local v7    # "w":I
    .end local v8    # "h":I
    :cond_1
    goto :goto_3

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 189
    const/4 v2, 0x2

    const/16 v3, 0x60

    invoke-static {v0, v3, v3, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 194
    :cond_3
    :goto_3
    return-object v0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 206
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "options"    # I

    .line 219
    if-nez p0, :cond_0

    .line 220
    const/4 v0, 0x0

    return-object v0

    .line 224
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 225
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .local v0, "scale":F
    goto :goto_0

    .line 227
    .end local v0    # "scale":F
    :cond_1
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 229
    .restart local v0    # "scale":F
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 230
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 231
    const/4 v2, 0x1

    or-int/2addr v2, p3

    invoke-static {v1, p0, p1, p2, v2}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 233
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    return-object v2
.end method

.method private static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "minSideLength"    # I
    .param p1, "maxNumOfPixels"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "cr"    # Landroid/content/ContentResolver;
    .param p4, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 310
    const/4 v0, 0x0

    move-object v1, v0

    .line 312
    .local v1, "b":Landroid/graphics/Bitmap;
    if-nez p4, :cond_0

    :try_start_0
    invoke-static {p2, p3}, Landroid/media/ThumbnailUtils;->makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p4, v2

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 331
    :catch_0
    move-exception v2

    goto :goto_2

    .line 313
    :cond_0
    :goto_0
    if-nez p4, :cond_1

    .line 335
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 313
    return-object v0

    .line 314
    :cond_1
    if-nez p5, :cond_2

    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object p5, v2

    .line 316
    :cond_2
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 317
    .local v2, "fd":Ljava/io/FileDescriptor;
    const/4 v3, 0x1

    iput v3, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 318
    iput-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 319
    invoke-static {v2, v0, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 320
    iget-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_4

    iget v3, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    iget v3, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 324
    :cond_3
    invoke-static {p5, p0, p1}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 326
    const/4 v3, 0x0

    iput-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 328
    iput-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 329
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 330
    invoke-static {v2, v0, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    .line 335
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 336
    nop

    .line 337
    return-object v0

    .line 322
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v1    # "b":Landroid/graphics/Bitmap;
    .restart local v2    # "fd":Ljava/io/FileDescriptor;
    :cond_4
    :goto_1
    nop

    .line 335
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 322
    return-object v0

    .line 331
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :goto_2
    nop

    .line 332
    .local v2, "ex":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v3, "ThumbnailUtils"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    nop

    .line 335
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 333
    return-object v0

    .line 335
    .end local v2    # "ex":Ljava/lang/OutOfMemoryError;
    :goto_3
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v0
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 352
    :try_start_0
    const-string/jumbo v0, "r"

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "ex":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "scaler"    # Landroid/graphics/Matrix;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .param p4, "options"    # I

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 366
    and-int/lit8 v1, p4, 0x1

    const/4 v2, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    move v12, v1

    .line 367
    .local v12, "scaleUp":Z
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v11

    :goto_1
    move v13, v2

    .line 369
    .local v13, "recycle":Z
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v14, v1, v8

    .line 370
    .local v14, "deltaX":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v15, v1, v9

    .line 371
    .local v15, "deltaY":I
    if-nez v12, :cond_4

    if-ltz v14, :cond_2

    if-gez v15, :cond_4

    .line 378
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 380
    .local v1, "b2":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 382
    .local v2, "c":Landroid/graphics/Canvas;
    div-int/lit8 v3, v14, 0x2

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 383
    .local v3, "deltaXHalf":I
    div-int/lit8 v4, v15, 0x2

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 384
    .local v4, "deltaYHalf":I
    new-instance v5, Landroid/graphics/Rect;

    .line 387
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v3

    .line 388
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/2addr v11, v4

    invoke-direct {v5, v3, v4, v6, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 389
    .local v5, "src":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v6, v8, v6

    div-int/lit8 v6, v6, 0x2

    .line 390
    .local v6, "dstX":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v11

    sub-int v11, v9, v11

    div-int/lit8 v11, v11, 0x2

    .line 391
    .local v11, "dstY":I
    move/from16 v16, v3

    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "deltaXHalf":I
    .local v16, "deltaXHalf":I
    move/from16 v17, v4

    sub-int v4, v8, v6

    .end local v4    # "deltaYHalf":I
    .local v17, "deltaYHalf":I
    sub-int v10, v9, v11

    invoke-direct {v3, v6, v11, v4, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 396
    .local v3, "dst":Landroid/graphics/Rect;
    const/4 v4, 0x0

    invoke-virtual {v2, v7, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 397
    if-eqz v13, :cond_3

    .line 398
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 400
    :cond_3
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 401
    return-object v1

    .line 403
    .end local v1    # "b2":Landroid/graphics/Bitmap;
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v3    # "dst":Landroid/graphics/Rect;
    .end local v5    # "src":Landroid/graphics/Rect;
    .end local v6    # "dstX":I
    .end local v11    # "dstY":I
    .end local v16    # "deltaXHalf":I
    .end local v17    # "deltaYHalf":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v10, v1

    .line 404
    .local v10, "bitmapWidthF":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v6, v1

    .line 406
    .local v6, "bitmapHeightF":F
    div-float v16, v10, v6

    .line 407
    .local v16, "bitmapAspect":F
    int-to-float v1, v8

    int-to-float v2, v9

    div-float v17, v1, v2

    .line 409
    .local v17, "viewAspect":F
    cmpl-float v1, v16, v17

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f666666    # 0.9f

    if-lez v1, :cond_7

    .line 410
    int-to-float v1, v9

    div-float/2addr v1, v6

    .line 411
    .local v1, "scale":F
    cmpg-float v3, v1, v3

    if-ltz v3, :cond_6

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    goto :goto_2

    .line 414
    :cond_5
    const/4 v0, 0x0

    .end local v1    # "scale":F
    .end local p0    # "scaler":Landroid/graphics/Matrix;
    .local v0, "scaler":Landroid/graphics/Matrix;
    goto :goto_3

    .line 412
    .end local v0    # "scaler":Landroid/graphics/Matrix;
    .restart local v1    # "scale":F
    .restart local p0    # "scaler":Landroid/graphics/Matrix;
    :cond_6
    :goto_2
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 416
    .end local v1    # "scale":F
    .end local p0    # "scaler":Landroid/graphics/Matrix;
    .restart local v0    # "scaler":Landroid/graphics/Matrix;
    :goto_3
    goto :goto_5

    .line 417
    .end local v0    # "scaler":Landroid/graphics/Matrix;
    .restart local p0    # "scaler":Landroid/graphics/Matrix;
    :cond_7
    int-to-float v1, v8

    div-float/2addr v1, v10

    .line 418
    .restart local v1    # "scale":F
    cmpg-float v3, v1, v3

    if-ltz v3, :cond_9

    cmpl-float v2, v1, v2

    if-lez v2, :cond_8

    goto :goto_4

    .line 421
    :cond_8
    const/4 v0, 0x0

    .end local v1    # "scale":F
    .end local p0    # "scaler":Landroid/graphics/Matrix;
    .restart local v0    # "scaler":Landroid/graphics/Matrix;
    goto :goto_5

    .line 419
    .end local v0    # "scaler":Landroid/graphics/Matrix;
    .restart local v1    # "scale":F
    .restart local p0    # "scaler":Landroid/graphics/Matrix;
    :cond_9
    :goto_4
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 426
    .end local v1    # "scale":F
    .end local p0    # "scaler":Landroid/graphics/Matrix;
    .local v18, "scaler":Landroid/graphics/Matrix;
    :goto_5
    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 428
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/16 v19, 0x1

    .line 428
    move-object v0, v7

    move-object/from16 v5, v18

    move/from16 v20, v6

    move/from16 v6, v19

    .end local v6    # "bitmapHeightF":F
    .local v20, "bitmapHeightF":F
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "b1":Landroid/graphics/Bitmap;
    goto :goto_6

    .line 431
    .end local v0    # "b1":Landroid/graphics/Bitmap;
    .end local v20    # "bitmapHeightF":F
    .restart local v6    # "bitmapHeightF":F
    :cond_a
    move/from16 v20, v6

    .end local v6    # "bitmapHeightF":F
    .restart local v20    # "bitmapHeightF":F
    move-object v0, v7

    .line 434
    .restart local v0    # "b1":Landroid/graphics/Bitmap;
    :goto_6
    if-eqz v13, :cond_b

    if-eq v0, v7, :cond_b

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 438
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 439
    .local v1, "dx1":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 441
    .local v2, "dy1":I
    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v2, 0x2

    invoke-static {v0, v3, v4, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 448
    .local v3, "b2":Landroid/graphics/Bitmap;
    if-eq v3, v0, :cond_d

    .line 449
    if-nez v13, :cond_c

    if-eq v0, v7, :cond_d

    .line 450
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 454
    :cond_d
    return-object v3
.end method
