.class public Landroid/app/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$OnColorsChangedListener;,
        Landroid/app/WallpaperManager$WallpaperSetCompletion;,
        Landroid/app/WallpaperManager$Globals;,
        Landroid/app/WallpaperManager$FastBitmapDrawable;,
        Landroid/app/WallpaperManager$SetWallpaperFlags;
    }
.end annotation


# static fields
.field public static final ACTION_CHANGE_LIVE_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

.field public static final ACTION_CROP_AND_SET_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

.field public static final ACTION_LIVE_WALLPAPER_CHOOSER:Ljava/lang/String; = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

.field public static final COMMAND_DROP:Ljava/lang/String; = "android.home.drop"

.field public static final COMMAND_SECONDARY_TAP:Ljava/lang/String; = "android.wallpaper.secondaryTap"

.field public static final COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field private static DEBUG:Z = false

.field public static final EXTRA_LIVE_WALLPAPER_COMPONENT:Ljava/lang/String; = "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

.field public static final EXTRA_NEW_WALLPAPER_ID:Ljava/lang/String; = "android.service.wallpaper.extra.ID"

.field public static final FLAG_LOCK:I = 0x2

.field public static final FLAG_SYSTEM:I = 0x1

.field private static final PROP_LOCK_WALLPAPER:Ljava/lang/String; = "ro.config.lock_wallpaper"

.field private static final PROP_WALLPAPER:Ljava/lang/String; = "ro.config.wallpaper"

.field private static final PROP_WALLPAPER_COMPONENT:Ljava/lang/String; = "ro.config.wallpaper_component"

.field private static TAG:Ljava/lang/String; = null

.field public static final WALLPAPER_PREVIEW_META_DATA:Ljava/lang/String; = "android.wallpaper.preview"

.field private static sGlobals:Landroid/app/WallpaperManager$Globals;

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNubiaWM:Landroid/app/NubiaWallpaperManager;

.field private mWallpaperXStep:F

.field private mWallpaperYStep:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    const-string v0, "WallpaperManager"

    sput-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/WallpaperManager;->DEBUG:Z

    .line 501
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/app/IWallpaperManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "service"    # Landroid/app/IWallpaperManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 98
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 513
    iput-object p2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 514
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/app/WallpaperManager;->initGlobals(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V

    .line 516
    new-instance v0, Landroid/app/NubiaWallpaperManager;

    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NubiaWallpaperManager;-><init>(Landroid/app/IWallpaperManagerCallback;Landroid/app/IWallpaperManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    .line 518
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/WallpaperManager$Globals;
    .locals 1

    .line 94
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    return-object v0
.end method

.method private copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 0
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1355
    invoke-static {p1, p2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 1356
    return-void
.end method

.method private copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;I)V
    .locals 5
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .param p3, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1361
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1363
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    const v1, 0x8000

    new-array v1, v1, [B

    .line 1365
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "amt":I
    if-lez v2, :cond_0

    .line 1366
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1367
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1369
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1370
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1371
    iget-object v2, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    if-eqz v2, :cond_1

    .line 1372
    iget-object v2, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v4, p3}, Landroid/app/NubiaWallpaperManager;->doBlurAndSaveWallpaper([BI)V

    .line 1374
    :cond_1
    return-void
.end method

.method public static getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1971
    const/4 v0, 0x0

    .line 1973
    .local v0, "cn":Landroid/content/ComponentName;
    const-string/jumbo v1, "ro.config.wallpaper_component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1974
    .local v1, "flat":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1975
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1978
    :cond_0
    if-nez v0, :cond_1

    .line 1979
    const v2, 0x10401ae

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1980
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1981
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1986
    :cond_1
    if-eqz v0, :cond_2

    .line 1988
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1989
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0xc0000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1994
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_0

    .line 1992
    :catch_0
    move-exception v2

    .line 1993
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .line 1997
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 524
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private static getMaxCropRect(IIIIFF)Landroid/graphics/RectF;
    .locals 4
    .param p0, "inWidth"    # I
    .param p1, "inHeight"    # I
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .line 752
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 754
    .local v0, "cropRect":Landroid/graphics/RectF;
    int-to-float v1, p0

    int-to-float v2, p1

    div-float/2addr v1, v2

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 755
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 756
    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 757
    int-to-float v1, p2

    int-to-float v2, p1

    int-to-float v3, p3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 758
    .local v1, "cropWidth":F
    int-to-float v2, p0

    sub-float/2addr v2, v1

    mul-float/2addr v2, p4

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 759
    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 760
    .end local v1    # "cropWidth":F
    goto :goto_0

    .line 761
    :cond_0
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 762
    int-to-float v1, p0

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 763
    int-to-float v1, p3

    int-to-float v2, p0

    int-to-float v3, p2

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 764
    .local v1, "cropHeight":F
    int-to-float v2, p1

    sub-float/2addr v2, v1

    mul-float/2addr v2, p5

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 765
    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 767
    .end local v1    # "cropHeight":F
    :goto_0
    return-object v0
.end method

.method static initGlobals(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V
    .locals 2
    .param p0, "service"    # Landroid/app/IWallpaperManager;
    .param p1, "looper"    # Landroid/os/Looper;

    .line 505
    sget-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v1, :cond_0

    .line 507
    new-instance v1, Landroid/app/WallpaperManager$Globals;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals;-><init>(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V

    sput-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    .line 509
    :cond_0
    monitor-exit v0

    .line 510
    return-void

    .line 509
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 1909
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1911
    const-string/jumbo v0, "ro.config.lock_wallpaper"

    .line 1912
    .local v0, "whichProp":Ljava/lang/String;
    const v1, 0x1080264

    .line 1914
    .local v1, "defaultResId":I
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1915
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1916
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1917
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1919
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 1920
    :catch_0
    move-exception v4

    .line 1926
    .end local v3    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/app/NubiaWallpaperManager;->getDefaultLockscreenPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 1927
    :catch_1
    move-exception v3

    .line 1928
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    return-object v4

    .line 1933
    .end local v0    # "whichProp":Ljava/lang/String;
    .end local v1    # "defaultResId":I
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v0, "ro.config.wallpaper"

    .line 1934
    .restart local v0    # "whichProp":Ljava/lang/String;
    const v1, 0x1080264

    .line 1936
    .restart local v1    # "defaultResId":I
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1937
    .restart local v2    # "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1938
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1939
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1941
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v4

    .line 1942
    :catch_2
    move-exception v4

    .line 1957
    .end local v3    # "file":Ljava/io/File;
    :cond_2
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-static {p0}, Landroid/app/NubiaWallpaperManager;->getProperWallpaperPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object v3

    .line 1958
    :catch_3
    move-exception v3

    .line 1959
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    return-object v4
.end method

.method private final validateRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1322
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1323
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "visibleCrop rectangle must be valid and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1325
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 887
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V

    .line 888
    return-void
.end method

.method public addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "listener"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I

    .line 900
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/WallpaperManager$Globals;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V

    .line 901
    return-void
.end method

.method public clear()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1875
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I

    .line 1876
    return-void
.end method

.method public clear(I)V
    .locals 2
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1890
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 1891
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->clear()V

    .line 1893
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 1894
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 1896
    :cond_1
    return-void
.end method

.method public clearLockScreenWallpaper()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2178
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->setLockScreenStream(Ljava/io/InputStream;)V

    .line 2179
    return-void
.end method

.method public clearWallpaper()V
    .locals 2

    .line 1659
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 1660
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 1661
    return-void
.end method

.method public clearWallpaper(II)V
    .locals 2
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1673
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1678
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1681
    nop

    .line 1682
    return-void

    .line 1679
    :catch_0
    move-exception v0

    .line 1680
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1674
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public clearWallpaperOffsets(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 1855
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1859
    nop

    .line 1860
    return-void

    .line 1857
    :catch_0
    move-exception v0

    .line 1858
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clipBlurWallpaper(Landroid/content/Context;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "radius"    # I

    .line 2108
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    if-eqz v0, :cond_0

    .line 2109
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/app/NubiaWallpaperManager;->clipWallpaperWithRadius(Landroid/content/Context;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2112
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public clipBlurWallpaper(Landroid/content/Context;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "radius"    # I
    .param p4, "wallpaperType"    # I

    .line 2119
    const/4 v0, 0x1

    if-eq v0, p4, :cond_0

    const/4 v1, 0x2

    if-ne v1, p4, :cond_1

    .line 2121
    :cond_0
    invoke-static {p4, p3}, Landroid/app/NubiaWallpaperManager;->isSurpportBlurRadius(II)Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    if-eqz v0, :cond_1

    .line 2123
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/NubiaWallpaperManager;->clipWallpaperWithRadius(Landroid/content/Context;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2125
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public clipFitBlurWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # I

    .line 2197
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    if-eqz v0, :cond_0

    .line 2198
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/NubiaWallpaperManager;->clipFitWallpaperWithRadius(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2201
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public forgetLoadedWallpaper()V
    .locals 1

    .line 1004
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 1005
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 833
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "hardware"    # Z

    .line 844
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapAsUser(IZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z

    .line 853
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 562
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "which"    # I

    .line 574
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .line 593
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;
    .locals 24
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F
    .param p6, "which"    # I

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 615
    move/from16 v3, p6

    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 620
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    goto :goto_0

    .line 621
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Must request exactly one kind of wallpaper"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 624
    :cond_1
    :goto_0
    iget-object v5, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 625
    .local v5, "resources":Landroid/content/res/Resources;
    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v7, p4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 626
    .end local p4    # "horizontalAlignment":F
    .local v7, "horizontalAlignment":F
    move/from16 v8, p5

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 628
    .end local p5    # "verticalAlignment":F
    .local v6, "verticalAlignment":F
    iget-object v8, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v8

    .line 629
    .local v8, "wpStream":Ljava/io/InputStream;
    const/4 v15, 0x0

    if-nez v8, :cond_3

    .line 630
    sget-boolean v4, Landroid/app/WallpaperManager;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 631
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "default wallpaper stream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_2
    return-object v15

    .line 635
    :cond_3
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 636
    .local v10, "is":Ljava/io/InputStream;
    if-lez v0, :cond_13

    if-gtz v2, :cond_4

    .line 637
    move/from16 v22, v6

    move-object v1, v15

    goto/16 :goto_7

    .line 644
    :cond_4
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 645
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 646
    invoke-static {v10, v15, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 647
    iget v12, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v12, :cond_12

    iget v12, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v12, :cond_12

    .line 648
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 649
    .local v14, "inWidth":I
    iget v13, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 652
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v13, "inHeight":I
    nop

    .line 658
    new-instance v11, Ljava/io/BufferedInputStream;

    iget-object v12, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v12, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v12, v11

    .line 662
    .end local v10    # "is":Ljava/io/InputStream;
    .local v12, "is":Ljava/io/InputStream;
    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 663
    .end local p1    # "outWidth":I
    .local v11, "outWidth":I
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 664
    .end local p2    # "outHeight":I
    .local v2, "outHeight":I
    if-eqz p3, :cond_5

    .line 665
    move v10, v14

    move/from16 v16, v11

    move v11, v13

    .end local v11    # "outWidth":I
    .local v16, "outWidth":I
    move-object v9, v12

    move/from16 v12, v16

    .end local v12    # "is":Ljava/io/InputStream;
    .local v9, "is":Ljava/io/InputStream;
    move/from16 v17, v13

    move v13, v2

    .end local v13    # "inHeight":I
    .local v17, "inHeight":I
    move/from16 v18, v14

    move v14, v7

    .end local v14    # "inWidth":I
    .local v18, "inWidth":I
    move-object/from16 v19, v15

    move v15, v6

    invoke-static/range {v10 .. v15}, Landroid/app/WallpaperManager;->getMaxCropRect(IIIIFF)Landroid/graphics/RectF;

    move-result-object v0

    .line 672
    .local v0, "cropRectF":Landroid/graphics/RectF;
    move-object v14, v0

    move/from16 v10, v16

    goto :goto_1

    .line 668
    .end local v0    # "cropRectF":Landroid/graphics/RectF;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v16    # "outWidth":I
    .end local v17    # "inHeight":I
    .end local v18    # "inWidth":I
    .restart local v11    # "outWidth":I
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v13    # "inHeight":I
    .restart local v14    # "inWidth":I
    :cond_5
    move/from16 v16, v11

    move-object v9, v12

    move/from16 v17, v13

    move/from16 v18, v14

    move-object/from16 v19, v15

    .end local v11    # "outWidth":I
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v13    # "inHeight":I
    .end local v14    # "inWidth":I
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v16    # "outWidth":I
    .restart local v17    # "inHeight":I
    .restart local v18    # "inWidth":I
    move/from16 v10, v16

    sub-int v14, v18, v10

    .end local v16    # "outWidth":I
    .local v10, "outWidth":I
    int-to-float v0, v14

    mul-float/2addr v0, v7

    .line 669
    .local v0, "left":F
    int-to-float v11, v10

    add-float/2addr v11, v0

    .line 670
    .local v11, "right":F
    sub-int v13, v17, v2

    int-to-float v12, v13

    mul-float/2addr v12, v6

    .line 671
    .local v12, "top":F
    int-to-float v13, v2

    add-float/2addr v13, v12

    .line 672
    .local v13, "bottom":F
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14, v0, v12, v11, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .end local v0    # "left":F
    .end local v11    # "right":F
    .end local v12    # "top":F
    .end local v13    # "bottom":F
    .local v14, "cropRectF":Landroid/graphics/RectF;
    :goto_1
    move-object v11, v14

    .line 674
    .end local v14    # "cropRectF":Landroid/graphics/RectF;
    .local v11, "cropRectF":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v12, v0

    .line 675
    .local v12, "roundedTrueCrop":Landroid/graphics/Rect;
    invoke-virtual {v11, v12}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 677
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_11

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_6

    .line 678
    move/from16 v23, v2

    move/from16 v22, v6

    goto/16 :goto_6

    .line 683
    :cond_6
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v10

    .line 684
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/2addr v13, v2

    .line 683
    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 687
    .local v13, "scaleDownSampleSize":I
    move-object/from16 v14, v19

    .line 689
    .local v14, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :try_start_0
    invoke-static {v9, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v0

    .line 692
    goto :goto_2

    .line 690
    :catch_0
    move-exception v0

    move-object v15, v0

    .line 691
    .local v0, "e":Ljava/io/IOException;
    sget-object v15, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "cannot open region decoder for default wallpaper"

    invoke-static {v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    const/4 v0, 0x0

    .line 695
    .local v0, "crop":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_8

    .line 697
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 698
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v15, 0x1

    if-le v13, v15, :cond_7

    .line 699
    iput v13, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 701
    :cond_7
    invoke-virtual {v14, v12, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 702
    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 705
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_8
    if-nez v0, :cond_b

    .line 708
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v15, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v15, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v4, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 709
    .end local v9    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 710
    .local v9, "fullSize":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 711
    .local v15, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    if-le v13, v1, :cond_9

    .line 712
    iput v13, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 714
    :cond_9
    move-object/from16 v1, v19

    invoke-static {v4, v1, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 715
    if-eqz v9, :cond_a

    .line 716
    iget v1, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v20, v0

    iget v0, v12, Landroid/graphics/Rect;->top:I

    .line 717
    .end local v0    # "crop":Landroid/graphics/Bitmap;
    .local v20, "crop":Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 718
    move-object/from16 v21, v4

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 716
    .end local v4    # "is":Ljava/io/InputStream;
    .local v21, "is":Ljava/io/InputStream;
    invoke-static {v9, v1, v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v9    # "fullSize":Landroid/graphics/Bitmap;
    .end local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v20    # "crop":Landroid/graphics/Bitmap;
    .restart local v0    # "crop":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 722
    .end local v21    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_a
    move-object/from16 v20, v0

    move-object/from16 v21, v4

    .end local v0    # "crop":Landroid/graphics/Bitmap;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v20    # "crop":Landroid/graphics/Bitmap;
    .restart local v21    # "is":Ljava/io/InputStream;
    goto :goto_3

    .end local v20    # "crop":Landroid/graphics/Bitmap;
    .end local v21    # "is":Ljava/io/InputStream;
    .restart local v0    # "crop":Landroid/graphics/Bitmap;
    .local v9, "is":Ljava/io/InputStream;
    :cond_b
    move-object/from16 v20, v0

    move-object/from16 v21, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v21    # "is":Ljava/io/InputStream;
    :goto_3
    if-nez v0, :cond_c

    .line 723
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot decode default wallpaper"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/4 v1, 0x0

    return-object v1

    .line 728
    :cond_c
    if-lez v10, :cond_10

    if-lez v2, :cond_10

    .line 729
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v10, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, v2, :cond_d

    goto :goto_4

    .line 745
    :cond_d
    move/from16 v23, v2

    move/from16 v22, v6

    goto :goto_5

    .line 730
    :cond_e
    :goto_4
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 731
    .local v1, "m":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v15, 0x0

    invoke-direct {v3, v15, v15, v4, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 732
    .local v3, "cropRect":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v9, v10

    move/from16 v22, v6

    int-to-float v6, v2

    .end local v6    # "verticalAlignment":F
    .local v22, "verticalAlignment":F
    invoke-direct {v4, v15, v15, v9, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 733
    .local v4, "returnRect":Landroid/graphics/RectF;
    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v3, v4, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 734
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    .line 735
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v9

    float-to-int v9, v9

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 734
    invoke-static {v6, v9, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 736
    .local v6, "tmp":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_f

    .line 737
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 738
    .local v9, "c":Landroid/graphics/Canvas;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 739
    .local v15, "p":Landroid/graphics/Paint;
    move/from16 v23, v2

    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 740
    .end local v2    # "outHeight":I
    .local v23, "outHeight":I
    invoke-virtual {v9, v0, v1, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 741
    move-object v0, v6

    .end local v1    # "m":Landroid/graphics/Matrix;
    .end local v3    # "cropRect":Landroid/graphics/RectF;
    .end local v4    # "returnRect":Landroid/graphics/RectF;
    .end local v6    # "tmp":Landroid/graphics/Bitmap;
    .end local v9    # "c":Landroid/graphics/Canvas;
    .end local v15    # "p":Landroid/graphics/Paint;
    goto :goto_5

    .line 745
    .end local v23    # "outHeight":I
    .restart local v2    # "outHeight":I
    :cond_f
    move/from16 v23, v2

    .end local v2    # "outHeight":I
    .restart local v23    # "outHeight":I
    goto :goto_5

    .end local v22    # "verticalAlignment":F
    .end local v23    # "outHeight":I
    .restart local v2    # "outHeight":I
    .local v6, "verticalAlignment":F
    :cond_10
    move/from16 v23, v2

    move/from16 v22, v6

    .end local v2    # "outHeight":I
    .end local v6    # "verticalAlignment":F
    .restart local v22    # "verticalAlignment":F
    .restart local v23    # "outHeight":I
    :goto_5
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    .line 678
    .end local v0    # "crop":Landroid/graphics/Bitmap;
    .end local v13    # "scaleDownSampleSize":I
    .end local v14    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v21    # "is":Ljava/io/InputStream;
    .end local v22    # "verticalAlignment":F
    .end local v23    # "outHeight":I
    .restart local v2    # "outHeight":I
    .restart local v6    # "verticalAlignment":F
    .local v9, "is":Ljava/io/InputStream;
    :cond_11
    move/from16 v23, v2

    move/from16 v22, v6

    .end local v2    # "outHeight":I
    .end local v6    # "verticalAlignment":F
    .restart local v22    # "verticalAlignment":F
    .restart local v23    # "outHeight":I
    :goto_6
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "crop has bad values for full size image"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v1, 0x0

    return-object v1

    .line 651
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v12    # "roundedTrueCrop":Landroid/graphics/Rect;
    .end local v17    # "inHeight":I
    .end local v18    # "inWidth":I
    .end local v22    # "verticalAlignment":F
    .end local v23    # "outHeight":I
    .restart local v6    # "verticalAlignment":F
    .local v10, "is":Ljava/io/InputStream;
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p1    # "outWidth":I
    .restart local p2    # "outHeight":I
    :cond_12
    move/from16 v22, v6

    move-object v1, v15

    .end local v6    # "verticalAlignment":F
    .restart local v22    # "verticalAlignment":F
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "default wallpaper dimensions are 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-object v1

    .line 637
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v22    # "verticalAlignment":F
    .restart local v6    # "verticalAlignment":F
    :cond_13
    move/from16 v22, v6

    move-object v1, v15

    .end local v6    # "verticalAlignment":F
    .restart local v22    # "verticalAlignment":F
    :goto_7
    invoke-static {v10, v1, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 638
    .local v1, "fullSize":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3

    .line 616
    .end local v1    # "fullSize":Landroid/graphics/Bitmap;
    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v7    # "horizontalAlignment":F
    .end local v8    # "wpStream":Ljava/io/InputStream;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v22    # "verticalAlignment":F
    .restart local p4    # "horizontalAlignment":F
    .restart local p5    # "verticalAlignment":F
    :cond_14
    move/from16 v7, p4

    move/from16 v8, p5

    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Landroid/os/DeadSystemException;

    invoke-direct {v3}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 8
    .param p1, "imageUri"    # Landroid/net/Uri;

    .line 1075
    if-eqz p1, :cond_3

    .line 1079
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1084
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1085
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1087
    .local v1, "cropAndSetWallpaperIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1090
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1091
    .local v2, "homeIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1093
    .local v3, "resolvedHome":Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1094
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 1098
    .local v5, "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1099
    return-object v1

    .line 1104
    .end local v5    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const v6, 0x1040166

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1106
    .local v5, "cropperPackage":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1107
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1109
    .local v4, "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1110
    return-object v1

    .line 1114
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Cannot use passed URI to set wallpaper; check that the type returned by ContentProvider matches image/*"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1080
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "cropAndSetWallpaperIntent":Landroid/content/Intent;
    .end local v2    # "homeIntent":Landroid/content/Intent;
    .end local v3    # "resolvedHome":Landroid/content/pm/ResolveInfo;
    .end local v4    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "cropperPackage":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image URI must be of the content scheme type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1076
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image URI must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 2021
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    if-eqz v0, :cond_0

    .line 2022
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    invoke-static {}, Landroid/app/NubiaWallpaperManager;->getDefaultWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2024
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDesiredMinimumHeight()I
    .locals 2

    .line 1532
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1537
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->getHeightHint()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1538
    :catch_0
    move-exception v0

    .line 1539
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1533
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getDesiredMinimumWidth()I
    .locals 2

    .line 1506
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1511
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1512
    :catch_0
    move-exception v0

    .line 1513
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1507
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 549
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 550
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 551
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 552
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 553
    return-object v1

    .line 555
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 804
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 805
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 806
    new-instance v2, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v2, v0, v1}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    return-object v2

    .line 808
    :cond_0
    return-object v1
.end method

.method public getIWallpaperManager()Landroid/app/IWallpaperManager;
    .locals 1

    .line 530
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public getLockScreenBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 2168
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    if-eqz v0, :cond_0

    .line 2169
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    invoke-virtual {v0}, Landroid/app/NubiaWallpaperManager;->getLockScreenBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2171
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWallpaperColors(I)Landroid/app/WallpaperColors;
    .locals 1
    .param p1, "which"    # I

    .line 940
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(II)Landroid/app/WallpaperColors;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperColors(II)Landroid/app/WallpaperColors;
    .locals 1
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 952
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0, p1, p2}, Landroid/app/WallpaperManager$Globals;->getWallpaperColors(II)Landroid/app/WallpaperColors;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "which"    # I

    .line 876
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 971
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 972
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must request exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 975
    :cond_1
    :goto_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 980
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 981
    .local v5, "outParams":Landroid/os/Bundle;
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Landroid/app/IWallpaperManager;->getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 985
    .end local v5    # "outParams":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 986
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1b

    if-ge v1, v2, :cond_2

    .line 987
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "No permission to access wallpaper, suppressing exception to avoid crashing legacy app."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const/4 v1, 0x0

    return-object v1

    .line 991
    :cond_2
    throw v0

    .line 983
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 984
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 976
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getWallpaperId(I)I
    .locals 1
    .param p1, "which"    # I

    .line 1040
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperIdForUser(II)I

    move-result v0

    return v0
.end method

.method public getWallpaperIdForUser(II)I
    .locals 2
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 1050
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1054
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->getWallpaperIdForUser(II)I

    move-result v0

    return v0

    .line 1051
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 2

    .line 1014
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1018
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v0

    return-object v0

    .line 1015
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWallpaperInputStream()Ljava/io/InputStream;
    .locals 1

    .line 2185
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    if-eqz v0, :cond_0

    .line 2186
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    invoke-virtual {v0}, Landroid/app/NubiaWallpaperManager;->getWallpaperStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 2188
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasResourceWallpaper(I)Z
    .locals 3
    .param p1, "resid"    # I

    .line 1478
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1483
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1484
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "res:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1485
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IWallpaperManager;->hasNamedWallpaper(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1486
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1487
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1479
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isSetWallpaperAllowed()Z
    .locals 2

    .line 1831
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1836
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1837
    :catch_0
    move-exception v0

    .line 1838
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1832
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isWallpaperBackupEligible(I)Z
    .locals 4
    .param p1, "which"    # I

    .line 2034
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2039
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->isWallpaperBackupEligible(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2040
    :catch_0
    move-exception v0

    .line 2041
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception querying wallpaper backup eligibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0

    .line 2035
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isWallpaperSupported()Z
    .locals 2

    .line 1811
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1816
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1817
    :catch_0
    move-exception v0

    .line 1818
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1812
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public peekDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 780
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 781
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 782
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 783
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 784
    return-object v1

    .line 786
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 820
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 821
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 822
    new-instance v2, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v2, v0, v1}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    return-object v2

    .line 824
    :cond_0
    return-object v1
.end method

.method public removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;

    .line 908
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;I)V

    .line 909
    return-void
.end method

.method public removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;I)V
    .locals 1
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "userId"    # I

    .line 919
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0, p1, p2}, Landroid/app/WallpaperManager$Globals;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;I)V

    .line 920
    return-void
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 1797
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1802
    nop

    .line 1803
    return-void

    .line 1800
    :catch_0
    move-exception v0

    .line 1801
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)I
    .locals 1
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1248
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I

    move-result v0

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I
    .locals 7
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1275
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1276
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 1275
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I

    move-result v0

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I
    .locals 14
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    .line 1288
    move-object/from16 v11, p2

    invoke-direct {v1, v11}, Landroid/app/WallpaperManager;->validateRect(Landroid/graphics/Rect;)V

    .line 1289
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1293
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v12, v0

    .line 1294
    .local v12, "result":Landroid/os/Bundle;
    new-instance v0, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v0, v1}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    move-object v13, v0

    .line 1296
    .local v13, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1297
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1296
    move-object v5, v11

    move/from16 v6, p3

    move-object v7, v12

    move/from16 v8, p4

    move-object v9, v13

    move/from16 v10, p5

    invoke-interface/range {v2 .. v10}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    .line 1299
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    .line 1300
    const/4 v0, 0x0

    move-object v3, v0

    .line 1302
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v3, v0

    .line 1303
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v4, 0x5a

    move-object v5, p1

    :try_start_2
    invoke-virtual {v5, v0, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1304
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1305
    invoke-virtual {v13}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V

    .line 1307
    iget-object v0, v1, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, v1, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v6, p4

    :try_start_3
    invoke-virtual {v0, v4, v6}, Landroid/app/NubiaWallpaperManager;->doBlurAndSaveWallpaper(Landroid/graphics/Bitmap;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1312
    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    move/from16 v6, p4

    :goto_0
    :try_start_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1313
    goto :goto_3

    .line 1312
    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v5, p1

    :goto_1
    move/from16 v6, p4

    :goto_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1315
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1317
    :cond_1
    move-object v5, p1

    move/from16 v6, p4

    .line 1318
    :goto_3
    const-string v0, "android.service.wallpaper.extra.ID"

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 1315
    :catch_1
    move-exception v0

    move-object v5, p1

    move/from16 v6, p4

    .line 1316
    .local v0, "e":Landroid/os/RemoteException;
    :goto_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1290
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v12    # "result":Landroid/os/Bundle;
    .end local v13    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :cond_2
    move-object v5, p1

    move/from16 v6, p4

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperService not running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1214
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)I

    .line 1215
    return-void
.end method

.method public setDisplayOffset(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1643
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowSession;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1648
    nop

    .line 1649
    return-void

    .line 1646
    :catch_0
    move-exception v0

    .line 1647
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 1619
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1623
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 1627
    nop

    .line 1628
    return-void

    .line 1620
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1625
    :catch_0
    move-exception v0

    .line 1626
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setLockScreenBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2132
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    if-eqz v0, :cond_0

    .line 2133
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    invoke-virtual {v0, p1}, Landroid/app/NubiaWallpaperManager;->setLockScreenBitmap(Landroid/graphics/Bitmap;)V

    .line 2135
    :cond_0
    return-void
.end method

.method public setLockScreenResource(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2141
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    if-eqz v0, :cond_0

    .line 2142
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    invoke-virtual {v0, p1}, Landroid/app/NubiaWallpaperManager;->setLockScreenResource(I)V

    .line 2144
    :cond_0
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

    .line 2150
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    if-eqz v0, :cond_0

    .line 2151
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    invoke-virtual {v0, p1}, Landroid/app/NubiaWallpaperManager;->setLockScreenStream(Ljava/io/InputStream;)V

    .line 2153
    :cond_0
    return-void
.end method

.method public setLockScreenStreamWithNoBroadcast(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2159
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    if-eqz v0, :cond_0

    .line 2160
    iget-object v0, p0, Landroid/app/WallpaperManager;->mNubiaWM:Landroid/app/NubiaWallpaperManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/NubiaWallpaperManager;->setLockScreenStream(Ljava/io/InputStream;Z)V

    .line 2162
    :cond_0
    return-void
.end method

.method public setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .locals 2
    .param p1, "callback"    # Landroid/app/IWallpaperManagerCallback;

    .line 2007
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2013
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2014
    :catch_0
    move-exception v0

    .line 2015
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2008
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setResource(II)I
    .locals 12
    .param p1, "resid"    # I
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1154
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1159
    .local v0, "result":Landroid/os/Bundle;
    new-instance v1, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v1, p0}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    move-object v10, v1

    .line 1161
    .local v10, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v11, v1

    .line 1163
    .local v11, "resources":Landroid/content/res/Resources;
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    invoke-virtual {v11, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1165
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1166
    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v9

    .line 1163
    move-object v6, v0

    move v7, p2

    move-object v8, v10

    invoke-interface/range {v1 .. v9}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1168
    const/4 v3, 0x0

    .line 1169
    .local v3, "fos":Ljava/io/FileOutputStream;
    move v4, v2

    .line 1171
    .local v4, "ok":Z
    :try_start_1
    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v5, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v3, v5

    .line 1176
    invoke-virtual {v11, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v5, v3, p2}, Landroid/app/WallpaperManager;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;I)V

    .line 1180
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1181
    invoke-virtual {v10}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1185
    :try_start_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1186
    goto :goto_0

    .line 1185
    :catchall_0
    move-exception v2

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1190
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "ok":Z
    .end local v11    # "resources":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    nop

    .line 1191
    const-string v1, "android.service.wallpaper.extra.ID"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1188
    :catch_0
    move-exception v1

    .line 1189
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1155
    .end local v0    # "result":Landroid/os/Bundle;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :cond_1
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setResource(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1134
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setResource(II)I

    .line 1135
    return-void
.end method

.method public setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I
    .locals 1
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1410
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    move-result v0

    return v0
.end method

.method public setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    .locals 11
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1438
    invoke-direct {p0, p2}, Landroid/app/WallpaperManager;->validateRect(Landroid/graphics/Rect;)V

    .line 1439
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1443
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1444
    .local v0, "result":Landroid/os/Bundle;
    new-instance v1, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v1, p0}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    move-object v10, v1

    .line 1446
    .local v10, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1447
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1448
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v9

    .line 1446
    move-object v4, p2

    move v5, p3

    move-object v6, v0

    move v7, p4

    move-object v8, v10

    invoke-interface/range {v1 .. v9}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    .line 1450
    const/4 v2, 0x0

    .line 1452
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v2, v3

    .line 1457
    invoke-direct {p0, p1, v2, p4}, Landroid/app/WallpaperManager;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;I)V

    .line 1459
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1460
    invoke-virtual {v10}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1462
    :try_start_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1463
    goto :goto_0

    .line 1462
    :catchall_0
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1467
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    nop

    .line 1469
    const-string v1, "android.service.wallpaper.extra.ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1465
    :catch_0
    move-exception v1

    .line 1466
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1440
    .end local v0    # "result":Landroid/os/Bundle;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :cond_1
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setStream(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1350
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I

    .line 1351
    return-void
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1692
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1706
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1711
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/IWallpaperManager;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1713
    const/4 v0, 0x1

    return v0

    .line 1714
    :catch_0
    move-exception v0

    .line 1715
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1707
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "notify"    # Z

    .line 1729
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1730
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperService not running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    return v1

    .line 1734
    :cond_0
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->setWallpaperComponentNotify(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1735
    const/4 v0, 0x1

    return v0

    .line 1736
    :catch_0
    move-exception v0

    .line 1739
    return v1
.end method

.method public setWallpaperOffsetSteps(FF)V
    .locals 0
    .param p1, "xStep"    # F
    .param p2, "yStep"    # F

    .line 1776
    iput p1, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 1777
    iput p2, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 1778
    return-void
.end method

.method public setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "xOffset"    # F
    .param p3, "yOffset"    # F

    .line 1759
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iget v4, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    iget v5, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1764
    nop

    .line 1765
    return-void

    .line 1762
    :catch_0
    move-exception v0

    .line 1763
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public suggestDesiredDimensions(II)V
    .locals 6
    .param p1, "minimumWidth"    # I
    .param p2, "minimumHeight"    # I

    .line 1574
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "sys.max_texture_size"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1577
    .local v0, "maximumTextureSize":I
    goto :goto_0

    .line 1600
    .end local v0    # "maximumTextureSize":I
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1575
    :catch_1
    move-exception v1

    .line 1576
    .local v1, "e":Ljava/lang/Exception;
    nop

    .line 1579
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "maximumTextureSize":I
    :goto_0
    if-lez v0, :cond_2

    .line 1580
    if-gt p1, v0, :cond_0

    if-le p2, v0, :cond_2

    .line 1582
    :cond_0
    int-to-float v1, p2

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 1583
    .local v1, "aspect":F
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-le p1, p2, :cond_1

    .line 1584
    move p1, v0

    .line 1585
    int-to-float v4, p1

    mul-float/2addr v4, v1

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-int p2, v4

    goto :goto_1

    .line 1587
    :cond_1
    move p2, v0

    .line 1588
    int-to-float v4, p2

    div-float/2addr v4, v1

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-int p1, v4

    .line 1593
    .end local v1    # "aspect":F
    :cond_2
    :goto_1
    :try_start_1
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1597
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1598
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1597
    invoke-interface {v1, p1, p2, v2}, Landroid/app/IWallpaperManager;->setDimensionHints(IILjava/lang/String;)V

    .line 1602
    .end local v0    # "maximumTextureSize":I
    nop

    .line 1603
    return-void

    .line 1594
    .restart local v0    # "maximumTextureSize":I
    :cond_3
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1600
    .end local v0    # "maximumTextureSize":I
    :goto_2
    nop

    .line 1601
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
