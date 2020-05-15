.class public final Landroid/media/MediaCodecList;
.super Ljava/lang/Object;
.source "MediaCodecList.java"


# static fields
.field public static final ALL_CODECS:I = 0x1

.field public static final REGULAR_CODECS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaCodecList"

.field private static sAllCodecInfos:[Landroid/media/MediaCodecInfo;

.field private static sGlobalSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInitLock:Ljava/lang/Object;

.field private static sRegularCodecInfos:[Landroid/media/MediaCodecInfo;


# instance fields
.field private mCodecInfos:[Landroid/media/MediaCodecInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaCodecList;->sInitLock:Ljava/lang/Object;

    .line 187
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Landroid/media/MediaCodecList;->native_init()V

    .line 191
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 161
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "kind"    # I

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {}, Landroid/media/MediaCodecList;->initCodecList()V

    .line 171
    if-nez p1, :cond_0

    .line 172
    sget-object v0, Landroid/media/MediaCodecList;->sRegularCodecInfos:[Landroid/media/MediaCodecInfo;

    iput-object v0, p0, Landroid/media/MediaCodecList;->mCodecInfos:[Landroid/media/MediaCodecInfo;

    goto :goto_0

    .line 174
    :cond_0
    sget-object v0, Landroid/media/MediaCodecList;->sAllCodecInfos:[Landroid/media/MediaCodecInfo;

    iput-object v0, p0, Landroid/media/MediaCodecList;->mCodecInfos:[Landroid/media/MediaCodecInfo;

    .line 176
    :goto_0
    return-void
.end method

.method static final native findCodecByName(Ljava/lang/String;)I
.end method

.method private findCodecForFormat(ZLandroid/media/MediaFormat;)Ljava/lang/String;
    .locals 7
    .param p1, "encoder"    # Z
    .param p2, "format"    # Landroid/media/MediaFormat;

    .line 242
    const-string/jumbo v0, "mime"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "mime":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaCodecList;->mCodecInfos:[Landroid/media/MediaCodecInfo;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 244
    .local v4, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eq v5, p1, :cond_0

    .line 245
    goto :goto_1

    .line 248
    :cond_0
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    .line 249
    .local v5, "caps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    if-eqz v5, :cond_1

    invoke-virtual {v5, p2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFormatSupported(Landroid/media/MediaFormat;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 250
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 254
    .end local v5    # "caps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    :cond_1
    goto :goto_1

    .line 252
    :catch_0
    move-exception v5

    .line 243
    .end local v4    # "info":Landroid/media/MediaCodecInfo;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 256
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method static final native getCodecCapabilities(ILjava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
.end method

.method public static final getCodecCount()I
    .locals 1

    .line 43
    invoke-static {}, Landroid/media/MediaCodecList;->initCodecList()V

    .line 44
    sget-object v0, Landroid/media/MediaCodecList;->sRegularCodecInfos:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public static final getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 1
    .param p0, "index"    # I

    .line 58
    invoke-static {}, Landroid/media/MediaCodecList;->initCodecList()V

    .line 59
    if-ltz p0, :cond_0

    sget-object v0, Landroid/media/MediaCodecList;->sRegularCodecInfos:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    if-gt p0, v0, :cond_0

    .line 62
    sget-object v0, Landroid/media/MediaCodecList;->sRegularCodecInfos:[Landroid/media/MediaCodecInfo;

    aget-object v0, v0, p0

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static final native getCodecName(I)Ljava/lang/String;
.end method

.method static final getGlobalSettings()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 66
    sget-object v0, Landroid/media/MediaCodecList;->sInitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Landroid/media/MediaCodecList;->sGlobalSettings:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 68
    invoke-static {}, Landroid/media/MediaCodecList;->native_getGlobalSettings()Ljava/util/Map;

    move-result-object v1

    sput-object v1, Landroid/media/MediaCodecList;->sGlobalSettings:Ljava/util/Map;

    .line 70
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    sget-object v0, Landroid/media/MediaCodecList;->sGlobalSettings:Ljava/util/Map;

    return-object v0

    .line 70
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getInfoFor(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 2
    .param p0, "codec"    # Ljava/lang/String;

    .line 132
    invoke-static {}, Landroid/media/MediaCodecList;->initCodecList()V

    .line 133
    sget-object v0, Landroid/media/MediaCodecList;->sAllCodecInfos:[Landroid/media/MediaCodecInfo;

    invoke-static {p0}, Landroid/media/MediaCodecList;->findCodecByName(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static getNewCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 8
    .param p0, "index"    # I

    .line 106
    invoke-static {p0}, Landroid/media/MediaCodecList;->getSupportedTypes(I)[Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "supportedTypes":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 109
    .local v1, "caps":[Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v2, 0x0

    .line 110
    .local v2, "typeIx":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 111
    .local v5, "type":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    .local v6, "typeIx":I
    invoke-static {p0, v5}, Landroid/media/MediaCodecList;->getCodecCapabilities(ILjava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v7

    aput-object v7, v1, v2

    .line 110
    .end local v2    # "typeIx":I
    .end local v5    # "type":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_0

    .line 113
    .end local v6    # "typeIx":I
    .restart local v2    # "typeIx":I
    :cond_0
    new-instance v3, Landroid/media/MediaCodecInfo;

    .line 114
    invoke-static {p0}, Landroid/media/MediaCodecList;->getCodecName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Landroid/media/MediaCodecList;->isEncoder(I)Z

    move-result v5

    invoke-direct {v3, v4, v5, v1}, Landroid/media/MediaCodecInfo;-><init>(Ljava/lang/String;Z[Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 113
    return-object v3
.end method

.method static final native getSupportedTypes(I)[Ljava/lang/String;
.end method

.method private static final initCodecList()V
    .locals 8

    .line 80
    sget-object v0, Landroid/media/MediaCodecList;->sInitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Landroid/media/MediaCodecList;->sRegularCodecInfos:[Landroid/media/MediaCodecInfo;

    if-nez v1, :cond_2

    .line 82
    invoke-static {}, Landroid/media/MediaCodecList;->native_getCodecCount()I

    move-result v1

    .line 83
    .local v1, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v2, "regulars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaCodecInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .local v3, "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaCodecInfo;>;"
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 87
    :try_start_1
    invoke-static {v4}, Landroid/media/MediaCodecList;->getNewCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v5

    .line 88
    .local v5, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->makeRegular()Landroid/media/MediaCodecInfo;

    move-result-object v6

    move-object v5, v6

    .line 90
    if-eqz v5, :cond_0

    .line 91
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .end local v5    # "info":Landroid/media/MediaCodecInfo;
    :cond_0
    goto :goto_1

    .line 93
    :catch_0
    move-exception v5

    .line 94
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "MediaCodecList"

    const-string v7, "Could not get codec capabilities"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    .end local v4    # "index":I
    :cond_1
    nop

    .line 98
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/media/MediaCodecInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/media/MediaCodecInfo;

    sput-object v4, Landroid/media/MediaCodecList;->sRegularCodecInfos:[Landroid/media/MediaCodecInfo;

    .line 99
    nop

    .line 100
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/media/MediaCodecInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/media/MediaCodecInfo;

    sput-object v4, Landroid/media/MediaCodecList;->sAllCodecInfos:[Landroid/media/MediaCodecInfo;

    .line 102
    .end local v1    # "count":I
    .end local v2    # "regulars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaCodecInfo;>;"
    .end local v3    # "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaCodecInfo;>;"
    :cond_2
    monitor-exit v0

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static final native isEncoder(I)Z
.end method

.method private static final native native_getCodecCount()I
.end method

.method static final native native_getGlobalSettings()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private static final native native_init()V
.end method


# virtual methods
.method public final findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodecList;->findCodecForFormat(ZLandroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 238
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodecList;->findCodecForFormat(ZLandroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCodecInfos()[Landroid/media/MediaCodecInfo;
    .locals 2

    .line 183
    iget-object v0, p0, Landroid/media/MediaCodecList;->mCodecInfos:[Landroid/media/MediaCodecInfo;

    iget-object v1, p0, Landroid/media/MediaCodecList;->mCodecInfos:[Landroid/media/MediaCodecInfo;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/MediaCodecInfo;

    return-object v0
.end method
