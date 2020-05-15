.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Typeface$Builder;,
        Landroid/graphics/Typeface$Style;
    }
.end annotation


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field private static final DEFAULT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final EMPTY_AXES:[I

.field public static final ITALIC:I = 0x2

.field public static final MAX_WEIGHT:I = 0x3e8

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field public static final NORMAL:I = 0x0

.field public static final RESOLVE_BY_FONT_TABLE:I = -0x1

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static final STYLE_ITALIC:I = 0x1

.field public static final STYLE_MASK:I = 0x3

.field private static final STYLE_NORMAL:I

.field private static TAG:Ljava/lang/String;

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field private static final sDynamicCacheLock:Ljava/lang/Object;

.field private static final sDynamicTypefaceCache:Landroid/util/LruCache;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sDynamicCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;

.field private static final sStyledCacheLock:Ljava/lang/Object;

.field private static final sStyledTypefaceCache:Landroid/util/LongSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStyledCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field

.field static final sSystemFallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field static final sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWeightCacheLock:Ljava/lang/Object;

.field private static final sWeightTypefaceCache:Landroid/util/LongSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sWeightCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mStyle:I

.field private mSupportedAxes:[I

.field private mWeight:I

.field public native_instance:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 79
    const-string v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 81
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    const-class v1, Landroid/graphics/Typeface;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {}, Landroid/graphics/Typeface;->nativeGetReleaseFunc()J

    move-result-wide v3

    const-wide/16 v5, 0x40

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Landroid/graphics/Typeface;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 105
    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->sStyledCacheLock:Ljava/lang/Object;

    .line 113
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->sWeightCacheLock:Ljava/lang/Object;

    .line 121
    new-instance v0, Landroid/util/LruCache;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    .line 130
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    .line 131
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->sSystemFallbackMap:Ljava/util/Map;

    .line 173
    const/4 v0, 0x0

    new-array v2, v0, [I

    sput-object v2, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    .line 1166
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1167
    .local v2, "systemFontMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 1168
    .local v3, "systemFallbackMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Landroid/graphics/FontFamily;>;"
    const-string v4, "/system/etc/fonts.xml"

    const-string v5, "/system/fonts/"

    invoke-static {v4, v5, v2, v3}, Landroid/graphics/Typeface;->buildSystemFallback(Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1175
    sget-object v4, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1176
    sget-object v4, Landroid/graphics/Typeface;->sSystemFallbackMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1179
    sget-object v4, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    const-string/jumbo v5, "sans-serif"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    invoke-static {v4}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 1182
    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 1183
    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    sput-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 1184
    const-string/jumbo v6, "sans-serif"

    invoke-static {v6, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    sput-object v6, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 1185
    const-string/jumbo v6, "serif"

    invoke-static {v6, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    sput-object v6, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 1186
    const-string/jumbo v6, "monospace"

    invoke-static {v6, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    sput-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 1188
    const/4 v6, 0x4

    new-array v6, v6, [Landroid/graphics/Typeface;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v7, v6, v0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v6, v5

    .line 1191
    const/4 v0, 0x2

    invoke-static {v4, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v6, v0

    .line 1192
    invoke-static {v4, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v6, v1

    sput-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 1195
    .end local v2    # "systemFontMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v3    # "systemFallbackMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Landroid/graphics/FontFamily;>;"
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "ni"    # J

    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 160
    iput v0, p0, Landroid/graphics/Typeface;->mWeight:I

    .line 963
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 967
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 968
    sget-object v0, Landroid/graphics/Typeface;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 969
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 970
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetWeight(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mWeight:I

    .line 971
    return-void

    .line 964
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Landroid/graphics/Typeface;)I
    .locals 1
    .param p0, "x0"    # Landroid/graphics/Typeface;

    .line 77
    iget v0, p0, Landroid/graphics/Typeface;->mWeight:I

    return v0
.end method

.method static synthetic access$200(Landroid/graphics/Typeface;)I
    .locals 1
    .param p0, "x0"    # Landroid/graphics/Typeface;

    .line 77
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method static synthetic access$300(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/Typeface;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 77
    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # [Landroid/graphics/FontFamily;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 77
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    .line 77
    sget-object v0, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600()Landroid/util/LruCache;
    .locals 1

    .line 77
    sget-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    return-object v0
.end method

.method public static buildSystemFallback(Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 20
    .param p0, "xmlPath"    # Ljava/lang/String;
    .param p1, "fontDir"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/FontFamily;",
            ">;)V"
        }
    .end annotation

    .local p2, "fontMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .local p3, "fallbackMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Landroid/graphics/FontFamily;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1094
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v0, "fontsIn":Ljava/io/FileInputStream;
    invoke-static {v0}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/text/FontConfig;

    move-result-object v3

    .line 1097
    .local v3, "fontConfig":Landroid/text/FontConfig;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1098
    .local v4, "bufferCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-virtual {v3}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    move-result-object v5

    move-object v11, v5

    .line 1100
    .local v11, "xmlFamilies":[Landroid/text/FontConfig$Family;
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    move-object v12, v5

    .line 1102
    .local v12, "fallbackListMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/graphics/FontFamily;>;>;"
    array-length v13, v11

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_2

    aget-object v5, v11, v15

    move-object v10, v5

    .line 1103
    .local v10, "xmlFamily":Landroid/text/FontConfig$Family;
    invoke-virtual {v10}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    .line 1104
    .local v9, "familyName":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 1105
    goto :goto_1

    .line 1107
    :cond_0
    nop

    .line 1108
    invoke-virtual {v10}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Landroid/text/FontConfig$Family;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1109
    invoke-virtual {v10}, Landroid/text/FontConfig$Family;->getLanguages()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Landroid/text/FontConfig$Family;->getVariant()I

    move-result v8

    .line 1107
    move-object v14, v9

    move-object v9, v4

    .end local v9    # "familyName":Ljava/lang/String;
    .local v14, "familyName":Ljava/lang/String;
    move-object/from16 v16, v10

    move-object/from16 v10, p1

    .end local v10    # "xmlFamily":Landroid/text/FontConfig$Family;
    .local v16, "xmlFamily":Landroid/text/FontConfig$Family;
    invoke-static/range {v5 .. v10}, Landroid/graphics/Typeface;->createFontFamily(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Landroid/graphics/FontFamily;

    move-result-object v5

    .line 1110
    .local v5, "family":Landroid/graphics/FontFamily;
    if-nez v5, :cond_1

    .line 1111
    goto :goto_1

    .line 1113
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1114
    .local v6, "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/FontFamily;>;"
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    invoke-virtual {v12, v14, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    .end local v5    # "family":Landroid/graphics/FontFamily;
    .end local v6    # "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/FontFamily;>;"
    .end local v14    # "familyName":Ljava/lang/String;
    .end local v16    # "xmlFamily":Landroid/text/FontConfig$Family;
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1119
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, v11

    if-ge v5, v6, :cond_5

    .line 1120
    aget-object v6, v11, v5

    .line 1123
    .local v6, "xmlFamily":Landroid/text/FontConfig$Family;
    if-eqz v5, :cond_4

    invoke-virtual {v6}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_3

    .line 1119
    .end local v6    # "xmlFamily":Landroid/text/FontConfig$Family;
    :cond_3
    move-object/from16 v7, p1

    goto :goto_4

    .line 1124
    .restart local v6    # "xmlFamily":Landroid/text/FontConfig$Family;
    :cond_4
    :goto_3
    move-object/from16 v7, p1

    invoke-static {v6, v12, v4, v7}, Landroid/graphics/Typeface;->pushFamilyToFallback(Landroid/text/FontConfig$Family;Landroid/util/ArrayMap;Ljava/util/Map;Ljava/lang/String;)V

    .line 1119
    .end local v6    # "xmlFamily":Landroid/text/FontConfig$Family;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1129
    .end local v5    # "i":I
    :cond_5
    move-object/from16 v7, p1

    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 1130
    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1131
    .local v6, "fallbackName":Ljava/lang/String;
    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1132
    .local v8, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Landroid/graphics/FontFamily;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/graphics/FontFamily;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1134
    .local v9, "families":[Landroid/graphics/FontFamily;
    move-object/from16 v10, p3

    :try_start_1
    invoke-virtual {v10, v6, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    array-length v13, v9

    new-array v13, v13, [J

    .line 1136
    .local v13, "ptrArray":[J
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_6
    array-length v15, v9

    if-ge v14, v15, :cond_6

    .line 1137
    aget-object v15, v9, v14

    move-object/from16 v17, v8

    iget-wide v7, v15, Landroid/graphics/FontFamily;->mNativePtr:J

    .end local v8    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .local v17, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    aput-wide v7, v13, v14

    .line 1136
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v17

    move-object/from16 v7, p1

    goto :goto_6

    .line 1139
    .end local v14    # "j":I
    .end local v17    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v8    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    :cond_6
    move-object/from16 v17, v8

    .end local v8    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v17    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    new-instance v7, Landroid/graphics/Typeface;

    const/4 v8, -0x1

    invoke-static {v13, v8, v8}, Landroid/graphics/Typeface;->nativeCreateFromArray([JII)J

    move-result-wide v14

    invoke-direct {v7, v14, v15}, Landroid/graphics/Typeface;-><init>(J)V

    invoke-virtual {v2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    .end local v6    # "fallbackName":Ljava/lang/String;
    .end local v9    # "families":[Landroid/graphics/FontFamily;
    .end local v13    # "ptrArray":[J
    .end local v17    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v7, p1

    goto :goto_5

    .line 1144
    .end local v5    # "i":I
    :cond_7
    move-object/from16 v10, p3

    invoke-virtual {v3}, Landroid/text/FontConfig;->getAliases()[Landroid/text/FontConfig$Alias;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v6, :cond_9

    aget-object v8, v5, v7

    .line 1145
    .local v8, "alias":Landroid/text/FontConfig$Alias;
    invoke-virtual {v8}, Landroid/text/FontConfig$Alias;->getToName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Typeface;

    .line 1146
    .local v9, "base":Landroid/graphics/Typeface;
    move-object v13, v9

    .line 1147
    .local v13, "newFace":Landroid/graphics/Typeface;
    invoke-virtual {v8}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result v14

    .line 1148
    .local v14, "weight":I
    const/16 v15, 0x190

    if-eq v14, v15, :cond_8

    .line 1149
    new-instance v15, Landroid/graphics/Typeface;

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    iget-wide v3, v9, Landroid/graphics/Typeface;->native_instance:J

    .end local v3    # "fontConfig":Landroid/text/FontConfig;
    .end local v4    # "bufferCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .local v18, "fontConfig":Landroid/text/FontConfig;
    .local v19, "bufferCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-static {v3, v4, v14}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v3

    invoke-direct {v15, v3, v4}, Landroid/graphics/Typeface;-><init>(J)V

    move-object v13, v15

    goto :goto_8

    .line 1151
    .end local v18    # "fontConfig":Landroid/text/FontConfig;
    .end local v19    # "bufferCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .restart local v3    # "fontConfig":Landroid/text/FontConfig;
    .restart local v4    # "bufferCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    :cond_8
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "fontConfig":Landroid/text/FontConfig;
    .end local v4    # "bufferCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .restart local v18    # "fontConfig":Landroid/text/FontConfig;
    .restart local v19    # "bufferCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    :goto_8
    invoke-virtual {v8}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1144
    .end local v8    # "alias":Landroid/text/FontConfig$Alias;
    .end local v9    # "base":Landroid/graphics/Typeface;
    .end local v13    # "newFace":Landroid/graphics/Typeface;
    .end local v14    # "weight":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto :goto_7

    .line 1160
    .end local v0    # "fontsIn":Ljava/io/FileInputStream;
    .end local v11    # "xmlFamilies":[Landroid/text/FontConfig$Family;
    .end local v12    # "fallbackListMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/graphics/FontFamily;>;>;"
    .end local v18    # "fontConfig":Landroid/text/FontConfig;
    .end local v19    # "bufferCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    :catch_0
    move-exception v0

    goto :goto_9

    .line 1158
    :catch_1
    move-exception v0

    goto :goto_a

    .line 1156
    :catch_2
    move-exception v0

    goto :goto_b

    .line 1153
    :catch_3
    move-exception v0

    goto :goto_c

    .line 1160
    :catch_4
    move-exception v0

    move-object/from16 v10, p3

    .line 1161
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_9
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XML parse exception for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_e

    .line 1158
    :catch_5
    move-exception v0

    move-object/from16 v10, p3

    .line 1159
    .local v0, "e":Ljava/io/IOException;
    :goto_a
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_d

    .line 1156
    :catch_6
    move-exception v0

    move-object/from16 v10, p3

    .line 1157
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_b
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error opening "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_d

    .line 1153
    :catch_7
    move-exception v0

    move-object/from16 v10, p3

    .line 1154
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_c
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string v4, "Didn\'t create default family (most likely, non-Minikin build)"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1162
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_9
    :goto_d
    nop

    .line 1163
    :goto_e
    return-void
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 7
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .line 714
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    .line 715
    const/4 p1, 0x0

    .line 717
    :cond_0
    if-nez p0, :cond_1

    .line 718
    sget-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 722
    :cond_1
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v0, p1, :cond_2

    .line 723
    return-object p0

    .line 726
    :cond_2
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 729
    .local v0, "ni":J
    sget-object v2, Landroid/graphics/Typeface;->sStyledCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 730
    :try_start_0
    sget-object v3, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 732
    .local v3, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-nez v3, :cond_3

    .line 733
    new-instance v4, Landroid/util/SparseArray;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    move-object v3, v4

    .line 734
    sget-object v4, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 736
    :cond_3
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    .line 737
    .local v4, "typeface":Landroid/graphics/Typeface;
    if-eqz v4, :cond_4

    .line 738
    monitor-exit v2

    return-object v4

    .line 742
    .end local v4    # "typeface":Landroid/graphics/Typeface;
    :cond_4
    :goto_0
    new-instance v4, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Landroid/graphics/Typeface;-><init>(J)V

    .line 743
    .restart local v4    # "typeface":Landroid/graphics/Typeface;
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 744
    .end local v3    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    monitor-exit v2

    .line 745
    return-object v4

    .line 744
    .end local v4    # "typeface":Landroid/graphics/Typeface;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "weight"    # I
    .param p2, "italic"    # Z

    .line 785
    const-string/jumbo v0, "weight"

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 786
    if-nez p0, :cond_0

    .line 787
    sget-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 789
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .line 693
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static createFontFamily(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Landroid/graphics/FontFamily;
    .locals 16
    .param p0, "familyName"    # Ljava/lang/String;
    .param p2, "languageTags"    # [Ljava/lang/String;
    .param p3, "variant"    # I
    .param p5, "fontDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;[",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/FontFamily;"
        }
    .end annotation

    .local p1, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    .local p4, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    move-object/from16 v0, p4

    .line 987
    new-instance v1, Landroid/graphics/FontFamily;

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v1, v2, v3}, Landroid/graphics/FontFamily;-><init>([Ljava/lang/String;I)V

    .line 988
    .local v1, "family":Landroid/graphics/FontFamily;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move v10, v4

    .end local v4    # "i":I
    .local v10, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_4

    .line 989
    move-object/from16 v11, p1

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/text/FontConfig$Font;

    .line 996
    .local v12, "font":Landroid/text/FontConfig$Font;
    invoke-virtual {v12}, Landroid/text/FontConfig$Font;->getIsCustomFont()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 997
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/theme/current/fonts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/text/FontConfig$Font;->getFontName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 999
    .local v4, "fullPath":Ljava/lang/String;
    move-object/from16 v13, p5

    goto :goto_1

    .end local v4    # "fullPath":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p5

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/text/FontConfig$Font;->getFontName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "fullPath":Ljava/lang/String;
    :goto_1
    move-object v14, v4

    .line 1005
    .end local v4    # "fullPath":Ljava/lang/String;
    .local v14, "fullPath":Ljava/lang/String;
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 1006
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    if-nez v4, :cond_2

    .line 1007
    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1008
    goto :goto_2

    .line 1010
    :cond_1
    invoke-static {v14}, Landroid/graphics/Typeface;->mmap(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1011
    invoke-interface {v0, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    if-nez v4, :cond_2

    .line 1013
    goto :goto_2

    .line 1016
    :cond_2
    move-object v15, v4

    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .local v15, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v6

    invoke-virtual {v12}, Landroid/text/FontConfig$Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v7

    .line 1017
    invoke-virtual {v12}, Landroid/text/FontConfig$Font;->getWeight()I

    move-result v8

    invoke-virtual {v12}, Landroid/text/FontConfig$Font;->isItalic()Z

    move-result v9

    .line 1016
    move-object v4, v1

    move-object v5, v15

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1018
    sget-object v4, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating font "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    .end local v12    # "font":Landroid/text/FontConfig$Font;
    .end local v14    # "fullPath":Ljava/lang/String;
    .end local v15    # "buffer":Ljava/nio/ByteBuffer;
    :cond_3
    :goto_2
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "i":I
    .local v4, "i":I
    goto/16 :goto_0

    .line 1021
    .end local v4    # "i":I
    :cond_4
    move-object/from16 v11, p1

    move-object/from16 v13, p5

    invoke-virtual {v1}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1022
    sget-object v4, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load Family: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1022
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/4 v4, 0x0

    return-object v4

    .line 1026
    :cond_5
    move-object/from16 v6, p0

    return-object v1
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .line 841
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-direct {v0, p0, p1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    .line 845
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    return-object v0

    .line 847
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 848
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_1
    nop

    .line 852
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v1

    .line 848
    :catch_0
    move-exception v1

    .line 849
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font asset not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "needRedirect"    # Z

    .line 858
    if-eqz p2, :cond_0

    invoke-static {}, Landroid/graphics/FontListParser;->getCustomFontPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 859
    sget-object v0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    return-object v0

    .line 861
    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .line 915
    array-length v0, p0

    new-array v0, v0, [J

    .line 916
    .local v0, "ptrArray":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 917
    aget-object v2, p0, v1

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v0, v1

    .line 916
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 919
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Landroid/graphics/Typeface;

    const/4 v2, -0x1

    invoke-static {v0, v2, v2}, Landroid/graphics/Typeface;->nativeCreateFromArray([JII)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v1
.end method

.method private static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "families"    # [Landroid/graphics/FontFamily;
    .param p1, "weight"    # I
    .param p2, "italic"    # I

    .line 929
    const-string/jumbo v0, "sans-serif"

    invoke-static {p0, v0, p1, p2}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;
    .param p1, "fallbackName"    # Ljava/lang/String;
    .param p2, "weight"    # I
    .param p3, "italic"    # I

    .line 947
    sget-object v0, Landroid/graphics/Typeface;->sSystemFallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/FontFamily;

    .line 948
    .local v0, "fallback":[Landroid/graphics/FontFamily;
    if-nez v0, :cond_0

    .line 949
    sget-object v1, Landroid/graphics/Typeface;->sSystemFallbackMap:Ljava/util/Map;

    const-string/jumbo v2, "sans-serif"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/graphics/FontFamily;

    .line 951
    :cond_0
    array-length v1, p0

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [J

    .line 952
    .local v1, "ptrArray":[J
    const/4 v2, 0x0

    move v3, v2

    .line 952
    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_1

    .line 953
    aget-object v4, p0, v3

    iget-wide v4, v4, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v3

    .line 952
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 955
    .end local v3    # "i":I
    :cond_1
    nop

    .line 955
    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 956
    array-length v3, p0

    add-int/2addr v3, v2

    aget-object v4, v0, v2

    iget-wide v4, v4, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v3

    .line 955
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 958
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1, p2, p3}, Landroid/graphics/Typeface;->nativeCreateFromArray([JII)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 887
    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-direct {v0, p0}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    .line 888
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    return-object v0

    .line 891
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v1

    .line 892
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font asset not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 905
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromResources(Landroid/content/res/AssetManager;Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 13
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "cookie"    # I

    .line 206
    sget-object v0, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    :try_start_0
    const-string/jumbo v7, "sans-serif"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Typeface$Builder;->access$000(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 212
    .local v2, "typeface":Landroid/graphics/Typeface;
    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v2

    .line 214
    :cond_0
    new-instance v3, Landroid/graphics/FontFamily;

    invoke-direct {v3}, Landroid/graphics/FontFamily;-><init>()V

    .line 216
    .local v3, "fontFamily":Landroid/graphics/FontFamily;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v4, v3

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 219
    invoke-virtual {v3}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v4

    if-nez v4, :cond_1

    .line 220
    monitor-exit v0

    return-object v5

    .line 222
    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/graphics/FontFamily;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 223
    .local v4, "families":[Landroid/graphics/FontFamily;
    const-string/jumbo v5, "sans-serif"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6, v6}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v2, v5

    .line 225
    sget-object v5, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v5, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    monitor-exit v0

    return-object v2

    .line 228
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    .end local v3    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v4    # "families":[Landroid/graphics/FontFamily;
    :cond_2
    monitor-exit v0

    .line 229
    return-object v5

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static createFromResources(Landroid/content/res/FontResourcesParser$FamilyResourceEntry;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 20
    .param p0, "entry"    # Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 239
    instance-of v0, v1, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 240
    move-object v0, v1

    check-cast v0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    .line 242
    .local v0, "providerEntry":Landroid/content/res/FontResourcesParser$ProviderResourceEntry;
    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getCerts()Ljava/util/List;

    move-result-object v3

    .line 243
    .local v3, "givenCerts":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v4, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    if-eqz v3, :cond_1

    .line 245
    move v5, v2

    .line 245
    .local v5, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 246
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 247
    .local v6, "certSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v7, "byteArraySet":Ljava/util/List;, "Ljava/util/List<[B>;"
    move v8, v2

    .line 248
    .local v8, "j":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 249
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 251
    .end local v8    # "j":I
    :cond_0
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v6    # "certSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "byteArraySet":Ljava/util/List;, "Ljava/util/List<[B>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 256
    .end local v5    # "i":I
    :cond_1
    new-instance v2, Landroid/provider/FontRequest;

    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 257
    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v5, v6, v7, v4}, Landroid/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 258
    .local v2, "request":Landroid/provider/FontRequest;
    invoke-static {v2}, Landroid/provider/FontsContract;->getFontSync(Landroid/provider/FontRequest;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 259
    .local v5, "typeface":Landroid/graphics/Typeface;
    if-nez v5, :cond_2

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_2
    move-object v6, v5

    :goto_2
    return-object v6

    .line 262
    .end local v0    # "providerEntry":Landroid/content/res/FontResourcesParser$ProviderResourceEntry;
    .end local v2    # "request":Landroid/provider/FontRequest;
    .end local v3    # "givenCerts":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    .end local v5    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    invoke-static/range {p1 .. p2}, Landroid/graphics/Typeface;->findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 263
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_4

    return-object v0

    .line 266
    :cond_4
    move-object v3, v1

    check-cast v3, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;

    .line 268
    .local v3, "filesEntry":Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;
    new-instance v4, Landroid/graphics/FontFamily;

    invoke-direct {v4}, Landroid/graphics/FontFamily;-><init>()V

    .line 269
    .local v4, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v3}, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;->getEntries()[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-result-object v14

    array-length v15, v14

    move v13, v2

    :goto_3
    const/16 v16, 0x0

    if-ge v13, v15, :cond_6

    aget-object v12, v14, v13

    .line 270
    .local v12, "fontFile":Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    invoke-virtual {v12}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 271
    invoke-virtual {v12}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getTtcIndex()I

    move-result v10

    .line 272
    invoke-virtual {v12}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getWeight()I

    move-result v11

    invoke-virtual {v12}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getItalic()I

    move-result v17

    .line 273
    invoke-virtual {v12}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v18

    .line 270
    move-object v5, v4

    move-object/from16 v6, p1

    move-object/from16 v19, v12

    move/from16 v12, v17

    .line 270
    .end local v12    # "fontFile":Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    .local v19, "fontFile":Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    move/from16 v17, v13

    move-object/from16 v13, v18

    invoke-virtual/range {v5 .. v13}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 274
    return-object v16

    .line 269
    .end local v19    # "fontFile":Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    :cond_5
    add-int/lit8 v13, v17, 0x1

    goto :goto_3

    .line 277
    :cond_6
    invoke-virtual {v4}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v5

    if-nez v5, :cond_7

    .line 278
    return-object v16

    .line 280
    :cond_7
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/FontFamily;

    aput-object v4, v5, v2

    move-object v2, v5

    .line 281
    .local v2, "familyChain":[Landroid/graphics/FontFamily;
    const-string/jumbo v5, "sans-serif"

    const/4 v6, -0x1

    invoke-static {v2, v5, v6, v6}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v5

    .line 283
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    .restart local v5    # "typeface":Landroid/graphics/Typeface;
    sget-object v6, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 284
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    :try_start_0
    const-string/jumbo v13, "sans-serif"

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-static/range {v7 .. v13}, Landroid/graphics/Typeface$Builder;->access$000(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "key":Ljava/lang/String;
    sget-object v7, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v7, v0, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .end local v0    # "key":Ljava/lang/String;
    monitor-exit v6

    .line 289
    return-object v5

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "family"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)",
            "Landroid/graphics/Typeface;"
        }
    .end annotation

    .line 820
    .local p1, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 821
    .local v0, "ni":J
    :goto_0
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method private static createProviderUid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 870
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "base"    # Landroid/graphics/Typeface;
    .param p1, "weight"    # I
    .param p2, "italic"    # Z

    .line 794
    shl-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p2

    .line 797
    .local v0, "key":I
    sget-object v1, Landroid/graphics/Typeface;->sWeightCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 798
    :try_start_0
    sget-object v2, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    iget-wide v3, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 799
    .local v2, "innerCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-nez v2, :cond_0

    .line 800
    new-instance v3, Landroid/util/SparseArray;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    move-object v2, v3

    .line 801
    sget-object v3, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v3, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 803
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 804
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_1

    .line 805
    monitor-exit v1

    return-object v3

    .line 809
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    :goto_0
    new-instance v3, Landroid/graphics/Typeface;

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 810
    invoke-static {v4, v5, p1, p2}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .line 812
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 813
    .end local v2    # "innerCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    monitor-exit v1

    .line 814
    return-object v3

    .line 813
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "style"    # I

    .line 830
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static deinit()V
    .locals 1

    .line 1202
    sget-object v0, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1203
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1204
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1206
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->sSystemFallbackMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1207
    sget-object v0, Landroid/graphics/Typeface;->sSystemFallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1209
    :cond_1
    return-void
.end method

.method public static findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 8
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .line 297
    sget-object v0, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    :try_start_0
    const-string/jumbo v7, "sans-serif"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Typeface$Builder;->access$000(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 302
    .local v2, "typeface":Landroid/graphics/Typeface;
    if-eqz v2, :cond_0

    .line 303
    monitor-exit v0

    return-object v2

    .line 305
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    monitor-exit v0

    .line 306
    const/4 v0, 0x0

    return-object v0

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static mmap(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 10
    .param p0, "fullPath"    # Ljava/lang/String;

    .line 974
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 975
    .local v1, "file":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 976
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    .line 977
    .local v7, "fontSize":J
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 977
    return-object v3

    .line 978
    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v7    # "fontSize":J
    :catchall_0
    move-exception v2

    move-object v3, v0

    goto :goto_0

    .line 974
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 978
    :catchall_1
    move-exception v3

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    :goto_0
    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v1    # "file":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 979
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error mapping font file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    return-object v0
.end method

.method private static native nativeCreateFromArray([JII)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateFromTypefaceWithExactStyle(JIZ)J
.end method

.method private static native nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetStyle(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetSupportedAxes(J)[I
.end method

.method private static native nativeGetWeight(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetDefault(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static pushFamilyToFallback(Landroid/text/FontConfig$Family;Landroid/util/ArrayMap;Ljava/util/Map;Ljava/lang/String;)V
    .locals 14
    .param p0, "xmlFamily"    # Landroid/text/FontConfig$Family;
    .param p3, "fontDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig$Family;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/FontFamily;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .local p1, "fallbackMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/graphics/FontFamily;>;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    move-object v0, p1

    .line 1034
    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getLanguages()[Ljava/lang/String;

    move-result-object v7

    .line 1035
    .local v7, "languageTags":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getVariant()I

    move-result v8

    .line 1037
    .local v8, "variant":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 1038
    .local v9, "defaultFonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v10, v1

    .line 1041
    .local v10, "specificFallbackFonts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;>;"
    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v1

    array-length v2, v1

    const/4 v11, 0x0

    move v3, v11

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1042
    .local v4, "font":Landroid/text/FontConfig$Font;
    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getFallbackFor()Ljava/lang/String;

    move-result-object v5

    .line 1043
    .local v5, "fallbackName":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 1044
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1046
    :cond_0
    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1047
    .local v6, "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    if-nez v6, :cond_1

    .line 1048
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v12

    .line 1049
    invoke-virtual {v10, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    :cond_1
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    .end local v4    # "font":Landroid/text/FontConfig$Font;
    .end local v5    # "fallbackName":Ljava/lang/String;
    .end local v6    # "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1055
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    .line 1056
    :cond_3
    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1055
    move-object v2, v9

    move-object v3, v7

    move v4, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/graphics/Typeface;->createFontFamily(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Landroid/graphics/FontFamily;

    move-result-object v1

    :goto_2
    move-object v12, v1

    .line 1059
    .local v12, "defaultFamily":Landroid/graphics/FontFamily;
    nop

    .local v11, "i":I
    :goto_3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v11, v1, :cond_7

    .line 1060
    nop

    .line 1061
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/ArrayList;

    .line 1062
    .local v13, "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    if-nez v13, :cond_4

    .line 1063
    if-eqz v12, :cond_6

    .line 1064
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1067
    :cond_4
    nop

    .line 1068
    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1067
    move-object v2, v13

    move-object v3, v7

    move v4, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/graphics/Typeface;->createFontFamily(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Landroid/graphics/FontFamily;

    move-result-object v1

    .line 1069
    .local v1, "family":Landroid/graphics/FontFamily;
    if-eqz v1, :cond_5

    .line 1070
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1071
    :cond_5
    if-eqz v12, :cond_6

    .line 1072
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    .end local v1    # "family":Landroid/graphics/FontFamily;
    .end local v13    # "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    :cond_6
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1078
    .end local v11    # "i":I
    :cond_7
    return-void
.end method

.method public static reload()V
    .locals 4

    .line 1225
    invoke-static {}, Landroid/graphics/Typeface;->deinit()V

    .line 1227
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1228
    .local v0, "systemFontMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1229
    .local v1, "systemFallbackMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Landroid/graphics/FontFamily;>;"
    const-string v2, "/system/etc/fonts.xml"

    const-string v3, "/system/fonts/"

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Typeface;->buildSystemFallback(Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1231
    sget-object v2, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1232
    sget-object v2, Landroid/graphics/Typeface;->sSystemFallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1233
    sget-object v2, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    const-string/jumbo v3, "sans-serif"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    invoke-static {v2}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 1234
    return-void
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .locals 2
    .param p0, "t"    # Landroid/graphics/Typeface;

    .line 176
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 177
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 178
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1239
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1240
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1242
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/graphics/Typeface;

    .line 1244
    .local v2, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v2, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v5, v2, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 1240
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    :goto_1
    return v1
.end method

.method public getStyle()I
    .locals 1

    .line 187
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public getWeight()I
    .locals 1

    .line 182
    iget v0, p0, Landroid/graphics/Typeface;->mWeight:I

    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 1253
    const/16 v0, 0x11

    .line 1254
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-wide v3, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v5, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 1255
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/2addr v1, v2

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int/2addr v1, v0

    .line 1256
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public final isBold()Z
    .locals 2

    .line 192
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isItalic()Z
    .locals 1

    .line 197
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportedAxes(I)Z
    .locals 2
    .param p1, "axis"    # I

    .line 1261
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v0, :cond_1

    .line 1262
    monitor-enter p0

    .line 1263
    :try_start_0
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v0, :cond_0

    .line 1264
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeGetSupportedAxes(J)[I

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    .line 1265
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v0, :cond_0

    .line 1266
    sget-object v0, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    iput-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    .line 1269
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1271
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
