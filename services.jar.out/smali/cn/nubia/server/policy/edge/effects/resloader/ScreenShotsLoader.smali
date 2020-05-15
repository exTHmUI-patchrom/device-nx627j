.class public Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;
.super Ljava/lang/Object;
.source "ScreenShotsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    }
.end annotation


# static fields
.field public static final CURREN_SCREEN_LOAD_FINISH:I = 0x3e9

.field private static final ICON_LOCATION_X:I = 0x91

.field private static final ICON_LOCATION_Y:F = 238.3f

.field private static final ICON_SIZE:I = 0x46

.field public static final NEXT_SCREEN_LOAD_FINISH:I = 0x3ea

.field public static final SCREEN_HEIGHT:I = 0x780

.field public static final SCREEN_WIDTH:I = 0x438

.field public static final START_SCREEN_LOAD_FINISH:I = 0x3ec

.field private static final TEXT_LOCATION_Y:F = 326.3f

.field public static final WALLPAPER_SCREEN_LOAD_FINISH:I = 0x3eb


# instance fields
.field private final MAX_CLEAR_BITMAP:I

.field private mAm:Landroid/app/ActivityManager;

.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mBlurWallpaper:Landroid/graphics/Bitmap;

.field private mBlurWallpaperLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mCallBack:Lcn/nubia/server/policy/edge/effects/resloader/IScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentScreenLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

.field private mDensity:F

.field private mGuideIconLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mRecentAppSwitchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSplitWallpaperLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mStartScreenLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailHeight:I

.field private mThumbnailLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x6

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->MAX_CLEAR_BITMAP:I

    .line 106
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mRecentAppSwitchList:Ljava/util/List;

    .line 108
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 109
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 110
    const-string v0, "activity"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mAm:Landroid/app/ActivityManager;

    .line 112
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getDisplayInfo()V

    .line 113
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailWidth:I

    .line 115
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailHeight:I

    .line 117
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Lcn/nubia/server/policy/edge/effects/resloader/IScreenCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    .line 67
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCallBack:Lcn/nubia/server/policy/edge/effects/resloader/IScreenCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    .line 67
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    .line 67
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;ZZI)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getBlurWallpaper(ZZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getThumbnailBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    .line 67
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .line 67
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getDefaultThumbnail(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private addTipToWallpaper(Landroid/graphics/Bitmap;ZZI)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "hasTip"    # Z
    .param p3, "isUp"    # Z
    .param p4, "funs"    # I

    move-object/from16 v0, p0

    .line 584
    if-eqz p2, :cond_0

    const/16 v2, 0x2d0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 585
    .local v2, "bWidth":I
    :goto_0
    if-eqz p2, :cond_1

    const/16 v3, 0x500

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 586
    .local v3, "bHeight":I
    :goto_1
    const/16 v4, 0x28

    .line 587
    .local v4, "yOffset":I
    int-to-float v5, v2

    iget v6, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 588
    .local v5, "ratio":F
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 589
    .local v6, "newBm":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 590
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {v8, v11, v11, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 591
    .local v8, "src":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v11, v11, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 592
    .local v9, "dst":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 593
    .local v10, "paint":Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 594
    move-object/from16 v11, p1

    invoke-virtual {v7, v11, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 596
    if-eqz p2, :cond_4

    .line 597
    const/4 v12, 0x0

    .line 598
    .local v12, "tipsStr":Ljava/lang/String;
    const/16 v13, 0x2712

    move/from16 v14, p4

    if-ne v14, v13, :cond_2

    .line 599
    iget-object v13, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x30c0017

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 602
    :cond_2
    iget-object v13, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x30c0016

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 605
    :goto_2
    invoke-virtual {v0, v12, v5}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->genTipBitmap(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 607
    .local v13, "tipBitmap":Landroid/graphics/Bitmap;
    if-nez p3, :cond_3

    .line 608
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    sub-int v16, v2, v16

    div-int/lit8 v16, v16, 0x2

    .line 609
    .local v16, "x":I
    int-to-float v1, v4

    move-object/from16 v17, v8

    iget v8, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    .end local v8    # "src":Landroid/graphics/Rect;
    .local v17, "src":Landroid/graphics/Rect;
    mul-float/2addr v1, v8

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 613
    .end local v16    # "x":I
    .local v1, "y":I
    .local v8, "x":I
    :goto_3
    move/from16 v8, v16

    goto :goto_4

    .line 611
    .end local v1    # "y":I
    .end local v17    # "src":Landroid/graphics/Rect;
    .local v8, "src":Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v17, v8

    .end local v8    # "src":Landroid/graphics/Rect;
    .restart local v17    # "src":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v2, v1

    div-int/lit8 v16, v1, 0x2

    .line 612
    .restart local v16    # "x":I
    int-to-float v1, v4

    iget v8, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    mul-float/2addr v1, v8

    mul-float/2addr v1, v5

    float-to-int v1, v1

    sub-int v1, v3, v1

    .line 613
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v1, v8

    goto :goto_3

    .line 615
    .end local v16    # "x":I
    .restart local v1    # "y":I
    .local v8, "x":I
    :goto_4
    int-to-float v0, v8

    move/from16 v18, v2

    int-to-float v2, v1

    .end local v2    # "bWidth":I
    .local v18, "bWidth":I
    move/from16 v19, v1

    const/4 v1, 0x0

    .end local v1    # "y":I
    .local v19, "y":I
    invoke-virtual {v7, v13, v0, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .end local v8    # "x":I
    .end local v12    # "tipsStr":Ljava/lang/String;
    .end local v13    # "tipBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "y":I
    goto :goto_5

    .line 617
    .end local v17    # "src":Landroid/graphics/Rect;
    .end local v18    # "bWidth":I
    .restart local v2    # "bWidth":I
    .local v8, "src":Landroid/graphics/Rect;
    :cond_4
    move/from16 v14, p4

    move/from16 v18, v2

    move-object/from16 v17, v8

    .end local v2    # "bWidth":I
    .end local v8    # "src":Landroid/graphics/Rect;
    .restart local v17    # "src":Landroid/graphics/Rect;
    .restart local v18    # "bWidth":I
    :goto_5
    return-object v6
.end method

.method private clipBitmapByMiniLauncherLocation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "maskColor"    # I

    .line 507
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 508
    .local v0, "sourceBitmapWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 510
    .local v1, "sourceBitmapHeight":I
    int-to-float v2, v1

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 511
    .local v2, "clipBitmapWidth":I
    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 512
    .local v3, "x":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 514
    .local v5, "bm":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 515
    .local v6, "copyCanvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Rect;

    add-int v8, v3, v2

    invoke-direct {v7, v3, v4, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v4, v4, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    invoke-virtual {v6, p1, v7, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 518
    invoke-virtual {v6, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 519
    return-object v5
.end method

.method private copyBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "Orientation"    # I

    .line 308
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 309
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 310
    .local v0, "m":Landroid/graphics/Matrix;
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 311
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p1

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 313
    .end local v0    # "m":Landroid/graphics/Matrix;
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private doBlurBitmapNoScale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .line 495
    :try_start_0
    const-string/jumbo v0, "nubia.util.BlurUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 496
    .local v0, "blurUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "doBlur"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 498
    .local v1, "getBlur":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 499
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 500
    .end local v0    # "blurUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "getBlur":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getBlurLiveWallpaperThumbnail(Landroid/content/Context;Landroid/app/WallpaperInfo;IZZI)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/app/WallpaperInfo;
    .param p3, "maskColor"    # I
    .param p4, "hasTip"    # Z
    .param p5, "isUp"    # Z
    .param p6, "funs"    # I

    .line 525
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 526
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 527
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 528
    .local v2, "newBm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 529
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 530
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 529
    invoke-direct {p0, v3, p3}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->clipBitmapByMiniLauncherLocation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 531
    .local v3, "liveWallpaperThumb":Landroid/graphics/Bitmap;
    invoke-direct {p0, v3}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->doBlurBitmapNoScale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 532
    invoke-direct {p0, v1, p4, p5, p6}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->addTipToWallpaper(Landroid/graphics/Bitmap;ZZI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 534
    .end local v3    # "liveWallpaperThumb":Landroid/graphics/Bitmap;
    :cond_0
    return-object v2
.end method

.method private getBlurWallpaper(ZZI)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "hasTip"    # Z
    .param p2, "isUp"    # Z
    .param p3, "funs"    # I

    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 479
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 480
    .local v1, "info":Landroid/app/WallpaperInfo;
    if-eqz v1, :cond_0

    .line 481
    const/high16 v9, 0x27000000

    .line 482
    .local v9, "maskColor":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    move-object v2, p0

    move-object v4, v1

    move v5, v9

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v2 .. v8}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getBlurLiveWallpaperThumbnail(Landroid/content/Context;Landroid/app/WallpaperInfo;IZZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 484
    .end local v9    # "maskColor":I
    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getBlurWallpaperNew(ZZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 489
    :goto_0
    return-object v0
.end method

.method private getDefaultThumbnail(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Landroid/graphics/Bitmap;
    .locals 26
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 192
    const/high16 v2, 0x3f000000    # 0.5f

    .line 193
    .local v2, "ratioX":F
    const/high16 v3, 0x3f000000    # 0.5f

    .line 194
    .local v3, "ratioY":F
    iget v4, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x44870000    # 1080.0f

    div-float/2addr v4, v5

    .line 195
    .local v4, "screen_ratioX":F
    iget v5, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenHeight:I

    int-to-float v5, v5

    const/high16 v6, 0x44f00000    # 1920.0f

    div-float/2addr v5, v6

    .line 196
    .local v5, "screen_ratioY":F
    iget v6, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    .line 197
    .local v6, "thumbnailWidth":I
    iget v7, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    .line 198
    .local v7, "thumbnailHeight":I
    const/high16 v8, 0x43110000    # 145.0f

    mul-float/2addr v8, v2

    iget v9, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 199
    .local v8, "transX":I
    const v9, 0x436e4ccd    # 238.3f

    mul-float/2addr v9, v3

    iget v10, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 200
    .local v9, "transY":I
    const/high16 v10, 0x428c0000    # 70.0f

    mul-float v11, v2, v10

    iget v12, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 201
    .local v11, "iconW":I
    mul-float/2addr v10, v2

    iget v12, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    .line 202
    .local v10, "iconH":I
    iget v12, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenWidth:I

    int-to-float v12, v12

    mul-float/2addr v12, v2

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    float-to-int v12, v12

    .line 203
    .local v12, "textX":I
    const v13, 0x43a32666    # 326.3f

    mul-float/2addr v13, v3

    iget v14, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    .line 204
    .local v13, "textY":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 205
    .local v14, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 206
    .local v15, "h":I
    move/from16 v16, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v3    # "ratioY":F
    .local v16, "ratioY":F
    invoke-static {v14, v15, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 207
    .local v3, "bmp":Landroid/graphics/Bitmap;
    move/from16 v17, v4

    new-instance v4, Landroid/graphics/Canvas;

    .end local v4    # "screen_ratioX":F
    .local v17, "screen_ratioX":F
    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 208
    .local v4, "cavs":Landroid/graphics/Canvas;
    move/from16 v18, v5

    const/4 v5, -0x1

    .end local v5    # "screen_ratioY":F
    .local v18, "screen_ratioY":F
    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 209
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 210
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 212
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 213
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v19, v4

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 215
    .end local v4    # "cavs":Landroid/graphics/Canvas;
    .local v1, "srcRect":Landroid/graphics/Rect;
    .local v19, "cavs":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/RectF;

    move/from16 v20, v14

    int-to-float v14, v8

    .end local v14    # "w":I
    .local v20, "w":I
    move/from16 v21, v15

    int-to-float v15, v9

    .end local v15    # "h":I
    .local v21, "h":I
    move/from16 v22, v13

    add-int v13, v8, v11

    .end local v13    # "textY":I
    .local v22, "textY":I
    int-to-float v13, v13

    move/from16 v23, v8

    add-int v8, v9, v10

    .end local v8    # "transX":I
    .local v23, "transX":I
    int-to-float v8, v8

    invoke-direct {v4, v14, v15, v13, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 216
    .local v4, "dstRect":Landroid/graphics/RectF;
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 218
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 219
    .local v13, "c":Landroid/graphics/Canvas;
    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    .line 220
    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 221
    new-instance v14, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v15, 0x3

    move/from16 v24, v6

    const/4 v6, 0x0

    invoke-direct {v14, v6, v15}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .end local v6    # "thumbnailWidth":I
    .local v24, "thumbnailWidth":I
    invoke-virtual {v13, v14}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 223
    invoke-virtual {v13, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 224
    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 225
    invoke-virtual {v13}, Landroid/graphics/Canvas;->restore()V

    .line 227
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 228
    const/high16 v6, 0x41600000    # 14.0f

    mul-float/2addr v6, v2

    iget v14, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    mul-float/2addr v6, v14

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 229
    const/16 v6, 0x8a

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 230
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 231
    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    .line 232
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    int-to-float v14, v12

    move/from16 v15, v22

    int-to-float v0, v15

    .end local v22    # "textY":I
    .local v15, "textY":I
    invoke-virtual {v13, v6, v14, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 233
    invoke-virtual {v13}, Landroid/graphics/Canvas;->restore()V

    .line 234
    return-object v8
.end method

.method private getDisplayInfo()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 123
    .local v0, "windowManager":Landroid/view/WindowManager;
    const/4 v1, 0x0

    .line 124
    .local v1, "defaultDisplay":Landroid/view/Display;
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 126
    .local v2, "defaultDisplayInfo":Landroid/view/DisplayInfo;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 128
    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenHeight:I

    .line 129
    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenWidth:I

    .line 130
    return-void
.end method

.method private getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 282
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 283
    .local v0, "pInfo":Landroid/content/pm/PackageItemInfo;
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 285
    .local v1, "iconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 286
    return-object v1

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private getIcon(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .line 164
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 168
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 169
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x200001

    and-int/2addr v2, v3

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 171
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 173
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v2, v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3
.end method

.method private getShadowBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "shadowRadius"    # F

    .line 344
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 345
    return-object v0

    .line 348
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 349
    .local v1, "iconWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 351
    .local v2, "iconHeight":I
    if-lez v1, :cond_2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 355
    :cond_1
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 356
    .local v3, "blurPaint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, p2, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 358
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 359
    .local v0, "resultBm":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 360
    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 359
    return-object v4

    .line 352
    .end local v0    # "resultBm":Landroid/graphics/Bitmap;
    .end local v3    # "blurPaint":Landroid/graphics/Paint;
    :cond_2
    :goto_0
    return-object v0
.end method

.method private getThumbnailBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "id"    # I

    .line 292
    const/4 v0, 0x0

    move-object v1, v0

    .line 295
    .local v1, "dstBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Landroid/app/IActivityManager;->getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v2

    .line 296
    .local v2, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    if-nez v2, :cond_0

    .line 297
    return-object v0

    .line 298
    :cond_0
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    .local v0, "srcBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->copyBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 302
    .end local v0    # "srcBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 304
    :goto_0
    return-object v1
.end method


# virtual methods
.method public canclePreGuideLoaderRun()V
    .locals 2

    .line 893
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    .line 894
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 895
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 896
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    .line 898
    :cond_0
    return-void
.end method

.method public clearAsyncTask()V
    .locals 4

    .line 901
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    .line 902
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v3, :cond_0

    .line 903
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 904
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    .line 906
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    .line 907
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v3, :cond_1

    .line 908
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 909
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    .line 911
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    .line 912
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v3, :cond_2

    .line 913
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 914
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    .line 916
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mStartScreenLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mStartScreenLoader:Landroid/os/AsyncTask;

    .line 917
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v3, :cond_3

    .line 918
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mStartScreenLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 919
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mStartScreenLoader:Landroid/os/AsyncTask;

    .line 921
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    .line 922
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v3, :cond_4

    .line 923
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 924
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    .line 926
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    .line 927
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v3, :cond_5

    .line 928
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 929
    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    .line 931
    :cond_5
    return-void
.end method

.method public createShadowIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "isRight"    # Z

    .line 318
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 319
    return-object v0

    .line 321
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 322
    .local v1, "oriWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 323
    .local v2, "oriHeigth":I
    const/16 v3, 0x14

    .line 324
    .local v3, "shadowWidth":I
    const/16 v4, 0x14

    .line 325
    .local v4, "shadowHeigth":I
    const/high16 v5, 0x41200000    # 10.0f

    .line 326
    .local v5, "shadowRadius":F
    add-int v6, v1, v3

    add-int v7, v2, v4

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 329
    .local v6, "resultBm":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, v5}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getShadowBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 330
    .local v7, "shadowBm":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 331
    .local v8, "canvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 332
    .local v9, "shadowPaint":Landroid/graphics/Paint;
    const/high16 v10, 0x38000000

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    const/4 v10, 0x0

    if-eqz p2, :cond_1

    .line 334
    int-to-float v11, v3

    int-to-float v12, v4

    invoke-virtual {v8, v7, v11, v12, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 335
    invoke-virtual {v8, p1, v10, v10, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 337
    :cond_1
    int-to-float v11, v4

    invoke-virtual {v8, v7, v10, v11, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 338
    int-to-float v11, v3

    invoke-virtual {v8, p1, v11, v10, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 340
    :goto_0
    return-object v6
.end method

.method public genTipBitmap(Ljava/lang/String;F)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "tipsStr"    # Ljava/lang/String;
    .param p2, "ratio"    # F

    .line 538
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 539
    .local v0, "paint":Landroid/graphics/Paint;
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    const/high16 v2, 0x41900000    # 18.0f

    mul-float/2addr v2, v1

    mul-float/2addr v2, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 540
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 542
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 543
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 544
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 545
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v2, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 547
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 548
    .local v2, "strWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mDensity:F

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v5, v4

    float-to-int v4, v5

    add-int/2addr v3, v4

    .line 549
    .local v3, "strHight":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 551
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 552
    .local v5, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    .line 553
    .local v6, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget v7, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int v7, v3, v7

    iget v8, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    .line 554
    .local v7, "baseline":I
    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    int-to-float v9, v7

    invoke-virtual {v5, p1, v8, v9, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 555
    return-object v4
.end method

.method public getAppLabel(Landroid/app/ActivityManager$RecentTaskInfo;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "r"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .line 266
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 267
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 270
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 271
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x200001

    and-int/2addr v2, v3

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 273
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 275
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 276
    .local v3, "pInfo":Landroid/content/pm/PackageItemInfo;
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4
.end method

.method public getBlackThumbnail()Landroid/graphics/Bitmap;
    .locals 4

    .line 238
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 239
    .local v0, "res":Landroid/content/res/Resources;
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailWidth:I

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 241
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 242
    .local v2, "c":Landroid/graphics/Canvas;
    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 243
    return-object v1
.end method

.method public getBlurWallpaperNew(ZZI)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "hasTip"    # Z
    .param p2, "isUp"    # Z
    .param p3, "funs"    # I

    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 562
    .local v1, "newBm":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 563
    .local v2, "wpm":Landroid/app/WallpaperManager;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 564
    .local v3, "cla":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "clipFitBlurWallpaper"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 566
    .local v4, "getBlurMethod":Ljava/lang/reflect/Method;
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;

    aput-object v6, v5, v8

    const/16 v6, 0x5a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object v0, v5

    .line 567
    invoke-direct {p0, v0, p1, p2, p3}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->addTipToWallpaper(Landroid/graphics/Bitmap;ZZI)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v1, v5

    .line 568
    const-string v5, "FitAnim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBlurWallpaper mScreenWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mScreenHight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bitmap w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bitmap h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 568
    invoke-static {v5, v6}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .end local v2    # "wpm":Landroid/app/WallpaperManager;
    .end local v3    # "cla":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getBlurMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 575
    :catch_0
    move-exception v2

    .line 576
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 578
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public getCurrentRunAppComponent()Landroid/content/ComponentName;
    .locals 4

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mAm:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 152
    .local v1, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mAm:Landroid/app/ActivityManager;

    .line 153
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 154
    .local v2, "runningProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 155
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 156
    .local v3, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v3, :cond_0

    .line 157
    iget-object v0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 160
    .end local v3    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-object v0
.end method

.method getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 186
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x307005d

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .line 178
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 179
    .local v0, "iconDpi":I
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 180
    .end local v0    # "iconDpi":I
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public getHandledScreenBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 248
    const-string v0, "FitAnim"

    const-string v1, "getHandledScreenBitmap start"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenWidth:I

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mScreenHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 256
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 257
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 258
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .end local v1    # "canvas":Landroid/graphics/Canvas;
    goto :goto_1

    .line 251
    .end local v0    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0xa

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    .restart local v0    # "newBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 253
    .local v1, "c":Landroid/graphics/Canvas;
    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 254
    .end local v1    # "c":Landroid/graphics/Canvas;
    nop

    .line 261
    :goto_1
    const-string v1, "FitAnim"

    const-string v2, "getHandledScreenBitmap end"

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-object v0
.end method

.method public isCurrentScreenLoaderRun()Z
    .locals 2

    .line 866
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    .line 867
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 866
    :goto_0
    return v0
.end method

.method public isGuideIconLoaderRun()Z
    .locals 2

    .line 884
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSplitWallpaperLoaderRun()Z
    .locals 2

    .line 888
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    .line 889
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 888
    :goto_0
    return v0
.end method

.method public isStartScreenLoaderRun()Z
    .locals 2

    .line 880
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mStartScreenLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mStartScreenLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isThumbnailLoaderRun()Z
    .locals 2

    .line 876
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWallpaperLoaderRun()Z
    .locals 2

    .line 871
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    .line 872
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 871
    :goto_0
    return v0
.end method

.method public loadBlurWallpaperInBackgroud(Ljava/lang/String;ZZI)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hasTip"    # Z
    .param p3, "isUp"    # Z
    .param p4, "funs"    # I

    .line 421
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 425
    :cond_0
    new-instance v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$2;

    move-object v2, v0

    move-object v3, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$2;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;ZZILjava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    .line 473
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mBlurWallpaperLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 474
    return-void
.end method

.method public loadSplitWallpaperInBackgroud(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 368
    :cond_0
    new-instance v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$1;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    .line 416
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSplitWallpaperLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 417
    return-void
.end method

.method public loadThumbnailsInBackgroud(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)V"
        }
    .end annotation

    .line 622
    .local p1, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 626
    :cond_0
    new-instance v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Ljava/util/List;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    .line 682
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 683
    return-void
.end method

.method public nofityLoadCurrentScreen(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "screenBitmap"    # Landroid/graphics/Bitmap;

    .line 687
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 690
    :cond_0
    new-instance v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    .line 730
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 731
    return-void
.end method

.method public notifyLoadGuideIcon(Ljava/util/List;Ljava/util/List;Z)V
    .locals 3
    .param p3, "isRight"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 789
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "hashList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 793
    :cond_0
    new-instance v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;

    invoke-direct {v0, p0, p1, p3, p2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Ljava/util/List;ZLjava/util/List;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    .line 862
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mGuideIconLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 863
    return-void
.end method

.method public notifyLoadStartAppScreen(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 734
    new-instance v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mStartScreenLoader:Landroid/os/AsyncTask;

    .line 784
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mStartScreenLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 785
    return-void
.end method

.method public notifyUpdateRecentAppSwitchList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p1, "recentAppSwitchList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mRecentAppSwitchList:Ljava/util/List;

    .line 147
    return-void
.end method

.method public setCallback(Lcn/nubia/server/policy/edge/effects/resloader/IScreenCallback;)V
    .locals 0
    .param p1, "callback"    # Lcn/nubia/server/policy/edge/effects/resloader/IScreenCallback;

    .line 137
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCallBack:Lcn/nubia/server/policy/edge/effects/resloader/IScreenCallback;

    .line 138
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 133
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mHandler:Landroid/os/Handler;

    .line 134
    return-void
.end method

.method public setmSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
    .locals 0
    .param p1, "safeGuarder"    # Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .line 141
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .line 142
    return-void
.end method
