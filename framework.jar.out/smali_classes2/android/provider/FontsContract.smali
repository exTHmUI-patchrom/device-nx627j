.class public Landroid/provider/FontsContract;
.super Ljava/lang/Object;
.source "FontsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/FontsContract$FontRequestCallback;,
        Landroid/provider/FontsContract$FontFamilyResult;,
        Landroid/provider/FontsContract$FontInfo;,
        Landroid/provider/FontsContract$Columns;
    }
.end annotation


# static fields
.field private static final SYNC_FONT_FETCH_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "FontsContract"

.field private static final THREAD_RENEWAL_THRESHOLD_MS:I = 0x2710

.field private static final sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field

.field private static volatile sContext:Landroid/content/Context;

.field private static sHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sInQueueSet:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static final sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

.field private static sThread:Landroid/os/HandlerThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 680
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;

    .line 168
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    .line 319
    new-instance v0, Landroid/provider/FontsContract$1;

    invoke-direct {v0}, Landroid/provider/FontsContract$1;-><init>()V

    sput-object v0, Landroid/provider/FontsContract;->sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    .line 728
    sget-object v0, Landroid/provider/-$$Lambda$FontsContract$3FDNQd-WsglsyDhif-aHVbzkfrA;->INSTANCE:Landroid/provider/-$$Lambda$FontsContract$3FDNQd-WsglsyDhif-aHVbzkfrA;

    sput-object v0, Landroid/provider/FontsContract;->sByteArrayComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 76
    sget-object v0, Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/HandlerThread;
    .locals 1

    .line 76
    sget-object v0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$102(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Landroid/os/HandlerThread;

    .line 76
    sput-object p0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$202(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;

    .line 76
    sput-object p0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/provider/FontsContract$FontInfo;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "fonts"    # [Landroid/provider/FontsContract$FontInfo;

    .line 630
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 632
    return-object v1

    .line 634
    :cond_0
    nop

    .line 635
    invoke-static {p0, p2, p1}, Landroid/provider/FontsContract;->prepareFontData(Landroid/content/Context;[Landroid/provider/FontsContract$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;

    move-result-object v0

    .line 636
    .local v0, "uriBuffer":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 637
    return-object v1

    .line 639
    :cond_1
    new-instance v1, Landroid/graphics/Typeface$Builder;

    invoke-direct {v1, p2, v0}, Landroid/graphics/Typeface$Builder;-><init>([Landroid/provider/FontsContract$FontInfo;Ljava/util/Map;)V

    invoke-virtual {v1}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method private static convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 3
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v0, "shas":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 756
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 758
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 742
    .local p0, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p1, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 743
    return v2

    .line 745
    :cond_0
    move v0, v2

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 746
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 747
    return v2

    .line 745
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 750
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;)Landroid/provider/FontsContract$FontFamilyResult;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "request"    # Landroid/provider/FontRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 598
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 600
    new-instance v0, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V

    return-object v0

    .line 602
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/provider/FontsContract;->getProvider(Landroid/content/pm/PackageManager;Landroid/provider/FontRequest;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 603
    .local v0, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v0, :cond_1

    .line 604
    new-instance v2, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V

    return-object v2

    .line 608
    :cond_1
    :try_start_0
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, p2, v2, p1}, Landroid/provider/FontsContract;->getFontFromProvider(Landroid/content/Context;Landroid/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroid/provider/FontsContract$FontInfo;

    move-result-object v2

    .line 610
    .local v2, "fonts":[Landroid/provider/FontsContract$FontInfo;
    new-instance v3, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 611
    .end local v2    # "fonts":[Landroid/provider/FontsContract$FontInfo;
    :catch_0
    move-exception v2

    .line 612
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v1}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V

    return-object v3
.end method

.method public static getFontFromProvider(Landroid/content/Context;Landroid/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroid/provider/FontsContract$FontInfo;
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroid/provider/FontRequest;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p2

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 767
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/FontsContract$FontInfo;>;"
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 768
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 769
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 770
    .local v10, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 771
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "file"

    .line 772
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 773
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 774
    .local v11, "fileBaseUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v12, "_id"

    const-string v13, "file_id"

    const-string v14, "font_ttc_index"

    const-string v15, "font_variation_settings"

    const-string v16, "font_weight"

    const-string v17, "font_italic"

    const-string/jumbo v18, "result_code"

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "query = ?"

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    .line 777
    invoke-virtual/range {p1 .. p1}, Landroid/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v7, v12

    .line 774
    const/4 v8, 0x0

    move-object v4, v10

    move-object/from16 v9, p3

    invoke-virtual/range {v3 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 780
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_7

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_7

    .line 781
    const-string/jumbo v5, "result_code"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 782
    .local v5, "resultCodeColumnIndex":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 783
    const-string v6, "_id"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 784
    .local v6, "idColumnIndex":I
    const-string v7, "file_id"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 785
    .local v7, "fileIdColumnIndex":I
    const-string v8, "font_ttc_index"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 786
    .local v8, "ttcIndexColumnIndex":I
    const-string v9, "font_variation_settings"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 787
    .local v9, "vsColumnIndex":I
    const-string v13, "font_weight"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 788
    .local v13, "weightColumnIndex":I
    const-string v14, "font_italic"

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 789
    .local v14, "italicColumnIndex":I
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 790
    const/4 v15, -0x1

    if-eq v5, v15, :cond_0

    .line 791
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v23, v16

    goto :goto_1

    :cond_0
    move/from16 v23, v12

    .line 792
    .local v23, "resultCode":I
    :goto_1
    if-eq v8, v15, :cond_1

    .line 793
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v19, v16

    goto :goto_2

    :cond_1
    move/from16 v19, v12

    .line 794
    .local v19, "ttcIndex":I
    :goto_2
    if-eq v9, v15, :cond_2

    .line 795
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    :goto_3
    move-object/from16 v24, v16

    .line 798
    .local v24, "variationSettings":Ljava/lang/String;
    if-ne v7, v15, :cond_3

    .line 799
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v25, v16

    .line 800
    .local v25, "id":J
    move/from16 v27, v5

    move-wide/from16 v4, v25

    invoke-static {v10, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 800
    .end local v5    # "resultCodeColumnIndex":I
    .end local v25    # "id":J
    .local v27, "resultCodeColumnIndex":I
    move-object/from16 v4, v16

    .line 801
    .local v4, "fileUri":Landroid/net/Uri;
    nop

    .line 803
    move-object/from16 v18, v4

    goto :goto_4

    .line 802
    .end local v4    # "fileUri":Landroid/net/Uri;
    .end local v27    # "resultCodeColumnIndex":I
    .restart local v5    # "resultCodeColumnIndex":I
    :cond_3
    move/from16 v27, v5

    .line 802
    .end local v5    # "resultCodeColumnIndex":I
    .restart local v27    # "resultCodeColumnIndex":I
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 803
    .local v4, "id":J
    invoke-static {v11, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 803
    .end local v4    # "id":J
    move-object/from16 v18, v16

    .line 807
    .local v18, "fileUri":Landroid/net/Uri;
    :goto_4
    if-eq v13, v15, :cond_5

    if-eq v14, v15, :cond_5

    .line 808
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 809
    .local v4, "weight":I
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v0, :cond_4

    move v5, v0

    goto :goto_5

    :cond_4
    move v5, v12

    .line 812
    .local v5, "italic":Z
    :goto_5
    move/from16 v22, v5

    goto :goto_6

    .line 811
    .end local v4    # "weight":I
    .end local v5    # "italic":Z
    :cond_5
    const/16 v4, 0x190

    .line 812
    .restart local v4    # "weight":I
    move/from16 v22, v12

    .line 814
    .local v22, "italic":Z
    :goto_6
    nop

    .line 815
    move-object/from16 v5, v24

    invoke-static {v5}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v20

    .line 816
    .end local v24    # "variationSettings":Ljava/lang/String;
    .local v5, "variationSettings":Ljava/lang/String;
    .local v20, "axes":[Landroid/graphics/fonts/FontVariationAxis;
    new-instance v15, Landroid/provider/FontsContract$FontInfo;

    move-object/from16 v17, v15

    move/from16 v21, v4

    invoke-direct/range {v17 .. v23}, Landroid/provider/FontsContract$FontInfo;-><init>(Landroid/net/Uri;I[Landroid/graphics/fonts/FontVariationAxis;IZI)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    .end local v4    # "weight":I
    .end local v5    # "variationSettings":Ljava/lang/String;
    .end local v18    # "fileUri":Landroid/net/Uri;
    .end local v19    # "ttcIndex":I
    .end local v20    # "axes":[Landroid/graphics/fonts/FontVariationAxis;
    .end local v22    # "italic":Z
    .end local v23    # "resultCode":I
    nop

    .line 788
    move/from16 v5, v27

    goto :goto_0

    .line 819
    .end local v6    # "idColumnIndex":I
    .end local v7    # "fileIdColumnIndex":I
    .end local v8    # "ttcIndexColumnIndex":I
    .end local v9    # "vsColumnIndex":I
    .end local v13    # "weightColumnIndex":I
    .end local v14    # "italicColumnIndex":I
    .end local v27    # "resultCodeColumnIndex":I
    :catchall_0
    move-exception v0

    const/4 v4, 0x0

    goto :goto_7

    .line 774
    :catch_0
    move-exception v0

    move-object v4, v0

    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 819
    :catchall_1
    move-exception v0

    :goto_7
    if-eqz v3, :cond_6

    invoke-static {v4, v3}, Landroid/provider/FontsContract;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_6
    throw v0

    :cond_7
    if-eqz v3, :cond_8

    const/4 v4, 0x0

    invoke-static {v4, v3}, Landroid/provider/FontsContract;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 820
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_8
    new-array v0, v12, [Landroid/provider/FontsContract$FontInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/provider/FontsContract$FontInfo;

    return-object v0
.end method

.method public static getFontSync(Landroid/provider/FontRequest;)Landroid/graphics/Typeface;
    .locals 18
    .param p0, "request"    # Landroid/provider/FontRequest;

    .line 334
    invoke-virtual/range {p0 .. p0}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    .line 335
    .local v9, "id":Ljava/lang/String;
    sget-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v0, v9}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/graphics/Typeface;

    .line 336
    .local v10, "cachedTypeface":Landroid/graphics/Typeface;
    if-eqz v10, :cond_0

    .line 337
    return-object v10

    .line 343
    :cond_0
    sget-object v11, Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;

    monitor-enter v11

    .line 344
    :try_start_0
    sget-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    .line 345
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "fonts"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    .line 346
    sget-object v0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 347
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    goto/16 :goto_2

    .line 349
    :cond_1
    :goto_0
    :try_start_2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    move-object v12, v0

    .line 350
    .local v12, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    move-object v13, v0

    .line 351
    .local v13, "cond":Ljava/util/concurrent/locks/Condition;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v14, v0

    .line 352
    .local v14, "holder":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/graphics/Typeface;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x1

    invoke-direct {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v8, v0

    .line 353
    .local v8, "waiting":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v7, v0

    .line 355
    .local v7, "timeout":Ljava/util/concurrent/atomic/AtomicBoolean;
    sget-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    new-instance v6, Landroid/provider/-$$Lambda$FontsContract$rqfIZKvP1frnI9vP1hVA8jQN_RE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v4, v14

    move-object v5, v12

    move-object v15, v6

    move-object v6, v7

    move-object/from16 v16, v9

    move-object v9, v7

    move-object v7, v8

    .end local v7    # "timeout":Ljava/util/concurrent/atomic/AtomicBoolean;
    .local v9, "timeout":Ljava/util/concurrent/atomic/AtomicBoolean;
    .local v16, "id":Ljava/lang/String;
    move-object/from16 v17, v10

    move-object v10, v8

    move-object v8, v13

    .end local v8    # "waiting":Ljava/util/concurrent/atomic/AtomicBoolean;
    .local v10, "waiting":Ljava/util/concurrent/atomic/AtomicBoolean;
    .local v17, "cachedTypeface":Landroid/graphics/Typeface;
    :try_start_3
    invoke-direct/range {v1 .. v8}, Landroid/provider/-$$Lambda$FontsContract$rqfIZKvP1frnI9vP1hVA8jQN_RE;-><init>(Landroid/provider/FontRequest;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    sget-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/provider/FontsContract;->sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 379
    sget-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/provider/FontsContract;->sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 381
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    move-wide v1, v0

    .line 382
    .local v1, "remaining":J
    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 384
    :try_start_4
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 385
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 404
    :try_start_5
    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 385
    return-object v0

    .line 389
    :cond_2
    :try_start_6
    invoke-interface {v13, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v3
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-wide v0, v3

    .line 392
    .end local v1    # "remaining":J
    .local v0, "remaining":J
    nop

    .line 393
    move-wide v1, v0

    goto :goto_1

    .line 390
    .end local v0    # "remaining":J
    .restart local v1    # "remaining":J
    :catch_0
    move-exception v0

    .line 393
    :goto_1
    :try_start_7
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 394
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 404
    :try_start_8
    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 394
    return-object v0

    .line 396
    :cond_3
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-gtz v0, :cond_2

    .line 397
    const/4 v3, 0x1

    :try_start_9
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 398
    const-string v0, "FontsContract"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote font fetch timed out: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroid/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 400
    const/4 v0, 0x0

    .line 404
    :try_start_a
    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    monitor-exit v11

    .line 400
    return-object v0

    .line 404
    :catchall_1
    move-exception v0

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 406
    .end local v1    # "remaining":J
    .end local v12    # "lock":Ljava/util/concurrent/locks/Lock;
    .end local v13    # "cond":Ljava/util/concurrent/locks/Condition;
    .end local v14    # "holder":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/graphics/Typeface;>;"
    .end local v16    # "id":Ljava/lang/String;
    .end local v17    # "cachedTypeface":Landroid/graphics/Typeface;
    .local v9, "id":Ljava/lang/String;
    .local v10, "cachedTypeface":Landroid/graphics/Typeface;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "cachedTypeface":Landroid/graphics/Typeface;
    .restart local v16    # "id":Ljava/lang/String;
    .restart local v17    # "cachedTypeface":Landroid/graphics/Typeface;
    :goto_2
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_2
.end method

.method public static getProvider(Landroid/content/pm/PackageManager;Landroid/provider/FontRequest;)Landroid/content/pm/ProviderInfo;
    .locals 8
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "request"    # Landroid/provider/FontRequest;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 695
    invoke-virtual {p1}, Landroid/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "providerAuthority":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 697
    .local v2, "info":Landroid/content/pm/ProviderInfo;
    if-eqz v2, :cond_4

    .line 701
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 706
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 707
    return-object v2

    .line 711
    :cond_0
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 713
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v4}, Landroid/provider/FontsContract;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v4

    .line 714
    .local v4, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v5, Landroid/provider/FontsContract;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 716
    invoke-virtual {p1}, Landroid/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 717
    .local v5, "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    nop

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 719
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 720
    .local v6, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v7, Landroid/provider/FontsContract;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 721
    invoke-static {v4, v6}, Landroid/provider/FontsContract;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 722
    return-object v2

    .line 717
    .end local v6    # "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 725
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 702
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v5    # "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    :cond_3
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found content provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", but package was not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {p1}, Landroid/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 698
    :cond_4
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package found for authority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$getFontSync$0(Landroid/provider/FontRequest;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V
    .locals 4
    .param p0, "request"    # Landroid/provider/FontRequest;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "holder"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p3, "lock"    # Ljava/util/concurrent/locks/Lock;
    .param p4, "timeout"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p5, "waiting"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p6, "cond"    # Ljava/util/concurrent/locks/Condition;

    .line 357
    :try_start_0
    sget-object v0, Landroid/provider/FontsContract;->sContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Landroid/provider/FontsContract;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;)Landroid/provider/FontsContract$FontFamilyResult;

    move-result-object v0

    .line 358
    .local v0, "result":Landroid/provider/FontsContract$FontFamilyResult;
    invoke-virtual {v0}, Landroid/provider/FontsContract$FontFamilyResult;->getStatusCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 359
    sget-object v2, Landroid/provider/FontsContract;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/provider/FontsContract$FontFamilyResult;->getFonts()[Landroid/provider/FontsContract$FontInfo;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroid/provider/FontsContract;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/provider/FontsContract$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 360
    .local v1, "typeface":Landroid/graphics/Typeface;
    if-eqz v1, :cond_0

    .line 361
    sget-object v2, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v0    # "result":Landroid/provider/FontsContract$FontFamilyResult;
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 368
    :goto_0
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 370
    :try_start_1
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 372
    invoke-interface {p6}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    :cond_2
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 376
    nop

    .line 377
    return-void

    .line 375
    :catchall_0
    move-exception v0

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic lambda$requestFonts$1(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .locals 0
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;
    .param p1, "cachedTypeface"    # Landroid/graphics/Typeface;

    .line 504
    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic lambda$requestFonts$10(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .line 570
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$requestFonts$11(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .locals 0
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 576
    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic lambda$requestFonts$12(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "request"    # Landroid/provider/FontRequest;
    .param p3, "callerThreadHandler"    # Landroid/os/Handler;
    .param p4, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .line 511
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/provider/FontsContract;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;)Landroid/provider/FontsContract$FontFamilyResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .local v0, "result":Landroid/provider/FontsContract$FontFamilyResult;
    nop

    .line 515
    nop

    .line 519
    sget-object v1, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    .line 520
    .local v1, "anotherCachedTypeface":Landroid/graphics/Typeface;
    if-eqz v1, :cond_0

    .line 521
    new-instance v2, Landroid/provider/-$$Lambda$FontsContract$xDMhIK5JxjXFDIXBeQbZ_hdXTBc;

    invoke-direct {v2, p4, v1}, Landroid/provider/-$$Lambda$FontsContract$xDMhIK5JxjXFDIXBeQbZ_hdXTBc;-><init>(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 522
    return-void

    .line 525
    :cond_0
    invoke-virtual {v0}, Landroid/provider/FontsContract$FontFamilyResult;->getStatusCode()I

    move-result v2

    if-eqz v2, :cond_1

    .line 526
    invoke-virtual {v0}, Landroid/provider/FontsContract$FontFamilyResult;->getStatusCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 537
    new-instance v2, Landroid/provider/-$$Lambda$FontsContract$DV4gvjPxJzdQvcfoIJqGrzFtTQs;

    invoke-direct {v2, p4}, Landroid/provider/-$$Lambda$FontsContract$DV4gvjPxJzdQvcfoIJqGrzFtTQs;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 539
    return-void

    .line 532
    :pswitch_0
    new-instance v2, Landroid/provider/-$$Lambda$FontsContract$FCawscMFN_8Qxcb2EdA5gdE-O2k;

    invoke-direct {v2, p4}, Landroid/provider/-$$Lambda$FontsContract$FCawscMFN_8Qxcb2EdA5gdE-O2k;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 534
    return-void

    .line 528
    :pswitch_1
    new-instance v2, Landroid/provider/-$$Lambda$FontsContract$YhiTIVckhFBdgNR2V1bGY3Q1Nqg;

    invoke-direct {v2, p4}, Landroid/provider/-$$Lambda$FontsContract$YhiTIVckhFBdgNR2V1bGY3Q1Nqg;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 530
    return-void

    .line 543
    :cond_1
    invoke-virtual {v0}, Landroid/provider/FontsContract$FontFamilyResult;->getFonts()[Landroid/provider/FontsContract$FontInfo;

    move-result-object v2

    .line 544
    .local v2, "fonts":[Landroid/provider/FontsContract$FontInfo;
    if-eqz v2, :cond_7

    array-length v3, v2

    if-nez v3, :cond_2

    goto :goto_2

    .line 549
    :cond_2
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 550
    .local v5, "font":Landroid/provider/FontsContract$FontInfo;
    invoke-virtual {v5}, Landroid/provider/FontsContract$FontInfo;->getResultCode()I

    move-result v6

    if-eqz v6, :cond_4

    .line 553
    invoke-virtual {v5}, Landroid/provider/FontsContract$FontInfo;->getResultCode()I

    move-result v3

    .line 554
    .local v3, "resultCode":I
    if-gez v3, :cond_3

    .line 556
    new-instance v4, Landroid/provider/-$$Lambda$FontsContract$Qvl9aVA7txTF3tFcFbbKD_nWpuM;

    invoke-direct {v4, p4}, Landroid/provider/-$$Lambda$FontsContract$Qvl9aVA7txTF3tFcFbbKD_nWpuM;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 559
    :cond_3
    new-instance v4, Landroid/provider/-$$Lambda$FontsContract$rvEOORTXb3mMYTLkoH9nlHQr9Iw;

    invoke-direct {v4, p4, v3}, Landroid/provider/-$$Lambda$FontsContract$rvEOORTXb3mMYTLkoH9nlHQr9Iw;-><init>(Landroid/provider/FontsContract$FontRequestCallback;I)V

    invoke-virtual {p3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 562
    :goto_1
    return-void

    .line 549
    .end local v3    # "resultCode":I
    .end local v5    # "font":Landroid/provider/FontsContract$FontInfo;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 566
    :cond_5
    invoke-static {p0, p1, v2}, Landroid/provider/FontsContract;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/provider/FontsContract$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 567
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-nez v3, :cond_6

    .line 570
    new-instance v4, Landroid/provider/-$$Lambda$FontsContract$rqmVfWYeZ5NL5MtBx5LOdhNAOP4;

    invoke-direct {v4, p4}, Landroid/provider/-$$Lambda$FontsContract$rqmVfWYeZ5NL5MtBx5LOdhNAOP4;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 572
    return-void

    .line 575
    :cond_6
    sget-object v4, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    new-instance v4, Landroid/provider/-$$Lambda$FontsContract$gJeQYFM3pOm-NcWmWnWDAEk3vlM;

    invoke-direct {v4, p4, v3}, Landroid/provider/-$$Lambda$FontsContract$gJeQYFM3pOm-NcWmWnWDAEk3vlM;-><init>(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V

    invoke-virtual {p3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 577
    return-void

    .line 545
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_7
    :goto_2
    new-instance v3, Landroid/provider/-$$Lambda$FontsContract$LJ3jfZobcxq5xTMmb88GlM1r9Jk;

    invoke-direct {v3, p4}, Landroid/provider/-$$Lambda$FontsContract$LJ3jfZobcxq5xTMmb88GlM1r9Jk;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 547
    return-void

    .line 512
    .end local v0    # "result":Landroid/provider/FontsContract$FontFamilyResult;
    .end local v1    # "anotherCachedTypeface":Landroid/graphics/Typeface;
    .end local v2    # "fonts":[Landroid/provider/FontsContract$FontInfo;
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Landroid/provider/-$$Lambda$FontsContract$bLFahJqnd9gkPbDqB-OCiChzm_E;

    invoke-direct {v1, p4}, Landroid/provider/-$$Lambda$FontsContract$bLFahJqnd9gkPbDqB-OCiChzm_E;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$requestFonts$2(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .line 513
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$requestFonts$3(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .locals 0
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;
    .param p1, "anotherCachedTypeface"    # Landroid/graphics/Typeface;

    .line 521
    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic lambda$requestFonts$4(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .line 528
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$requestFonts$5(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .line 532
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$requestFonts$6(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .line 537
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$requestFonts$7(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .line 545
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$requestFonts$8(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .line 556
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$requestFonts$9(Landroid/provider/FontsContract$FontRequestCallback;I)V
    .locals 0
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;
    .param p1, "resultCode"    # I

    .line 559
    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$static$13([B[B)I
    .locals 4
    .param p0, "l"    # [B
    .param p1, "r"    # [B

    .line 729
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 730
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    return v0

    .line 732
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 733
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_1

    .line 734
    aget-byte v0, p0, v1

    aget-byte v2, p1, v1

    sub-int/2addr v0, v2

    return v0

    .line 732
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 737
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private static prepareFontData(Landroid/content/Context;[Landroid/provider/FontsContract$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fonts"    # [Landroid/provider/FontsContract$FontInfo;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroid/provider/FontsContract$FontInfo;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    .line 654
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 655
    .local v2, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 657
    .local v3, "resolver":Landroid/content/ContentResolver;
    array-length v4, v1

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v1, v5

    .line 658
    .local v6, "font":Landroid/provider/FontsContract$FontInfo;
    invoke-virtual {v6}, Landroid/provider/FontsContract$FontInfo;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    nop

    .line 657
    .end local v6    # "font":Landroid/provider/FontsContract$FontInfo;
    :goto_1
    move-object/from16 v10, p2

    goto/16 :goto_6

    .line 662
    .restart local v6    # "font":Landroid/provider/FontsContract$FontInfo;
    :cond_0
    invoke-virtual {v6}, Landroid/provider/FontsContract$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 663
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    goto :goto_1

    .line 667
    :cond_1
    const/4 v8, 0x0

    move-object v9, v8

    .line 668
    .local v9, "buffer":Ljava/nio/ByteBuffer;
    :try_start_0
    const-string/jumbo v0, "r"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 669
    move-object/from16 v10, p2

    :try_start_1
    invoke-virtual {v3, v7, v0, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v11, v0

    .line 668
    .local v11, "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 670
    if-eqz v11, :cond_3

    .line 671
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    .line 672
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v12, v0

    .line 671
    .local v12, "fis":Ljava/io/FileInputStream;
    nop

    .line 673
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 674
    .local v0, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v17

    .line 675
    .local v17, "size":J
    sget-object v14, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v15, 0x0

    move-object v13, v0

    invoke-virtual/range {v13 .. v18}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v13
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v9, v13

    .line 676
    .end local v0    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v17    # "size":J
    :try_start_4
    invoke-static {v8, v12}, Landroid/provider/FontsContract;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 678
    .end local v12    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 676
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v0

    move-object v13, v8

    goto :goto_2

    .line 671
    :catch_0
    move-exception v0

    move-object v13, v0

    :try_start_5
    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 676
    :catchall_1
    move-exception v0

    :goto_2
    :try_start_6
    invoke-static {v13, v12}, Landroid/provider/FontsContract;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 680
    .end local v12    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 668
    :catch_1
    move-exception v0

    move-object v8, v0

    :try_start_7
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 680
    :goto_3
    if-eqz v11, :cond_2

    :try_start_8
    invoke-static {v8, v11}, Landroid/provider/FontsContract;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v0

    .line 676
    :catch_2
    move-exception v0

    .line 680
    :cond_3
    :goto_4
    if-eqz v11, :cond_4

    invoke-static {v8, v11}, Landroid/provider/FontsContract;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 682
    .end local v11    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_4
    goto :goto_5

    .line 680
    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v10, p2

    .line 686
    :goto_5
    invoke-virtual {v2, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    .end local v6    # "font":Landroid/provider/FontsContract$FontInfo;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v9    # "buffer":Ljava/nio/ByteBuffer;
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 688
    :cond_5
    move-object/from16 v10, p2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static requestFonts(Landroid/content/Context;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/os/CancellationSignal;Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroid/provider/FontRequest;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .line 501
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 502
    .local v0, "callerThreadHandler":Landroid/os/Handler;
    sget-object v1, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/graphics/Typeface;

    .line 503
    .local v7, "cachedTypeface":Landroid/graphics/Typeface;
    if-eqz v7, :cond_0

    .line 504
    new-instance v1, Landroid/provider/-$$Lambda$FontsContract$p_tsXYYYpEH0-EJSp2uPrJ33dkU;

    invoke-direct {v1, p4, v7}, Landroid/provider/-$$Lambda$FontsContract$p_tsXYYYpEH0-EJSp2uPrJ33dkU;-><init>(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 505
    return-void

    .line 508
    :cond_0
    new-instance v8, Landroid/provider/-$$Lambda$FontsContract$dFs2m4XF5xdir4W3T-ncUQAVX8k;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, v0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/provider/-$$Lambda$FontsContract$dFs2m4XF5xdir4W3T-ncUQAVX8k;-><init>(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p2, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 578
    return-void
.end method

.method public static setApplicationContextForResources(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Landroid/provider/FontsContract;->sContext:Landroid/content/Context;

    .line 176
    return-void
.end method
