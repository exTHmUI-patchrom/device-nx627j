.class public Lnubia/content/res/ThemeResources;
.super Ljava/lang/Object;
.source "ThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/content/res/ThemeResources$MetaData;
    }
.end annotation


# static fields
.field public static final ADVANCE_LOCKSCREEN_NAME:Ljava/lang/String; = "advance"

.field static DBG:Z = false

.field public static final FRAMEWORK_NAME:Ljava/lang/String; = "framework-res"

.field public static final FRAMEWORK_PACKAGE:Ljava/lang/String; = "android"

.field public static final ICONS_NAME:Ljava/lang/String; = "icons"

.field public static final LANGUAGE_THEME_PATH:Ljava/lang/String; = "/data/system/language/"

.field public static final LOCKSCREEN_NAME:Ljava/lang/String; = "lockscreen"

.field public static final LOCKSCREEN_WALLPAPER_NAME:Ljava/lang/String; = "lock_wallpaper"

.field public static final NUBIA_NAME:Ljava/lang/String; = "framework-nubia-res"

.field public static final NUBIA_PACKAGE:Ljava/lang/String; = "nubia"

.field public static final SYSTEMUI_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final SYSTEM_LANGUAGE_THEME_PATH:Ljava/lang/String; = "/system/language/"

.field public static final SYSTEM_THEME_PATH:Ljava/lang/String; = "/system/media/theme/default/"

.field public static final THEME_PATH:Ljava/lang/String; = "/data/theme/current/"

.field public static final THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

.field public static final WALLPAPER_NAME:Ljava/lang/String; = "wallpaper"

.field public static final sAppliedLockstyleConfigPath:Ljava/lang/String;

.field private static sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

.field private static sLockWallpaperModifiedTime:J

.field private static sSystem:Lnubia/content/res/ThemeResourcesSystem;


# instance fields
.field protected mHasValue:Z

.field protected mHasWrapped:Z

.field protected mPackageZipFile:Lnubia/content/res/ThemeZipFile;

.field protected mResources:Landroid/content/res/Resources;

.field protected mSupportWrapper:Z

.field protected mWrapped:Lnubia/content/res/ThemeResources;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lnubia/content/res/ThemeResources;->DBG:Z

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/theme/current/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "config.config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnubia/content/res/ThemeResources;->sAppliedLockstyleConfigPath:Ljava/lang/String;

    .line 54
    const/4 v1, 0x2

    new-array v1, v1, [Lnubia/content/res/ThemeResources$MetaData;

    sput-object v1, Lnubia/content/res/ThemeResources;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    .line 55
    sget-object v1, Lnubia/content/res/ThemeResources;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    new-instance v2, Lnubia/content/res/ThemeResources$MetaData;

    const-string v3, "/system/media/theme/default/"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4, v4}, Lnubia/content/res/ThemeResources$MetaData;-><init>(Ljava/lang/String;ZZZ)V

    aput-object v2, v1, v0

    .line 56
    sget-object v0, Lnubia/content/res/ThemeResources;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    new-instance v1, Lnubia/content/res/ThemeResources$MetaData;

    const-string v2, "/data/theme/current/"

    invoke-direct {v1, v2, v4, v4, v4}, Lnubia/content/res/ThemeResources$MetaData;-><init>(Ljava/lang/String;ZZZ)V

    aput-object v1, v0, v4

    .line 57
    return-void
.end method

.method protected constructor <init>(Lnubia/content/res/ThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;)V
    .locals 1
    .param p1, "wrappedResources"    # Lnubia/content/res/ThemeResources;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "metaData"    # Lnubia/content/res/ThemeResources$MetaData;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    .line 72
    iput-object p2, p0, Lnubia/content/res/ThemeResources;->mResources:Landroid/content/res/Resources;

    .line 73
    invoke-static {p4, p3, p2}, Lnubia/content/res/ThemeZipFile;->getThemeZipFile(Lnubia/content/res/ThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)Lnubia/content/res/ThemeZipFile;

    move-result-object v0

    iput-object v0, p0, Lnubia/content/res/ThemeResources;->mPackageZipFile:Lnubia/content/res/ThemeZipFile;

    .line 76
    const-string v0, "icons"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lnubia/content/res/ThemeResources;->mSupportWrapper:Z

    .line 77
    invoke-virtual {p0}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    .line 78
    return-void
.end method

.method public static final clearLockWallpaperCache()V
    .locals 2

    .line 85
    const-wide/16 v0, 0x0

    sput-wide v0, Lnubia/content/res/ThemeResources;->sLockWallpaperModifiedTime:J

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lnubia/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    .line 87
    return-void
.end method

.method public static final getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    sget-object v1, Lnubia/content/res/ThemeResources;->sSystem:Lnubia/content/res/ThemeResourcesSystem;

    invoke-virtual {v1}, Lnubia/content/res/ThemeResourcesSystem;->getLockscreenWallpaper()Ljava/io/File;

    move-result-object v1

    .line 99
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    sget-wide v2, Lnubia/content/res/ThemeResources;->sLockWallpaperModifiedTime:J

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sput-wide v2, Lnubia/content/res/ThemeResources;->sLockWallpaperModifiedTime:J

    .line 103
    const/4 v2, 0x0

    sput-object v2, Lnubia/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    .line 105
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 107
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 108
    .local v3, "width":I
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 109
    .local v4, "height":I
    if-le v3, v4, :cond_0

    .line 110
    const-string v5, "LockWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong display metrics for width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    move v5, v3

    .line 114
    .local v5, "temp":I
    move v3, v4

    .line 115
    move v4, v5

    .line 117
    .end local v5    # "temp":I
    :cond_0
    new-instance v5, Lnubia/util/InputStreamLoader;

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lnubia/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-static {v5, v3, v4}, Lnubia/util/ImageUtils;->getBitmap(Lnubia/util/InputStreamLoader;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 119
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object v6, Lnubia/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 123
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 121
    :catch_1
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 125
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :goto_0
    nop

    .line 127
    :cond_1
    :goto_1
    sget-object v0, Lnubia/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    .line 129
    :cond_2
    return-object v0
.end method

.method public static getSystem(Landroid/content/res/Resources;)Lnubia/content/res/ThemeResources;
    .locals 1
    .param p0, "originalResources"    # Landroid/content/res/Resources;

    .line 139
    sget-object v0, Lnubia/content/res/ThemeResources;->sSystem:Lnubia/content/res/ThemeResourcesSystem;

    if-nez v0, :cond_0

    .line 140
    nop

    .line 141
    invoke-static {p0}, Lnubia/content/res/ThemeResourcesSystem;->getTopLevelThemeResources(Landroid/content/res/Resources;)Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v0

    sput-object v0, Lnubia/content/res/ThemeResources;->sSystem:Lnubia/content/res/ThemeResourcesSystem;

    .line 142
    :cond_0
    sget-object v0, Lnubia/content/res/ThemeResources;->sSystem:Lnubia/content/res/ThemeResourcesSystem;

    return-object v0
.end method

.method public static getSystem()Lnubia/content/res/ThemeResourcesSystem;
    .locals 1

    .line 151
    sget-object v0, Lnubia/content/res/ThemeResources;->sSystem:Lnubia/content/res/ThemeResourcesSystem;

    return-object v0
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResources;
    .locals 5
    .param p0, "originalResources"    # Landroid/content/res/Resources;
    .param p1, "themeFileName"    # Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "finalThemeResources":Lnubia/content/res/ThemeResources;
    const/4 v1, 0x0

    .line 167
    .local v1, "i":I
    new-instance v2, Lnubia/content/res/ThemeResources;

    sget-object v3, Lnubia/content/res/ThemeResources;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-direct {v2, v4, p0, p1, v3}, Lnubia/content/res/ThemeResources;-><init>(Lnubia/content/res/ThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;)V

    move-object v0, v2

    .line 170
    return-object v0
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 2

    .line 179
    iget-object v0, p0, Lnubia/content/res/ThemeResources;->mPackageZipFile:Lnubia/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lnubia/content/res/ThemeZipFile;->checkUpdate()Z

    move-result v0

    .line 180
    .local v0, "result":Z
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lnubia/content/res/ThemeResources;->mSupportWrapper:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mPackageZipFile:Lnubia/content/res/ThemeZipFile;

    .line 181
    invoke-virtual {v1}, Lnubia/content/res/ThemeZipFile;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lnubia/content/res/ThemeResources;->mHasWrapped:Z

    .line 182
    iget-boolean v1, p0, Lnubia/content/res/ThemeResources;->mHasWrapped:Z

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    move-result v1

    or-int/2addr v0, v1

    .line 184
    :cond_2
    invoke-virtual {p0}, Lnubia/content/res/ThemeResources;->hasValuesInner()Z

    move-result v1

    iput-boolean v1, p0, Lnubia/content/res/ThemeResources;->mHasValue:Z

    .line 185
    return v0
.end method

.method public containsEntry(Ljava/lang/String;)Z
    .locals 2
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lnubia/content/res/ThemeResources;->mPackageZipFile:Lnubia/content/res/ThemeZipFile;

    invoke-virtual {v0, p1}, Lnubia/content/res/ThemeZipFile;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    .line 198
    .local v0, "contains":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mPackageZipFile:Lnubia/content/res/ThemeZipFile;

    invoke-virtual {v1}, Lnubia/content/res/ThemeZipFile;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    .line 200
    :cond_0
    return v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I

    .line 211
    invoke-virtual {p0, p1}, Lnubia/content/res/ThemeResources;->getThemeCharSequenceInner(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeCharSequenceInner(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .line 223
    iget-object v0, p0, Lnubia/content/res/ThemeResources;->mPackageZipFile:Lnubia/content/res/ThemeZipFile;

    invoke-virtual {v0, p1}, Lnubia/content/res/ThemeZipFile;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 224
    .local v0, "charSequence":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lnubia/content/res/ThemeResources;->mHasWrapped:Z

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeCharSequenceInner(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 226
    :cond_0
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "cookieType"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .line 240
    invoke-virtual {p0, p2}, Lnubia/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .line 251
    invoke-virtual {p0, p1}, Lnubia/content/res/ThemeResources;->getThemeFileStreamInner(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeFileStreamInner(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lnubia/content/res/ThemeResources;->mPackageZipFile:Lnubia/content/res/ThemeZipFile;

    .line 264
    invoke-virtual {v0, p1}, Lnubia/content/res/ThemeZipFile;->getInputStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 265
    .local v0, "fileInfo":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lnubia/content/res/ThemeResources;->mHasWrapped:Z

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeFileStreamInner(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 267
    :cond_0
    return-object v0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "id"    # I

    .line 278
    invoke-virtual {p0, p1}, Lnubia/content/res/ThemeResources;->getThemeIntInner(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeIntInner(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .line 289
    iget-object v0, p0, Lnubia/content/res/ThemeResources;->mPackageZipFile:Lnubia/content/res/ThemeZipFile;

    invoke-virtual {v0, p1}, Lnubia/content/res/ThemeZipFile;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 290
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lnubia/content/res/ThemeResources;->mHasWrapped:Z

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeIntInner(I)Ljava/lang/Integer;

    move-result-object v0

    .line 292
    :cond_0
    return-object v0
.end method

.method public hasValues()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lnubia/content/res/ThemeResources;->mHasValue:Z

    return v0
.end method

.method protected hasValuesInner()Z
    .locals 1

    .line 310
    iget-object v0, p0, Lnubia/content/res/ThemeResources;->mPackageZipFile:Lnubia/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lnubia/content/res/ThemeZipFile;->hasValues()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnubia/content/res/ThemeResources;->mHasWrapped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    .line 311
    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->hasValuesInner()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 310
    :goto_1
    return v0
.end method
