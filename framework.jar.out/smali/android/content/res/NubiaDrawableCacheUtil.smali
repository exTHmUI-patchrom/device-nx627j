.class public Landroid/content/res/NubiaDrawableCacheUtil;
.super Ljava/lang/Object;
.source "NubiaDrawableCacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/NubiaDrawableCacheUtil$DrawableThread;
    }
.end annotation


# static fields
.field private static final BIG_DRAWABLE_CACHE_SIZE:I = 0x2

.field private static final BIG_DRAWABLE_LOAD_TIME_LIMIT:J = 0xaL

.field public static NUBAIA_DRAWABLE_CACHE_ENABLE:Z = false

.field private static final SMALL_DRAWABLE_COST_TIME_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "NubiaDrawalbeCacheUtil"

.field private static final mAppPreloadDrawable:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static mBigDrawableNum:I

.field private static final mCacheBigDrawableId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mCacheBigDrawableName:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mSmalDrawableNum:I

.field private static mUseBigDrawableCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/content/res/NubiaDrawableCacheUtil;->mAppPreloadDrawable:Ljava/util/concurrent/ConcurrentMap;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/content/res/NubiaDrawableCacheUtil;->mCacheBigDrawableId:Ljava/util/List;

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/res/NubiaDrawableCacheUtil;->mUseBigDrawableCache:Z

    .line 31
    sput-boolean v0, Landroid/content/res/NubiaDrawableCacheUtil;->NUBAIA_DRAWABLE_CACHE_ENABLE:Z

    .line 35
    const/4 v1, 0x0

    sput v1, Landroid/content/res/NubiaDrawableCacheUtil;->mSmalDrawableNum:I

    .line 36
    sput v1, Landroid/content/res/NubiaDrawableCacheUtil;->mBigDrawableNum:I

    .line 37
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Landroid/content/res/NubiaDrawableCacheUtil;->mCacheBigDrawableName:Ljava/util/concurrent/ConcurrentMap;

    .line 41
    sput-boolean v0, Landroid/content/res/NubiaDrawableCacheUtil;->NUBAIA_DRAWABLE_CACHE_ENABLE:Z

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 24
    sget-object v0, Landroid/content/res/NubiaDrawableCacheUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .line 24
    sput-object p0, Landroid/content/res/NubiaDrawableCacheUtil;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 24
    sget-object v0, Landroid/content/res/NubiaDrawableCacheUtil;->mCacheBigDrawableId:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 24
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->saveCacheDrawableIdInPreference()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .line 24
    sget-object v0, Landroid/content/res/NubiaDrawableCacheUtil;->mAppPreloadDrawable:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 24
    sput-boolean p0, Landroid/content/res/NubiaDrawableCacheUtil;->mUseBigDrawableCache:Z

    return p0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .line 24
    sget-object v0, Landroid/content/res/NubiaDrawableCacheUtil;->mCacheBigDrawableName:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 24
    sget v0, Landroid/content/res/NubiaDrawableCacheUtil;->mBigDrawableNum:I

    return v0
.end method

.method static synthetic access$608()I
    .locals 2

    .line 24
    sget v0, Landroid/content/res/NubiaDrawableCacheUtil;->mBigDrawableNum:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/content/res/NubiaDrawableCacheUtil;->mBigDrawableNum:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .line 24
    sget v0, Landroid/content/res/NubiaDrawableCacheUtil;->mSmalDrawableNum:I

    return v0
.end method

.method static synthetic access$708()I
    .locals 2

    .line 24
    sget v0, Landroid/content/res/NubiaDrawableCacheUtil;->mSmalDrawableNum:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/content/res/NubiaDrawableCacheUtil;->mSmalDrawableNum:I

    return v0
.end method

.method public static checkDrawableIfCache(ZLandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p0, "isColorDrawable"    # Z
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "id"    # I

    .line 119
    sget-boolean v0, Landroid/content/res/NubiaDrawableCacheUtil;->NUBAIA_DRAWABLE_CACHE_ENABLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/content/res/NubiaDrawableCacheUtil;->mUseBigDrawableCache:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 120
    sget-object v0, Landroid/content/res/NubiaDrawableCacheUtil;->mCacheBigDrawableId:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/16 v1, 0x384

    if-le v0, v1, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 122
    invoke-static {p2}, Landroid/content/res/NubiaDrawableCacheUtil;->hasCacheBigDrawable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    sget-object v0, Landroid/content/res/NubiaDrawableCacheUtil;->mCacheBigDrawableId:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->saveCacheDrawableIdInPreference()V

    .line 128
    :cond_0
    return-void
.end method

.method public static checkDrawableIfCache(ZLandroid/graphics/drawable/Drawable;ILjava/lang/Long;)V
    .locals 4
    .param p0, "isColorDrawable"    # Z
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "id"    # I
    .param p3, "costTime"    # Ljava/lang/Long;

    .line 131
    sget-boolean v0, Landroid/content/res/NubiaDrawableCacheUtil;->NUBAIA_DRAWABLE_CACHE_ENABLE:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/content/res/NubiaDrawableCacheUtil;->mUseBigDrawableCache:Z

    if-eqz v0, :cond_2

    if-nez p0, :cond_2

    .line 132
    sget-object v0, Landroid/content/res/NubiaDrawableCacheUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/16 v1, 0x384

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 134
    sget v0, Landroid/content/res/NubiaDrawableCacheUtil;->mBigDrawableNum:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    invoke-static {p2}, Landroid/content/res/NubiaDrawableCacheUtil;->hasCacheBigDrawable(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    sget v0, Landroid/content/res/NubiaDrawableCacheUtil;->mBigDrawableNum:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/content/res/NubiaDrawableCacheUtil;->mBigDrawableNum:I

    .line 136
    sget-object v0, Landroid/content/res/NubiaDrawableCacheUtil;->mCacheBigDrawableId:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->saveCacheDrawableIdInPreference()V

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 140
    sget v0, Landroid/content/res/NubiaDrawableCacheUtil;->mSmalDrawableNum:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    invoke-static {p2}, Landroid/content/res/NubiaDrawableCacheUtil;->hasCacheBigDrawable(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    sget v0, Landroid/content/res/NubiaDrawableCacheUtil;->mSmalDrawableNum:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/content/res/NubiaDrawableCacheUtil;->mSmalDrawableNum:I

    .line 142
    sget-object v0, Landroid/content/res/NubiaDrawableCacheUtil;->mCacheBigDrawableId:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->saveCacheDrawableIdInPreference()V

    .line 147
    :cond_2
    :goto_0
    return-void
.end method

.method private static hasCacheBigDrawable(I)Z
    .locals 3
    .param p0, "id"    # I

    .line 112
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/content/res/NubiaDrawableCacheUtil;->mCacheBigDrawableId:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 113
    sget-object v2, Landroid/content/res/NubiaDrawableCacheUtil;->mCacheBigDrawableId:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 112
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private static isFilterProcess()Z
    .locals 3

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "filter":Z
    sget-object v1, Landroid/content/res/NubiaDrawableCacheUtil;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/content/res/NubiaDrawableCacheUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 61
    return v0

    .line 64
    :cond_0
    sget-object v1, Landroid/content/res/NubiaDrawableCacheUtil;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/content/res/NubiaDrawableCacheUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/content/res/NubiaDrawableCacheUtil;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    const/4 v0, 0x1

    .line 67
    return v0

    .line 70
    :cond_1
    sget-object v1, Landroid/content/res/NubiaDrawableCacheUtil;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/content/res/NubiaDrawableCacheUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/content/res/NubiaDrawableCacheUtil;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cn.nubia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/content/res/NubiaDrawableCacheUtil;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    :cond_2
    const/4 v0, 0x1

    .line 76
    :cond_3
    return v0
.end method

.method public static loadDrawableFromeCache(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "id"    # I

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    sget-boolean v1, Landroid/content/res/NubiaDrawableCacheUtil;->NUBAIA_DRAWABLE_CACHE_ENABLE:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/content/res/NubiaDrawableCacheUtil;->mUseBigDrawableCache:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/content/res/NubiaDrawableCacheUtil;->mAppPreloadDrawable:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_0

    .line 82
    sget-object v1, Landroid/content/res/NubiaDrawableCacheUtil;->mAppPreloadDrawable:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 83
    .local v1, "dcs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_0

    .line 84
    sget-object v2, Landroid/content/res/NubiaDrawableCacheUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    return-object v0

    .line 88
    .end local v1    # "dcs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    return-object v0
.end method

.method public static loadDrawableFromeCache(ILjava/lang/CharSequence;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "id"    # I
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    sget-boolean v1, Landroid/content/res/NubiaDrawableCacheUtil;->NUBAIA_DRAWABLE_CACHE_ENABLE:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Landroid/content/res/NubiaDrawableCacheUtil;->mUseBigDrawableCache:Z

    if-eqz v1, :cond_2

    sget-object v1, Landroid/content/res/NubiaDrawableCacheUtil;->mAppPreloadDrawable:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_2

    .line 94
    sget-object v1, Landroid/content/res/NubiaDrawableCacheUtil;->mCacheBigDrawableName:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 95
    .local v1, "cacheName":Ljava/lang/CharSequence;
    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 96
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "res/drawable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    :cond_0
    return-object v0

    .line 101
    :cond_1
    sget-object v2, Landroid/content/res/NubiaDrawableCacheUtil;->mAppPreloadDrawable:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 102
    .local v2, "dcs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v2, :cond_2

    .line 103
    sget-object v3, Landroid/content/res/NubiaDrawableCacheUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 104
    return-object v0

    .line 107
    .end local v1    # "cacheName":Ljava/lang/CharSequence;
    .end local v2    # "dcs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    return-object v0
.end method

.method private static saveCacheDrawableIdInPreference()V
    .locals 2

    .line 150
    sget-object v0, Landroid/content/res/NubiaDrawableCacheUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/content/res/NubiaDrawableCacheUtil;->mCacheBigDrawableId:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->isFilterProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 152
    :cond_1
    new-instance v0, Landroid/content/res/NubiaDrawableCacheUtil$1;

    invoke-direct {v0}, Landroid/content/res/NubiaDrawableCacheUtil$1;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/res/NubiaDrawableCacheUtil$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 178
    return-void

    .line 150
    :cond_2
    :goto_0
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "contextImpl"    # Landroid/content/Context;

    .line 45
    sput-object p0, Landroid/content/res/NubiaDrawableCacheUtil;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public static startDrawablePreload()V
    .locals 2

    .line 49
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->isFilterProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/res/NubiaDrawableCacheUtil;->mUseBigDrawableCache:Z

    .line 51
    return-void

    .line 53
    :cond_0
    new-instance v0, Landroid/content/res/NubiaDrawableCacheUtil$DrawableThread;

    const-string/jumbo v1, "preload_drawable"

    invoke-direct {v0, v1}, Landroid/content/res/NubiaDrawableCacheUtil$DrawableThread;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 55
    return-void
.end method
