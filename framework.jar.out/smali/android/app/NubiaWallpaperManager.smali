.class public Landroid/app/NubiaWallpaperManager;
.super Ljava/lang/Object;
.source "NubiaWallpaperManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaWallpaperManager"

.field public static final TYPE_DEFAULT_WALL_PAPER:I = 0x1

.field public static final TYPE_LOCK_SCREEN_WALL_PAPER:I = 0x2

.field private static final mLSWallpaperBlurRadius:[I

.field private static final mWallpaperBlurRadius:[I


# instance fields
.field private mCallback:Landroid/app/IWallpaperManagerCallback;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/app/IWallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 74
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x5a

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Landroid/app/NubiaWallpaperManager;->mWallpaperBlurRadius:[I

    .line 75
    new-array v0, v0, [I

    aput v2, v0, v3

    sput-object v0, Landroid/app/NubiaWallpaperManager;->mLSWallpaperBlurRadius:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/IWallpaperManagerCallback;Landroid/app/IWallpaperManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "service"    # Landroid/app/IWallpaperManager;
    .param p3, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/app/NubiaWallpaperManager;->mCallback:Landroid/app/IWallpaperManagerCallback;

    .line 84
    iput-object p2, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    .line 85
    iput-object p3, p0, Landroid/app/NubiaWallpaperManager;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method private adjustBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "defaultScale"    # F

    move-object/from16 v1, p2

    .line 308
    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 309
    return-object v0

    .line 312
    :cond_0
    const-string/jumbo v3, "window"

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 313
    .local v3, "wm":Landroid/view/WindowManager;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 314
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 315
    iget v6, v5, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 317
    invoke-direct/range {p0 .. p1}, Landroid/app/NubiaWallpaperManager;->getDefaultDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v6

    .line 318
    .local v6, "p":Landroid/graphics/Point;
    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    div-float v7, v7, p3

    float-to-int v7, v7

    .line 319
    .local v7, "scaleX":I
    iget v8, v6, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    div-float v8, v8, p3

    float-to-int v8, v8

    .line 321
    .local v8, "scaleY":I
    if-lez v7, :cond_4

    if-lez v8, :cond_4

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v7, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v8, :cond_1

    .line 323
    move-object/from16 v16, v3

    goto/16 :goto_3

    .line 326
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 327
    .local v9, "desiredWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 331
    .local v10, "desiredHeight":I
    :try_start_0
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 332
    .local v11, "newbm":Landroid/graphics/Bitmap;
    iget v12, v5, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v11, v12}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 334
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 335
    .local v12, "c":Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 336
    .local v13, "targetRect":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->right:I

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    .line 339
    iget v14, v13, Landroid/graphics/Rect;->right:I

    sub-int v14, v9, v14

    .line 340
    .local v14, "deltaw":I
    iget v15, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v10, v15

    .line 342
    .local v15, "deltah":I
    if-gtz v14, :cond_3

    if-lez v15, :cond_2

    goto :goto_0

    .line 352
    :cond_2
    move-object/from16 v16, v3

    goto :goto_1

    .line 344
    :cond_3
    :goto_0
    int-to-float v0, v9

    iget v2, v13, Landroid/graphics/Rect;->right:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v10

    move-object/from16 v16, v3

    :try_start_1
    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    .line 344
    .end local v3    # "wm":Landroid/view/WindowManager;
    .local v16, "wm":Landroid/view/WindowManager;
    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 346
    .local v0, "scale":F
    iget v2, v13, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v13, Landroid/graphics/Rect;->right:I

    .line 347
    iget v2, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    .line 348
    iget v2, v13, Landroid/graphics/Rect;->right:I

    sub-int v14, v9, v2

    .line 349
    iget v2, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v10, v2

    .line 352
    .end local v0    # "scale":F
    :goto_1
    div-int/lit8 v0, v14, 0x2

    div-int/lit8 v2, v15, 0x2

    invoke-virtual {v13, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 354
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 355
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 356
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 357
    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2, v13, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 360
    invoke-virtual {v12, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 361
    return-object v11

    .line 362
    .end local v0    # "paint":Landroid/graphics/Paint;
    .end local v11    # "newbm":Landroid/graphics/Bitmap;
    .end local v12    # "c":Landroid/graphics/Canvas;
    .end local v13    # "targetRect":Landroid/graphics/Rect;
    .end local v14    # "deltaw":I
    .end local v15    # "deltah":I
    :catch_0
    move-exception v0

    goto :goto_2

    .line 362
    .end local v16    # "wm":Landroid/view/WindowManager;
    .restart local v3    # "wm":Landroid/view/WindowManager;
    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    .line 363
    .end local v3    # "wm":Landroid/view/WindowManager;
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    .restart local v16    # "wm":Landroid/view/WindowManager;
    :goto_2
    const-string v2, "NubiaWallpaperManager"

    const-string v3, "adjustBitmap : can\'t generate default bitmap"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    return-object v1

    .line 323
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v9    # "desiredWidth":I
    .end local v10    # "desiredHeight":I
    .end local v16    # "wm":Landroid/view/WindowManager;
    .restart local v3    # "wm":Landroid/view/WindowManager;
    :cond_4
    move-object/from16 v16, v3

    .line 323
    .end local v3    # "wm":Landroid/view/WindowManager;
    .restart local v16    # "wm":Landroid/view/WindowManager;
    :goto_3
    return-object v1
.end method

.method static generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 710
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 711
    return-object v0

    .line 714
    :cond_0
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 715
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 716
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 717
    iget v3, v2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {p1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 719
    if-lez p2, :cond_5

    if-lez p3, :cond_5

    .line 720
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v3, p3, :cond_1

    goto/16 :goto_1

    .line 726
    :cond_1
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 727
    .local v3, "newbm":Landroid/graphics/Bitmap;
    iget v4, v2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 729
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 730
    .local v4, "c":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 731
    .local v5, "targetRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 732
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 734
    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int v6, p2, v6

    .line 735
    .local v6, "deltaw":I
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v7, p3, v7

    .line 737
    .local v7, "deltah":I
    if-gtz v6, :cond_2

    if-lez v7, :cond_4

    .line 740
    :cond_2
    if-le v6, v7, :cond_3

    .line 741
    int-to-float v8, p2

    iget v9, v5, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 741
    .local v8, "scale":F
    goto :goto_0

    .line 743
    .end local v8    # "scale":F
    :cond_3
    int-to-float v8, p3

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 745
    .restart local v8    # "scale":F
    :goto_0
    iget v9, v5, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 746
    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, v5, Landroid/graphics/Rect;->bottom:I

    .line 747
    iget v9, v5, Landroid/graphics/Rect;->right:I

    sub-int v6, p2, v9

    .line 748
    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v7, p3, v9

    .line 751
    .end local v8    # "scale":F
    :cond_4
    div-int/lit8 v8, v6, 0x2

    div-int/lit8 v9, v7, 0x2

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 753
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 754
    .local v8, "paint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 755
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 756
    invoke-virtual {v4, p1, v0, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 758
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 759
    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    return-object v3

    .line 761
    .end local v3    # "newbm":Landroid/graphics/Bitmap;
    .end local v4    # "c":Landroid/graphics/Canvas;
    .end local v5    # "targetRect":Landroid/graphics/Rect;
    .end local v6    # "deltaw":I
    .end local v7    # "deltah":I
    .end local v8    # "paint":Landroid/graphics/Paint;
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "NubiaWallpaperManager"

    const-string v4, "Can\'t generate default bitmap"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 763
    return-object p1

    .line 721
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_5
    :goto_1
    return-object p1
.end method

.method private getBitmapInner(Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;F)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "scale"    # F

    .line 533
    const-string/jumbo v0, "width"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 534
    .local v0, "width":I
    const-string v2, "height"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 537
    .local v1, "height":I
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 538
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 539
    .local v4, "bm":Landroid/graphics/Bitmap;
    iget-object v5, p0, Landroid/app/NubiaWallpaperManager;->mContext:Landroid/content/Context;

    int-to-float v6, v0

    div-float/2addr v6, p3

    float-to-int v6, v6

    int-to-float v7, v1

    div-float/2addr v7, p3

    float-to-int v7, v7

    invoke-static {v5, v4, v6, v7}, Landroid/app/NubiaWallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 548
    goto :goto_0

    .line 546
    :catch_0
    move-exception v2

    .line 539
    :goto_0
    return-object v5

    .line 544
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 541
    :catch_1
    move-exception v3

    .line 542
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v4, "NubiaWallpaperManager"

    const-string v5, "getBitmapInner : can\'t decode file"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 545
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 548
    goto :goto_1

    .line 546
    :catch_2
    move-exception v3

    .line 549
    nop

    .line 551
    :goto_1
    return-object v2

    .line 544
    :goto_2
    nop

    .line 545
    :try_start_4
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 548
    goto :goto_3

    .line 546
    :catch_3
    move-exception v3

    .line 548
    :goto_3
    throw v2
.end method

.method private getBlurWallpaperParam([II)V
    .locals 1
    .param p1, "outParamt"    # [I
    .param p2, "wallpaperType"    # I

    .line 459
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v0, :cond_0

    .line 460
    return-void

    .line 464
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->getBlurWallpaperParam([II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 469
    :goto_0
    return-void
.end method

.method private getBlurWallpaperWithRadius(II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "radius"    # I
    .param p2, "wallpaperType"    # I

    .line 513
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 514
    const-string v0, "NubiaWallpaperManager"

    const-string v2, "getBlurWallpaperWithRadius : service not running"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-object v1

    .line 519
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 520
    .local v0, "params":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v2, v0, p1, p2}, Landroid/app/IWallpaperManager;->getBlurWallpaper(Landroid/os/Bundle;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 522
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    .line 523
    invoke-static {p1}, Lnubia/util/BlurUtil;->getInnerScaleByBlurRadius(I)F

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Landroid/app/NubiaWallpaperManager;->getBitmapInner(Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;F)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 527
    .end local v0    # "params":Landroid/os/Bundle;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    goto :goto_0

    .line 525
    :catch_0
    move-exception v0

    .line 529
    :goto_0
    return-object v1
.end method

.method private getDefaultDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 373
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 374
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 375
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 376
    .local v2, "point":Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 377
    return-object v2
.end method

.method public static getDefaultLockscreenBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/app/NubiaWallpaperManager;->getDefaultLockscreenPath()Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 672
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 673
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 675
    :cond_0
    return-object v0
.end method

.method public static getDefaultLockscreenPath()Ljava/lang/String;
    .locals 3

    .line 680
    const-string v0, "/system/media/theme/thememanager/default/wallpaper/default_lock_wallpaper.png"

    .line 681
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 682
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 683
    const-string v0, "/system/media/theme/thememanager/default/wallpaper/default_lock_wallpaper.jpg"

    .line 685
    :cond_0
    return-object v0
.end method

.method public static getDefaultWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 690
    const/4 v0, 0x0

    .line 691
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/app/NubiaWallpaperManager;->getDefaultWallpaperPath()Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 694
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 696
    :cond_0
    return-object v0
.end method

.method public static getDefaultWallpaperPath()Ljava/lang/String;
    .locals 3

    .line 701
    const-string v0, "/system/media/theme/thememanager/default/wallpaper/default_wallpaper.png"

    .line 702
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 703
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 704
    const-string v0, "/system/media/theme/thememanager/default/wallpaper/default_wallpaper.jpg"

    .line 706
    :cond_0
    return-object v0
.end method

.method private getLockScreenBitmapInner(Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 651
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 652
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    nop

    .line 653
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 652
    invoke-static {v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 654
    .local v0, "bm":Landroid/graphics/Bitmap;
    nop

    .line 659
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 662
    goto :goto_0

    .line 660
    :catch_0
    move-exception v2

    .line 654
    :goto_0
    return-object v0

    .line 658
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 655
    :catch_1
    move-exception v1

    .line 656
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v2, "NubiaWallpaperManager"

    const-string v3, "Can\'t decode file"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 659
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 662
    goto :goto_1

    .line 660
    :catch_2
    move-exception v1

    .line 663
    nop

    .line 664
    :goto_1
    return-object v0

    .line 658
    :goto_2
    nop

    .line 659
    :try_start_4
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 662
    goto :goto_3

    .line 660
    :catch_3
    move-exception v1

    .line 662
    :goto_3
    throw v0
.end method

.method public static getProperWallpaperPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 556
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 557
    .local v0, "screenWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 558
    .local v1, "screenHeight":I
    if-ge v1, v0, :cond_0

    .line 559
    move v2, v1

    .line 560
    .local v2, "t":I
    move v1, v0

    .line 561
    move v0, v2

    .line 564
    .end local v2    # "t":I
    :cond_0
    const/4 v2, 0x0

    .line 565
    .local v2, "path":Ljava/lang/String;
    const/16 v3, 0x780

    if-lt v1, v3, :cond_2

    .line 566
    const-string v2, "/system/media/wallpaper/1920/wallpaper_01.png"

    .line 567
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 568
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 569
    const-string v2, "/system/media/wallpaper/1920/wallpaper_01.jpg"

    .line 571
    .end local v3    # "f":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 572
    :cond_2
    const-string v2, "/system/media/wallpaper/default/wallpaper_01.png"

    .line 573
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    .restart local v3    # "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 575
    const-string v2, "/system/media/wallpaper/default/wallpaper_01.jpg"

    .line 578
    .end local v3    # "f":Ljava/io/File;
    :cond_3
    :goto_0
    return-object v2
.end method

.method private getScrollClipRect(Landroid/content/Context;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "wallpaperType"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 381
    move/from16 v3, p3

    new-instance v0, Landroid/graphics/Rect;

    move-object/from16 v4, p2

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v5, v0

    .line 382
    .local v5, "rect":Landroid/graphics/Rect;
    const/4 v6, 0x0

    .line 383
    .local v6, "offsetX":F
    const/4 v7, 0x0

    move v8, v7

    .line 388
    .local v8, "offsetY":F
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->getWallpaperPositionX()F

    move-result v0

    move v6, v0

    .line 389
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->getWallpaperPositionY()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v0

    .line 392
    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 396
    :goto_0
    instance-of v0, v2, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 397
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    .line 398
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 399
    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v9

    .line 400
    .local v9, "screenWidth":I
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 401
    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 402
    .local v0, "screenHeight":I
    goto :goto_1

    .line 403
    .end local v0    # "screenHeight":I
    .end local v9    # "screenWidth":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 404
    .restart local v9    # "screenWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .restart local v0    # "screenHeight":I
    :goto_1
    move v10, v0

    .line 407
    .end local v0    # "screenHeight":I
    .local v10, "screenHeight":I
    const/4 v11, 0x0

    .line 408
    .local v11, "wallpaperDesiredWidth":I
    const/4 v12, 0x0

    move v13, v12

    .line 411
    .local v13, "wallpaperDesiredHeight":I
    :try_start_1
    iget-object v0, v1, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, v1, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v0

    move v11, v0

    .line 413
    iget-object v0, v1, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->getHeightHint()I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 417
    .end local v13    # "wallpaperDesiredHeight":I
    .local v0, "wallpaperDesiredHeight":I
    move v13, v0

    .end local v0    # "wallpaperDesiredHeight":I
    .restart local v13    # "wallpaperDesiredHeight":I
    :cond_1
    goto :goto_2

    .line 415
    :catch_1
    move-exception v0

    .line 419
    :goto_2
    const/4 v0, 0x2

    if-ne v0, v3, :cond_2

    .line 420
    const/high16 v6, -0x40800000    # -1.0f

    .line 421
    const/high16 v8, -0x40800000    # -1.0f

    .line 422
    move v11, v9

    .line 423
    move v13, v10

    .line 426
    :cond_2
    const/4 v14, 0x0

    .line 427
    .local v14, "scrollX":I
    const/4 v15, 0x0

    .line 429
    .local v15, "scrollY":I
    cmpg-float v7, v6, v7

    if-gez v7, :cond_3

    .line 430
    sub-int v7, v11, v9

    div-int/2addr v7, v0

    .line 431
    .end local v14    # "scrollX":I
    .local v7, "scrollX":I
    sub-int v12, v13, v10

    div-int/2addr v12, v0

    .end local v15    # "scrollY":I
    .local v12, "scrollY":I
    goto :goto_5

    .line 433
    .end local v7    # "scrollX":I
    .end local v12    # "scrollY":I
    .restart local v14    # "scrollX":I
    .restart local v15    # "scrollY":I
    :cond_3
    new-array v0, v0, [I

    .line 434
    .local v0, "wallpaperParam":[I
    invoke-direct {v1, v0, v3}, Landroid/app/NubiaWallpaperManager;->getBlurWallpaperParam([II)V

    .line 435
    aget v7, v0, v12

    if-eqz v7, :cond_4

    aget v7, v0, v12

    goto :goto_3

    :cond_4
    move v7, v11

    :goto_3
    move v11, v7

    .line 436
    const/4 v7, 0x1

    aget v12, v0, v7

    if-eqz v12, :cond_5

    aget v7, v0, v7

    goto :goto_4

    :cond_5
    move v7, v13

    :goto_4
    move v13, v7

    .line 437
    sub-int v7, v11, v9

    int-to-float v7, v7

    mul-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 438
    .end local v14    # "scrollX":I
    .restart local v7    # "scrollX":I
    sub-int v12, v13, v10

    int-to-float v12, v12

    mul-float/2addr v12, v8

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 441
    .end local v0    # "wallpaperParam":[I
    .end local v15    # "scrollY":I
    .restart local v12    # "scrollY":I
    :goto_5
    if-gez v7, :cond_6

    .line 442
    const/4 v7, 0x0

    .line 445
    :cond_6
    if-gez v12, :cond_7

    .line 446
    const/4 v12, 0x0

    .line 449
    :cond_7
    invoke-virtual {v5, v7, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 450
    return-object v5
.end method

.method public static getSurpportBlurRadius(I)[I
    .locals 1
    .param p0, "WallPaperType"    # I

    .line 92
    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    .line 93
    sget-object v0, Landroid/app/NubiaWallpaperManager;->mWallpaperBlurRadius:[I

    return-object v0

    .line 94
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p0, :cond_1

    .line 95
    sget-object v0, Landroid/app/NubiaWallpaperManager;->mLSWallpaperBlurRadius:[I

    return-object v0

    .line 97
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isStaticWallpaper()Z
    .locals 3

    .line 473
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 474
    return v1

    .line 477
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/app/IWallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public static isSurpportBlurRadius(II)Z
    .locals 4
    .param p0, "WallPaperType"    # I
    .param p1, "radius"    # I

    .line 108
    invoke-static {p0}, Landroid/app/NubiaWallpaperManager;->getSurpportBlurRadius(I)[I

    move-result-object v0

    .line 110
    .local v0, "radiusArray":[I
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 111
    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 112
    aget v3, v0, v2

    if-ne p1, v3, :cond_0

    .line 113
    const/4 v1, 0x1

    return v1

    .line 111
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method private saveBlurWallpaper(Landroid/graphics/Bitmap;II)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I
    .param p3, "wallpaperType"    # I

    .line 177
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v0, :cond_0

    .line 178
    const-string v0, "NubiaWallpaperManager"

    const-string/jumbo v1, "saveBlurWallpaper : service not running"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 183
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2, p3}, Landroid/app/IWallpaperManager;->setBlurWallpaper(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 185
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_1

    .line 186
    return-void

    .line 189
    :cond_1
    nop

    .line 192
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v1, v2

    .line 193
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 199
    goto :goto_0

    .line 197
    :catch_0
    move-exception v2

    .line 200
    nop

    .line 203
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    goto :goto_2

    .line 195
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    .line 196
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 199
    goto :goto_1

    .line 197
    :catch_1
    move-exception v3

    .line 199
    :goto_1
    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 201
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NubiaWallpaperManager"

    const-string/jumbo v2, "saveBlurWallpaper : can not get WallpaperManagerService remote function"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private setBlurWallpaperParam(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "wallpaperType"    # I

    .line 207
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v0, :cond_0

    .line 208
    return-void

    .line 212
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IWallpaperManager;->setBlurWallpaperParam(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 217
    :goto_0
    return-void
.end method

.method private setLockScreenWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 5
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 616
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 617
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    const v1, 0x8000

    new-array v1, v1, [B

    .line 619
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "amt":I
    if-lez v2, :cond_0

    .line 620
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 621
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 623
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 624
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 625
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Landroid/app/NubiaWallpaperManager;->doBlurAndSaveWallpaper([BI)V

    .line 626
    return-void
.end method


# virtual methods
.method public clipFitWallpaperWithRadius(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # I
    .param p3, "wallpaperType"    # I

    .line 293
    invoke-direct {p0}, Landroid/app/NubiaWallpaperManager;->isStaticWallpaper()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 294
    return-object v1

    .line 296
    :cond_0
    const-string v0, "FitAnim"

    const-string v2, "clipFitWallpaperWithRadius()"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {p2}, Lnubia/util/BlurUtil;->getInnerScaleByBlurRadius(I)F

    move-result v0

    .line 298
    .local v0, "scale":F
    invoke-direct {p0, p2, p3}, Landroid/app/NubiaWallpaperManager;->getBlurWallpaperWithRadius(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 300
    .local v2, "wallpaperDB":Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 301
    const-string v3, "NubiaWallpaperManager"

    const-string v4, "clipWallpaperWithRadius : invoked method failured!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-object v1

    .line 304
    :cond_1
    return-object v2
.end method

.method public clipWallpaperWithRadius(Landroid/content/Context;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "radius"    # I
    .param p4, "wallpaperType"    # I

    .line 250
    invoke-direct {p0}, Landroid/app/NubiaWallpaperManager;->isStaticWallpaper()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 251
    return-object v1

    .line 254
    :cond_0
    invoke-static {p3}, Lnubia/util/BlurUtil;->getInnerScaleByBlurRadius(I)F

    move-result v0

    .line 255
    .local v0, "scale":F
    invoke-direct {p0, p3, p4}, Landroid/app/NubiaWallpaperManager;->getBlurWallpaperWithRadius(II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, p1, v2, v0}, Landroid/app/NubiaWallpaperManager;->adjustBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 256
    .local v2, "wallpaperDB":Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 257
    const-string v3, "NubiaWallpaperManager"

    const-string v4, "clipWallpaperWithRadius : invoked method failured!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-object v1

    .line 260
    :cond_1
    iget v3, p2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 261
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 262
    iput v4, p2, Landroid/graphics/Rect;->top:I

    .line 264
    :cond_2
    invoke-direct {p0, p1, p2, p4}, Landroid/app/NubiaWallpaperManager;->getScrollClipRect(Landroid/content/Context;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v3

    .line 265
    .local v3, "scaleRect":Landroid/graphics/Rect;
    iget v5, v3, Landroid/graphics/Rect;->top:I

    if-eqz v5, :cond_3

    .line 266
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 267
    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 269
    :cond_3
    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v0

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 270
    move-object v5, v1

    .line 273
    .local v5, "newBm":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v5, v6

    .line 274
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-direct {v6, v4, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v6

    .line 275
    .local v4, "dst":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 276
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v6, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 277
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 278
    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v4    # "dst":Landroid/graphics/Rect;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 282
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 285
    :cond_4
    const/4 v5, 0x0

    .line 288
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v5
.end method

.method public doBlurAndSaveWallpaper(Landroid/graphics/Bitmap;I)V
    .locals 8
    .param p1, "preWallpaper"    # Landroid/graphics/Bitmap;
    .param p2, "wallpaperType"    # I

    .line 129
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v0, :cond_0

    .line 130
    const-string v0, "NubiaWallpaperManager"

    const-string v1, "doBlurAndSaveWallpaper : service not running"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 134
    :cond_0
    if-nez p1, :cond_1

    .line 135
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 136
    .local v0, "wm":Landroid/app/WallpaperManager;
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 139
    .end local v0    # "wm":Landroid/app/WallpaperManager;
    :cond_1
    const/4 v0, 0x0

    .line 140
    .local v0, "w":I
    const/4 v1, 0x0

    move v2, v1

    .line 143
    .local v2, "h":I
    :try_start_0
    iget-object v3, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v3}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v3

    move v0, v3

    .line 144
    iget-object v3, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v3}, Landroid/app/IWallpaperManager;->getHeightHint()I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v3

    .line 149
    :goto_0
    const/4 v3, 0x0

    .line 150
    .local v3, "wallpaper":Landroid/graphics/Bitmap;
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v5, p2, :cond_2

    .line 151
    iget-object v5, p0, Landroid/app/NubiaWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v0, v2}, Landroid/app/NubiaWallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    .line 152
    :cond_2
    if-ne v4, p2, :cond_3

    .line 153
    move-object v3, p1

    .line 156
    :cond_3
    :goto_1
    invoke-static {p2}, Landroid/app/NubiaWallpaperManager;->getSurpportBlurRadius(I)[I

    move-result-object v5

    .line 158
    .local v5, "radiusArray":[I
    if-eqz v5, :cond_6

    .line 161
    nop

    .local v1, "i":I
    :goto_2
    array-length v6, v5

    if-ge v1, v6, :cond_5

    .line 162
    if-ne v4, p2, :cond_4

    .line 163
    aget v6, v5, v1

    int-to-float v6, v6

    const v7, 0x590d0d0d

    invoke-static {v3, v6, v7}, Lnubia/util/BlurUtil;->doBlurWithMask(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v6

    .local v6, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 165
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    aget v6, v5, v1

    int-to-float v6, v6

    invoke-static {v3, v6}, Lnubia/util/BlurUtil;->doBlur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 168
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    :goto_3
    aget v7, v5, v1

    invoke-direct {p0, v6, v7, p2}, Landroid/app/NubiaWallpaperManager;->saveBlurWallpaper(Landroid/graphics/Bitmap;II)V

    .line 169
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 172
    .end local v1    # "i":I
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p0, v1, v4, p2}, Landroid/app/NubiaWallpaperManager;->setBlurWallpaperParam(III)V

    .line 174
    :cond_6
    return-void
.end method

.method public doBlurAndSaveWallpaper([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "wallpaperType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/NubiaWallpaperManager;->doBlurAndSaveWallpaper(Landroid/graphics/Bitmap;I)V

    .line 124
    return-void
.end method

.method public getLockScreenBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 630
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v0, :cond_0

    .line 631
    const-string v0, "NubiaWallpaperManager"

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/4 v0, 0x0

    return-object v0

    .line 635
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 636
    .local v0, "params":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v1, v0}, Landroid/app/IWallpaperManager;->getLockScreenWallpaper(Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 637
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 638
    invoke-direct {p0, v1, v0}, Landroid/app/NubiaWallpaperManager;->getLockScreenBitmapInner(Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 640
    return-object v2

    .line 645
    .end local v0    # "params":Landroid/os/Bundle;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    goto :goto_0

    .line 643
    :catch_0
    move-exception v0

    .line 646
    :goto_0
    invoke-static {}, Landroid/app/NubiaWallpaperManager;->getDefaultLockscreenBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperStream()Ljava/io/InputStream;
    .locals 13

    .line 769
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 770
    const-string v0, "NubiaWallpaperManager"

    const-string v2, "WallpaperService not running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return-object v1

    .line 774
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 775
    .local v0, "params":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getWallpaper"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 776
    .local v2, "methodGetWallpaper":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 777
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-le v5, v6, :cond_1

    .line 778
    iget-object v5, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v11, p0, Landroid/app/NubiaWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v4

    iget-object v4, p0, Landroid/app/NubiaWallpaperManager;->mCallback:Landroid/app/IWallpaperManagerCallback;

    aput-object v4, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v9

    aput-object v0, v6, v8

    iget-object v4, p0, Landroid/app/NubiaWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    move-object v3, v4

    goto :goto_0

    .line 780
    :cond_1
    iget-object v5, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Landroid/app/NubiaWallpaperManager;->mCallback:Landroid/app/IWallpaperManagerCallback;

    aput-object v7, v6, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v10

    aput-object v0, v6, v9

    iget-object v4, p0, Landroid/app/NubiaWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v8

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    move-object v3, v4

    .line 784
    :goto_0
    if-eqz v3, :cond_2

    .line 785
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 789
    .end local v0    # "params":Landroid/os/Bundle;
    .end local v2    # "methodGetWallpaper":Ljava/lang/reflect/Method;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    goto :goto_1

    .line 787
    :catch_0
    move-exception v0

    .line 790
    :goto_1
    return-object v1
.end method

.method public setLockScreenBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v0, :cond_0

    .line 223
    const-string v0, "NubiaWallpaperManager"

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 227
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->setLockScreenWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_1

    .line 229
    return-void

    .line 231
    :cond_1
    nop

    .line 233
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v1, v2

    .line 234
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 235
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/app/NubiaWallpaperManager;->doBlurAndSaveWallpaper(Landroid/graphics/Bitmap;I)V

    .line 236
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.LOCKSCREEN_WALLPAPER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/app/NubiaWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    .end local v2    # "intent":Landroid/content/Intent;
    nop

    .line 240
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 245
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 239
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 240
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 243
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 246
    :goto_0
    return-void
.end method

.method public setLockScreenResource(I)V
    .locals 5
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v0, :cond_0

    .line 487
    return-void

    .line 490
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 492
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 492
    invoke-interface {v1, v2}, Landroid/app/IWallpaperManager;->setLockScreenWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_2

    .line 495
    const/4 v2, 0x0

    .line 497
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v2, v3

    .line 498
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Landroid/app/NubiaWallpaperManager;->setLockScreenWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 499
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.LOCKSCREEN_WALLPAPER_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Landroid/app/NubiaWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    .end local v3    # "intent":Landroid/content/Intent;
    nop

    .line 503
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 503
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 509
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    goto :goto_1

    .line 507
    :catch_0
    move-exception v0

    .line 510
    :goto_1
    return-void
.end method

.method public setLockScreenStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/NubiaWallpaperManager;->setLockScreenStream(Ljava/io/InputStream;Z)V

    .line 584
    return-void
.end method

.method public setLockScreenStream(Ljava/io/InputStream;Z)V
    .locals 5
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "notify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v0, :cond_0

    .line 589
    return-void

    .line 592
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->setLockScreenWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_1

    .line 594
    return-void

    .line 596
    :cond_1
    nop

    .line 598
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v1, v2

    .line 599
    invoke-direct {p0, p1, v1}, Landroid/app/NubiaWallpaperManager;->setLockScreenWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 600
    if-eqz p2, :cond_2

    .line 601
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.LOCKSCREEN_WALLPAPER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/app/NubiaWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    nop

    .line 606
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 611
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 605
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 606
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 609
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 612
    :goto_0
    return-void
.end method
