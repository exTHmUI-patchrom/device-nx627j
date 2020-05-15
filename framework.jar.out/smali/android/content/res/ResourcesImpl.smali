.class public Landroid/content/res/ResourcesImpl;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ResourcesImpl$LookupStack;,
        Landroid/content/res/ResourcesImpl$ThemeImpl;
    }
.end annotation


# static fields
.field private static final DEBUG_CONFIG:Z = false

.field private static final DEBUG_LOAD:Z = false

.field private static final ID_OTHER:I = 0x1000004

.field static final TAG:Ljava/lang/String; = "Resources"

.field static final TAG_PRELOAD:Ljava/lang/String; = "Resources.preload"

.field public static final TRACE_FOR_DETAILED_PRELOAD:Z

.field private static final TRACE_FOR_MISS_PRELOAD:Z = false

.field private static final TRACE_FOR_PRELOAD:Z = false

.field private static final XML_BLOCK_CACHE_SIZE:I = 0x4

.field private static sPreloadTracingNumLoadedDrawables:I

.field private static sPreloaded:Z

.field private static final sPreloadedColorDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreloadedComplexColors:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sPreloadedDrawables:[Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private final mAccessLock:Ljava/lang/Object;

.field private final mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field final mAssets:Landroid/content/res/AssetManager;

.field private final mCachedXmlBlockCookies:[I

.field private final mCachedXmlBlockFiles:[Ljava/lang/String;

.field private final mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

.field private final mColorDrawableCache:Landroid/content/res/DrawableCache;

.field private final mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mDrawableCache:Landroid/content/res/DrawableCache;

.field private mLastCachedXmlBlockIndex:I

.field private final mLookupStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/res/ResourcesImpl$LookupStack;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private mPluralRule:Landroid/icu/text/PluralRules;

.field private mPreloadTracingPreloadStartTime:J

.field private mPreloadTracingStartBitmapCount:J

.field private mPreloadTracingStartBitmapSize:J

.field private mPreloading:Z

.field private mResources:Landroid/content/res/Resources;

.field private mResourcesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpConfig:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 92
    const-string v0, "debug.trace_resource_preload"

    .line 93
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    .line 112
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    .line 115
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    .line 162
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/util/LongSparseArray;

    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    .line 163
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    aput-object v2, v0, v1

    .line 164
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V
    .locals 2
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    .line 121
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    .line 122
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0}, Landroid/content/res/DrawableCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 123
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0}, Landroid/content/res/DrawableCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 124
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 126
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 128
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 135
    sget-object v0, Landroid/content/res/-$$Lambda$ResourcesImpl$h3PTRX185BeQl8SVC2_w9arp5Og;->INSTANCE:Landroid/content/res/-$$Lambda$ResourcesImpl$h3PTRX185BeQl8SVC2_w9arp5Og;

    .line 136
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mLookupStack:Ljava/lang/ThreadLocal;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    .line 143
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    .line 144
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    .line 145
    new-array v0, v0, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 149
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mResourcesList:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 180
    iput-object p1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 181
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 182
    iput-object p4, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 183
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 184
    invoke-virtual {p4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    invoke-virtual {p0, p3, p2, v0}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 185
    return-void
.end method

.method private static adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "languageTag"    # Ljava/lang/String;

    .line 552
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 556
    .local v0, "separator":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 557
    move-object v1, p0

    .line 558
    .local v1, "language":Ljava/lang/String;
    const-string v2, ""

    .local v2, "remainder":Ljava/lang/String;
    goto :goto_0

    .line 560
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "remainder":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 561
    .restart local v1    # "language":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 564
    .restart local v2    # "remainder":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/util/Locale;->adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static attrForQuantityCode(Ljava/lang/String;)I
    .locals 1
    .param p0, "quantityCode"    # Ljava/lang/String;

    .line 325
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "zero"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "many"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "two"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "one"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "few"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 331
    const v0, 0x1000004

    return v0

    .line 330
    :pswitch_0
    const v0, 0x1000009

    return v0

    .line 329
    :pswitch_1
    const v0, 0x1000008

    return v0

    .line 328
    :pswitch_2
    const v0, 0x1000007

    return v0

    .line 327
    :pswitch_3
    const v0, 0x1000006

    return v0

    .line 326
    :pswitch_4
    const v0, 0x1000005

    return v0

    :sswitch_data_0
    .sparse-switch
        0x18b98 -> :sswitch_4
        0x1ae66 -> :sswitch_3
        0x1c24c -> :sswitch_2
        0x33065f -> :sswitch_1
        0x38fea8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V
    .locals 13
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "isColorDrawable"    # Z
    .param p3, "caches"    # Landroid/content/res/DrawableCache;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .param p5, "usesTheme"    # Z
    .param p6, "key"    # J
    .param p8, "dr"    # Landroid/graphics/drawable/Drawable;

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v9, p6

    .line 750
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v11

    .line 751
    .local v11, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v11, :cond_0

    .line 752
    return-void

    .line 755
    :cond_0
    iget-boolean v0, v1, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v0, :cond_4

    .line 756
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    .line 757
    .local v0, "changingConfigs":I
    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 758
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    const-string v5, "drawable"

    invoke-direct {v1, v0, v3, v4, v5}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 759
    sget-object v3, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 762
    :cond_1
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    const-string v5, "drawable"

    const/16 v6, 0x2000

    invoke-direct {v1, v0, v6, v4, v5}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 764
    and-int/lit16 v4, v0, 0x2000

    if-nez v4, :cond_2

    .line 767
    sget-object v4, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    aget-object v3, v4, v3

    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 768
    sget-object v3, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 771
    :cond_2
    sget-object v3, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 775
    .end local v0    # "changingConfigs":I
    :cond_3
    :goto_0
    goto :goto_1

    .line 776
    :cond_4
    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    monitor-enter v12

    .line 777
    move-object/from16 v3, p3

    move-wide v4, v9

    move-object/from16 v6, p4

    move-object v7, v11

    move/from16 v8, p5

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/content/res/DrawableCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V

    .line 778
    monitor-exit v12

    .line 780
    :goto_1
    return-void

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private decodeImageDrawable(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "ais"    # Landroid/content/res/AssetManager$AssetInputStream;
    .param p2, "wrapper"    # Landroid/content/res/Resources;
    .param p3, "value"    # Landroid/util/TypedValue;

    .line 825
    new-instance v0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;

    invoke-direct {v0, p1, p2, p3}, Landroid/graphics/ImageDecoder$AssetInputStreamSource;-><init>(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)V

    .line 828
    .local v0, "src":Landroid/graphics/ImageDecoder$Source;
    :try_start_0
    sget-object v1, Landroid/content/res/-$$Lambda$ResourcesImpl$99dm2ENnzo9b0SIUjUj2Kl3pi90;->INSTANCE:Landroid/content/res/-$$Lambda$ResourcesImpl$99dm2ENnzo9b0SIUjUj2Kl3pi90;

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 831
    :catch_0
    move-exception v1

    .line 834
    .local v1, "ioe":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method private getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;
    .locals 6
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "key"    # J

    .line 1132
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    .line 1133
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ConstantState;

    .line 1134
    .local v0, "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ComplexColor;>;"
    if-eqz v0, :cond_0

    .line 1135
    invoke-virtual {v0}, Landroid/content/res/ConstantState;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    return-object v1

    .line 1138
    :cond_0
    iget v1, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1140
    .local v1, "csl":Landroid/content/res/ColorStateList;
    iget-boolean v2, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v2, :cond_1

    .line 1141
    iget v2, p1, Landroid/util/TypedValue;->changingConfigurations:I

    const/4 v3, 0x0

    iget v4, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v5, "color"

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1143
    sget-object v2, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v3

    invoke-virtual {v2, p2, p3, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1147
    :cond_1
    return-object v1
.end method

.method private getPluralRule()Landroid/icu/text/PluralRules;
    .locals 3

    .line 227
    sget-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/PluralRules;->forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    .line 231
    :cond_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    monitor-exit v0

    return-object v1

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$decodeImageDrawable$1(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 1
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p1, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p2, "s"    # Landroid/graphics/ImageDecoder$Source;

    .line 829
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 830
    return-void
.end method

.method static synthetic lambda$new$0()Landroid/content/res/ResourcesImpl$LookupStack;
    .locals 2

    .line 136
    new-instance v0, Landroid/content/res/ResourcesImpl$LookupStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/res/ResourcesImpl$LookupStack;-><init>(Landroid/content/res/ResourcesImpl$1;)V

    return-object v0
.end method

.method private loadComplexColorForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 9
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1163
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 1168
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1185
    .local v0, "file":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1187
    .local v1, "complexColor":Landroid/content/res/ComplexColor;
    const-wide/16 v2, 0x2000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1188
    const-string v4, ".xml"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1190
    :try_start_0
    iget v4, p2, Landroid/util/TypedValue;->assetCookie:I

    const-string v5, "ComplexColor"

    invoke-virtual {p0, v0, p3, v4, v5}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 1193
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 1195
    .local v5, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v7, v6

    .line 1195
    .local v7, "type":I
    const/4 v8, 0x2

    if-eq v6, v8, :cond_0

    const/4 v6, 0x1

    if-eq v7, v6, :cond_0

    .line 1195
    .end local v7    # "type":I
    goto :goto_0

    .line 1199
    .restart local v7    # "type":I
    :cond_0
    if-ne v7, v8, :cond_3

    .line 1203
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1204
    .local v6, "name":Ljava/lang/String;
    const-string v8, "gradient"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1205
    invoke-static {p1, v4, v5, p4}, Landroid/content/res/GradientColor;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object v8

    move-object v1, v8

    goto :goto_1

    .line 1206
    :cond_1
    const-string/jumbo v8, "selector"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1207
    invoke-static {p1, v4, v5, p4}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v8

    move-object v1, v8

    .line 1209
    :cond_2
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1217
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "type":I
    nop

    .line 1224
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1226
    return-object v1

    .line 1200
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v7    # "type":I
    :cond_3
    :try_start_1
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "No start tag found"

    invoke-direct {v6, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1210
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v7    # "type":I
    :catch_0
    move-exception v4

    .line 1211
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1212
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from ComplexColor resource ID #0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1215
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v4}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1216
    throw v2

    .line 1219
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1220
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from drawable resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": .xml extension required"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1164
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "complexColor":Landroid/content/res/ComplexColor;
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t convert to ComplexColor: type=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/util/TypedValue;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;
    .locals 9
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "value"    # Landroid/util/TypedValue;
    .param p4, "id"    # I

    .line 1026
    iget v0, p3, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p3, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 1027
    .local v0, "key":J
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 1028
    .local v2, "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/content/res/ComplexColor;>;"
    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ComplexColor;

    .line 1029
    .local v3, "complexColor":Landroid/content/res/ComplexColor;
    if-eqz v3, :cond_0

    .line 1030
    return-object v3

    .line 1033
    :cond_0
    sget-object v4, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    .line 1034
    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ConstantState;

    .line 1036
    .local v4, "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ComplexColor;>;"
    if-eqz v4, :cond_1

    .line 1037
    invoke-virtual {v4, p1, p2}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Landroid/content/res/ComplexColor;

    .line 1039
    :cond_1
    if-nez v3, :cond_2

    .line 1040
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/content/res/ResourcesImpl;->loadComplexColorForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v3

    .line 1043
    :cond_2
    if-eqz v3, :cond_4

    .line 1044
    iget v5, p3, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v3, v5}, Landroid/content/res/ComplexColor;->setBaseChangingConfigurations(I)V

    .line 1046
    iget-boolean v5, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v5, :cond_3

    .line 1047
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v5

    const/4 v6, 0x0

    iget v7, p3, Landroid/util/TypedValue;->resourceId:I

    const-string v8, "color"

    invoke-direct {p0, v5, v6, v7, v8}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1049
    sget-object v5, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v6

    invoke-virtual {v5, v0, v1, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 1052
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v5

    invoke-virtual {v2, v0, v1, p2, v5}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    .line 1055
    :cond_4
    :goto_0
    return-object v3
.end method

.method private loadDrawableForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;II)Landroid/graphics/drawable/Drawable;
    .locals 27
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "density"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 857
    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 862
    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 876
    .local v5, "file":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 877
    .local v6, "startTime":J
    const/4 v0, 0x0

    .line 878
    .local v0, "startBitmapCount":I
    const-wide/16 v8, 0x0

    .line 879
    .local v8, "startBitmapSize":J
    const/4 v10, 0x0

    .line 880
    .local v10, "startDrawableCount":I
    sget-boolean v11, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    if-eqz v11, :cond_0

    .line 881
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 882
    sget v0, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    .line 883
    sget-wide v8, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    .line 884
    sget v10, Landroid/content/res/ResourcesImpl;->sPreloadTracingNumLoadedDrawables:I

    .line 895
    .end local v0    # "startBitmapCount":I
    .local v11, "startBitmapCount":I
    :cond_0
    move v11, v0

    const/4 v12, 0x0

    .line 898
    .local v12, "dr":Landroid/graphics/drawable/Drawable;
    const-wide/16 v13, 0x2000

    invoke-static {v13, v14, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 899
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mLookupStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ResourcesImpl$LookupStack;

    move-object v15, v0

    .line 902
    .local v15, "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    :try_start_0
    invoke-virtual {v15, v4}, Landroid/content/res/ResourcesImpl$LookupStack;->contains(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 905
    invoke-virtual {v15, v4}, Landroid/content/res/ResourcesImpl$LookupStack;->push(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    .line 907
    :try_start_1
    const-string v0, ".xml"

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_1

    .line 908
    :try_start_2
    iget v0, v3, Landroid/util/TypedValue;->assetCookie:I

    const-string v13, "drawable"

    invoke-virtual {v1, v5, v4, v0, v13}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 910
    .local v0, "rp":Landroid/content/res/XmlResourceParser;
    const/4 v13, 0x0

    move/from16 v14, p4

    invoke-static {v2, v0, v14, v13}, Landroid/graphics/drawable/Drawable;->createFromXmlForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object v12, v13

    .line 911
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 916
    .end local v0    # "rp":Landroid/content/res/XmlResourceParser;
    goto :goto_0

    .line 926
    :catchall_0
    move-exception v0

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    goto/16 :goto_5

    .line 916
    :cond_1
    move/from16 v14, p4

    :try_start_3
    invoke-virtual/range {p1 .. p3}, Landroid/content/res/Resources;->loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v12, v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 920
    :cond_2
    :try_start_4
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v13, v3, Landroid/util/TypedValue;->assetCookie:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v18, v12

    const/4 v12, 0x2

    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .local v18, "dr":Landroid/graphics/drawable/Drawable;
    :try_start_5
    invoke-virtual {v0, v13, v5, v12}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    .line 922
    .local v0, "is":Ljava/io/InputStream;
    move-object v12, v0

    check-cast v12, Landroid/content/res/AssetManager$AssetInputStream;

    .line 923
    .local v12, "ais":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-direct {v1, v12, v2, v3}, Landroid/content/res/ResourcesImpl;->decodeImageDrawable(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v0, v13

    .line 926
    .end local v12    # "ais":Landroid/content/res/AssetManager$AssetInputStream;
    .end local v18    # "dr":Landroid/graphics/drawable/Drawable;
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    move-object v12, v0

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .local v12, "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    :try_start_6
    invoke-virtual {v15}, Landroid/content/res/ResourcesImpl$LookupStack;->pop()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_6 .. :try_end_6} :catch_1

    .line 927
    nop

    .line 934
    nop

    .line 935
    const-wide/16 v13, 0x2000

    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 937
    sget-boolean v0, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    if-eqz v0, :cond_5

    .line 938
    ushr-int/lit8 v0, v4, 0x18

    const/4 v13, 0x1

    if-ne v0, v13, :cond_5

    .line 939
    invoke-virtual {v1, v4}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 941
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    sub-long v16, v16, v6

    .line 942
    .local v16, "time":J
    sget v14, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    sub-int/2addr v14, v11

    .line 944
    .local v14, "loadedBitmapCount":I
    sget-wide v19, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    move/from16 v21, v14

    sub-long v13, v19, v8

    .line 946
    .end local v14    # "loadedBitmapCount":I
    .local v13, "loadedBitmapSize":J
    .local v21, "loadedBitmapCount":I
    sget v18, Landroid/content/res/ResourcesImpl;->sPreloadTracingNumLoadedDrawables:I

    sub-int v2, v18, v10

    .line 949
    .local v2, "loadedDrawables":I
    sget v18, Landroid/content/res/ResourcesImpl;->sPreloadTracingNumLoadedDrawables:I

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    sput v18, Landroid/content/res/ResourcesImpl;->sPreloadTracingNumLoadedDrawables:I

    .line 951
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v18

    if-nez v18, :cond_3

    move/from16 v18, v19

    goto :goto_1

    :cond_3
    const/16 v18, 0x0

    .line 953
    .local v18, "isRoot":Z
    :goto_1
    move-wide/from16 v22, v6

    const-string v6, "Resources.preload"

    .end local v6    # "startTime":J
    .local v22, "startTime":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 954
    if-eqz v18, :cond_4

    const-string v19, "Preloaded FW drawable #"

    .line 955
    .end local v8    # "startBitmapSize":J
    .local v24, "startBitmapSize":J
    :goto_2
    move-wide/from16 v24, v8

    move-object/from16 v8, v19

    goto :goto_3

    .end local v24    # "startBitmapSize":J
    .restart local v8    # "startBitmapSize":J
    :cond_4
    const-string v19, "Loaded non-preloaded FW drawable #"

    goto :goto_2

    .end local v8    # "startBitmapSize":J
    .restart local v24    # "startBitmapSize":J
    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " #nested_drawables= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " #bitmaps= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v21

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v21    # "loadedBitmapCount":I
    .local v8, "loadedBitmapCount":I
    const-string v9, " total_bitmap_size= "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " in[us] "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v19, 0x3e8

    move/from16 v26, v8

    div-long v8, v16, v19

    .end local v8    # "loadedBitmapCount":I
    .local v26, "loadedBitmapCount":I
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 953
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "loadedDrawables":I
    .end local v13    # "loadedBitmapSize":J
    .end local v16    # "time":J
    .end local v18    # "isRoot":Z
    .end local v26    # "loadedBitmapCount":I
    goto :goto_4

    .line 968
    .end local v22    # "startTime":J
    .end local v24    # "startBitmapSize":J
    .restart local v6    # "startTime":J
    .local v8, "startBitmapSize":J
    :cond_5
    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    .end local v6    # "startTime":J
    .end local v8    # "startBitmapSize":J
    .restart local v22    # "startTime":J
    .restart local v24    # "startBitmapSize":J
    :goto_4
    return-object v12

    .line 926
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v22    # "startTime":J
    .end local v24    # "startBitmapSize":J
    .restart local v6    # "startTime":J
    .restart local v8    # "startBitmapSize":J
    .local v18, "dr":Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v0

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-object/from16 v12, v18

    goto :goto_5

    .end local v18    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    :catchall_2
    move-exception v0

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-object/from16 v18, v12

    .end local v6    # "startTime":J
    .end local v8    # "startBitmapSize":J
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v22    # "startTime":J
    .restart local v24    # "startBitmapSize":J
    goto :goto_5

    .end local v18    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v22    # "startTime":J
    .end local v24    # "startBitmapSize":J
    .restart local v6    # "startTime":J
    .restart local v8    # "startBitmapSize":J
    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    :catchall_3
    move-exception v0

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    .end local v6    # "startTime":J
    .end local v8    # "startBitmapSize":J
    .restart local v22    # "startTime":J
    .restart local v24    # "startBitmapSize":J
    :goto_5
    :try_start_7
    invoke-virtual {v15}, Landroid/content/res/ResourcesImpl$LookupStack;->pop()V

    throw v0

    .line 903
    .end local v22    # "startTime":J
    .end local v24    # "startBitmapSize":J
    .restart local v6    # "startTime":J
    .restart local v8    # "startBitmapSize":J
    :cond_6
    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    .end local v6    # "startTime":J
    .end local v8    # "startBitmapSize":J
    .restart local v22    # "startTime":J
    .restart local v24    # "startBitmapSize":J
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Recursive reference in drawable"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_7 .. :try_end_7} :catch_0

    .line 928
    :catch_0
    move-exception v0

    goto :goto_6

    .end local v22    # "startTime":J
    .end local v24    # "startBitmapSize":J
    .restart local v6    # "startTime":J
    .restart local v8    # "startBitmapSize":J
    :catch_1
    move-exception v0

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    .line 929
    .end local v6    # "startTime":J
    .end local v8    # "startBitmapSize":J
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v22    # "startTime":J
    .restart local v24    # "startBitmapSize":J
    :goto_6
    const-wide/16 v6, 0x2000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 930
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from drawable resource ID #0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 932
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 933
    throw v2

    .line 858
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v5    # "file":Ljava/lang/String;
    .end local v10    # "startDrawableCount":I
    .end local v11    # "startBitmapCount":I
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v15    # "stack":Landroid/content/res/ResourcesImpl$LookupStack;
    .end local v22    # "startTime":J
    .end local v24    # "startBitmapSize":J
    :cond_7
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource \""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") is not a Drawable (color or path): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyPreloadConfig(IIILjava/lang/String;)Z
    .locals 4
    .param p1, "changingConfigurations"    # I
    .param p2, "allowVarying"    # I
    .param p3, "resourceId"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 788
    const v0, -0x40001001    # -1.9995116f

    and-int/2addr v0, p1

    not-int v1, p2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 792
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    .local v0, "resName":Ljava/lang/String;
    goto :goto_0

    .line 793
    .end local v0    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v0, "?"

    .line 798
    .local v0, "resName":Ljava/lang/String;
    :goto_0
    const-string v1, "Resources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preloaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resource #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") that varies with configuration!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 798
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v1, 0x0

    return v1

    .line 814
    .end local v0    # "resName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public calcConfigChanges(Landroid/content/res/Configuration;)I
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 521
    if-nez p1, :cond_0

    .line 523
    const/4 v0, -0x1

    return v0

    .line 526
    :cond_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 527
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 528
    .local v0, "density":I
    if-nez v0, :cond_1

    .line 529
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 532
    :cond_1
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 534
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 535
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 537
    :cond_2
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    return v1
.end method

.method finishPreloading()V
    .locals 9

    .line 1315
    iget-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v0, :cond_1

    .line 1316
    sget-boolean v0, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    if-eqz v0, :cond_0

    .line 1317
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingPreloadStartTime:J

    sub-long/2addr v0, v2

    .line 1318
    .local v0, "time":J
    sget-wide v2, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    iget-wide v4, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingStartBitmapSize:J

    sub-long/2addr v2, v4

    .line 1320
    .local v2, "size":J
    sget v4, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    int-to-long v4, v4

    iget-wide v6, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingStartBitmapCount:J

    sub-long/2addr v4, v6

    .line 1322
    .local v4, "count":J
    const-string v6, "Resources.preload"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preload finished, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " bitmaps of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " bytes in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    .end local v0    # "time":J
    .end local v2    # "size":J
    .end local v4    # "count":J
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    .line 1327
    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 1329
    :cond_1
    return-void
.end method

.method public flushLayoutCache()V
    .locals 5

    .line 573
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    monitor-enter v0

    .line 574
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 575
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 577
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 578
    .local v1, "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    nop

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v2, v4, :cond_1

    .line 579
    aget-object v4, v1, v2

    .line 580
    .local v4, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v4, :cond_0

    .line 581
    invoke-virtual {v4}, Landroid/content/res/XmlBlock;->close()V

    .line 578
    .end local v4    # "oldBlock":Landroid/content/res/XmlBlock;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    .end local v2    # "i":I
    :cond_1
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 585
    .end local v1    # "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    monitor-exit v0

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 205
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .line 223
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 215
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .locals 1

    .line 201
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    return-object v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 211
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .line 264
    if-eqz p1, :cond_0

    .line 268
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 269
    :catch_0
    move-exception v0

    .line 272
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getPreloadedDrawables()Landroid/util/LongSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    .line 1332
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method getQuantityText(II)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 309
    invoke-direct {p0}, Landroid/content/res/ResourcesImpl;->getPluralRule()Landroid/icu/text/PluralRules;

    move-result-object v0

    .line 310
    .local v0, "rule":Landroid/icu/text/PluralRules;
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    int-to-double v2, p2

    .line 311
    invoke-virtual {v0, v2, v3}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/ResourcesImpl;->attrForQuantityCode(Ljava/lang/String;)I

    move-result v2

    .line 310
    invoke-virtual {v1, p1, v2}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 312
    .local v1, "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 313
    return-object v1

    .line 315
    :cond_0
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    const v3, 0x1000004

    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 316
    if-eqz v1, :cond_1

    .line 317
    return-object v1

    .line 319
    :cond_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Plural resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " quantity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-double v4, p2

    .line 321
    invoke-virtual {v0, v4, v5}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getResourceEntryName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 303
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResourceName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 279
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResourcePackageName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 287
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResourceTypeName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 295
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 196
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method getSizeConfigurations()[Landroid/content/res/Configuration;
    .locals 1

    .line 219
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method getValue(ILandroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 238
    .local v0, "found":Z
    if-eqz v0, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 255
    const-string/jumbo v0, "string"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/ResourcesImpl;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 256
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0, v0, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 258
    return-void

    .line 260
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 247
    .local v0, "found":Z
    if-eqz v0, :cond_0

    .line 248
    return-void

    .line 250
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasDrawableInNubiaThemePackage(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Z
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I

    .line 842
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 843
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 845
    :cond_1
    return v0
.end method

.method loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1111
    iget v0, p2, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p2, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 1114
    .local v0, "key":J
    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    .line 1116
    invoke-direct {p0, p2, v0, v1}, Landroid/content/res/ResourcesImpl;->getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2

    .line 1119
    :cond_0
    invoke-direct {p0, p1, p4, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;

    move-result-object v2

    .line 1120
    .local v2, "complexColor":Landroid/content/res/ComplexColor;
    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    .line 1121
    move-object v3, v2

    check-cast v3, Landroid/content/res/ColorStateList;

    return-object v3

    .line 1124
    :cond_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find ColorStateList from drawable resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method loadComplexColor(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 7
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1069
    iget v0, p2, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p2, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 1072
    .local v0, "key":J
    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    .line 1074
    invoke-direct {p0, p2, v0, v1}, Landroid/content/res/ResourcesImpl;->getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2

    .line 1077
    :cond_0
    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1080
    .local v2, "file":Ljava/lang/String;
    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1082
    :try_start_0
    invoke-direct {p0, p1, p4, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    .local v3, "complexColor":Landroid/content/res/ComplexColor;
    nop

    .line 1093
    nop

    .line 1096
    return-object v3

    .line 1083
    .end local v3    # "complexColor":Landroid/content/res/ComplexColor;
    :catch_0
    move-exception v3

    .line 1084
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from complex color resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1087
    .local v4, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1088
    throw v4

    .line 1091
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from drawable resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": .xml extension required"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 27
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "density"    # I
    .param p5, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    .line 595
    move-object/from16 v15, p5

    if-eqz v14, :cond_1

    iget v1, v12, Landroid/util/TypedValue;->density:I

    iget-object v2, v10, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move/from16 v16, v1

    .line 602
    .local v16, "useCache":Z
    if-lez v14, :cond_3

    iget v1, v12, Landroid/util/TypedValue;->density:I

    if-lez v1, :cond_3

    iget v1, v12, Landroid/util/TypedValue;->density:I

    const v2, 0xffff

    if-eq v1, v2, :cond_3

    .line 603
    iget v1, v12, Landroid/util/TypedValue;->density:I

    if-ne v1, v14, :cond_2

    .line 604
    iget-object v1, v10, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v12, Landroid/util/TypedValue;->density:I

    goto :goto_2

    .line 606
    :cond_2
    iget v1, v12, Landroid/util/TypedValue;->density:I

    iget-object v2, v10, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v1, v2

    div-int/2addr v1, v14

    iput v1, v12, Landroid/util/TypedValue;->density:I

    .line 624
    :cond_3
    :goto_2
    :try_start_0
    iget v1, v12, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_4

    iget v1, v12, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_4

    .line 626
    const/4 v1, 0x1

    .line 627
    .local v1, "isColorDrawable":Z
    iget-object v2, v10, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 628
    .local v2, "caches":Landroid/content/res/DrawableCache;
    iget v3, v12, Landroid/util/TypedValue;->data:I

    int-to-long v3, v3

    .line 628
    .local v3, "key":J
    goto :goto_3

    .line 630
    .end local v1    # "isColorDrawable":Z
    .end local v2    # "caches":Landroid/content/res/DrawableCache;
    .end local v3    # "key":J
    :cond_4
    const/4 v1, 0x0

    .line 631
    .restart local v1    # "isColorDrawable":Z
    iget-object v2, v10, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 632
    .restart local v2    # "caches":Landroid/content/res/DrawableCache;
    iget v3, v12, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    iget v5, v12, Landroid/util/TypedValue;->data:I

    int-to-long v5, v5

    or-long/2addr v3, v5

    .line 632
    .end local v1    # "isColorDrawable":Z
    .end local v2    # "caches":Landroid/content/res/DrawableCache;
    .restart local v3    # "key":J
    .local v7, "caches":Landroid/content/res/DrawableCache;
    .local v8, "isColorDrawable":Z
    :goto_3
    move v8, v1

    move-object v7, v2

    move-wide v5, v3

    .line 638
    .end local v3    # "key":J
    .local v5, "key":J
    iget-boolean v1, v10, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-nez v1, :cond_5

    if-eqz v16, :cond_5

    .line 639
    invoke-virtual {v7, v5, v6, v11, v15}, Landroid/content/res/DrawableCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 640
    .local v1, "cachedDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_5

    .line 641
    iget v0, v12, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 642
    return-object v1

    .line 647
    .end local v1    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    if-nez v8, :cond_6

    .line 648
    iget-object v1, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v13, v1}, Landroid/content/res/NubiaDrawableCacheUtil;->loadDrawableFromeCache(ILjava/lang/CharSequence;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 649
    .local v1, "cacheDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_6

    return-object v1

    .line 652
    .end local v1    # "cacheDrawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    const-wide/16 v1, 0x0

    .line 653
    .local v1, "loadDrawableStartTime":J
    const-wide/16 v3, 0x0

    .line 659
    .local v3, "loadDrawableCostTime":J
    if-eqz v8, :cond_7

    .line 660
    sget-object v9, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 660
    .local v9, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_4

    .line 662
    .end local v9    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_7
    sget-object v9, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    iget-object v0, v10, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    aget-object v0, v9, v0

    invoke-virtual {v0, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/graphics/drawable/Drawable$ConstantState;

    .restart local v9    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_4
    move-object v0, v9

    .line 666
    .end local v9    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    const/4 v9, 0x0

    .line 667
    .local v9, "needsNewDrawableAfterCache":Z
    if-eqz v0, :cond_a

    .line 668
    sget-boolean v18, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    if-eqz v18, :cond_9

    .line 670
    move-wide/from16 v19, v1

    ushr-int/lit8 v1, v13, 0x18

    .line 670
    .end local v1    # "loadDrawableStartTime":J
    .local v19, "loadDrawableStartTime":J
    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eqz v1, :cond_8

    .line 671
    invoke-virtual {v10, v13}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 673
    const-string v2, "Resources.preload"

    move-wide/from16 v22, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .line 673
    .end local v3    # "loadDrawableCostTime":J
    .local v22, "loadDrawableCostTime":J
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hit preloaded FW drawable #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 673
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_5

    .line 678
    .end local v22    # "loadDrawableCostTime":J
    .restart local v3    # "loadDrawableCostTime":J
    :cond_8
    move-wide/from16 v22, v3

    .line 678
    .end local v3    # "loadDrawableCostTime":J
    .restart local v22    # "loadDrawableCostTime":J
    goto :goto_5

    .line 678
    .end local v19    # "loadDrawableStartTime":J
    .end local v22    # "loadDrawableCostTime":J
    .local v1, "loadDrawableStartTime":J
    .restart local v3    # "loadDrawableCostTime":J
    :cond_9
    move-wide/from16 v19, v1

    move-wide/from16 v22, v3

    .line 678
    .end local v1    # "loadDrawableStartTime":J
    .end local v3    # "loadDrawableCostTime":J
    .restart local v19    # "loadDrawableStartTime":J
    .restart local v22    # "loadDrawableCostTime":J
    :goto_5
    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 693
    .end local v22    # "loadDrawableCostTime":J
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "loadDrawableCostTime":J
    :goto_6
    move-wide/from16 v3, v22

    goto :goto_7

    .line 679
    .end local v19    # "loadDrawableStartTime":J
    .local v1, "loadDrawableStartTime":J
    :cond_a
    move-wide/from16 v19, v1

    move-wide/from16 v22, v3

    .line 679
    .end local v1    # "loadDrawableStartTime":J
    .end local v3    # "loadDrawableCostTime":J
    .restart local v19    # "loadDrawableStartTime":J
    .restart local v22    # "loadDrawableCostTime":J
    if-eqz v8, :cond_b

    .line 680
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, v12, Landroid/util/TypedValue;->data:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_6

    .line 683
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 685
    .end local v19    # "loadDrawableStartTime":J
    .restart local v1    # "loadDrawableStartTime":J
    invoke-direct/range {p0 .. p4}, Landroid/content/res/ResourcesImpl;->loadDrawableForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 687
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v1

    .line 693
    .end local v22    # "loadDrawableCostTime":J
    .local v17, "loadDrawableCostTime":J
    move-wide/from16 v19, v1

    move-object v1, v3

    move-wide/from16 v3, v17

    .line 693
    .end local v17    # "loadDrawableCostTime":J
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    .local v3, "loadDrawableCostTime":J
    .restart local v19    # "loadDrawableStartTime":J
    :goto_7
    instance-of v2, v1, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v2, :cond_c

    .line 694
    const/4 v9, 0x1

    .line 700
    .end local v9    # "needsNewDrawableAfterCache":Z
    .local v17, "needsNewDrawableAfterCache":Z
    :cond_c
    move/from16 v17, v9

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v21, 0x1

    goto :goto_8

    :cond_d
    const/16 v21, 0x0

    :goto_8
    move/from16 v18, v21

    .line 701
    .local v18, "canApplyTheme":Z
    if-eqz v18, :cond_e

    if-eqz v15, :cond_e

    .line 702
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 703
    invoke-virtual {v1, v15}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 704
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 710
    :cond_e
    move-object v9, v1

    .line 710
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .local v9, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_11

    .line 711
    iget v1, v12, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 712
    if-eqz v16, :cond_11

    .line 713
    move-object v1, v10

    move-object v2, v12

    move-wide v10, v3

    move v3, v8

    .line 713
    .end local v3    # "loadDrawableCostTime":J
    .local v10, "loadDrawableCostTime":J
    move-object v4, v7

    move-wide/from16 v21, v5

    move-object v5, v15

    .line 713
    .end local v5    # "key":J
    .local v21, "key":J
    move/from16 v6, v18

    move-object/from16 v24, v0

    move-object/from16 v23, v7

    move v0, v8

    move-wide/from16 v7, v21

    .line 713
    .end local v7    # "caches":Landroid/content/res/DrawableCache;
    .end local v8    # "isColorDrawable":Z
    .local v0, "isColorDrawable":Z
    .local v23, "caches":Landroid/content/res/DrawableCache;
    .local v24, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    move-object/from16 v25, v9

    const/4 v14, 0x0

    .line 713
    .end local v9    # "dr":Landroid/graphics/drawable/Drawable;
    .local v25, "dr":Landroid/graphics/drawable/Drawable;
    :try_start_1
    invoke-direct/range {v1 .. v9}, Landroid/content/res/ResourcesImpl;->cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V

    .line 715
    iget-object v1, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    iget-object v1, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "res/drawable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 716
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, v25

    invoke-static {v0, v2, v13, v1}, Landroid/content/res/NubiaDrawableCacheUtil;->checkDrawableIfCache(ZLandroid/graphics/drawable/Drawable;ILjava/lang/Long;)V

    .line 716
    .end local v25    # "dr":Landroid/graphics/drawable/Drawable;
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_9

    .line 719
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v25    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_f
    move-object/from16 v2, v25

    .line 719
    .end local v25    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_9
    if-eqz v17, :cond_10

    .line 720
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 721
    .local v1, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_10

    .line 722
    move-wide v4, v10

    move-object/from16 v3, p1

    :try_start_2
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 722
    .end local v10    # "loadDrawableCostTime":J
    .local v4, "loadDrawableCostTime":J
    move-object v9, v6

    .line 722
    .end local v1    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_b

    .line 729
    .end local v0    # "isColorDrawable":Z
    .end local v4    # "loadDrawableCostTime":J
    .end local v9    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v17    # "needsNewDrawableAfterCache":Z
    .end local v18    # "canApplyTheme":Z
    .end local v19    # "loadDrawableStartTime":J
    .end local v21    # "key":J
    .end local v23    # "caches":Landroid/content/res/DrawableCache;
    .end local v24    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :catch_0
    move-exception v0

    goto :goto_c

    .line 728
    .restart local v0    # "isColorDrawable":Z
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "loadDrawableCostTime":J
    .restart local v17    # "needsNewDrawableAfterCache":Z
    .restart local v18    # "canApplyTheme":Z
    .restart local v19    # "loadDrawableStartTime":J
    .restart local v21    # "key":J
    .restart local v23    # "caches":Landroid/content/res/DrawableCache;
    .restart local v24    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_10
    move-wide v4, v10

    move-object/from16 v3, p1

    .line 728
    .end local v10    # "loadDrawableCostTime":J
    .restart local v4    # "loadDrawableCostTime":J
    goto :goto_a

    .line 729
    .end local v0    # "isColorDrawable":Z
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v4    # "loadDrawableCostTime":J
    .end local v17    # "needsNewDrawableAfterCache":Z
    .end local v18    # "canApplyTheme":Z
    .end local v19    # "loadDrawableStartTime":J
    .end local v21    # "key":J
    .end local v23    # "caches":Landroid/content/res/DrawableCache;
    .end local v24    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :catch_1
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_c

    .line 728
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v3    # "loadDrawableCostTime":J
    .restart local v5    # "key":J
    .restart local v7    # "caches":Landroid/content/res/DrawableCache;
    .restart local v8    # "isColorDrawable":Z
    .restart local v9    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "needsNewDrawableAfterCache":Z
    .restart local v18    # "canApplyTheme":Z
    .restart local v19    # "loadDrawableStartTime":J
    :cond_11
    move-object/from16 v24, v0

    move-wide/from16 v21, v5

    move-object/from16 v23, v7

    move v0, v8

    move-object v2, v9

    move-wide v4, v3

    move-object v3, v11

    .line 728
    .end local v3    # "loadDrawableCostTime":J
    .end local v5    # "key":J
    .end local v7    # "caches":Landroid/content/res/DrawableCache;
    .end local v8    # "isColorDrawable":Z
    .end local v9    # "dr":Landroid/graphics/drawable/Drawable;
    .local v0, "isColorDrawable":Z
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "loadDrawableCostTime":J
    .restart local v21    # "key":J
    .restart local v23    # "caches":Landroid/content/res/DrawableCache;
    .restart local v24    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_a
    move-object v9, v2

    .line 728
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_b
    return-object v9

    .line 729
    .end local v0    # "isColorDrawable":Z
    .end local v4    # "loadDrawableCostTime":J
    .end local v9    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v17    # "needsNewDrawableAfterCache":Z
    .end local v18    # "canApplyTheme":Z
    .end local v19    # "loadDrawableStartTime":J
    .end local v21    # "key":J
    .end local v23    # "caches":Landroid/content/res/DrawableCache;
    .end local v24    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :catch_2
    move-exception v0

    move-object v3, v11

    const/4 v14, 0x0

    :goto_c
    move-object v1, v0

    .line 732
    .local v1, "e":Ljava/lang/Exception;
    move-object/from16 v2, p0

    :try_start_3
    invoke-virtual {v2, v13}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 735
    .local v0, "name":Ljava/lang/String;
    goto :goto_d

    .line 733
    .end local v0    # "name":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v4, v0

    .line 734
    .local v0, "e2":Landroid/content/res/Resources$NotFoundException;
    const-string v0, "(missing name)"

    .line 741
    .local v0, "name":Ljava/lang/String;
    :goto_d
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Drawable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " with resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 743
    .local v4, "nfe":Landroid/content/res/Resources$NotFoundException;
    new-array v5, v14, [Ljava/lang/StackTraceElement;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$NotFoundException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 744
    throw v4
.end method

.method public loadFont(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/Typeface;
    .locals 9
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I

    .line 976
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 981
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "file":Ljava/lang/String;
    const-string/jumbo v1, "res/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 983
    return-object v2

    .line 986
    :cond_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 987
    .local v1, "cached":Landroid/graphics/Typeface;
    if-eqz v1, :cond_1

    .line 988
    return-object v1

    .line 995
    :cond_1
    const-wide/16 v3, 0x2000

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 997
    :try_start_0
    const-string/jumbo v5, "xml"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 998
    iget v5, p2, Landroid/util/TypedValue;->assetCookie:I

    const-string v6, "font"

    invoke-virtual {p0, v0, p3, v5, v6}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 1000
    .local v5, "rp":Landroid/content/res/XmlResourceParser;
    nop

    .line 1001
    invoke-static {v5, p1}, Landroid/content/res/FontResourcesParser;->parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;

    move-result-object v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    .local v6, "familyEntry":Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    if-nez v6, :cond_2

    .line 1003
    nop

    .line 1013
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1003
    return-object v2

    .line 1005
    :cond_2
    :try_start_1
    iget-object v7, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-static {v6, v7, v0}, Landroid/graphics/Typeface;->createFromResources(Landroid/content/res/FontResourcesParser$FamilyResourceEntry;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1005
    return-object v7

    .line 1007
    .end local v5    # "rp":Landroid/content/res/XmlResourceParser;
    .end local v6    # "familyEntry":Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    :cond_3
    :try_start_2
    iget-object v5, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v6, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-static {v5, v0, v6}, Landroid/graphics/Typeface;->createFromResources(Landroid/content/res/AssetManager;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1013
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1007
    return-object v5

    .line 1013
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 1010
    :catch_0
    move-exception v5

    .line 1011
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    const-string v6, "Resources"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to read xml resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1008
    :catch_1
    move-exception v5

    .line 1009
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "Resources"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse xml resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1013
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1014
    nop

    .line 1015
    return-object v2

    .line 1013
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 977
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "cached":Landroid/graphics/Typeface;
    :cond_4
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is not a Font: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 9
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "assetCookie"    # I
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1243
    if-eqz p2, :cond_4

    .line 1245
    :try_start_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    :try_start_1
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    .line 1247
    .local v1, "cachedXmlBlockCookies":[I
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    .line 1248
    .local v2, "cachedXmlBlockFiles":[Ljava/lang/String;
    iget-object v3, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 1250
    .local v3, "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    array-length v4, v2

    .line 1251
    .local v4, "num":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 1252
    aget v6, v1, v5

    if-ne v6, p3, :cond_0

    aget-object v6, v2, v5

    if-eqz v6, :cond_0

    aget-object v6, v2, v5

    .line 1253
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1254
    aget-object v6, v3, v5

    invoke-virtual {v6}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v6

    monitor-exit v0

    return-object v6

    .line 1251
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1260
    .end local v5    # "i":I
    :cond_1
    iget-object v5, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v5, p3, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v5

    .line 1261
    .local v5, "block":Landroid/content/res/XmlBlock;
    if-eqz v5, :cond_3

    .line 1262
    iget v6, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    add-int/lit8 v6, v6, 0x1

    rem-int/2addr v6, v4

    .line 1263
    .local v6, "pos":I
    iput v6, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    .line 1264
    aget-object v7, v3, v6

    .line 1265
    .local v7, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v7, :cond_2

    .line 1266
    invoke-virtual {v7}, Landroid/content/res/XmlBlock;->close()V

    .line 1268
    :cond_2
    aput p3, v1, v6

    .line 1269
    aput-object p1, v2, v6

    .line 1270
    aput-object v5, v3, v6

    .line 1271
    invoke-virtual {v5}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v8

    monitor-exit v0

    return-object v8

    .line 1273
    .end local v1    # "cachedXmlBlockCookies":[I
    .end local v2    # "cachedXmlBlockFiles":[Ljava/lang/String;
    .end local v3    # "cachedXmlBlocks":[Landroid/content/res/XmlBlock;
    .end local v4    # "num":I
    .end local v5    # "block":Landroid/content/res/XmlBlock;
    .end local v6    # "pos":I
    .end local v7    # "oldBlock":Landroid/content/res/XmlBlock;
    :cond_3
    monitor-exit v0

    .line 1279
    goto :goto_1

    .line 1273
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1274
    :catch_0
    move-exception v0

    .line 1275
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from xml type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1277
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1278
    throw v1

    .line 1282
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    :goto_1
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from xml type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resource ID #0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method newThemeImpl()Landroid/content/res/ResourcesImpl$ThemeImpl;
    .locals 1

    .line 1336
    new-instance v0, Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-direct {v0, p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;-><init>(Landroid/content/res/ResourcesImpl;)V

    return-object v0
.end method

.method newThemeImpl(Landroid/content/res/Resources$ThemeKey;)Landroid/content/res/ResourcesImpl$ThemeImpl;
    .locals 2
    .param p1, "key"    # Landroid/content/res/Resources$ThemeKey;

    .line 1343
    new-instance v0, Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-direct {v0, p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;-><init>(Landroid/content/res/ResourcesImpl;)V

    .line 1344
    .local v0, "impl":Landroid/content/res/ResourcesImpl$ThemeImpl;
    invoke-static {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->access$000(Landroid/content/res/ResourcesImpl$ThemeImpl;)Landroid/content/res/Resources$ThemeKey;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources$ThemeKey;->setTo(Landroid/content/res/Resources$ThemeKey;)V

    .line 1345
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->rebase()V

    .line 1346
    return-object v0
.end method

.method openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 349
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 351
    :try_start_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v1, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 353
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    const-string v3, "(null)"

    goto :goto_0

    :cond_0
    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from drawable resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 358
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 359
    throw v1
.end method

.method openRawResourceFd(ILandroid/util/TypedValue;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .param p1, "id"    # I
    .param p2, "tempValue"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 338
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 340
    :try_start_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v1, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from drawable resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resource"    # Landroid/content/res/Resources;

    .line 190
    iput-object p1, p0, Landroid/content/res/ResourcesImpl;->mResources:Landroid/content/res/Resources;

    .line 191
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mResourcesList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public final startPreloading()V
    .locals 3

    .line 1292
    sget-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1293
    :try_start_0
    sget-boolean v1, Landroid/content/res/ResourcesImpl;->sPreloaded:Z

    if-nez v1, :cond_1

    .line 1296
    const/4 v1, 0x1

    sput-boolean v1, Landroid/content/res/ResourcesImpl;->sPreloaded:Z

    .line 1297
    iput-boolean v1, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    .line 1298
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 1299
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1301
    sget-boolean v1, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    if-eqz v1, :cond_0

    .line 1302
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingPreloadStartTime:J

    .line 1303
    sget-wide v1, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    iput-wide v1, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingStartBitmapSize:J

    .line 1304
    sget v1, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingStartBitmapCount:J

    .line 1305
    const-string v1, "Resources.preload"

    const-string v2, "Preload starting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_0
    monitor-exit v0

    .line 1308
    return-void

    .line 1294
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Resources already preloaded"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1307
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 37
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 373
    move-object/from16 v4, p3

    const-string v0, "ResourcesImpl#updateConfiguration"

    const-wide/16 v5, 0x2000

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 375
    :try_start_0
    iget-object v7, v1, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 383
    if-eqz v4, :cond_0

    .line 384
    :try_start_1
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, v4}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 386
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 387
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 400
    :cond_1
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mResourcesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 401
    .local v0, "refCount":I
    const/4 v8, 0x0

    move v9, v8

    .local v9, "i":I
    :goto_1
    if-ge v9, v0, :cond_3

    .line 402
    iget-object v10, v1, Landroid/content/res/ResourcesImpl;->mResourcesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    .line 403
    .local v10, "weakResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/Resources;

    .line 404
    .local v11, "resources":Landroid/content/res/Resources;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v12

    if-ne v12, v1, :cond_2

    instance-of v12, v11, Landroid/content/res/NubiaResources;

    if-eqz v12, :cond_2

    .line 405
    move-object v12, v11

    check-cast v12, Landroid/content/res/NubiaResources;

    invoke-virtual {v12, v2, v3, v4, v8}, Landroid/content/res/NubiaResources;->updateConfigurationInner(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Z)V

    .line 401
    .end local v10    # "weakResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v11    # "resources":Landroid/content/res/Resources;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 409
    .end local v9    # "i":I
    :cond_3
    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mResources:Landroid/content/res/Resources;

    if-eqz v9, :cond_4

    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mResources:Landroid/content/res/Resources;

    instance-of v9, v9, Landroid/content/res/NubiaResources;

    if-eqz v9, :cond_4

    .line 410
    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mResources:Landroid/content/res/Resources;

    check-cast v9, Landroid/content/res/NubiaResources;

    invoke-virtual {v9, v2, v3, v4, v8}, Landroid/content/res/NubiaResources;->updateConfigurationInner(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Z)V

    .line 414
    :cond_4
    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v9}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    iget-object v10, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v9, v10}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 416
    invoke-virtual/range {p0 .. p1}, Landroid/content/res/ResourcesImpl;->calcConfigChanges(Landroid/content/res/Configuration;)I

    move-result v9

    .line 419
    .local v9, "configChanges":I
    iget-object v10, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v10}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v10

    .line 420
    .local v10, "locales":Landroid/os/LocaleList;
    invoke-virtual {v10}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 421
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v11

    move-object v10, v11

    .line 422
    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v11, v10}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 425
    :cond_5
    and-int/lit8 v11, v9, 0x4

    const/4 v12, 0x1

    if-eqz v11, :cond_7

    .line 426
    invoke-virtual {v10}, Landroid/os/LocaleList;->size()I

    move-result v11

    if-le v11, v12, :cond_7

    .line 429
    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v11}, Landroid/content/res/AssetManager;->getNonSystemLocales()[Ljava/lang/String;

    move-result-object v11

    .line 430
    .local v11, "availableLocales":[Ljava/lang/String;
    invoke-static {v11}, Landroid/os/LocaleList;->isPseudoLocalesOnly([Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 432
    iget-object v13, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v13}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 433
    invoke-static {v11}, Landroid/os/LocaleList;->isPseudoLocalesOnly([Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 434
    const/4 v11, 0x0

    .line 438
    :cond_6
    if-eqz v11, :cond_7

    .line 439
    invoke-virtual {v10, v11}, Landroid/os/LocaleList;->getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v13

    .line 441
    .local v13, "bestLocale":Ljava/util/Locale;
    if-eqz v13, :cond_7

    invoke-virtual {v10, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v14

    if-eq v13, v14, :cond_7

    .line 442
    iget-object v14, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v15, Landroid/os/LocaleList;

    invoke-direct {v15, v13, v10}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    invoke-virtual {v14, v15}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 448
    .end local v11    # "availableLocales":[Ljava/lang/String;
    .end local v13    # "bestLocale":Ljava/util/Locale;
    :cond_7
    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v11, :cond_8

    .line 449
    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v13, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v13, v13, Landroid/content/res/Configuration;->densityDpi:I

    iput v13, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 450
    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v13, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v13, v13, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v13, v13

    const v14, 0x3bcccccd    # 0.00625f

    mul-float/2addr v13, v14

    iput v13, v11, Landroid/util/DisplayMetrics;->density:F

    .line 455
    :cond_8
    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v13, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    .line 456
    iget-object v14, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->fontScale:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_9

    iget-object v14, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_2

    :cond_9
    const/high16 v14, 0x3f800000    # 1.0f

    :goto_2
    mul-float/2addr v13, v14

    iput v13, v11, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 459
    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v13, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v11, v13, :cond_a

    .line 460
    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 461
    .local v11, "width":I
    iget-object v13, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 466
    .local v25, "height":I
    :goto_3
    move/from16 v25, v13

    goto :goto_4

    .line 464
    .end local v11    # "width":I
    .end local v25    # "height":I
    :cond_a
    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 466
    .restart local v11    # "width":I
    iget-object v13, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_3

    .line 470
    .restart local v25    # "height":I
    :goto_4
    iget-object v13, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v13, v13, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v13, v12, :cond_b

    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_b

    .line 473
    const/4 v12, 0x3

    .local v12, "keyboardHidden":I
    goto :goto_5

    .line 475
    .end local v12    # "keyboardHidden":I
    :cond_b
    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->keyboardHidden:I

    .local v22, "keyboardHidden":I
    :goto_5
    move/from16 v22, v12

    .line 478
    iget-object v14, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v15, v12, Landroid/content/res/Configuration;->mcc:I

    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->mnc:I

    iget-object v13, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .line 479
    invoke-virtual {v13}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/content/res/ResourcesImpl;->adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    iget-object v13, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    iget-object v5, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->touchscreen:I

    iget-object v6, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v33, v0

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .end local v0    # "refCount":I
    .local v33, "refCount":I
    iget v0, v0, Landroid/content/res/Configuration;->navigation:I

    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v3, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    move-object/from16 v34, v10

    iget-object v10, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .end local v10    # "locales":Landroid/os/LocaleList;
    .local v34, "locales":Landroid/os/LocaleList;
    iget v10, v10, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v35, v9

    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    .end local v9    # "configChanges":I
    .local v35, "configChanges":I
    iget v9, v9, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v36, v9

    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->colorMode:I

    sget v32, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 478
    move/from16 v16, v12

    move/from16 v18, v13

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v8

    move/from16 v23, v0

    move/from16 v24, v11

    move/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move/from16 v29, v10

    move/from16 v30, v36

    move/from16 v31, v9

    invoke-virtual/range {v14 .. v32}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    .line 495
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    move/from16 v2, v35

    invoke-virtual {v0, v2}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    .line 496
    .end local v35    # "configChanges":I
    .local v2, "configChanges":I
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    invoke-virtual {v0, v2}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    .line 497
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v0, v2}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 498
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v0, v2}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 499
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v0, v2}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 501
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 502
    .end local v2    # "configChanges":I
    .end local v11    # "width":I
    .end local v22    # "keyboardHidden":I
    .end local v25    # "height":I
    .end local v33    # "refCount":I
    .end local v34    # "locales":Landroid/os/LocaleList;
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    :try_start_2
    sget-object v2, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 504
    :try_start_3
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    if-eqz v0, :cond_c

    .line 505
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/PluralRules;->forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, v1, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    .line 507
    :cond_c
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 509
    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 510
    nop

    .line 511
    return-void

    .line 507
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 502
    :goto_6
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 509
    :catchall_2
    move-exception v0

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
