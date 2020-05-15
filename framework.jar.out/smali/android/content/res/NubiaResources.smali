.class public final Landroid/content/res/NubiaResources;
.super Landroid/content/res/Resources;
.source "NubiaResources.java"


# static fields
.field private static final DEBUG_THEME:Z = false

.field static final TAG_THEME:Ljava/lang/String; = "ThemeFramework"

.field public static final sCookieTypeFramework:I = 0x1

.field public static final sCookieTypeNubia:I = 0x2

.field public static final sCookieTypeOther:I = 0x3


# instance fields
.field private final mAccessLock:Ljava/lang/Object;

.field private mCharSequences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mCookieType:Landroid/util/SparseIntArray;

.field private mHasValues:Z

.field private mIntegers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntegersLock:Ljava/lang/Object;

.field private mSkipFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeResources:Lnubia/content/res/ThemeResources;

.field private mTmpValue2:Landroid/util/TypedValue;

.field private final mTmpValueLock2:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mCharSequences:Landroid/util/SparseArray;

    .line 50
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mIntegers:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mAccessLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mIntegersLock:Ljava/lang/Object;

    .line 456
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mTmpValue2:Landroid/util/TypedValue;

    .line 457
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mTmpValueLock2:Ljava/lang/Object;

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/NubiaResources;->init(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mCharSequences:Landroid/util/SparseArray;

    .line 50
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mIntegers:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mAccessLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mIntegersLock:Ljava/lang/Object;

    .line 456
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mTmpValue2:Landroid/util/TypedValue;

    .line 457
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mTmpValueLock2:Ljava/lang/Object;

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/NubiaResources;->init(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 0
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/NubiaResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "classLoader"    # Ljava/lang/ClassLoader;

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Ljava/lang/ClassLoader;)V

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mCharSequences:Landroid/util/SparseArray;

    .line 50
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mIntegers:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mAccessLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mIntegersLock:Ljava/lang/Object;

    .line 456
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mTmpValue2:Landroid/util/TypedValue;

    .line 457
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mTmpValueLock2:Ljava/lang/Object;

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/NubiaResources;->init(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 115
    invoke-direct {p0, p1}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mCharSequences:Landroid/util/SparseArray;

    .line 50
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mIntegers:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mAccessLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mIntegersLock:Ljava/lang/Object;

    .line 456
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mTmpValue2:Landroid/util/TypedValue;

    .line 457
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mTmpValueLock2:Ljava/lang/Object;

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/NubiaResources;->init(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private getCookieType(I)I
    .locals 3
    .param p1, "cookie"    # I

    .line 120
    iget-object v0, p0, Landroid/content/res/NubiaResources;->mCookieType:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 121
    .local v0, "cookieType":I
    if-nez v0, :cond_2

    .line 122
    invoke-virtual {p0}, Landroid/content/res/NubiaResources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->findPathForCookie(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "cookieName":Ljava/lang/String;
    const-string v2, "/system/framework/framework-res.apk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    const-string v2, "/system/framework/framework-nubia-res.apk"

    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    const/4 v0, 0x2

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x3

    .line 131
    :goto_0
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mCookieType:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 133
    .end local v1    # "cookieName":Ljava/lang/String;
    :cond_2
    return v0
.end method

.method private obtainTempTypedValue2()Landroid/util/TypedValue;
    .locals 3

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "tmpValue":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/content/res/NubiaResources;->mTmpValueLock2:Ljava/lang/Object;

    monitor-enter v1

    .line 462
    :try_start_0
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mTmpValue2:Landroid/util/TypedValue;

    if-eqz v2, :cond_0

    .line 463
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mTmpValue2:Landroid/util/TypedValue;

    move-object v0, v2

    .line 464
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/res/NubiaResources;->mTmpValue2:Landroid/util/TypedValue;

    .line 466
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    if-nez v0, :cond_1

    .line 468
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    return-object v1

    .line 470
    :cond_1
    return-object v0

    .line 466
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private releaseTempTypedValue2(Landroid/util/TypedValue;)V
    .locals 2
    .param p1, "value"    # Landroid/util/TypedValue;

    .line 474
    iget-object v0, p0, Landroid/content/res/NubiaResources;->mTmpValueLock2:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_0
    iget-object v1, p0, Landroid/content/res/NubiaResources;->mTmpValue2:Landroid/util/TypedValue;

    if-nez v1, :cond_0

    .line 476
    iput-object p1, p0, Landroid/content/res/NubiaResources;->mTmpValue2:Landroid/util/TypedValue;

    .line 478
    :cond_0
    monitor-exit v0

    .line 479
    return-void

    .line 478
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getColor(ILandroid/content/res/Resources$Theme;)I
    .locals 5
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 378
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 379
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/content/res/NubiaResources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 380
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/NubiaResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 381
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    .line 383
    iget v2, v0, Landroid/util/TypedValue;->data:I

    monitor-exit v1

    return v2

    .line 384
    :cond_0
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 390
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/NubiaResources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 391
    .local v2, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    monitor-exit v1

    return v3

    .line 385
    .end local v2    # "csl":Landroid/content/res/ColorStateList;
    :cond_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/TypedValue;->type:I

    .line 387
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 392
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
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

    .line 398
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 399
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/content/res/NubiaResources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/NubiaResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 401
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/NubiaResources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 402
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getInteger(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 407
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 408
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/content/res/NubiaResources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/NubiaResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 410
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    .line 412
    iget v2, v0, Landroid/util/TypedValue;->data:I

    monitor-exit v1

    return v2

    .line 414
    :cond_0
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/TypedValue;->type:I

    .line 416
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 417
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0, p1}, Landroid/content/res/NubiaResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 167
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 168
    return-object v0

    .line 170
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .line 176
    invoke-virtual {p0, p1}, Landroid/content/res/NubiaResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 177
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 178
    return-object v0

    .line 180
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "id"    # I

    .line 185
    iget-boolean v0, p0, Landroid/content/res/NubiaResources;->mHasValues:Z

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_0
    iget-object v0, p0, Landroid/content/res/NubiaResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 189
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 190
    iget-object v1, p0, Landroid/content/res/NubiaResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    return-object v1

    .line 192
    :cond_1
    iget-object v1, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 193
    .local v1, "res":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    return-object v1
.end method

.method getThemeInt(I)Ljava/lang/Integer;
    .locals 4
    .param p1, "id"    # I

    .line 198
    iget-boolean v0, p0, Landroid/content/res/NubiaResources;->mHasValues:Z

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_0
    iget-object v0, p0, Landroid/content/res/NubiaResources;->mIntegersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-object v1, p0, Landroid/content/res/NubiaResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 204
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 205
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    monitor-exit v0

    return-object v2

    .line 207
    :cond_1
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    invoke-virtual {v2, p1}, Lnubia/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 208
    .local v2, "res":Ljava/lang/Integer;
    iget-object v3, p0, Landroid/content/res/NubiaResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    monitor-exit v0

    return-object v2

    .line 210
    .end local v1    # "index":I
    .end local v2    # "res":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 216
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 217
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-le v0, v1, :cond_1

    :cond_0
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 219
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/NubiaResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 220
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    .line 223
    .end local v0    # "res":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "nubia"

    .line 231
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    invoke-static {p0, p1}, Lnubia/content/res/ThemeResourcesPackage;->getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResourcesPackage;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    goto :goto_1

    .line 232
    :cond_1
    :goto_0
    invoke-static {p0}, Lnubia/content/res/ThemeResources;->getSystem(Landroid/content/res/Resources;)Lnubia/content/res/ThemeResources;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    .line 237
    :goto_1
    iget-object v0, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->hasValues()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/NubiaResources;->mHasValues:Z

    goto :goto_2

    .line 240
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/NubiaResources;->mHasValues:Z

    .line 242
    :goto_2
    return-void
.end method

.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .line 250
    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "mfilename":Ljava/lang/String;
    const/4 v1, 0x0

    .line 252
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 254
    .local v2, "mOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    move-object v4, v3

    .line 265
    .local v4, "mThemeFileInfo":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    :try_start_0
    iget-object v5, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    iget v6, p1, Landroid/util/TypedValue;->assetCookie:I

    .line 266
    invoke-direct {p0, v6}, Landroid/content/res/NubiaResources;->getCookieType(I)I

    move-result v6

    .line 265
    invoke-virtual {v5, v6, v0}, Lnubia/content/res/ThemeResources;->getThemeFileStream(ILjava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 269
    goto :goto_0

    .line 267
    :catch_0
    move-exception v5

    .line 268
    .local v5, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 270
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v4, :cond_2

    .line 275
    iget v3, v4, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    if-lez v3, :cond_0

    iget v3, p1, Landroid/util/TypedValue;->density:I

    const v5, 0xffff

    if-eq v3, v5, :cond_0

    .line 277
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v2, v3

    .line 278
    iget v3, v4, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_1

    .line 280
    :cond_0
    const/4 v2, 0x0

    .line 284
    :goto_1
    :try_start_1
    iget-object v3, v4, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 286
    .local v3, "is":Ljava/io/InputStream;
    const-string v5, ".9.png"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 287
    invoke-static {v3}, Landroid/content/res/SimulateNinePngUtil;->convertIntoNinePngStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v5

    move-object v3, v5

    .line 289
    :cond_1
    invoke-static {p0, p1, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v5

    .line 302
    .end local v3    # "is":Ljava/io/InputStream;
    :try_start_2
    iget-object v3, v4, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 305
    :goto_2
    goto :goto_4

    .line 303
    :catch_1
    move-exception v3

    .line 304
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 306
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 301
    :catchall_0
    move-exception v3

    .line 302
    :try_start_3
    iget-object v5, v4, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 305
    goto :goto_3

    .line 303
    :catch_2
    move-exception v5

    .line 304
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 305
    .end local v5    # "e":Ljava/io/IOException;
    :goto_3
    throw v3

    .line 295
    :catch_3
    move-exception v3

    .line 296
    .local v3, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 302
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v3, v4, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 307
    :goto_4
    return-object v1

    .line 310
    :cond_2
    return-object v3
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

    .line 423
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 424
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/content/res/NubiaResources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/NubiaResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 426
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 427
    iget-object v2, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {p0, v2, p1, v3, p2}, Landroid/content/res/NubiaResources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 430
    :cond_0
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/TypedValue;->type:I

    .line 432
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 433
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .line 315
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/res/NubiaResources;->replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 321
    invoke-super {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/res/NubiaResources;->replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Landroid/content/res/NubiaResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 328
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/NubiaResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 329
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "file":Ljava/lang/String;
    const/4 v1, 0x0

    .line 332
    .local v1, "themefileinfo":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    :try_start_0
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    iget v3, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 333
    invoke-direct {p0, v3}, Landroid/content/res/NubiaResources;->getCookieType(I)I

    move-result v3

    .line 332
    invoke-virtual {v2, v3, v0}, Lnubia/content/res/ThemeResources;->getThemeFileStream(ILjava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 336
    goto :goto_0

    .line 334
    :catch_0
    move-exception v2

    .line 335
    .local v2, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 337
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_0

    .line 338
    iget-object v2, v1, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    return-object v2

    .line 341
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "themefileinfo":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 439
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 440
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/content/res/NubiaResources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/NubiaResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 442
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :try_start_1
    invoke-virtual {p0}, Landroid/content/res/NubiaResources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->assetCookie:I

    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 445
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-virtual {v1, v2, v3}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 448
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from drawable resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 451
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 452
    throw v2

    .line 442
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method protected replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 7
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;

    .line 143
    iget-object v0, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/res/NubiaResources;->mHasValues:Z

    if-nez v0, :cond_0

    .line 144
    return-object p1

    .line 147
    :cond_0
    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    .line 148
    .local v0, "data":[I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 149
    add-int/lit8 v2, v1, 0x0

    aget v2, v0, v2

    .line 150
    .local v2, "type":I
    add-int/lit8 v3, v1, 0x3

    aget v3, v0, v3

    .line 151
    .local v3, "resid":I
    const/16 v4, 0x10

    if-lt v2, v4, :cond_1

    const/16 v4, 0x1f

    if-le v2, v4, :cond_2

    :cond_1
    const/4 v4, 0x5

    if-eq v2, v4, :cond_2

    .line 153
    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/res/NubiaResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v4

    .line 156
    .local v4, "value":Ljava/lang/Integer;
    if-nez v4, :cond_3

    .line 157
    goto :goto_1

    .line 159
    :cond_3
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    .line 148
    .end local v2    # "type":I
    .end local v3    # "resid":I
    .end local v4    # "value":Ljava/lang/Integer;
    :goto_1
    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 161
    .end local v1    # "index":I
    :cond_4
    return-object p1
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 347
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/res/NubiaResources;->updateConfigurationInner(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Z)V

    .line 348
    return-void
.end method

.method public updateConfigurationInner(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Z)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "callsuper"    # Z

    .line 352
    invoke-virtual {p0}, Landroid/content/res/NubiaResources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 354
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .local v1, "configChanges":I
    goto :goto_0

    .line 357
    .end local v1    # "configChanges":I
    :cond_0
    const/4 v1, 0x0

    .line 359
    .restart local v1    # "configChanges":I
    :goto_0
    if-eqz p4, :cond_1

    .line 360
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 361
    :cond_1
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    if-eqz v2, :cond_3

    and-int/lit16 v2, v1, 0x200

    if-nez v2, :cond_2

    .line 363
    invoke-static {v1}, Lnubia/content/res/ExtraConfiguration;->needNewResources(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 364
    :cond_2
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mIntegersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 365
    :try_start_0
    iget-object v3, p0, Landroid/content/res/NubiaResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 366
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 368
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 369
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    invoke-virtual {v2}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    move-result v2

    .line 370
    .local v2, "isChange":Z
    iget-object v3, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    invoke-virtual {v3}, Lnubia/content/res/ThemeResources;->hasValues()Z

    move-result v3

    iput-boolean v3, p0, Landroid/content/res/NubiaResources;->mHasValues:Z

    .line 371
    invoke-static {}, Lnubia/content/res/ThemeResourcesPackage;->clearPackageResources()V

    .end local v2    # "isChange":Z
    goto :goto_1

    .line 366
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 373
    :cond_3
    :goto_1
    return-void
.end method
