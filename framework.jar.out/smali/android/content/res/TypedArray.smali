.class public Landroid/content/res/TypedArray;
.super Ljava/lang/Object;
.source "TypedArray.java"


# static fields
.field static final STYLE_ASSET_COOKIE:I = 0x2

.field static final STYLE_CHANGING_CONFIGURATIONS:I = 0x4

.field static final STYLE_DATA:I = 0x1

.field static final STYLE_DENSITY:I = 0x5

.field static final STYLE_NUM_ENTRIES:I = 0x6

.field static final STYLE_RESOURCE_ID:I = 0x3

.field static final STYLE_TYPE:I


# instance fields
.field private mAssets:Landroid/content/res/AssetManager;

.field mData:[I

.field mDataAddress:J

.field mIndices:[I

.field mIndicesAddress:J

.field mLength:I

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mRecycled:Z

.field private final mResources:Landroid/content/res/Resources;

.field mTheme:Landroid/content/res/Resources$Theme;

.field mValue:Landroid/util/TypedValue;

.field mXml:Landroid/content/res/XmlBlock$Parser;


# direct methods
.method protected constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 1277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1278
    iput-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 1279
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 1280
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 1281
    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;[I[II)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "data"    # [I
    .param p3, "indices"    # [I
    .param p4, "len"    # I

    .line 1284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1285
    iput-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 1286
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 1287
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 1288
    iput-object p2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1289
    iput-object p3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 1290
    iput p4, p0, Landroid/content/res/TypedArray;->mLength:I

    .line 1291
    return-void
.end method

.method private getValueAt(ILandroid/util/TypedValue;)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .line 1248
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1249
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 1250
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 1251
    const/4 v2, 0x0

    return v2

    .line 1253
    :cond_0
    iput v1, p2, Landroid/util/TypedValue;->type:I

    .line 1254
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->data:I

    .line 1255
    add-int/lit8 v2, p1, 0x2

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 1256
    add-int/lit8 v2, p1, 0x3

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 1257
    add-int/lit8 v2, p1, 0x4

    aget v2, v0, v2

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    iput v2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    .line 1259
    add-int/lit8 v2, p1, 0x5

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->density:I

    .line 1260
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 1261
    const/4 v2, 0x1

    return v2
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "index"    # I

    .line 1265
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1266
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x2

    aget v1, v0, v1

    .line 1267
    .local v1, "cookie":I
    if-gez v1, :cond_1

    .line 1268
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v2, :cond_0

    .line 1269
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 1271
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 1273
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method static obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "len"    # I

    .line 50
    iget-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/TypedArray;

    .line 51
    .local v0, "attrs":Landroid/content/res/TypedArray;
    if-nez v0, :cond_0

    .line 52
    new-instance v1, Landroid/content/res/TypedArray;

    invoke-direct {v1, p0}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;)V

    move-object v0, v1

    .line 55
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 58
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 59
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 60
    invoke-direct {v0, p1}, Landroid/content/res/TypedArray;->resize(I)V

    .line 61
    return-object v0
.end method

.method private resize(I)V
    .locals 7
    .param p1, "len"    # I

    .line 89
    iput p1, p0, Landroid/content/res/TypedArray;->mLength:I

    .line 90
    mul-int/lit8 v0, p1, 0x6

    .line 91
    .local v0, "dataLen":I
    add-int/lit8 v1, p1, 0x1

    .line 92
    .local v1, "indicesLen":I
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    .line 93
    .local v2, "runtime":Ldalvik/system/VMRuntime;
    iget-wide v3, p0, Landroid/content/res/TypedArray;->mDataAddress:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    array-length v3, v3

    if-ge v3, v0, :cond_1

    .line 94
    :cond_0
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 95
    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/res/TypedArray;->mDataAddress:J

    .line 96
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 97
    iget-object v3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/res/TypedArray;->mIndicesAddress:J

    .line 99
    :cond_1
    return-void
.end method


# virtual methods
.method public extractThemeAttrs()[I
    .locals 1

    .line 1169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v0

    return-object v0
.end method

.method public extractThemeAttrs([I)[I
    .locals 8
    .param p1, "scrap"    # [I

    .line 1177
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_5

    .line 1181
    const/4 v0, 0x0

    .line 1183
    .local v0, "attrs":[I
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1184
    .local v1, "data":[I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1185
    .local v2, "N":I
    const/4 v3, 0x0

    move-object v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "attrs":[I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 1186
    mul-int/lit8 v5, v0, 0x6

    .line 1187
    .local v5, "index":I
    add-int/lit8 v6, v5, 0x0

    aget v6, v1, v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 1189
    goto :goto_2

    .line 1193
    :cond_0
    add-int/lit8 v6, v5, 0x0

    aput v3, v1, v6

    .line 1195
    add-int/lit8 v6, v5, 0x1

    aget v6, v1, v6

    .line 1196
    .local v6, "attr":I
    if-nez v6, :cond_1

    .line 1198
    goto :goto_2

    .line 1202
    :cond_1
    if-nez v4, :cond_3

    .line 1203
    if-eqz p1, :cond_2

    array-length v7, p1

    if-ne v7, v2, :cond_2

    .line 1204
    move-object v4, p1

    .line 1205
    invoke-static {v4, v3}, Ljava/util/Arrays;->fill([II)V

    goto :goto_1

    .line 1207
    :cond_2
    new-array v4, v2, [I

    .line 1211
    :cond_3
    :goto_1
    aput v6, v4, v0

    .line 1185
    .end local v5    # "index":I
    .end local v6    # "attr":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1214
    .end local v0    # "i":I
    :cond_4
    return-object v4

    .line 1178
    .end local v1    # "data":[I
    .end local v2    # "N":I
    .end local v4    # "attrs":[I
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(IZ)Z
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # Z

    .line 327
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_4

    .line 331
    mul-int/lit8 p1, p1, 0x6

    .line 332
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 333
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 334
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 335
    return p2

    .line 336
    :cond_0
    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_2

    .line 338
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 341
    :cond_2
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 342
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 343
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 344
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v3

    return v3

    .line 348
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBoolean of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 328
    .end local v0    # "data":[I
    .end local v1    # "type":I
    .end local v2    # "v":Landroid/util/TypedValue;
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChangingConfigurations()I
    .locals 7

    .line 1227
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_2

    .line 1231
    const/4 v0, 0x0

    .line 1233
    .local v0, "changingConfig":I
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1234
    .local v1, "data":[I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1235
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1236
    mul-int/lit8 v4, v3, 0x6

    .line 1237
    .local v4, "index":I
    add-int/lit8 v5, v4, 0x0

    aget v5, v1, v5

    .line 1238
    .local v5, "type":I
    if-nez v5, :cond_0

    .line 1239
    goto :goto_1

    .line 1241
    :cond_0
    add-int/lit8 v6, v4, 0x4

    aget v6, v1, v6

    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v6

    or-int/2addr v0, v6

    .line 1235
    .end local v4    # "index":I
    .end local v5    # "type":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1244
    .end local v3    # "i":I
    :cond_1
    return v0

    .line 1228
    .end local v0    # "changingConfig":I
    .end local v1    # "data":[I
    .end local v2    # "N":I
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColor(II)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 452
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_5

    .line 456
    move v0, p1

    .line 457
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 459
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 460
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 461
    .local v2, "type":I
    if-nez v2, :cond_0

    .line 462
    return p2

    .line 463
    :cond_0
    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1

    .line 465
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    return v3

    .line 466
    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 467
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 468
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 469
    iget-object v4, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 471
    .local v4, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    return v5

    .line 473
    .end local v4    # "csl":Landroid/content/res/ColorStateList;
    :cond_2
    return p2

    .line 474
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 475
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 476
    .restart local v3    # "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 477
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 481
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_4
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t convert value at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to color: type=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 453
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "index"    # I

    .line 539
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_2

    .line 543
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 544
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 545
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 549
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 546
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 540
    .end local v0    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getComplexColor(I)Landroid/content/res/ComplexColor;
    .locals 4
    .param p1, "index"    # I

    .line 504
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_2

    .line 508
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 509
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 510
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 514
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadComplexColor(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v1

    return-object v1

    .line 511
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 516
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 505
    .end local v0    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDimension(IF)F
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .line 618
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    .line 622
    move v0, p1

    .line 623
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 625
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 626
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 627
    .local v2, "type":I
    if-nez v2, :cond_0

    .line 628
    return p2

    .line 629
    :cond_0
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 630
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v3

    return v3

    .line 631
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 632
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 633
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 634
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 638
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t convert value at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to dimension: type=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 619
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDimensionPixelOffset(II)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 666
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    .line 670
    move v0, p1

    .line 671
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 673
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 674
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 675
    .local v2, "type":I
    if-nez v2, :cond_0

    .line 676
    return p2

    .line 677
    :cond_0
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 678
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v3

    return v3

    .line 679
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 680
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 681
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 682
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 686
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t convert value at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to dimension: type=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 667
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDimensionPixelSize(II)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 715
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    .line 719
    move v0, p1

    .line 720
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 722
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 723
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 724
    .local v2, "type":I
    if-nez v2, :cond_0

    .line 725
    return p2

    .line 726
    :cond_0
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 727
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    return v3

    .line 728
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 729
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 730
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 731
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 735
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t convert value at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to dimension: type=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 716
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "index"    # I

    .line 930
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "index"    # I
    .param p2, "density"    # I

    .line 939
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    .line 943
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 944
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 945
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 950
    if-lez p2, :cond_0

    .line 953
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v0, v3}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 955
    :cond_0
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, p2, v3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 946
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 957
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 940
    .end local v0    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFloat(IF)F
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .line 403
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_4

    .line 407
    mul-int/lit8 p1, p1, 0x6

    .line 408
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 409
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 410
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 411
    return p2

    .line 412
    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 413
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2

    .line 414
    :cond_1
    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_2

    .line 416
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    int-to-float v2, v2

    return v2

    .line 419
    :cond_2
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 420
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 421
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    .line 422
    .local v3, "str":Ljava/lang/CharSequence;
    if-eqz v3, :cond_3

    .line 423
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 424
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    return v4

    .line 429
    .end local v3    # "str":Ljava/lang/CharSequence;
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFloat of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 404
    .end local v0    # "data":[I
    .end local v1    # "type":I
    .end local v2    # "v":Landroid/util/TypedValue;
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFont(I)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "index"    # I

    .line 975
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_2

    .line 979
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 980
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 981
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 985
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getFont(Landroid/util/TypedValue;I)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    .line 982
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 987
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 976
    .end local v0    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFraction(IIIF)F
    .locals 7
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I
    .param p4, "defValue"    # F

    .line 834
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    .line 838
    move v0, p1

    .line 839
    .local v0, "attrIndex":I
    const/4 v1, 0x6

    mul-int/2addr p1, v1

    .line 841
    iget-object v2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 842
    .local v2, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v3, v2, v3

    .line 843
    .local v3, "type":I
    if-nez v3, :cond_0

    .line 844
    return p4

    .line 845
    :cond_0
    if-ne v3, v1, :cond_1

    .line 846
    add-int/lit8 v1, p1, 0x1

    aget v1, v2, v1

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-static {v1, v4, v5}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v1

    return v1

    .line 847
    :cond_1
    const/4 v1, 0x2

    if-ne v3, v1, :cond_2

    .line 848
    iget-object v1, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 849
    .local v1, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v1}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 850
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 854
    .end local v1    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t convert value at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to fraction: type=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 835
    .end local v0    # "attrIndex":I
    .end local v2    # "data":[I
    .end local v3    # "type":I
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndex(I)I
    .locals 2
    .param p1, "at"    # I

    .line 140
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v1, 0x1

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndexCount()I
    .locals 2

    .line 121
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt(II)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 366
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    .line 370
    mul-int/lit8 p1, p1, 0x6

    .line 371
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 372
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 373
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 374
    return p2

    .line 375
    :cond_0
    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_1

    .line 377
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    return v2

    .line 380
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 381
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 382
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 383
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v3

    return v3

    .line 387
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInt of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 367
    .end local v0    # "data":[I
    .end local v1    # "type":I
    .end local v2    # "v":Landroid/util/TypedValue;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInteger(II)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 570
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    .line 574
    move v0, p1

    .line 575
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 577
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 578
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 579
    .local v2, "type":I
    if-nez v2, :cond_0

    .line 580
    return p2

    .line 581
    :cond_0
    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1

    .line 583
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    return v3

    .line 584
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 585
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 586
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 587
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 591
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t convert value at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to integer: type=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 571
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLayoutDimension(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 798
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_2

    .line 802
    mul-int/lit8 p1, p1, 0x6

    .line 803
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 804
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 805
    .local v1, "type":I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 807
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    return v2

    .line 808
    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 809
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    return v2

    .line 812
    :cond_1
    return p2

    .line 799
    .end local v0    # "data":[I
    .end local v1    # "type":I
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 758
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    .line 762
    move v0, p1

    .line 763
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 765
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 766
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 767
    .local v2, "type":I
    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    .line 769
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    return v3

    .line 770
    :cond_0
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 771
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    return v3

    .line 772
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 773
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 774
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 775
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 779
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": You must supply a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " attribute."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 759
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNonConfigurationString(II)Ljava/lang/String;
    .locals 7
    .param p1, "index"    # I
    .param p2, "allowedChangingConfigs"    # I

    .line 281
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_5

    .line 285
    mul-int/lit8 p1, p1, 0x6

    .line 286
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 287
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 288
    .local v1, "type":I
    add-int/lit8 v2, p1, 0x4

    aget v2, v0, v2

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    .line 290
    .local v2, "changingConfigs":I
    not-int v3, p2

    and-int/2addr v3, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 291
    return-object v4

    .line 293
    :cond_0
    if-nez v1, :cond_1

    .line 294
    return-object v4

    .line 295
    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 296
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 299
    :cond_2
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 300
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 301
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v5

    .line 302
    .local v5, "cs":Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    :cond_3
    return-object v4

    .line 306
    .end local v5    # "cs":Ljava/lang/CharSequence;
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNonConfigurationString of bad type: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 282
    .end local v0    # "data":[I
    .end local v1    # "type":I
    .end local v2    # "changingConfigs":I
    .end local v3    # "v":Landroid/util/TypedValue;
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    .line 250
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_1

    .line 254
    mul-int/lit8 p1, p1, 0x6

    .line 255
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 256
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 257
    .local v1, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 258
    add-int/lit8 v2, p1, 0x2

    aget v2, v0, v2

    .line 259
    .local v2, "cookie":I
    if-gez v2, :cond_0

    .line 260
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 263
    .end local v2    # "cookie":I
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 251
    .end local v0    # "data":[I
    .end local v1    # "type":I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 2

    .line 1127
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_1

    .line 1131
    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<internal>"

    :goto_0
    return-object v0

    .line 1128
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResourceId(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 875
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_1

    .line 879
    mul-int/lit8 p1, p1, 0x6

    .line 880
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 881
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    if-eqz v1, :cond_0

    .line 882
    add-int/lit8 v1, p1, 0x3

    aget v1, v0, v1

    .line 883
    .local v1, "resid":I
    if-eqz v1, :cond_0

    .line 884
    return v1

    .line 887
    .end local v1    # "resid":I
    :cond_0
    return p2

    .line 876
    .end local v0    # "data":[I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 153
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    return-object v0

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 6
    .param p1, "index"    # I

    .line 211
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_4

    .line 215
    mul-int/lit8 p1, p1, 0x6

    .line 216
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 217
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 218
    .local v1, "type":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 219
    return-object v2

    .line 220
    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 221
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 224
    :cond_1
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 225
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 226
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v4

    .line 227
    .local v4, "cs":Ljava/lang/CharSequence;
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    :cond_2
    return-object v2

    .line 231
    .end local v4    # "cs":Ljava/lang/CharSequence;
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getString of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    .end local v0    # "data":[I
    .end local v1    # "type":I
    .end local v3    # "v":Landroid/util/TypedValue;
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "index"    # I

    .line 174
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    .line 178
    mul-int/lit8 p1, p1, 0x6

    .line 179
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 180
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 181
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 182
    const/4 v2, 0x0

    return-object v2

    .line 183
    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 184
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 187
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 188
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 193
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getText of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    .end local v0    # "data":[I
    .end local v1    # "type":I
    .end local v2    # "v":Landroid/util/TypedValue;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 3
    .param p1, "index"    # I

    .line 1006
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_1

    .line 1010
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1011
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1012
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1014
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 1007
    .end local v0    # "value":Landroid/util/TypedValue;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getThemeAttributeId(II)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 903
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_1

    .line 907
    mul-int/lit8 p1, p1, 0x6

    .line 908
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 909
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 910
    add-int/lit8 v1, p1, 0x1

    aget v1, v0, v1

    return v1

    .line 912
    :cond_0
    return p2

    .line 904
    .end local v0    # "data":[I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(I)I
    .locals 2
    .param p1, "index"    # I

    .line 1044
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_0

    .line 1048
    mul-int/lit8 p1, p1, 0x6

    .line 1049
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    aget v0, v0, v1

    return v0

    .line 1045
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .line 1028
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_0

    .line 1032
    mul-int/lit8 v0, p1, 0x6

    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v0

    return v0

    .line 1029
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasValue(I)Z
    .locals 3
    .param p1, "index"    # I

    .line 1064
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_1

    .line 1068
    mul-int/lit8 p1, p1, 0x6

    .line 1069
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1070
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 1071
    .local v1, "type":I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1065
    .end local v0    # "data":[I
    .end local v1    # "type":I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasValueOrEmpty(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 1085
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_2

    .line 1089
    mul-int/lit8 p1, p1, 0x6

    .line 1090
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1091
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 1092
    .local v1, "type":I
    const/4 v2, 0x1

    if-nez v1, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    nop

    :cond_1
    :goto_0
    return v2

    .line 1086
    .end local v0    # "data":[I
    .end local v1    # "type":I
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public length()I
    .locals 2

    .line 107
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_0

    .line 111
    iget v0, p0, Landroid/content/res/TypedArray;->mLength:I

    return v0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .locals 2
    .param p1, "index"    # I

    .line 1109
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_1

    .line 1113
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1114
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1115
    return-object v0

    .line 1117
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 1110
    .end local v0    # "value":Landroid/util/TypedValue;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public recycle()V
    .locals 3

    .line 1141
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_0

    .line 1145
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 1148
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1149
    iput-object v0, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1150
    iput-object v0, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 1152
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 1153
    return-void

    .line 1142
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1296
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
