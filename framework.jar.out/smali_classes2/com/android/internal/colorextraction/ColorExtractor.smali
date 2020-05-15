.class public Lcom/android/internal/colorextraction/ColorExtractor;
.super Ljava/lang/Object;
.source "ColorExtractor.java"

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;,
        Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;,
        Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorExtractor"

.field public static final TYPE_DARK:I = 0x1

.field public static final TYPE_EXTRA_DARK:I = 0x2

.field public static final TYPE_NORMAL:I

.field private static final sGradientTypes:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExtractionType:Lcom/android/internal/colorextraction/types/ExtractionType;

.field protected final mGradientColors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;",
            ">;"
        }
    .end annotation
.end field

.field protected mLockColors:Landroid/app/WallpaperColors;

.field private final mOnColorsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSystemColors:Landroid/app/WallpaperColors;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/colorextraction/ColorExtractor;->sGradientTypes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/android/internal/colorextraction/types/Tonal;

    invoke-direct {v0, p1}, Lcom/android/internal/colorextraction/types/Tonal;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor;-><init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;Z)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extractionType"    # Lcom/android/internal/colorextraction/types/ExtractionType;
    .param p3, "immediately"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mExtractionType:Lcom/android/internal/colorextraction/types/ExtractionType;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 66
    .local v4, "which":I
    sget-object v5, Lcom/android/internal/colorextraction/ColorExtractor;->sGradientTypes:[I

    array-length v5, v5

    new-array v5, v5, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 67
    .local v5, "colors":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    iget-object v6, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 68
    sget-object v6, Lcom/android/internal/colorextraction/ColorExtractor;->sGradientTypes:[I

    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_0

    aget v9, v6, v8

    .line 69
    .local v9, "type":I
    new-instance v10, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {v10}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    aput-object v10, v5, v9

    .line 68
    .end local v9    # "type":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 65
    .end local v4    # "which":I
    .end local v5    # "colors":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    .line 75
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/WallpaperManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 76
    .local v0, "wallpaperManager":Landroid/app/WallpaperManager;
    if-nez v0, :cond_2

    .line 77
    const-string v1, "ColorExtractor"

    const-string v2, "Can\'t listen to color changes!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 79
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    .line 80
    invoke-direct {p0, v0, p3}, Lcom/android/internal/colorextraction/ColorExtractor;->initExtractColors(Landroid/app/WallpaperManager;Z)V

    .line 82
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/colorextraction/ColorExtractor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/colorextraction/ColorExtractor;

    .line 38
    invoke-direct {p0}, Lcom/android/internal/colorextraction/ColorExtractor;->extractWallpaperColors()V

    return-void
.end method

.method private extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 1
    .param p1, "inWallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "outGradientColorsNormal"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p3, "outGradientColorsDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p4, "outGradientColorsExtraDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 217
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mExtractionType:Lcom/android/internal/colorextraction/types/ExtractionType;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/ExtractionType;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 219
    return-void
.end method

.method private extractWallpaperColors()V
    .locals 9

    .line 114
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 115
    .local v0, "systemColors":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    iget-object v2, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 116
    .local v2, "lockColors":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    iget-object v4, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    const/4 v5, 0x0

    aget-object v6, v0, v5

    aget-object v7, v0, v1

    aget-object v8, v0, v3

    invoke-direct {p0, v4, v6, v7, v8}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 120
    iget-object v4, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    aget-object v5, v2, v5

    aget-object v1, v2, v1

    aget-object v3, v2, v3

    invoke-direct {p0, v4, v5, v1, v3}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 124
    return-void
.end method

.method private initExtractColors(Landroid/app/WallpaperManager;Z)V
    .locals 4
    .param p1, "wallpaperManager"    # Landroid/app/WallpaperManager;
    .param p2, "immediately"    # Z

    .line 85
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    .line 87
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    .line 88
    invoke-direct {p0}, Lcom/android/internal/colorextraction/ColorExtractor;->extractWallpaperColors()V

    goto :goto_0

    .line 90
    :cond_0
    new-instance v1, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;-><init>(Lcom/android/internal/colorextraction/ColorExtractor;Lcom/android/internal/colorextraction/ColorExtractor$1;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Landroid/app/WallpaperManager;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    :goto_0
    return-void
.end method


# virtual methods
.method public addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    .line 229
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/WallpaperManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 223
    .local v0, "wallpaperManager":Landroid/app/WallpaperManager;
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    .line 226
    :cond_0
    return-void
.end method

.method public getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 1
    .param p1, "which"    # I

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(II)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    return-object v0
.end method

.method public getColors(II)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 2
    .param p1, "which"    # I
    .param p2, "type"    # I

    .line 146
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type should be TYPE_NORMAL, TYPE_DARK or TYPE_EXTRA_DARK"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    :goto_0
    if-eq p1, v0, :cond_3

    if-ne p1, v1, :cond_2

    goto :goto_1

    .line 151
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "which should be FLAG_SYSTEM or FLAG_NORMAL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getWallpaperColors(I)Landroid/app/WallpaperColors;
    .locals 3
    .param p1, "which"    # I

    .line 164
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    return-object v0

    .line 166
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    return-object v0

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for which: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 8
    .param p1, "colors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "changed":Z
    and-int/lit8 v1, p2, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    .line 180
    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    .line 181
    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 182
    .local v1, "lockColors":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    aget-object v5, v1, v2

    aget-object v6, v1, v3

    aget-object v7, v1, v4

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 184
    const/4 v0, 0x1

    .line 186
    .end local v1    # "lockColors":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 187
    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    .line 188
    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 189
    .local v1, "systemColors":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    aget-object v2, v1, v2

    aget-object v3, v1, v3

    aget-object v4, v1, v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 191
    const/4 v0, 0x1

    .line 194
    .end local v1    # "systemColors":[Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    :cond_1
    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {p0, p2}, Lcom/android/internal/colorextraction/ColorExtractor;->triggerColorsChanged(I)V

    .line 197
    :cond_2
    return-void
.end method

.method public removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 235
    .local v0, "references":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;>;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 236
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 237
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 238
    .local v3, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 239
    iget-object v4, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 240
    goto :goto_1

    .line 236
    .end local v3    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method protected triggerColorsChanged(I)V
    .locals 6
    .param p1, "which"    # I

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 202
    .local v0, "references":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;>;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 203
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 204
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 205
    .local v3, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    .line 206
    .local v4, "listener":Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;
    if-nez v4, :cond_0

    .line 207
    iget-object v5, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    :cond_0
    invoke-interface {v4, p0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;->onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V

    .line 203
    .end local v3    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;>;"
    .end local v4    # "listener":Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
