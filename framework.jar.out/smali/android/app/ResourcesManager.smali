.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ResourcesManager$ActivityResources;,
        Landroid/app/ResourcesManager$ApkKey;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ENABLE_APK_ASSETS_CACHE:Z = false

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field private static final sEmptyReferencePredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final mActivityResourceReferences:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ResourcesManager$ActivityResources;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdjustedDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/view/DisplayAdjustments;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Display;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCachedApkAssets:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ResourcesManager$ApkKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ApkAssets;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLoadedApkAssets:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/app/ResourcesManager$ApkKey;",
            "Landroid/content/res/ApkAssets;",
            ">;"
        }
    .end annotation
.end field

.field private mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mResConfiguration:Landroid/content/res/Configuration;

.field private final mResourceImpls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResourceReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    sget-object v0, Landroid/app/-$$Lambda$ResourcesManager$QJ7UiVk_XS90KuXAsIjIEym1DnM;->INSTANCE:Landroid/app/-$$Lambda$ResourcesManager$QJ7UiVk_XS90KuXAsIjIEym1DnM;

    sput-object v0, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    .line 142
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    .line 156
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    .line 162
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    return-void
.end method

.method private static applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 223
    const/4 v0, 0x1

    iput v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 224
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 225
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 226
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 227
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v1

    .line 228
    .local v1, "sl":I
    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_0

    .line 229
    const/4 v0, 0x2

    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 230
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v1, v0, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0

    .line 233
    :cond_0
    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 234
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v1, v0, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 237
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 238
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 239
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 240
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 241
    return-void
.end method

.method private cleanupResourceImpl(Landroid/content/res/ResourcesKey;)V
    .locals 1
    .param p1, "removedKey"    # Landroid/content/res/ResourcesKey;

    .line 308
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ResourcesImpl;

    .line 310
    .local v0, "res":Landroid/content/res/ResourcesImpl;
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 313
    :cond_0
    return-void
.end method

.method private static countLiveReferences(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;)I"
        }
    .end annotation

    .line 434
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<TT;>;>;"
    const/4 v0, 0x0

    .line 435
    .local v0, "count":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 436
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 437
    .local v3, "value":Ljava/lang/Object;, "TT;"
    :goto_1
    if-eqz v3, :cond_1

    .line 438
    add-int/lit8 v0, v0, 0x1

    .line 440
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_0

    .line 441
    :cond_2
    return v0
.end method

.method private createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 5
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 510
    new-instance v0, Landroid/view/DisplayAdjustments;

    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    .line 511
    .local v0, "daj":Landroid/view/DisplayAdjustments;
    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 513
    invoke-virtual {p0, p1}, Landroid/app/ResourcesManager;->createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;

    move-result-object v1

    .line 514
    .local v1, "assets":Landroid/content/res/AssetManager;
    if-nez v1, :cond_0

    .line 515
    const/4 v2, 0x0

    return-object v2

    .line 518
    :cond_0
    iget v2, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    invoke-virtual {p0, v2, v0}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 519
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-direct {p0, p1, v2}, Landroid/app/ResourcesManager;->generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;)Landroid/content/res/Configuration;

    move-result-object v3

    .line 520
    .local v3, "config":Landroid/content/res/Configuration;
    new-instance v4, Landroid/content/res/ResourcesImpl;

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    .line 525
    .local v4, "impl":Landroid/content/res/ResourcesImpl;
    return-object v4
.end method

.method private findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .locals 5
    .param p1, "resourceImpl"    # Landroid/content/res/ResourcesImpl;

    .line 567
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 568
    .local v0, "refCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    .line 569
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 570
    .local v3, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesImpl;

    nop

    .line 571
    .local v2, "impl":Landroid/content/res/ResourcesImpl;
    :cond_0
    if-eqz v2, :cond_1

    if-ne p1, v2, :cond_1

    .line 572
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesKey;

    return-object v4

    .line 568
    .end local v2    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v3    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    .end local v1    # "i":I
    :cond_2
    return-object v2
.end method

.method private findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 3
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 551
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 552
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    if-nez v0, :cond_0

    .line 553
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 554
    if-eqz v0, :cond_0

    .line 555
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    :cond_0
    return-object v0
.end method

.method private findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 4
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 535
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 536
    .local v0, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesImpl;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 537
    .local v2, "impl":Landroid/content/res/ResourcesImpl;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 538
    return-object v2

    .line 540
    :cond_1
    return-object v1
.end method

.method private generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;)Landroid/content/res/Configuration;
    .locals 4
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;

    .line 492
    iget v0, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 493
    .local v0, "isDefaultDisplay":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v1

    .line 494
    .local v1, "hasOverrideConfig":Z
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 504
    :cond_1
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    goto :goto_2

    .line 495
    :cond_2
    :goto_1
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 496
    .local v2, "config":Landroid/content/res/Configuration;
    if-nez v0, :cond_3

    .line 497
    invoke-static {p2, v2}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 499
    :cond_3
    if-eqz v1, :cond_4

    .line 500
    iget-object v3, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 504
    :cond_4
    :goto_2
    nop

    .line 506
    return-object v2
.end method

.method private getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .line 263
    if-eqz p2, :cond_0

    .line 264
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0, p2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    .line 265
    .local v0, "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    :goto_0
    nop

    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 267
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    monitor-enter p0

    .line 268
    :try_start_0
    iget-object v2, p0, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 269
    .local v2, "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    if-eqz v2, :cond_1

    .line 270
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display;

    .line 271
    .local v3, "display":Landroid/view/Display;
    if-eqz v3, :cond_1

    .line 272
    monitor-exit p0

    return-object v3

    .line 275
    .end local v3    # "display":Landroid/view/Display;
    :cond_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    .line 276
    .local v3, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v3, :cond_2

    .line 278
    const/4 v4, 0x0

    monitor-exit p0

    return-object v4

    .line 280
    :cond_2
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/view/DisplayAdjustments;

    invoke-virtual {v3, p1, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v4

    .line 281
    .local v4, "display":Landroid/view/Display;
    if-eqz v4, :cond_3

    .line 282
    iget-object v5, p0, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_3
    monitor-exit p0

    return-object v4

    .line 285
    .end local v2    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    .end local v3    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v4    # "display":Landroid/view/Display;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    .line 166
    const-class v0, Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 167
    :try_start_0
    sget-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Landroid/app/ResourcesManager;

    invoke-direct {v1}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 170
    :cond_0
    sget-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    monitor-exit v0

    return-object v1

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 605
    iget-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;

    .line 606
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    if-nez v0, :cond_0

    .line 607
    new-instance v1, Landroid/app/ResourcesManager$ActivityResources;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/ResourcesManager$ActivityResources;-><init>(Landroid/app/ResourcesManager$1;)V

    move-object v0, v1

    .line 608
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    :cond_0
    return-object v0
.end method

.method private getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "key"    # Landroid/content/res/ResourcesKey;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;

    .line 800
    monitor-enter p0

    .line 807
    if-eqz p1, :cond_2

    .line 808
    nop

    .line 809
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 812
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    sget-object v2, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    .line 816
    invoke-virtual {p2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 817
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 818
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 819
    .local v1, "temp":Landroid/content/res/Configuration;
    iget-object v2, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 820
    iget-object v2, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 823
    .end local v1    # "temp":Landroid/content/res/Configuration;
    :cond_0
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v1

    .line 824
    .local v1, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-eqz v1, :cond_1

    .line 828
    iget-object v2, p2, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p1, p3, v1, v2}, Landroid/app/ResourcesManager;->getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 834
    .end local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v1    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    :cond_1
    goto :goto_0

    .line 867
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 836
    :cond_2
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    sget-object v1, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    .line 839
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 840
    .local v0, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-eqz v0, :cond_3

    .line 844
    iget-object v1, p2, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p3, v0, v1}, Landroid/app/ResourcesManager;->getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 851
    .end local v0    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    :cond_3
    :goto_0
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 852
    .restart local v0    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-nez v0, :cond_4

    .line 853
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 857
    :cond_4
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    if-eqz p1, :cond_5

    .line 861
    iget-object v1, p2, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/app/ResourcesManager;->getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "resources":Landroid/content/res/Resources;
    goto :goto_1

    .line 864
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_5
    iget-object v1, p2, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p3, v0, v1}, Landroid/app/ResourcesManager;->getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 866
    .restart local v1    # "resources":Landroid/content/res/Resources;
    :goto_1
    monitor-exit p0

    return-object v1

    .line 867
    .end local v0    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    .end local v1    # "resources":Landroid/content/res/Resources;
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "impl"    # Landroid/content/res/ResourcesImpl;
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 620
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 623
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 624
    .local v1, "refCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 625
    iget-object v3, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 626
    .local v3, "weakResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    .line 628
    .local v4, "resources":Landroid/content/res/Resources;
    if-eqz v4, :cond_0

    .line 629
    invoke-virtual {v4}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v5, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 630
    invoke-virtual {v4}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    if-ne v5, p3, :cond_0

    .line 634
    return-object v4

    .line 624
    .end local v3    # "weakResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v4    # "resources":Landroid/content/res/Resources;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 645
    .end local v2    # "i":I
    :cond_1
    invoke-static {p2}, Landroid/content/res/NubiaClassFactory;->newResources(Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v2

    .line 651
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 652
    iget-object v3, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    return-object v2
.end method

.method private getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 5
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "impl"    # Landroid/content/res/ResourcesImpl;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 667
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 668
    .local v0, "refCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 669
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 670
    .local v2, "weakResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 671
    .local v3, "resources":Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 672
    invoke-virtual {v3}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 673
    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v4

    if-ne v4, p2, :cond_0

    .line 677
    return-object v3

    .line 668
    .end local v2    # "weakResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 689
    .end local v1    # "i":I
    :cond_1
    invoke-static {p1}, Landroid/content/res/NubiaClassFactory;->newResources(Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v1

    .line 695
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 696
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    return-object v1
.end method

.method static synthetic lambda$static$0(Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .param p0, "weakRef"    # Ljava/lang/ref/WeakReference;

    .line 74
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private loadApkAssets(Ljava/lang/String;ZZ)Landroid/content/res/ApkAssets;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "sharedLib"    # Z
    .param p3, "overlay"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    new-instance v0, Landroid/app/ResourcesManager$ApkKey;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    .line 322
    .local v0, "newKey":Landroid/app/ResourcesManager$ApkKey;
    const/4 v1, 0x0

    .line 323
    .local v1, "apkAssets":Landroid/content/res/ApkAssets;
    iget-object v2, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/content/res/ApkAssets;

    .line 325
    if-eqz v1, :cond_0

    .line 326
    return-object v1

    .line 331
    :cond_0
    iget-object v2, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 332
    .local v2, "apkAssetsRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ApkAssets;>;"
    if-eqz v2, :cond_3

    .line 333
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/content/res/ApkAssets;

    .line 334
    if-eqz v1, :cond_2

    .line 335
    iget-object v3, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    if-eqz v3, :cond_1

    .line 336
    iget-object v3, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    invoke-virtual {v3, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_1
    return-object v1

    .line 342
    :cond_2
    iget-object v3, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_3
    const/4 v3, 0x0

    if-eqz p3, :cond_4

    .line 348
    invoke-static {p1}, Landroid/app/ResourcesManager;->overlayPathToIdmapPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;Z)Landroid/content/res/ApkAssets;

    move-result-object v1

    goto :goto_0

    .line 351
    :cond_4
    invoke-static {p1, v3, p2}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;ZZ)Landroid/content/res/ApkAssets;

    move-result-object v1

    .line 354
    :goto_0
    iget-object v3, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    if-eqz v3, :cond_5

    .line 355
    iget-object v3, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    invoke-virtual {v3, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_5
    iget-object v3, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    return-object v1
.end method

.method private static overlayPathToIdmapPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/resource-cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@idmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesImpl;",
            "Landroid/content/res/ResourcesKey;",
            ">;)V"
        }
    .end annotation

    .line 1227
    .local p1, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    return-void

    .line 1232
    :cond_0
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1233
    .local v0, "resourcesCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_4

    .line 1234
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 1235
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    nop

    .line 1236
    .local v3, "r":Landroid/content/res/Resources;
    :cond_1
    if-eqz v3, :cond_3

    .line 1237
    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesKey;

    .line 1238
    .local v5, "key":Landroid/content/res/ResourcesKey;
    if-eqz v5, :cond_3

    .line 1239
    invoke-direct {p0, v5}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v6

    .line 1240
    .local v6, "impl":Landroid/content/res/ResourcesImpl;
    if-eqz v6, :cond_2

    .line 1243
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v5    # "key":Landroid/content/res/ResourcesKey;
    .end local v6    # "impl":Landroid/content/res/ResourcesImpl;
    goto :goto_1

    .line 1241
    .restart local v3    # "r":Landroid/content/res/Resources;
    .restart local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .restart local v5    # "key":Landroid/content/res/ResourcesKey;
    .restart local v6    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_2
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    const-string v7, "failed to redirect ResourcesImpl"

    invoke-direct {v1, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1233
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v5    # "key":Landroid/content/res/ResourcesKey;
    .end local v6    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1249
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ResourcesManager$ActivityResources;

    .line 1250
    .local v4, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v5, v4, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1251
    .local v5, "resCount":I
    move v6, v1

    .local v6, "i":I
    :goto_3
    if-ge v6, v5, :cond_8

    .line 1252
    iget-object v7, v4, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 1253
    .local v7, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/Resources;

    goto :goto_4

    :cond_5
    move-object v8, v3

    .line 1254
    .local v8, "r":Landroid/content/res/Resources;
    :goto_4
    if-eqz v8, :cond_7

    .line 1255
    invoke-virtual {v8}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ResourcesKey;

    .line 1256
    .local v9, "key":Landroid/content/res/ResourcesKey;
    if-eqz v9, :cond_7

    .line 1257
    invoke-direct {p0, v9}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v10

    .line 1258
    .local v10, "impl":Landroid/content/res/ResourcesImpl;
    if-eqz v10, :cond_6

    .line 1262
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .end local v7    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v8    # "r":Landroid/content/res/Resources;
    .end local v9    # "key":Landroid/content/res/ResourcesKey;
    .end local v10    # "impl":Landroid/content/res/ResourcesImpl;
    goto :goto_5

    .line 1259
    .restart local v7    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .restart local v8    # "r":Landroid/content/res/Resources;
    .restart local v9    # "key":Landroid/content/res/ResourcesKey;
    .restart local v10    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_6
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    const-string v2, "failed to redirect ResourcesImpl"

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1251
    .end local v7    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v8    # "r":Landroid/content/res/Resources;
    .end local v9    # "key":Landroid/content/res/ResourcesKey;
    .end local v10    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_7
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1266
    .end local v4    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v5    # "resCount":I
    .end local v6    # "i":I
    :cond_8
    goto :goto_2

    .line 1267
    :cond_9
    return-void
.end method


# virtual methods
.method public appendLibAssetForMainAssetPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "libAsset"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 1157
    move-object/from16 v2, p2

    monitor-enter p0

    .line 1160
    :try_start_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1162
    .local v0, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    iget-object v3, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1163
    .local v3, "implCount":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_5

    .line 1164
    iget-object v6, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ResourcesKey;

    .line 1165
    .local v6, "key":Landroid/content/res/ResourcesKey;
    iget-object v7, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 1166
    .local v7, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/ResourcesImpl;

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 1167
    .local v8, "impl":Landroid/content/res/ResourcesImpl;
    :goto_1
    if-eqz v8, :cond_3

    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v10, p1

    :try_start_1
    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1168
    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    invoke-static {v9, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1169
    nop

    .line 1170
    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v9, v9

    goto :goto_2

    :cond_1
    move v9, v4

    :goto_2
    const/4 v11, 0x1

    add-int/2addr v11, v9

    .line 1171
    .local v11, "newLibAssetCount":I
    new-array v9, v11, [Ljava/lang/String;

    .line 1172
    .local v9, "newLibAssets":[Ljava/lang/String;
    iget-object v12, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v12, :cond_2

    .line 1173
    iget-object v12, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v13, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v13, v13

    invoke-static {v12, v4, v9, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1175
    :cond_2
    add-int/lit8 v12, v11, -0x1

    aput-object v2, v9, v12

    .line 1177
    new-instance v15, Landroid/content/res/ResourcesKey;

    iget-object v13, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v14, v6, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v12, v6, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    iget v4, v6, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v2, v6, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move/from16 v20, v3

    iget-object v3, v6, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .end local v3    # "implCount":I
    .local v20, "implCount":I
    move-object/from16 v16, v12

    move-object v12, v15

    move-object/from16 v21, v6

    move-object v6, v15

    move-object/from16 v15, v16

    .end local v6    # "key":Landroid/content/res/ResourcesKey;
    .local v21, "key":Landroid/content/res/ResourcesKey;
    move-object/from16 v16, v9

    move/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v12 .. v19}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    invoke-virtual {v0, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v7    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .end local v8    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v9    # "newLibAssets":[Ljava/lang/String;
    .end local v11    # "newLibAssetCount":I
    .end local v21    # "key":Landroid/content/res/ResourcesKey;
    goto :goto_3

    .line 1163
    .end local v20    # "implCount":I
    .restart local v3    # "implCount":I
    :cond_3
    move-object/from16 v10, p1

    :cond_4
    move/from16 v20, v3

    .end local v3    # "implCount":I
    .restart local v20    # "implCount":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v20

    move-object/from16 v2, p2

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1189
    .end local v5    # "i":I
    .end local v20    # "implCount":I
    .restart local v3    # "implCount":I
    :cond_5
    move-object/from16 v10, p1

    move/from16 v20, v3

    .end local v3    # "implCount":I
    .restart local v20    # "implCount":I
    invoke-direct {v1, v0}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V

    .line 1190
    .end local v0    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v20    # "implCount":I
    monitor-exit p0

    .line 1191
    return-void

    .line 1190
    :catchall_0
    move-exception v0

    move-object/from16 v10, p1

    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method public applyCompatConfigurationLocked(ILandroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .line 245
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 247
    const/4 v0, 0x1

    return v0

    .line 249
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 20
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1063
    move-object/from16 v3, p2

    const-wide/16 v4, 0x2000

    :try_start_0
    const-string v0, "ResourcesManager#applyConfigurationToResourcesLocked"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1066
    iget-object v0, v1, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    if-nez v3, :cond_0

    .line 1069
    nop

    .line 1146
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1069
    return v6

    .line 1071
    :cond_0
    :try_start_1
    iget-object v0, v1, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 1073
    .local v0, "changes":I
    iget-object v7, v1, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 1075
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 1077
    .local v7, "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz v3, :cond_2

    iget-object v8, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v8, :cond_1

    iget-object v8, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 1078
    invoke-virtual {v8, v3}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1079
    :cond_1
    iput-object v3, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 1080
    or-int/lit16 v0, v0, 0xd00

    .line 1087
    :cond_2
    invoke-static {v0, v2}, Landroid/app/NubiaThemeHelper;->handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V

    .line 1090
    invoke-static {v2, v7, v3}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1092
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 1095
    const/4 v8, 0x0

    .line 1097
    .local v8, "tmpConfig":Landroid/content/res/Configuration;
    iget-object v9, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_c

    .line 1098
    iget-object v11, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/ResourcesKey;

    .line 1099
    .local v11, "key":Landroid/content/res/ResourcesKey;
    iget-object v12, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    .line 1100
    .local v12, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/res/ResourcesImpl;

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    .line 1101
    .local v13, "r":Landroid/content/res/ResourcesImpl;
    :goto_1
    if-eqz v13, :cond_b

    .line 1104
    iget v14, v11, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 1105
    .local v14, "displayId":I
    if-nez v14, :cond_4

    move v15, v10

    goto :goto_2

    :cond_4
    move v15, v6

    .line 1106
    .local v15, "isDefaultDisplay":Z
    :goto_2
    move-object/from16 v16, v7

    .line 1107
    .local v16, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v11}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v17

    .line 1108
    .local v17, "hasOverrideConfiguration":Z
    if-eqz v15, :cond_6

    if-eqz v17, :cond_5

    .line 1109
    move-object/from16 v6, v16

    goto :goto_3

    .line 1134
    :cond_5
    move-object/from16 v6, v16

    invoke-virtual {v13, v2, v6, v3}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .end local v14    # "displayId":I
    .end local v15    # "isDefaultDisplay":Z
    .end local v16    # "dm":Landroid/util/DisplayMetrics;
    .end local v17    # "hasOverrideConfiguration":Z
    goto :goto_4

    .line 1109
    .restart local v14    # "displayId":I
    .restart local v15    # "isDefaultDisplay":Z
    .restart local v16    # "dm":Landroid/util/DisplayMetrics;
    .restart local v17    # "hasOverrideConfiguration":Z
    :cond_6
    move-object/from16 v6, v16

    .end local v16    # "dm":Landroid/util/DisplayMetrics;
    .local v6, "dm":Landroid/util/DisplayMetrics;
    :goto_3
    if-nez v8, :cond_7

    .line 1110
    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    move-object v8, v10

    .line 1112
    :cond_7
    invoke-virtual {v8, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1118
    invoke-virtual {v13}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v10

    .line 1119
    .local v10, "daj":Landroid/view/DisplayAdjustments;
    if-eqz v3, :cond_8

    .line 1120
    new-instance v4, Landroid/view/DisplayAdjustments;

    invoke-direct {v4, v10}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    move-object v10, v4

    .line 1121
    invoke-virtual {v10, v3}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 1123
    :cond_8
    invoke-virtual {v1, v14, v10}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1125
    .end local v6    # "dm":Landroid/util/DisplayMetrics;
    .local v4, "dm":Landroid/util/DisplayMetrics;
    if-nez v15, :cond_9

    .line 1126
    invoke-static {v4, v8}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1129
    :cond_9
    if-eqz v17, :cond_a

    .line 1130
    iget-object v5, v11, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1132
    :cond_a
    invoke-virtual {v13, v8, v4, v3}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1133
    .end local v10    # "daj":Landroid/view/DisplayAdjustments;
    nop

    .line 1138
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v14    # "displayId":I
    .end local v15    # "isDefaultDisplay":Z
    .end local v17    # "hasOverrideConfiguration":Z
    :goto_4
    goto :goto_5

    .line 1140
    :cond_b
    iget-object v4, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1097
    .end local v11    # "key":Landroid/content/res/ResourcesKey;
    .end local v12    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .end local v13    # "r":Landroid/content/res/ResourcesImpl;
    :goto_5
    add-int/lit8 v9, v9, -0x1

    const-wide/16 v4, 0x2000

    const/4 v6, 0x0

    const/4 v10, 0x1

    goto :goto_0

    .line 1144
    .end local v9    # "i":I
    :cond_c
    if-eqz v0, :cond_d

    .line 1146
    const/16 v18, 0x1

    goto :goto_6

    .line 1144
    :cond_d
    nop

    .line 1146
    const/16 v18, 0x0

    :goto_6
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1144
    return v18

    .line 1146
    .end local v0    # "changes":I
    .end local v7    # "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "tmpConfig":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v0

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method final applyNewResourceDirsLocked(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 20
    .param p1, "baseCodePath"    # Ljava/lang/String;
    .param p2, "newResourceDirs"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    .line 1197
    const-wide/16 v2, 0x2000

    :try_start_0
    const-string v0, "ResourcesManager#applyNewResourceDirsLocked"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1200
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1201
    .local v0, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    iget-object v4, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1202
    .local v4, "implCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 1203
    iget-object v6, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ResourcesKey;

    .line 1204
    .local v6, "key":Landroid/content/res/ResourcesKey;
    iget-object v7, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 1205
    .local v7, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/ResourcesImpl;

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 1206
    .local v8, "impl":Landroid/content/res/ResourcesImpl;
    :goto_1
    if-eqz v8, :cond_2

    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v10, p1

    :try_start_1
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    .line 1207
    :cond_1
    move-object/from16 v10, p1

    :goto_2
    new-instance v9, Landroid/content/res/ResourcesKey;

    iget-object v12, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v13, v6, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v15, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget v14, v6, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v11, v6, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v6, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object v3, v11

    move-object v11, v9

    move/from16 v16, v14

    move-object/from16 v14, p2

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    invoke-direct/range {v11 .. v18}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    invoke-virtual {v0, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v6    # "key":Landroid/content/res/ResourcesKey;
    .end local v7    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .end local v8    # "impl":Landroid/content/res/ResourcesImpl;
    goto :goto_3

    .line 1202
    :cond_2
    move-object/from16 v10, p1

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v2, 0x2000

    goto :goto_0

    .line 1218
    .end local v5    # "i":I
    :cond_4
    move-object/from16 v10, p1

    invoke-direct {v1, v0}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1220
    .end local v0    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v4    # "implCount":I
    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1221
    nop

    .line 1222
    return-void

    .line 1220
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v10, p1

    :goto_4
    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method protected createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;
    .locals 11
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 372
    new-instance v0, Landroid/content/res/AssetManager$Builder;

    invoke-direct {v0}, Landroid/content/res/AssetManager$Builder;-><init>()V

    .line 377
    .local v0, "builder":Landroid/content/res/AssetManager$Builder;
    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 379
    :try_start_0
    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v3}, Landroid/app/ResourcesManager;->loadApkAssets(Ljava/lang/String;ZZ)Landroid/content/res/ApkAssets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    goto :goto_0

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "ResourcesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to add asset path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-object v2

    .line 387
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 388
    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    array-length v4, v1

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 390
    .local v6, "splitResDir":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0, v6, v3, v3}, Landroid/app/ResourcesManager;->loadApkAssets(Ljava/lang/String;ZZ)Landroid/content/res/ApkAssets;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 395
    nop

    .line 388
    .end local v6    # "splitResDir":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 392
    .restart local v6    # "splitResDir":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 393
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v3, "ResourcesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to add split asset path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-object v2

    .line 399
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "splitResDir":Ljava/lang/String;
    :cond_1
    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 400
    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    array-length v4, v1

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 402
    .local v6, "idmapPath":Ljava/lang/String;
    :try_start_2
    invoke-direct {p0, v6, v3, v2}, Landroid/app/ResourcesManager;->loadApkAssets(Ljava/lang/String;ZZ)Landroid/content/res/ApkAssets;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 408
    goto :goto_3

    .line 404
    :catch_2
    move-exception v7

    .line 405
    .local v7, "e":Ljava/io/IOException;
    const-string v8, "ResourcesManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to add overlay path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v6    # "idmapPath":Ljava/lang/String;
    .end local v7    # "e":Ljava/io/IOException;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 412
    :cond_2
    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 413
    iget-object v1, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v4, v1

    move v5, v3

    :goto_4
    if-ge v5, v4, :cond_4

    aget-object v6, v1, v5

    .line 414
    .local v6, "libDir":Ljava/lang/String;
    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 418
    :try_start_3
    invoke-direct {p0, v6, v2, v3}, Landroid/app/ResourcesManager;->loadApkAssets(Ljava/lang/String;ZZ)Landroid/content/res/ApkAssets;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 425
    goto :goto_5

    .line 420
    :catch_3
    move-exception v7

    .line 421
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v8, "ResourcesManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Asset path \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' does not exist or contains no resources."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .end local v6    # "libDir":Ljava/lang/String;
    .end local v7    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 430
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/AssetManager$Builder;->build()Landroid/content/res/AssetManager;

    move-result-object v1

    return-object v1
.end method

.method public createBaseActivityResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 14
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "overlayDirs"    # [Ljava/lang/String;
    .param p5, "libDirs"    # [Ljava/lang/String;
    .param p6, "displayId"    # I
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p9, "classLoader"    # Ljava/lang/ClassLoader;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    .line 734
    const-wide/16 v4, 0x2000

    :try_start_0
    const-string v0, "ResourcesManager#createBaseActivityResources"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 736
    new-instance v0, Landroid/content/res/ResourcesKey;

    .line 742
    if-eqz v3, :cond_0

    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move-object v12, v6

    move-object v6, v0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v13, p8

    invoke-direct/range {v6 .. v13}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    move-object v6, v0

    .line 744
    .local v6, "key":Landroid/content/res/ResourcesKey;
    if-eqz p9, :cond_1

    move-object/from16 v0, p9

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :goto_1
    move-object v7, v0

    .line 751
    .end local p9    # "classLoader":Ljava/lang/ClassLoader;
    .local v7, "classLoader":Ljava/lang/ClassLoader;
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 753
    :try_start_2
    invoke-direct {v1, v2}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    .line 754
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 757
    const/4 v0, 0x0

    move/from16 v8, p6

    :try_start_3
    invoke-virtual {v1, v2, v3, v8, v0}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;IZ)V

    .line 761
    invoke-direct {v1, v2, v6, v7}, Landroid/app/ResourcesManager;->getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 763
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 761
    return-object v0

    .line 754
    :catchall_0
    move-exception v0

    move/from16 v8, p6

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 763
    .end local v6    # "key":Landroid/content/res/ResourcesKey;
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 754
    .restart local v6    # "key":Landroid/content/res/ResourcesKey;
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 763
    .end local v6    # "key":Landroid/content/res/ResourcesKey;
    :catchall_3
    move-exception v0

    move/from16 v8, p6

    goto :goto_3

    .end local v7    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p9    # "classLoader":Ljava/lang/ClassLoader;
    :catchall_4
    move-exception v0

    move/from16 v8, p6

    move-object/from16 v7, p9

    .end local p9    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v7    # "classLoader":Ljava/lang/ClassLoader;
    :goto_3
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public createBaseActivityResources(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityToken"    # Landroid/os/IBinder;
    .param p3, "resDir"    # Ljava/lang/String;
    .param p4, "splitResDirs"    # [Ljava/lang/String;
    .param p5, "overlayDirs"    # [Ljava/lang/String;
    .param p6, "libDirs"    # [Ljava/lang/String;
    .param p7, "displayId"    # I
    .param p8, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p9, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p10, "classLoader"    # Ljava/lang/ClassLoader;

    .line 776
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-virtual/range {v0 .. v9}, Landroid/app/ResourcesManager;->createBaseActivityResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v0

    .line 779
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/content/res/NubiaResources;

    if-eqz v1, :cond_0

    .line 780
    move-object v1, v0

    check-cast v1, Landroid/content/res/NubiaResources;

    move-object v2, p1

    invoke-virtual {v1, v2}, Landroid/content/res/NubiaResources;->init(Ljava/lang/String;)V

    goto :goto_0

    .line 782
    :cond_0
    move-object v2, p1

    :goto_0
    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "printWriter"    # Ljava/io/PrintWriter;

    .line 448
    monitor-enter p0

    .line 449
    :try_start_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 450
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const/4 v1, 0x0

    .line 450
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 451
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v1    # "i":I
    :cond_0
    const-string v1, "ResourcesManager:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 456
    iget-object v1, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    if-eqz v1, :cond_1

    .line 457
    const-string v1, "cached apks: total="

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 459
    const-string v1, " created="

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->createCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 461
    const-string v1, " evicted="

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictionCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 463
    const-string v1, " hit="

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->hitCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 465
    const-string v1, " miss="

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->missCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 467
    const-string v1, " max="

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Landroid/app/ResourcesManager;->mLoadedApkAssets:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->maxSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    goto :goto_1

    .line 470
    :cond_1
    const-string v1, "cached apks: 0 [cache disabled]"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 472
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 474
    const-string/jumbo v1, "total apks: "

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 477
    const-string/jumbo v1, "resources: "

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 479
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v1

    .line 480
    .local v1, "references":I
    iget-object v2, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ResourcesManager$ActivityResources;

    .line 481
    .local v3, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v4, v3, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-static {v4}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v4

    add-int/2addr v1, v4

    .line 482
    .end local v3    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    goto :goto_2

    .line 483
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 485
    const-string/jumbo v2, "resource impls: "

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 486
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 487
    .end local v0    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v1    # "references":I
    monitor-exit p0

    .line 488
    return-void

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 296
    monitor-enter p0

    .line 297
    :try_start_0
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 298
    .local v0, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v0, :cond_0

    .line 300
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 302
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 303
    .end local v0    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    monitor-exit p0

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .line 202
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "da"    # Landroid/view/DisplayAdjustments;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 211
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 212
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v1

    .line 213
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 218
    :goto_0
    return-object v0
.end method

.method public getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 12
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "overlayDirs"    # [Ljava/lang/String;
    .param p5, "libDirs"    # [Ljava/lang/String;
    .param p6, "displayId"    # I
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p9, "classLoader"    # Ljava/lang/ClassLoader;

    move-object/from16 v1, p7

    .line 907
    const-wide/16 v2, 0x2000

    :try_start_0
    const-string v0, "ResourcesManager#getResources"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 908
    new-instance v0, Landroid/content/res/ResourcesKey;

    .line 914
    if-eqz v1, :cond_0

    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move-object v10, v4

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v11, p8

    invoke-direct/range {v4 .. v11}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 916
    .local v0, "key":Landroid/content/res/ResourcesKey;
    if-eqz p9, :cond_1

    move-object/from16 v5, p9

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    move-object v4, v5

    .line 917
    .end local p9    # "classLoader":Ljava/lang/ClassLoader;
    .local v4, "classLoader":Ljava/lang/ClassLoader;
    move-object v5, p0

    move-object v6, p1

    :try_start_1
    invoke-direct {v5, v6, v0, v4}, Landroid/app/ResourcesManager;->getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 919
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 917
    return-object v7

    .line 919
    .end local v0    # "key":Landroid/content/res/ResourcesKey;
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v4    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p9    # "classLoader":Ljava/lang/ClassLoader;
    :catchall_1
    move-exception v0

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v4, p9

    .end local p9    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v4    # "classLoader":Ljava/lang/ClassLoader;
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public getResources(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityToken"    # Landroid/os/IBinder;
    .param p3, "resDir"    # Ljava/lang/String;
    .param p4, "splitResDirs"    # [Ljava/lang/String;
    .param p5, "overlayDirs"    # [Ljava/lang/String;
    .param p6, "libDirs"    # [Ljava/lang/String;
    .param p7, "displayId"    # I
    .param p8, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p9, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p10, "classLoader"    # Ljava/lang/ClassLoader;

    .line 933
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-virtual/range {v0 .. v9}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v0

    .line 935
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/content/res/NubiaResources;

    if-eqz v1, :cond_0

    .line 936
    move-object v1, v0

    check-cast v1, Landroid/content/res/NubiaResources;

    move-object v2, p1

    invoke-virtual {v1, v2}, Landroid/content/res/NubiaResources;->init(Ljava/lang/String;)V

    goto :goto_0

    .line 938
    :cond_0
    move-object v2, p1

    :goto_0
    return-object v0
.end method

.method public invalidatePath(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 180
    monitor-enter p0

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 183
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesKey;

    .line 184
    .local v2, "key":Landroid/content/res/ResourcesKey;
    invoke-virtual {v2, p1}, Landroid/content/res/ResourcesKey;->isPathReferenced(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    invoke-direct {p0, v2}, Landroid/app/ResourcesManager;->cleanupResourceImpl(Landroid/content/res/ResourcesKey;)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 190
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    :goto_1
    goto :goto_0

    .line 191
    .end local v1    # "i":I
    :cond_1
    const-string v1, "ResourcesManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalidated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " asset managers that referenced "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v0    # "count":I
    monitor-exit p0

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z
    .locals 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 587
    monitor-enter p0

    .line 589
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;

    goto :goto_0

    .line 600
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 589
    :cond_0
    const/4 v0, 0x0

    .line 590
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 591
    if-nez p2, :cond_1

    move v1, v2

    nop

    :cond_1
    monitor-exit p0

    return v1

    .line 595
    :cond_2
    iget-object v3, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p2, :cond_3

    iget-object v3, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 597
    invoke-virtual {p2, v3}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    move v1, v2

    :goto_2
    monitor-exit p0

    .line 595
    return v1

    .line 600
    .end local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;IZ)V
    .locals 24
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I
    .param p4, "movedToDifferentDisplay"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 957
    const-wide/16 v3, 0x2000

    :try_start_0
    const-string v0, "ResourcesManager#updateResourcesForActivity"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 959
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 960
    nop

    .line 961
    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 963
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p4, :cond_0

    .line 966
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1056
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 966
    return-void

    .line 971
    :cond_0
    :try_start_2
    new-instance v6, Landroid/content/res/Configuration;

    iget-object v7, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v6, v7}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 974
    .local v6, "oldConfig":Landroid/content/res/Configuration;
    if-eqz v2, :cond_1

    .line 975
    iget-object v7, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 977
    :cond_1
    iget-object v7, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7}, Landroid/content/res/Configuration;->unset()V

    .line 992
    :goto_0
    iget-object v7, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    sget-object v8, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 993
    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 996
    .local v7, "activityHasOverrideConfig":Z
    iget-object v8, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 997
    .local v8, "refCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_8

    .line 998
    iget-object v10, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    .line 1000
    .local v10, "weakResRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/Resources;

    .line 1001
    .local v11, "resources":Landroid/content/res/Resources;
    if-nez v11, :cond_2

    .line 1002
    nop

    .line 997
    .end local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v10    # "weakResRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v11    # "resources":Landroid/content/res/Resources;
    .local v23, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    :goto_2
    move-object/from16 v23, v0

    goto/16 :goto_3

    .line 1007
    .end local v23    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .restart local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .restart local v10    # "weakResRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .restart local v11    # "resources":Landroid/content/res/Resources;
    :cond_2
    invoke-virtual {v11}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v12

    .line 1008
    .local v12, "oldKey":Landroid/content/res/ResourcesKey;
    if-nez v12, :cond_3

    .line 1009
    const-string v13, "ResourcesManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "can\'t find ResourcesKey for resources impl="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    invoke-virtual {v11}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1009
    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    goto :goto_2

    .line 1015
    :cond_3
    new-instance v13, Landroid/content/res/Configuration;

    invoke-direct {v13}, Landroid/content/res/Configuration;-><init>()V

    .line 1016
    .local v13, "rebasedOverrideConfig":Landroid/content/res/Configuration;
    if-eqz v2, :cond_4

    .line 1017
    invoke-virtual {v13, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1020
    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v12}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1024
    iget-object v14, v12, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-static {v6, v14}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v14

    .line 1026
    .local v14, "overrideOverrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {v13, v14}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1030
    .end local v14    # "overrideOverrideConfig":Landroid/content/res/Configuration;
    :cond_5
    new-instance v22, Landroid/content/res/ResourcesKey;

    iget-object v15, v12, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v14, v12, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v3, v12, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    iget-object v4, v12, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v12, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .end local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .restart local v23    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    move-object/from16 v16, v14

    move-object/from16 v14, v22

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, p3

    move-object/from16 v20, v13

    move-object/from16 v21, v0

    invoke-direct/range {v14 .. v21}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    move-object/from16 v0, v22

    .line 1040
    .local v0, "newKey":Landroid/content/res/ResourcesKey;
    invoke-direct {v1, v0}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v3

    .line 1041
    .local v3, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-nez v3, :cond_6

    .line 1042
    invoke-direct {v1, v0}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v4

    move-object v3, v4

    .line 1043
    if-eqz v3, :cond_6

    .line 1044
    iget-object v4, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v14, Ljava/lang/ref/WeakReference;

    invoke-direct {v14, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v11}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v4

    if-eq v3, v4, :cond_7

    .line 1051
    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 997
    .end local v0    # "newKey":Landroid/content/res/ResourcesKey;
    .end local v3    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    .end local v10    # "weakResRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v11    # "resources":Landroid/content/res/Resources;
    .end local v12    # "oldKey":Landroid/content/res/ResourcesKey;
    .end local v13    # "rebasedOverrideConfig":Landroid/content/res/Configuration;
    :cond_7
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v23

    const-wide/16 v3, 0x2000

    goto/16 :goto_1

    .line 1054
    .end local v6    # "oldConfig":Landroid/content/res/Configuration;
    .end local v7    # "activityHasOverrideConfig":Z
    .end local v8    # "refCount":I
    .end local v9    # "i":I
    .end local v23    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    :cond_8
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1056
    const-wide/16 v3, 0x2000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1057
    nop

    .line 1058
    return-void

    .line 1054
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1056
    :catchall_1
    move-exception v0

    const-wide/16 v3, 0x2000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
