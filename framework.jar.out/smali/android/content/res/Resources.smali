.class public Landroid/content/res/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Resources$ThemeKey;,
        Landroid/content/res/Resources$Theme;,
        Landroid/content/res/Resources$NotFoundException;
    }
.end annotation


# static fields
.field private static final MIN_THEME_REFS_FLUSH_SIZE:I = 0x20

.field static final TAG:Ljava/lang/String; = "Resources"

.field static mSystem:Landroid/content/res/Resources;

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field final mClassLoader:Ljava/lang/ClassLoader;

.field private mDrawableInflater:Landroid/graphics/drawable/DrawableInflater;

.field private mResourcesImpl:Landroid/content/res/ResourcesImpl;

.field private final mThemeRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources$Theme;",
            ">;>;"
        }
    .end annotation
.end field

.field private mThemeRefsNextFlushSize:I

.field private mTmpValue:Landroid/util/TypedValue;

.field private final mTmpValueLock:Ljava/lang/Object;

.field final mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/content/res/TypedArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    .line 108
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 280
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 281
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 283
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 284
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 286
    new-instance v2, Landroid/content/res/ResourcesImpl;

    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Landroid/view/DisplayAdjustments;

    invoke-direct {v4}, Landroid/view/DisplayAdjustments;-><init>()V

    invoke-direct {v2, v3, v0, v1, v4}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    iput-object v2, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 289
    iget-object v2, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v2, p0}, Landroid/content/res/ResourcesImpl;->setResources(Landroid/content/res/Resources;)V

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 251
    new-instance v0, Landroid/content/res/ResourcesImpl;

    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 253
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p0}, Landroid/content/res/ResourcesImpl;->setResources(Landroid/content/res/Resources;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "classLoader"    # Ljava/lang/ClassLoader;

    .line 212
    invoke-direct {p0, p4}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 213
    new-instance v0, Landroid/content/res/ResourcesImpl;

    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 214
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p0}, Landroid/content/res/ResourcesImpl;->setResources(Landroid/content/res/Resources;)V

    .line 215
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValueLock:Ljava/lang/Object;

    .line 122
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    .line 139
    const/16 v0, 0x20

    iput v0, p0, Landroid/content/res/Resources;->mThemeRefsNextFlushSize:I

    .line 266
    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/content/res/Resources;->mClassLoader:Ljava/lang/ClassLoader;

    .line 267
    return-void
.end method

.method public static getSystem()Landroid/content/res/Resources;
    .locals 3

    .line 188
    sget-object v0, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    sget-object v1, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 190
    .local v1, "ret":Landroid/content/res/Resources;
    if-nez v1, :cond_0

    .line 196
    invoke-static {}, Landroid/content/res/NubiaClassFactory;->newResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v1, v2

    .line 201
    sput-object v1, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 203
    :cond_0
    monitor-exit v0

    return-object v1

    .line 204
    .end local v1    # "ret":Landroid/content/res/Resources;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$newTheme$0(Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .param p0, "ref"    # Ljava/lang/ref/WeakReference;

    .line 1846
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    .line 2262
    if-nez p1, :cond_0

    .line 2263
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0

    .line 2265
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private obtainTempTypedValue()Landroid/util/TypedValue;
    .locals 3

    .line 1300
    const/4 v0, 0x0

    .line 1301
    .local v0, "tmpValue":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1302
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-eqz v2, :cond_0

    .line 1303
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    move-object v0, v2

    .line 1304
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1306
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    if-nez v0, :cond_1

    .line 1308
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    return-object v1

    .line 1310
    :cond_1
    return-object v0

    .line 1306
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private releaseTempTypedValue(Landroid/util/TypedValue;)V
    .locals 2
    .param p1, "value"    # Landroid/util/TypedValue;

    .line 1320
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1321
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v1, :cond_0

    .line 1322
    iput-object p1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1324
    :cond_0
    monitor-exit v0

    .line 1325
    return-void

    .line 1324
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static resourceHasPackage(I)Z
    .locals 1
    .param p0, "resid"    # I

    .line 1998
    ushr-int/lit8 v0, p0, 0x18

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static selectDefaultTheme(II)I
    .locals 6
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I

    .line 156
    const v2, 0x1030005

    const v3, 0x103006b

    const v4, 0x1030128

    const v5, 0x103013f

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    move-result v0

    return v0
.end method

.method public static selectSystemTheme(IIIIII)I
    .locals 1
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I
    .param p2, "orig"    # I
    .param p3, "holo"    # I
    .param p4, "dark"    # I
    .param p5, "deviceDefault"    # I

    .line 166
    if-eqz p0, :cond_0

    .line 167
    return p0

    .line 169
    :cond_0
    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    .line 170
    return p2

    .line 172
    :cond_1
    const/16 v0, 0xe

    if-ge p1, v0, :cond_2

    .line 173
    return p3

    .line 175
    :cond_2
    const/16 v0, 0x18

    if-ge p1, v0, :cond_3

    .line 176
    return p4

    .line 178
    :cond_3
    return p5
.end method

.method public static updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 1909
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 1910
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1914
    :cond_0
    return-void
.end method


# virtual methods
.method public calcConfigChanges(Landroid/content/res/Configuration;)I
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2251
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->calcConfigChanges(Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method

.method public final finishPreloading()V
    .locals 1

    .line 2193
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->finishPreloading()V

    .line 2194
    return-void
.end method

.method public final flushLayoutCache()V
    .locals 1

    .line 2176
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 2177
    return-void
.end method

.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1242
    const-string v0, "anim"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v0

    return-object v0
.end method

.method public final getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 2167
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1128
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1130
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1131
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_1

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_1

    .line 1133
    iget v1, v0, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1138
    :goto_0
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1133
    return v2

    .line 1135
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/util/TypedValue;->type:I

    .line 1136
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1138
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    throw v1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 342
    iget-object v0, p0, Landroid/content/res/Resources;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getColor(I)I
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 999
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public getColor(ILandroid/content/res/Resources$Theme;)I
    .locals 5
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1020
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1022
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 1023
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1024
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    .line 1026
    iget v2, v0, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1026
    return v2

    .line 1027
    :cond_0
    :try_start_1
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1032
    invoke-virtual {v1, p0, v0, p1, p2}, Landroid/content/res/ResourcesImpl;->loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1033
    .local v2, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1035
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1033
    return v3

    .line 1028
    .end local v2    # "csl":Landroid/content/res/ColorStateList;
    :cond_1
    :try_start_2
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/TypedValue;->type:I

    .line 1029
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1035
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    throw v1
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1059
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1060
    .local v0, "csl":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    const-string v1, "Resources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorStateList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has unresolved theme attributes! Consider using Resources.getColorStateList(int, Theme) or Context.getColorStateList(int)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1066
    :cond_0
    return-object v0
.end method

.method public getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 3
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1090
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1092
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 1093
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1094
    invoke-virtual {v1, p0, v0, p1, p2}, Landroid/content/res/ResourcesImpl;->loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1094
    return-object v2

    .line 1096
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    throw v1
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .line 1954
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 1938
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getDimension(I)F
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 701
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 703
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 704
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 705
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 706
    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 706
    return v2

    .line 708
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/TypedValue;->type:I

    .line 709
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 711
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    throw v1
.end method

.method public getDimensionPixelOffset(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 735
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 737
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 738
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 739
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 740
    iget v2, v0, Landroid/util/TypedValue;->data:I

    .line 741
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 740
    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 740
    return v2

    .line 743
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/TypedValue;->type:I

    .line 744
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 746
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    throw v1
.end method

.method public getDimensionPixelSize(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 771
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 773
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 774
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 775
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 776
    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 776
    return v2

    .line 778
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/TypedValue;->type:I

    .line 779
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    throw v1
.end method

.method public getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .locals 1

    .line 1928
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 1923
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 849
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 850
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    const-string v1, "Resources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drawable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has unresolved theme attributes! Consider using Resources.getDrawable(int, Theme) or Context.getDrawable(int)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 855
    :cond_0
    return-object v0
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 874
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "density"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 924
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 946
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 948
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    move-object v7, v1

    .line 949
    .local v7, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v1, 0x1

    invoke-virtual {v7, p1, p2, v0, v1}, Landroid/content/res/ResourcesImpl;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 950
    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/res/ResourcesImpl;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 950
    return-object v1

    .line 952
    .end local v7    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    throw v1
.end method

.method public final getDrawableInflater()Landroid/graphics/drawable/DrawableInflater;
    .locals 2

    .line 350
    iget-object v0, p0, Landroid/content/res/Resources;->mDrawableInflater:Landroid/graphics/drawable/DrawableInflater;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Landroid/graphics/drawable/DrawableInflater;

    iget-object v1, p0, Landroid/content/res/Resources;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/DrawableInflater;-><init>(Landroid/content/res/Resources;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableInflater:Landroid/graphics/drawable/DrawableInflater;

    .line 353
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources;->mDrawableInflater:Landroid/graphics/drawable/DrawableInflater;

    return-object v0
.end method

.method public getFloat(I)F
    .locals 4
    .param p1, "id"    # I

    .line 1182
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1184
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1185
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1186
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1191
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1186
    return v1

    .line 1188
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/util/TypedValue;->type:I

    .line 1189
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1191
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    throw v1
.end method

.method public getFont(I)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 411
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 413
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 414
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 415
    invoke-virtual {v1, p0, v0, p1}, Landroid/content/res/ResourcesImpl;->loadFont(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    .local v2, "typeface":Landroid/graphics/Typeface;
    if-eqz v2, :cond_0

    .line 417
    nop

    .line 420
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 417
    return-object v2

    .line 420
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 421
    nop

    .line 422
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    throw v1
.end method

.method getFont(Landroid/util/TypedValue;I)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/ResourcesImpl;->loadFont(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getFraction(III)F
    .locals 4
    .param p1, "id"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I

    .line 803
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 805
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 806
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 807
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 807
    return v1

    .line 809
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/util/TypedValue;->type:I

    .line 810
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    throw v1
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .line 1989
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getImpl()Landroid/content/res/ResourcesImpl;
    .locals 1

    .line 335
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    return-object v0
.end method

.method public getIntArray(I)[I
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 648
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceIntArray(I)[I

    move-result-object v0

    .line 649
    .local v0, "res":[I
    if-eqz v0, :cond_0

    .line 650
    return-object v0

    .line 652
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Int array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInteger(I)I
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1154
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1156
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1157
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 1159
    iget v1, v0, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1159
    return v1

    .line 1161
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/util/TypedValue;->type:I

    .line 1162
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1164
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    throw v1
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1217
    const-string/jumbo v0, "layout"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 971
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 972
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    .line 974
    .local v1, "movie":Landroid/graphics/Movie;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    goto :goto_0

    .line 975
    :catch_0
    move-exception v2

    .line 978
    :goto_0
    return-object v1
.end method

.method public getPreloadedDrawables()Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    .line 2200
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 572
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .param p3, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 545
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "raw":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 469
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ResourcesImpl;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 2064
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 2016
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 2032
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 2048
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSizeConfigurations()[Landroid/content/res/Configuration;
    .locals 1

    .line 1943
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 488
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 512
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "raw":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 628
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "res":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 630
    return-object v0

    .line 632
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 391
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 392
    return-object v0

    .line 394
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .line 590
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 591
    .local v0, "res":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    return-object v1
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 607
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 608
    .local v0, "res":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 609
    return-object v0

    .line 611
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1393
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1394
    return-void
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1436
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    .line 1437
    return-void
.end method

.method public getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1411
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/ResourcesImpl;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 1412
    return-void
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1268
    const-string/jumbo v0, "xml"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public hasDrawableInNubiaThemePackage(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 881
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 883
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 884
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1, p0, v0, p1}, Landroid/content/res/ResourcesImpl;->hasDrawableInNubiaThemePackage(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 884
    return v1

    .line 887
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    throw v1
.end method

.method loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1103
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public loadComplexColor(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 1
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1111
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColor(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v0

    return-object v0
.end method

.method loadDrawable(Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "density"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 959
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/ResourcesImpl;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 5
    .param p1, "id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 2214
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 2216
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 2217
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2218
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 2219
    iget-object v2, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2225
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 2219
    return-object v2

    .line 2222
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/TypedValue;->type:I

    .line 2223
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2225
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    throw v1
.end method

.method loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "assetCookie"    # I
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 2242
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public final newTheme()Landroid/content/res/Resources$Theme;
    .locals 5

    .line 1839
    new-instance v0, Landroid/content/res/Resources$Theme;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$1;)V

    .line 1840
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->newThemeImpl()Landroid/content/res/ResourcesImpl$ThemeImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->setImpl(Landroid/content/res/ResourcesImpl$ThemeImpl;)V

    .line 1841
    iget-object v1, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1842
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1845
    iget-object v2, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroid/content/res/Resources;->mThemeRefsNextFlushSize:I

    if-le v2, v3, :cond_0

    .line 1846
    iget-object v2, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    sget-object v3, Landroid/content/res/-$$Lambda$Resources$4msWUw7LKsgLexLZjIfWa4oguq4;->INSTANCE:Landroid/content/res/-$$Lambda$Resources$4msWUw7LKsgLexLZjIfWa4oguq4;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1847
    const/16 v2, 0x20

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    .line 1848
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/2addr v3, v4

    .line 1847
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/content/res/Resources;->mThemeRefsNextFlushSize:I

    .line 1850
    :cond_0
    monitor-exit v1

    .line 1851
    return-object v0

    .line 1850
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 6
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .line 1868
    array-length v0, p2

    .line 1869
    .local v0, "len":I
    invoke-static {p0, v0}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1875
    .local v1, "array":Landroid/content/res/TypedArray;
    move-object v2, p1

    check-cast v2, Landroid/content/res/XmlBlock$Parser;

    .line 1876
    .local v2, "parser":Landroid/content/res/XmlBlock$Parser;
    iget-object v3, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v3}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget-object v4, v1, Landroid/content/res/TypedArray;->mData:[I

    iget-object v5, v1, Landroid/content/res/TypedArray;->mIndices:[I

    invoke-virtual {v3, v2, p2, v4, v5}, Landroid/content/res/AssetManager;->retrieveAttributes(Landroid/content/res/XmlBlock$Parser;[I[I[I)Z

    .line 1878
    iput-object v2, v1, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1880
    return-object v1
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 670
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 671
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceArraySize(I)I

    move-result v1

    .line 672
    .local v1, "len":I
    if-ltz v1, :cond_0

    .line 676
    invoke-static {p0, v1}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 677
    .local v2, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget-object v4, v2, Landroid/content/res/TypedArray;->mData:[I

    invoke-virtual {v3, p1, v4}, Landroid/content/res/AssetManager;->getResourceArray(I[I)I

    move-result v3

    iput v3, v2, Landroid/content/res/TypedArray;->mLength:I

    .line 678
    iget-object v3, v2, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v4, 0x0

    aput v4, v3, v4

    .line 680
    return-object v2

    .line 673
    .end local v2    # "array":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1285
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1287
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1289
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1287
    return-object v1

    .line 1289
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    throw v1
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1343
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ResourcesImpl;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1368
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1370
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/ResourcesImpl;->openRawResourceFd(ILandroid/util/TypedValue;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1370
    return-object v1

    .line 1372
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    throw v1
.end method

.method public parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2122
    sget-object v0, Lcom/android/internal/R$styleable;->Extra:[I

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2125
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2127
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 2134
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 2136
    .local v4, "v":Landroid/util/TypedValue;
    if-eqz v4, :cond_5

    .line 2137
    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 2138
    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2139
    .local v1, "cs":Ljava/lang/CharSequence;
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2140
    .end local v1    # "cs":Ljava/lang/CharSequence;
    goto :goto_0

    :cond_0
    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x12

    if-ne v5, v6, :cond_2

    .line 2141
    iget v5, v4, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_1

    move v1, v3

    nop

    :cond_1
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2142
    :cond_2
    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_3

    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_3

    .line 2144
    iget v1, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2145
    :cond_3
    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    .line 2146
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2160
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2161
    return-void

    .line 2148
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2149
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "> only supports string, integer, float, color, and boolean at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2151
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2154
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2155
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "> requires an android:value or android:resource attribute at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2157
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2128
    .end local v4    # "v":Landroid/util/TypedValue;
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2129
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> requires an android:name attribute at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2131
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2080
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 2082
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 2083
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 2084
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 2085
    goto :goto_0

    .line 2088
    :cond_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2089
    .local v1, "nodeName":Ljava/lang/String;
    const-string v3, "extra"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2090
    const-string v3, "extra"

    invoke-virtual {p0, v3, p1, p2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2091
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 2094
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2096
    .end local v1    # "nodeName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 2097
    :cond_4
    return-void
.end method

.method public preloadFonts(I)V
    .locals 3
    .param p1, "id"    # I

    .line 435
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 437
    .local v0, "array":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 438
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 439
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 443
    nop

    .line 444
    return-void

    .line 442
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method protected replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 0
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;

    .line 2277
    return-object p1
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .param p1, "ci"    # Landroid/content/res/CompatibilityInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1963
    if-eqz p1, :cond_0

    .line 1964
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1966
    :cond_0
    return-void
.end method

.method public setImpl(Landroid/content/res/ResourcesImpl;)V
    .locals 7
    .param p1, "impl"    # Landroid/content/res/ResourcesImpl;

    .line 309
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    if-ne p1, v0, :cond_0

    .line 310
    return-void

    .line 313
    :cond_0
    iput-object p1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 315
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p0}, Landroid/content/res/ResourcesImpl;->setResources(Landroid/content/res/Resources;)V

    .line 319
    iget-object v0, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 321
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 322
    iget-object v3, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 323
    .local v3, "weakThemeRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources$Theme;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources$Theme;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 324
    .local v4, "theme":Landroid/content/res/Resources$Theme;
    :goto_1
    if-eqz v4, :cond_2

    .line 325
    iget-object v5, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v4}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/ResourcesImpl;->newThemeImpl(Landroid/content/res/Resources$ThemeKey;)Landroid/content/res/ResourcesImpl$ThemeImpl;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->setImpl(Landroid/content/res/ResourcesImpl$ThemeImpl;)V

    .line 321
    .end local v3    # "weakThemeRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources$Theme;>;"
    .end local v4    # "theme":Landroid/content/res/Resources$Theme;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_3
    monitor-exit v0

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final startPreloading()V
    .locals 1

    .line 2185
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->startPreloading()V

    .line 2186
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1890
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1891
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 1898
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1899
    return-void
.end method
