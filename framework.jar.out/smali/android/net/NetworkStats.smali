.class public Landroid/net/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStats$NonMonotonicObserver;,
        Landroid/net/NetworkStats$Entry;
    }
.end annotation


# static fields
.field private static final CLATD_INTERFACE_PREFIX:Ljava/lang/String; = "v4-"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_NETWORK_ALL:I = -0x1

.field public static final DEFAULT_NETWORK_NO:I = 0x0

.field public static final DEFAULT_NETWORK_YES:I = 0x1

.field public static final IFACE_ALL:Ljava/lang/String;

.field public static final INTERFACES_ALL:[Ljava/lang/String;

.field private static final IPV4V6_HEADER_DELTA:I = 0x14

.field public static final METERED_ALL:I = -0x1

.field public static final METERED_NO:I = 0x0

.field public static final METERED_YES:I = 0x1

.field public static final ROAMING_ALL:I = -0x1

.field public static final ROAMING_NO:I = 0x0

.field public static final ROAMING_YES:I = 0x1

.field public static final SET_ALL:I = -0x1

.field public static final SET_DBG_VPN_IN:I = 0x3e9

.field public static final SET_DBG_VPN_OUT:I = 0x3ea

.field public static final SET_DEBUG_START:I = 0x3e8

.field public static final SET_DEFAULT:I = 0x0

.field public static final SET_FOREGROUND:I = 0x1

.field public static final STATS_PER_IFACE:I = 0x0

.field public static final STATS_PER_UID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field public static final TAG_ALL:I = -0x1

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1


# instance fields
.field private capacity:I

.field private defaultNetwork:[I

.field private elapsedRealtime:J

.field private iface:[Ljava/lang/String;

.field private metered:[I

.field private operations:[J

.field private roaming:[I

.field private rxBytes:[J

.field private rxPackets:[J

.field private set:[I

.field private size:I

.field private tag:[I

.field private txBytes:[J

.field private txPackets:[J

.field private uid:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    sput-object v0, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    .line 69
    sput-object v0, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    .line 1100
    new-instance v0, Landroid/net/NetworkStats$1;

    invoke-direct {v0}, Landroid/net/NetworkStats$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "initialSize"    # I

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 246
    if-lez p3, :cond_0

    .line 247
    iput p3, p0, Landroid/net/NetworkStats;->capacity:I

    .line 248
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 249
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 250
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 251
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 252
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    .line 253
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 254
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    .line 255
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 256
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 257
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 258
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 259
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clear()V

    .line 264
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 282
    return-void
.end method

.method private addTrafficToApplications(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 21
    .param p1, "tunUid"    # I
    .param p2, "tunIface"    # Ljava/lang/String;
    .param p3, "underlyingIface"    # Ljava/lang/String;
    .param p4, "tunIfaceTotal"    # Landroid/net/NetworkStats$Entry;
    .param p5, "pool"    # Landroid/net/NetworkStats$Entry;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 1234
    move-object/from16 v2, p5

    new-instance v3, Landroid/net/NetworkStats$Entry;

    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1235
    .local v3, "moved":Landroid/net/NetworkStats$Entry;
    new-instance v4, Landroid/net/NetworkStats$Entry;

    invoke-direct {v4}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1236
    .local v4, "tmpEntry":Landroid/net/NetworkStats$Entry;
    move-object/from16 v5, p3

    iput-object v5, v4, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1237
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v7, v0, Landroid/net/NetworkStats;->size:I

    if-ge v6, v7, :cond_7

    .line 1240
    iget-object v7, v0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v7, v7, v6

    move-object/from16 v8, p2

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Landroid/net/NetworkStats;->uid:[I

    aget v7, v7, v6

    move/from16 v9, p1

    if-eq v7, v9, :cond_6

    .line 1241
    iget-wide v10, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-lez v7, :cond_0

    .line 1242
    iget-object v7, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v14, v7, v6

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1243
    move-wide/from16 v16, v10

    move-wide/from16 v18, v12

    invoke-static/range {v14 .. v19}, Landroid/net/NetworkStats;->multiplySafe(JJJ)J

    move-result-wide v10

    iput-wide v10, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1247
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 1245
    :cond_0
    const-wide/16 v10, 0x0

    iput-wide v10, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1247
    :goto_1
    iget-wide v12, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v7, v12, v10

    if-lez v7, :cond_1

    .line 1248
    iget-object v7, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v10, v7, v6

    iget-wide v12, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v14, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1249
    invoke-static/range {v10 .. v15}, Landroid/net/NetworkStats;->multiplySafe(JJJ)J

    move-result-wide v10

    iput-wide v10, v4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1253
    const-wide/16 v10, 0x0

    goto :goto_2

    .line 1251
    :cond_1
    const-wide/16 v10, 0x0

    iput-wide v10, v4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1253
    :goto_2
    iget-wide v12, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v7, v12, v10

    if-lez v7, :cond_2

    .line 1254
    iget-object v7, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v10, v7, v6

    iget-wide v12, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v14, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1255
    invoke-static/range {v10 .. v15}, Landroid/net/NetworkStats;->multiplySafe(JJJ)J

    move-result-wide v10

    iput-wide v10, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1259
    const-wide/16 v10, 0x0

    goto :goto_3

    .line 1257
    :cond_2
    const-wide/16 v10, 0x0

    iput-wide v10, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1259
    :goto_3
    iget-wide v12, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v7, v12, v10

    if-lez v7, :cond_3

    .line 1260
    iget-object v7, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v10, v7, v6

    iget-wide v12, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v14, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1261
    invoke-static/range {v10 .. v15}, Landroid/net/NetworkStats;->multiplySafe(JJJ)J

    move-result-wide v10

    iput-wide v10, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1265
    const-wide/16 v10, 0x0

    goto :goto_4

    .line 1263
    :cond_3
    const-wide/16 v10, 0x0

    iput-wide v10, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1265
    :goto_4
    iget-wide v12, v1, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v7, v12, v10

    if-lez v7, :cond_4

    .line 1266
    iget-object v7, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v10, v7, v6

    iget-wide v12, v2, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide v14, v1, Landroid/net/NetworkStats$Entry;->operations:J

    .line 1267
    invoke-static/range {v10 .. v15}, Landroid/net/NetworkStats;->multiplySafe(JJJ)J

    move-result-wide v10

    iput-wide v10, v4, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_5

    .line 1269
    :cond_4
    const-wide/16 v10, 0x0

    iput-wide v10, v4, Landroid/net/NetworkStats$Entry;->operations:J

    .line 1271
    :goto_5
    iget-object v7, v0, Landroid/net/NetworkStats;->uid:[I

    aget v7, v7, v6

    iput v7, v4, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1272
    iget-object v7, v0, Landroid/net/NetworkStats;->tag:[I

    aget v7, v7, v6

    iput v7, v4, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1273
    iget-object v7, v0, Landroid/net/NetworkStats;->set:[I

    aget v7, v7, v6

    iput v7, v4, Landroid/net/NetworkStats$Entry;->set:I

    .line 1274
    iget-object v7, v0, Landroid/net/NetworkStats;->metered:[I

    aget v7, v7, v6

    iput v7, v4, Landroid/net/NetworkStats$Entry;->metered:I

    .line 1275
    iget-object v7, v0, Landroid/net/NetworkStats;->roaming:[I

    aget v7, v7, v6

    iput v7, v4, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 1276
    iget-object v7, v0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v7, v7, v6

    iput v7, v4, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 1277
    invoke-virtual {v0, v4}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1278
    iget-object v7, v0, Landroid/net/NetworkStats;->tag:[I

    aget v7, v7, v6

    if-nez v7, :cond_6

    .line 1279
    invoke-virtual {v3, v4}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 1281
    const/16 v7, 0x3e9

    iput v7, v4, Landroid/net/NetworkStats$Entry;->set:I

    .line 1282
    invoke-virtual {v0, v4}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_6

    .line 1237
    :cond_5
    move/from16 v9, p1

    :cond_6
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1286
    .end local v6    # "i":I
    :cond_7
    move/from16 v9, p1

    move-object/from16 v8, p2

    return-object v3
.end method

.method public static apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Ljava/util/Map;Z)V
    .locals 22
    .param p0, "baseTraffic"    # Landroid/net/NetworkStats;
    .param p1, "stackedTraffic"    # Landroid/net/NetworkStats;
    .param p3, "useBpfStats"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 796
    .local p2, "stackedIfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    .line 796
    new-instance v1, Landroid/net/NetworkStats;

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 799
    .local v1, "adjustments":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    .line 800
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    new-instance v21, Landroid/net/NetworkStats$Entry;

    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v3, v21

    invoke-direct/range {v3 .. v20}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 802
    .local v3, "adjust":Landroid/net/NetworkStats$Entry;
    const/4 v4, 0x0

    .line 802
    .local v4, "i":I
    :goto_0
    iget v5, v0, Landroid/net/NetworkStats;->size:I

    if-ge v4, v5, :cond_4

    .line 803
    invoke-virtual {v0, v4, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    .line 804
    iget-object v5, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const-string/jumbo v6, "v4-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 805
    goto :goto_1

    .line 807
    :cond_0
    iget-object v5, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v6, p2

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 808
    .local v5, "baseIface":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 809
    goto :goto_2

    .line 815
    :cond_1
    iput-object v5, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 816
    const-wide/16 v7, 0x14

    if-nez p3, :cond_2

    .line 817
    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    mul-long/2addr v12, v7

    add-long/2addr v10, v12

    neg-long v10, v10

    iput-wide v10, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 818
    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    neg-long v10, v10

    iput-wide v10, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 820
    :cond_2
    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v12, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    mul-long/2addr v12, v7

    add-long/2addr v10, v12

    neg-long v10, v10

    iput-wide v10, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 821
    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    neg-long v10, v10

    iput-wide v10, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 822
    invoke-virtual {v1, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 828
    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    mul-long/2addr v12, v7

    add-long/2addr v10, v12

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 829
    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v12, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    mul-long/2addr v12, v7

    add-long/2addr v10, v12

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 830
    invoke-direct {v0, v4, v2}, Landroid/net/NetworkStats;->setValues(ILandroid/net/NetworkStats$Entry;)V

    .line 830
    .end local v5    # "baseIface":Ljava/lang/String;
    goto :goto_2

    .line 802
    :cond_3
    :goto_1
    move-object/from16 v6, p2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 833
    .end local v4    # "i":I
    :cond_4
    move-object/from16 v6, p2

    move-object/from16 v4, p0

    invoke-virtual {v4, v1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 834
    return-void
.end method

.method private deductTrafficFromVpnApp(ILjava/lang/String;Landroid/net/NetworkStats$Entry;)V
    .locals 10
    .param p1, "tunUid"    # I
    .param p2, "underlyingIface"    # Ljava/lang/String;
    .param p3, "moved"    # Landroid/net/NetworkStats$Entry;

    .line 1291
    iput p1, p3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1292
    const/16 v0, 0x3ea

    iput v0, p3, Landroid/net/NetworkStats$Entry;->set:I

    .line 1293
    const/4 v0, 0x0

    iput v0, p3, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1294
    iput-object p2, p3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1295
    const/4 v0, -0x1

    iput v0, p3, Landroid/net/NetworkStats$Entry;->metered:I

    .line 1296
    iput v0, p3, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 1297
    iput v0, p3, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 1298
    invoke-virtual {p0, p3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1307
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIIII)I

    move-result v1

    .line 1309
    .local v1, "idxVpnBackground":I
    if-eq v1, v0, :cond_0

    .line 1310
    invoke-static {v1, p0, p3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    .line 1313
    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    invoke-virtual/range {v2 .. v9}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIIII)I

    move-result v2

    .line 1315
    .local v2, "idxVpnForeground":I
    if-eq v2, v0, :cond_1

    .line 1316
    invoke-static {v2, p0, p3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    .line 1318
    :cond_1
    return-void
.end method

.method public static defaultNetworkToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "defaultNetwork"    # I

    .line 1076
    packed-switch p0, :pswitch_data_0

    .line 1084
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1082
    :pswitch_0
    const-string v0, "YES"

    return-object v0

    .line 1080
    :pswitch_1
    const-string v0, "NO"

    return-object v0

    .line 1078
    :pswitch_2
    const-string v0, "ALL"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;
    .locals 10
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p3, "limitUid"    # I
    .param p4, "includeTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .line 626
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 628
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_0
    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 629
    iput p3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 630
    const/4 v1, -0x1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 631
    const/4 v2, 0x0

    iput v2, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 632
    iput v1, v0, Landroid/net/NetworkStats$Entry;->metered:I

    .line 633
    iput v1, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 634
    iput v1, v0, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 635
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 636
    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 637
    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 638
    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 639
    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 641
    move v3, v2

    .local v3, "i":I
    :goto_1
    iget v4, p0, Landroid/net/NetworkStats;->size:I

    if-ge v3, v4, :cond_7

    .line 642
    const/4 v4, 0x1

    if-eq p3, v1, :cond_2

    iget-object v5, p0, Landroid/net/NetworkStats;->uid:[I

    aget v5, v5, v3

    if-ne p3, v5, :cond_1

    goto :goto_2

    :cond_1
    move v5, v2

    goto :goto_3

    :cond_2
    :goto_2
    move v5, v4

    .line 643
    .local v5, "matchesUid":Z
    :goto_3
    if-eqz p2, :cond_4

    iget-object v6, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    move v4, v2

    nop

    .line 645
    .local v4, "matchesIface":Z
    :cond_4
    :goto_4
    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    .line 647
    iget-object v6, p0, Landroid/net/NetworkStats;->tag:[I

    aget v6, v6, v3

    if-eqz v6, :cond_5

    if-nez p4, :cond_5

    .end local v4    # "matchesIface":Z
    .end local v5    # "matchesUid":Z
    goto :goto_5

    .line 649
    .restart local v4    # "matchesIface":Z
    .restart local v5    # "matchesUid":Z
    :cond_5
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v8, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v8, v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 650
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v8, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v8, v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 651
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v8, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v8, v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 652
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v8, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v8, v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 653
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v8, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v8, v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 641
    .end local v4    # "matchesIface":Z
    .end local v5    # "matchesUid":Z
    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 658
    .end local v3    # "i":I
    :cond_7
    return-object v0
.end method

.method public static meteredToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "metered"    # I

    .line 1044
    packed-switch p0, :pswitch_data_0

    .line 1052
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1050
    :pswitch_0
    const-string v0, "YES"

    return-object v0

    .line 1048
    :pswitch_1
    const-string v0, "NO"

    return-object v0

    .line 1046
    :pswitch_2
    const-string v0, "ALL"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static multiplySafe(JJJ)J
    .locals 20
    .param p0, "value"    # J
    .param p2, "num"    # J
    .param p4, "den"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1213
    move-wide/from16 v0, p4

    move-wide/from16 v2, p0

    .line 1214
    .local v2, "x":J
    move-wide/from16 v4, p2

    .line 1216
    .local v4, "y":J
    mul-long v6, v2, v4

    .line 1217
    .local v6, "r":J
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    .line 1218
    .local v8, "ax":J
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    .line 1219
    .local v10, "ay":J
    or-long v12, v8, v10

    const/16 v14, 0x1f

    ushr-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_2

    .line 1223
    cmp-long v12, v4, v14

    if-eqz v12, :cond_0

    div-long v12, v6, v4

    cmp-long v12, v12, v2

    if-nez v12, :cond_1

    :cond_0
    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v12, v2, v12

    if-nez v12, :cond_2

    const-wide/16 v12, -0x1

    cmp-long v12, v4, v12

    if-nez v12, :cond_2

    .line 1226
    :cond_1
    move-wide/from16 v12, p2

    long-to-double v14, v12

    move-wide/from16 v16, v2

    long-to-double v2, v0

    .end local v2    # "x":J
    .local v16, "x":J
    div-double/2addr v14, v2

    move-wide/from16 v2, p0

    move-wide/from16 v18, v4

    long-to-double v4, v2

    .end local v4    # "y":J
    .local v18, "y":J
    mul-double/2addr v14, v4

    double-to-long v4, v14

    return-wide v4

    .line 1229
    .end local v16    # "x":J
    .end local v18    # "y":J
    .restart local v2    # "x":J
    .restart local v4    # "y":J
    :cond_2
    move-wide/from16 v12, p2

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v2, p0

    .end local v2    # "x":J
    .end local v4    # "y":J
    .restart local v16    # "x":J
    .restart local v18    # "y":J
    div-long v4, v6, v0

    return-wide v4
.end method

.method public static roamingToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "roaming"    # I

    .line 1060
    packed-switch p0, :pswitch_data_0

    .line 1068
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1066
    :pswitch_0
    const-string v0, "YES"

    return-object v0

    .line 1064
    :pswitch_1
    const-string v0, "NO"

    return-object v0

    .line 1062
    :pswitch_2
    const-string v0, "ALL"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setMatches(II)Z
    .locals 2
    .param p0, "querySet"    # I
    .param p1, "dataSet"    # I

    .line 1026
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1027
    return v0

    .line 1030
    :cond_0
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setToCheckinString(I)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # I

    .line 1006
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 1018
    const-string/jumbo v0, "unk"

    return-object v0

    .line 1016
    :pswitch_0
    const-string/jumbo v0, "vpnout"

    return-object v0

    .line 1014
    :pswitch_1
    const-string/jumbo v0, "vpnin"

    return-object v0

    .line 1012
    :pswitch_2
    const-string v0, "fg"

    return-object v0

    .line 1010
    :pswitch_3
    const-string v0, "def"

    return-object v0

    .line 1008
    :pswitch_4
    const-string v0, "all"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # I

    .line 986
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 998
    const-string v0, "UNKNOWN"

    return-object v0

    .line 996
    :pswitch_0
    const-string v0, "DBG_VPN_OUT"

    return-object v0

    .line 994
    :pswitch_1
    const-string v0, "DBG_VPN_IN"

    return-object v0

    .line 992
    :pswitch_2
    const-string v0, "FOREGROUND"

    return-object v0

    .line 990
    :pswitch_3
    const-string v0, "DEFAULT"

    return-object v0

    .line 988
    :pswitch_4
    const-string v0, "ALL"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setValues(ILandroid/net/NetworkStats$Entry;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 385
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    iget-object v1, p2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    aput-object v1, v0, p1

    .line 386
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->uid:I

    aput v1, v0, p1

    .line 387
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->set:I

    aput v1, v0, p1

    .line 388
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->tag:I

    aput v1, v0, p1

    .line 389
    iget-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->metered:I

    aput v1, v0, p1

    .line 390
    iget-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->roaming:I

    aput v1, v0, p1

    .line 391
    iget-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    aput v1, v0, p1

    .line 392
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    aput-wide v1, v0, p1

    .line 393
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    aput-wide v1, v0, p1

    .line 394
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    aput-wide v1, v0, p1

    .line 395
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    aput-wide v1, v0, p1

    .line 396
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->operations:J

    aput-wide v1, v0, p1

    .line 397
    return-void
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;
    .locals 1
    .param p0, "left"    # Landroid/net/NetworkStats;
    .param p1, "right"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver<",
            "TC;>;TC;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .line 691
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 19
    .param p0, "left"    # Landroid/net/NetworkStats;
    .param p1, "right"    # Landroid/net/NetworkStats;
    .param p4, "recycle"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver<",
            "TC;>;TC;",
            "Landroid/net/NetworkStats;",
            ")",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    move-object/from16 v6, p0

    move-object/from16 v15, p1

    .line 708
    move-object/from16 v14, p4

    iget-wide v0, v6, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget-wide v2, v15, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long v7, v0, v2

    .line 709
    .local v7, "deltaRealtime":J
    const-wide/16 v12, 0x0

    cmp-long v0, v7, v12

    if-gez v0, :cond_1

    .line 710
    if-eqz p2, :cond_0

    .line 711
    const/4 v2, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, p2

    move-object v1, v6

    move-object v3, v15

    move-object/from16 v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 713
    :cond_0
    const-wide/16 v7, 0x0

    .line 717
    .end local v7    # "deltaRealtime":J
    .local v4, "deltaRealtime":J
    :cond_1
    move-wide v4, v7

    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    move-object v3, v0

    .line 719
    .local v3, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v0, 0x0

    if-eqz v14, :cond_2

    iget v1, v14, Landroid/net/NetworkStats;->capacity:I

    iget v2, v6, Landroid/net/NetworkStats;->size:I

    if-lt v1, v2, :cond_2

    .line 720
    move-object v1, v14

    .line 721
    .local v1, "result":Landroid/net/NetworkStats;
    iput v0, v1, Landroid/net/NetworkStats;->size:I

    .line 722
    iput-wide v4, v1, Landroid/net/NetworkStats;->elapsedRealtime:J

    goto :goto_0

    .line 724
    .end local v1    # "result":Landroid/net/NetworkStats;
    :cond_2
    new-instance v1, Landroid/net/NetworkStats;

    iget v2, v6, Landroid/net/NetworkStats;->size:I

    invoke-direct {v1, v4, v5, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .restart local v1    # "result":Landroid/net/NetworkStats;
    :goto_0
    move-object v2, v1

    .line 726
    .end local v1    # "result":Landroid/net/NetworkStats;
    .local v2, "result":Landroid/net/NetworkStats;
    nop

    .local v0, "i":I
    :goto_1
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    iget v0, v6, Landroid/net/NetworkStats;->size:I

    if-ge v1, v0, :cond_6

    .line 727
    iget-object v0, v6, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 728
    iget-object v0, v6, Landroid/net/NetworkStats;->uid:[I

    aget v0, v0, v1

    iput v0, v3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 729
    iget-object v0, v6, Landroid/net/NetworkStats;->set:[I

    aget v0, v0, v1

    iput v0, v3, Landroid/net/NetworkStats$Entry;->set:I

    .line 730
    iget-object v0, v6, Landroid/net/NetworkStats;->tag:[I

    aget v0, v0, v1

    iput v0, v3, Landroid/net/NetworkStats$Entry;->tag:I

    .line 731
    iget-object v0, v6, Landroid/net/NetworkStats;->metered:[I

    aget v0, v0, v1

    iput v0, v3, Landroid/net/NetworkStats$Entry;->metered:I

    .line 732
    iget-object v0, v6, Landroid/net/NetworkStats;->roaming:[I

    aget v0, v0, v1

    iput v0, v3, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 733
    iget-object v0, v6, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v0, v0, v1

    iput v0, v3, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 734
    iget-object v0, v6, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v7, v0, v1

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 735
    iget-object v0, v6, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v7, v0, v1

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 736
    iget-object v0, v6, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v7, v0, v1

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 737
    iget-object v0, v6, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v7, v0, v1

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 738
    iget-object v0, v6, Landroid/net/NetworkStats;->operations:[J

    aget-wide v7, v0, v1

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->operations:J

    .line 741
    iget-object v8, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v9, v3, Landroid/net/NetworkStats$Entry;->uid:I

    iget v10, v3, Landroid/net/NetworkStats$Entry;->set:I

    iget v11, v3, Landroid/net/NetworkStats$Entry;->tag:I

    iget v0, v3, Landroid/net/NetworkStats$Entry;->metered:I

    iget v7, v3, Landroid/net/NetworkStats$Entry;->roaming:I

    move-object/from16 v16, v2

    iget v2, v3, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .end local v2    # "result":Landroid/net/NetworkStats;
    .local v16, "result":Landroid/net/NetworkStats;
    move/from16 v17, v7

    move-object v7, v15

    move v12, v0

    move/from16 v13, v17

    move v14, v2

    move-object v2, v15

    move v15, v1

    invoke-virtual/range {v7 .. v15}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIIIIII)I

    move-result v7

    .line 743
    .local v7, "j":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_3

    .line 745
    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v0, v2, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v10, v0, v7

    sub-long/2addr v8, v10

    iput-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 746
    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v0, v2, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v10, v0, v7

    sub-long/2addr v8, v10

    iput-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 747
    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v0, v2, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v10, v0, v7

    sub-long/2addr v8, v10

    iput-wide v8, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 748
    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v0, v2, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v10, v0, v7

    sub-long/2addr v8, v10

    iput-wide v8, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 749
    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v0, v2, Landroid/net/NetworkStats;->operations:[J

    aget-wide v10, v0, v7

    sub-long/2addr v8, v10

    iput-wide v8, v3, Landroid/net/NetworkStats$Entry;->operations:J

    .line 752
    :cond_3
    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 753
    if-eqz p2, :cond_4

    .line 754
    move-object/from16 v0, p2

    move v8, v1

    move-object v1, v6

    .end local v1    # "i":I
    .local v8, "i":I
    move-object/from16 v9, v16

    move v2, v8

    .end local v16    # "result":Landroid/net/NetworkStats;
    .local v9, "result":Landroid/net/NetworkStats;
    move-object v10, v3

    move-object/from16 v3, p1

    .end local v3    # "entry":Landroid/net/NetworkStats$Entry;
    .local v10, "entry":Landroid/net/NetworkStats$Entry;
    move-wide v11, v4

    move v4, v7

    .end local v4    # "deltaRealtime":J
    .local v11, "deltaRealtime":J
    move-object/from16 v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    goto :goto_2

    .line 756
    .end local v8    # "i":I
    .end local v9    # "result":Landroid/net/NetworkStats;
    .end local v10    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v11    # "deltaRealtime":J
    .restart local v1    # "i":I
    .restart local v3    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v4    # "deltaRealtime":J
    .restart local v16    # "result":Landroid/net/NetworkStats;
    :cond_4
    move v8, v1

    move-object v10, v3

    move-wide v11, v4

    move-object/from16 v9, v16

    .end local v1    # "i":I
    .end local v3    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v4    # "deltaRealtime":J
    .end local v16    # "result":Landroid/net/NetworkStats;
    .restart local v8    # "i":I
    .restart local v9    # "result":Landroid/net/NetworkStats;
    .restart local v10    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v11    # "deltaRealtime":J
    :goto_2
    iget-wide v0, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 757
    iget-wide v0, v10, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v10, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 758
    iget-wide v0, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 759
    iget-wide v0, v10, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v10, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 760
    iget-wide v0, v10, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v10, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_3

    .line 763
    .end local v8    # "i":I
    .end local v9    # "result":Landroid/net/NetworkStats;
    .end local v10    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v11    # "deltaRealtime":J
    .restart local v1    # "i":I
    .restart local v3    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v4    # "deltaRealtime":J
    .restart local v16    # "result":Landroid/net/NetworkStats;
    :cond_5
    move v8, v1

    move-object v10, v3

    move-wide v11, v4

    move-object/from16 v9, v16

    const-wide/16 v2, 0x0

    .end local v1    # "i":I
    .end local v3    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v4    # "deltaRealtime":J
    .end local v16    # "result":Landroid/net/NetworkStats;
    .restart local v8    # "i":I
    .restart local v9    # "result":Landroid/net/NetworkStats;
    .restart local v10    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v11    # "deltaRealtime":J
    :goto_3
    invoke-virtual {v9, v10}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 726
    .end local v7    # "j":I
    add-int/lit8 v0, v8, 0x1

    .end local v8    # "i":I
    .restart local v0    # "i":I
    move-object/from16 v15, p1

    move-object/from16 v14, p4

    move-wide v4, v11

    move-wide v12, v2

    move-object v2, v9

    move-object v3, v10

    goto/16 :goto_1

    .line 766
    .end local v0    # "i":I
    .end local v9    # "result":Landroid/net/NetworkStats;
    .end local v10    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v11    # "deltaRealtime":J
    .restart local v2    # "result":Landroid/net/NetworkStats;
    .restart local v3    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v4    # "deltaRealtime":J
    :cond_6
    move-object v9, v2

    move-object v10, v3

    move-wide v11, v4

    .end local v2    # "result":Landroid/net/NetworkStats;
    .end local v3    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v4    # "deltaRealtime":J
    .restart local v9    # "result":Landroid/net/NetworkStats;
    .restart local v10    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v11    # "deltaRealtime":J
    return-object v9
.end method

.method public static tagToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # I

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tunAdjustmentInit(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V
    .locals 4
    .param p1, "tunUid"    # I
    .param p2, "tunIface"    # Ljava/lang/String;
    .param p3, "underlyingIface"    # Ljava/lang/String;
    .param p4, "tunIfaceTotal"    # Landroid/net/NetworkStats$Entry;
    .param p5, "underlyingIfaceTotal"    # Landroid/net/NetworkStats$Entry;

    .line 1171
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1172
    .local v0, "recycle":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_4

    .line 1173
    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 1174
    iget v2, v0, Landroid/net/NetworkStats$Entry;->uid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 1177
    iget v2, v0, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_2

    iget v2, v0, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v3, 0x3ea

    if-eq v2, v3, :cond_2

    .line 1182
    iget v2, v0, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1183
    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1184
    invoke-virtual {p5, v0}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 1187
    :cond_0
    iget v2, v0, Landroid/net/NetworkStats$Entry;->uid:I

    if-eq v2, p1, :cond_1

    iget v2, v0, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1188
    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1190
    invoke-virtual {p4, v0}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 1172
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1178
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot adjust VPN accounting on a NetworkStats containing SET_DBG_VPN_*"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1175
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot adjust VPN accounting on an iface aggregated NetworkStats."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1193
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method private static tunGetPool(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 5
    .param p0, "tunIfaceTotal"    # Landroid/net/NetworkStats$Entry;
    .param p1, "underlyingIfaceTotal"    # Landroid/net/NetworkStats$Entry;

    .line 1196
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1197
    .local v0, "pool":Landroid/net/NetworkStats$Entry;
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1198
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1199
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1200
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1201
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 1202
    return-object v0
.end method

.method private static tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V
    .locals 11
    .param p0, "i"    # I
    .param p1, "left"    # Landroid/net/NetworkStats;
    .param p2, "right"    # Landroid/net/NetworkStats$Entry;

    .line 1321
    iget-object v0, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v0, v0, p0

    iget-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1322
    .local v0, "rxBytes":J
    iget-object v2, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v3, v2, p0

    sub-long/2addr v3, v0

    aput-wide v3, v2, p0

    .line 1323
    iget-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    sub-long/2addr v2, v0

    iput-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1325
    iget-object v2, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v2, p0

    iget-wide v4, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 1326
    .local v2, "rxPackets":J
    iget-object v4, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v5, v4, p0

    sub-long/2addr v5, v2

    aput-wide v5, v4, p0

    .line 1327
    iget-wide v4, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long/2addr v4, v2

    iput-wide v4, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1329
    iget-object v4, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v4, p0

    iget-wide v6, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1330
    .local v4, "txBytes":J
    iget-object v6, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v7, v6, p0

    sub-long/2addr v7, v4

    aput-wide v7, v6, p0

    .line 1331
    iget-wide v6, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long/2addr v6, v4

    iput-wide v6, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1333
    iget-object v6, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v6, p0

    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1334
    .local v6, "txPackets":J
    iget-object v8, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v9, v8, p0

    sub-long/2addr v9, v6

    aput-wide v9, v8, p0

    .line 1335
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr v8, v6

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1336
    return-void
.end method


# virtual methods
.method public addIfaceValues(Ljava/lang/String;JJJJ)Landroid/net/NetworkStats;
    .locals 15
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "rxBytes"    # J
    .param p4, "rxPackets"    # J
    .param p6, "txBytes"    # J
    .param p8, "txPackets"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 336
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-virtual/range {v0 .. v14}, Landroid/net/NetworkStats;->addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 2
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 361
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    iget v1, p0, Landroid/net/NetworkStats;->capacity:I

    if-lt v0, v1, :cond_0

    .line 362
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 363
    .local v0, "newLength":I
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 364
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 365
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->set:[I

    .line 366
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 367
    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    .line 368
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 369
    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    .line 370
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 371
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 372
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 373
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 374
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    .line 375
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 378
    .end local v0    # "newLength":I
    :cond_0
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {p0, v0, p1}, Landroid/net/NetworkStats;->setValues(ILandroid/net/NetworkStats$Entry;)V

    .line 379
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 381
    return-object p0
.end method

.method public addValues(Ljava/lang/String;IIIIIIJJJJJ)Landroid/net/NetworkStats;
    .locals 19
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "metered"    # I
    .param p6, "roaming"    # I
    .param p7, "defaultNetwork"    # I
    .param p8, "rxBytes"    # J
    .param p10, "rxPackets"    # J
    .param p12, "txBytes"    # J
    .param p14, "txPackets"    # J
    .param p16, "operations"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 351
    new-instance v14, Landroid/net/NetworkStats$Entry;

    move-object v0, v14

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-object/from16 v18, v14

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1
.end method

.method public addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 16
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 343
    new-instance v15, Landroid/net/NetworkStats$Entry;

    move-object v0, v15

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1
.end method

.method public apply464xlatAdjustments(Ljava/util/Map;Z)V
    .locals 0
    .param p2, "useBpfStats"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 845
    .local p1, "stackedIfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p0, p1, p2}, Landroid/net/NetworkStats;->apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Ljava/util/Map;Z)V

    .line 846
    return-void
.end method

.method public clear()V
    .locals 1

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 319
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 320
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 321
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 322
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 323
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    .line 324
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 325
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    .line 326
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 327
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 328
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 329
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 330
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 331
    return-void
.end method

.method public clone()Landroid/net/NetworkStats;
    .locals 4

    .line 305
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 306
    .local v0, "clone":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    .line 307
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_0

    .line 308
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 309
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public combineAllValues(Landroid/net/NetworkStats;)V
    .locals 3
    .param p1, "another"    # Landroid/net/NetworkStats;

    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p1, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_0

    .line 485
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 486
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 8
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 464
    iget-object v1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, p1, Landroid/net/NetworkStats$Entry;->tag:I

    iget v5, p1, Landroid/net/NetworkStats$Entry;->metered:I

    iget v6, p1, Landroid/net/NetworkStats$Entry;->roaming:I

    iget v7, p1, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIIII)I

    move-result v0

    .line 466
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 468
    invoke-virtual {p0, p1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_0

    .line 470
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 471
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 472
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 473
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 474
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 476
    :goto_0
    return-object p0
.end method

.method public combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 16
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .line 454
    new-instance v15, Landroid/net/NetworkStats$Entry;

    move-object v0, v15

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1
.end method

.method public combineValues(Ljava/lang/String;IIJJJJJ)Landroid/net/NetworkStats;
    .locals 15
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tag"    # I
    .param p4, "rxBytes"    # J
    .param p6, "rxPackets"    # J
    .param p8, "txBytes"    # J
    .param p10, "txPackets"    # J
    .param p12, "operations"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 447
    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    invoke-virtual/range {v0 .. v14}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 1097
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 962
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 963
    const-string v0, "NetworkStats: elapsedRealtime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 964
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_0

    .line 965
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 966
    const-string v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 967
    const-string v1, " iface="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 968
    const-string v1, " uid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 969
    const-string v1, " set="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 970
    const-string v1, " tag="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 971
    const-string v1, " metered="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->meteredToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 972
    const-string v1, " roaming="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->roamingToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 973
    const-string v1, " defaultNetwork="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->defaultNetworkToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 974
    const-string v1, " rxBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 975
    const-string v1, " rxPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 976
    const-string v1, " txBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 977
    const-string v1, " txPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 978
    const-string v1, " operations="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 964
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 980
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public filter(I[Ljava/lang/String;I)V
    .locals 6
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I

    .line 938
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-ne p3, v0, :cond_0

    sget-object v1, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    if-ne p2, v1, :cond_0

    .line 939
    return-void

    .line 942
    :cond_0
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 943
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .line 944
    .local v2, "nextOutputEntry":I
    const/4 v3, 0x0

    move v4, v2

    move-object v2, v1

    move v1, v3

    .local v1, "i":I
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    .local v4, "nextOutputEntry":I
    :goto_0
    iget v5, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v5, :cond_6

    .line 945
    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    .line 946
    if-eq p1, v0, :cond_1

    iget v5, v2, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne p1, v5, :cond_3

    :cond_1
    if-eq p3, v0, :cond_2

    iget v5, v2, Landroid/net/NetworkStats$Entry;->tag:I

    if-ne p3, v5, :cond_3

    :cond_2
    sget-object v5, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    if-eq p2, v5, :cond_4

    iget-object v5, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 950
    invoke-static {p2, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v3

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v5, 0x1

    .line 952
    .local v5, "matches":Z
    :goto_2
    if-eqz v5, :cond_5

    .line 953
    invoke-direct {p0, v4, v2}, Landroid/net/NetworkStats;->setValues(ILandroid/net/NetworkStats$Entry;)V

    .line 954
    add-int/lit8 v4, v4, 0x1

    .line 944
    .end local v5    # "matches":Z
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 958
    .end local v1    # "i":I
    :cond_6
    iput v4, p0, Landroid/net/NetworkStats;->size:I

    .line 959
    return-void
.end method

.method public findIndex(Ljava/lang/String;IIIIII)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "metered"    # I
    .param p6, "roaming"    # I
    .param p7, "defaultNetwork"    # I

    .line 495
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_1

    .line 496
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    if-ne p4, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v1, v1, v0

    if-ne p5, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, v0

    if-ne p6, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v1, v1, v0

    if-ne p7, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 499
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    return v0

    .line 495
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public findIndexHinted(Ljava/lang/String;IIIIIII)I
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "metered"    # I
    .param p6, "roaming"    # I
    .param p7, "defaultNetwork"    # I
    .param p8, "hintIndex"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 513
    const/4 v0, 0x0

    .local v0, "offset":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_2

    .line 514
    div-int/lit8 v1, v0, 0x2

    .line 518
    .local v1, "halfOffset":I
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    .line 519
    add-int v2, p8, v1

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    rem-int/2addr v2, v3

    .local v2, "i":I
    goto :goto_1

    .line 521
    .end local v2    # "i":I
    :cond_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    add-int/2addr v2, p8

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    rem-int/2addr v2, v3

    .line 524
    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v2

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v2

    if-ne p3, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v2

    if-ne p4, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->metered:[I

    aget v3, v3, v2

    if-ne p5, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v3, v3, v2

    if-ne p6, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v3, v3, v2

    if-ne p7, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 527
    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    return v2

    .line 513
    .end local v1    # "halfOffset":I
    .end local v2    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    .end local v0    # "offset":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .line 420
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-wide v0
.end method

.method public getElapsedRealtimeAge()J
    .locals 4

    .line 432
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;

    .line 594
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;
    .locals 2
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p2, "limitUid"    # I

    .line 602
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;
    .locals 2
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .line 610
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 5

    .line 586
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 587
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public getTotalIncludingTags(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;

    .line 614
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalPackets()J
    .locals 7

    .line 665
    const-wide/16 v0, 0x0

    .line 666
    .local v0, "total":J
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 667
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v3, v3, v2

    iget-object v5, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 666
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 669
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method public getUniqueIfaces()[Ljava/lang/String;
    .locals 6

    .line 555
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 556
    .local v0, "ifaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 557
    .local v4, "iface":Ljava/lang/String;
    sget-object v5, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    if-eq v4, v5, :cond_0

    .line 558
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 556
    .end local v4    # "iface":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 561
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getUniqueUids()[I
    .locals 7

    .line 568
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 569
    .local v0, "uids":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    .line 570
    .local v5, "uid":I
    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 569
    .end local v5    # "uid":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 574
    .local v1, "size":I
    new-array v2, v1, [I

    .line 575
    .local v2, "result":[I
    nop

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 576
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 575
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 578
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3
    .param p1, "i"    # I
    .param p2, "recycle"    # Landroid/net/NetworkStats$Entry;

    .line 403
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 404
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 405
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 406
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 407
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 408
    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->metered:I

    .line 409
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 410
    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 411
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 412
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 413
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 414
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 415
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 416
    return-object v0
.end method

.method public groupedByIface()Landroid/net/NetworkStats;
    .locals 6

    .line 853
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 855
    .local v0, "stats":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 856
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, -0x1

    iput v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 857
    iput v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 858
    const/4 v3, 0x0

    iput v3, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 859
    iput v2, v1, Landroid/net/NetworkStats$Entry;->metered:I

    .line 860
    iput v2, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 861
    iput v2, v1, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 862
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->operations:J

    .line 864
    nop

    .local v3, "i":I
    :goto_0
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_1

    .line 866
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v2

    if-eqz v3, :cond_0

    goto :goto_1

    .line 868
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v2

    iput-object v3, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 869
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v3, v3, v2

    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 870
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v3, v3, v2

    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 871
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v3, v3, v2

    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 872
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v3, v3, v2

    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 873
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 864
    :goto_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 876
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method public groupedByUid()Landroid/net/NetworkStats;
    .locals 5

    .line 884
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 886
    .local v0, "stats":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 887
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 888
    const/4 v2, -0x1

    iput v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 889
    const/4 v3, 0x0

    iput v3, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 890
    iput v2, v1, Landroid/net/NetworkStats$Entry;->metered:I

    .line 891
    iput v2, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 892
    iput v2, v1, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 894
    nop

    .local v3, "i":I
    :goto_0
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_1

    .line 896
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v2

    if-eqz v3, :cond_0

    goto :goto_1

    .line 898
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v2

    iput v3, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 899
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v3, v3, v2

    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 900
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v3, v3, v2

    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 901
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v3, v3, v2

    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 902
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v3, v3, v2

    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 903
    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v3, v3, v2

    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->operations:J

    .line 904
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 894
    :goto_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 907
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method public internalSize()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 441
    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    return v0
.end method

.method public migrateTun(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "tunUid"    # I
    .param p2, "tunIface"    # Ljava/lang/String;
    .param p3, "underlyingIface"    # Ljava/lang/String;

    .line 1137
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1138
    .local v0, "tunIfaceTotal":Landroid/net/NetworkStats$Entry;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    move-object v7, v1

    .line 1140
    .local v7, "underlyingIfaceTotal":Landroid/net/NetworkStats$Entry;
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Landroid/net/NetworkStats;->tunAdjustmentInit(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V

    .line 1145
    invoke-static {v0, v7}, Landroid/net/NetworkStats;->tunGetPool(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v8

    .line 1146
    .local v8, "pool":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v8}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v1

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    .line 1147
    return v9

    .line 1149
    :cond_0
    nop

    .line 1150
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/net/NetworkStats;->addTrafficToApplications(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 1151
    .local v1, "moved":Landroid/net/NetworkStats$Entry;
    invoke-direct {p0, p1, p3, v1}, Landroid/net/NetworkStats;->deductTrafficFromVpnApp(ILjava/lang/String;Landroid/net/NetworkStats$Entry;)V

    .line 1153
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1154
    const-string v2, "NetworkStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to deduct underlying network traffic from VPN package. Moved="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const/4 v2, 0x0

    return v2

    .line 1158
    :cond_1
    return v9
.end method

.method public setElapsedRealtime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 424
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 425
    return-void
.end method

.method public size()I
    .locals 1

    .line 436
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    return v0
.end method

.method public spliceOperationsFrom(Landroid/net/NetworkStats;)V
    .locals 10
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .line 540
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_1

    .line 541
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v4, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v5, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v6, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v7, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v8, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v9, v1, v0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIIII)I

    move-result v1

    .line 543
    .local v1, "j":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 544
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    goto :goto_1

    .line 546
    :cond_0
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    iget-object v3, p1, Landroid/net/NetworkStats;->operations:[J

    aget-wide v3, v3, v1

    aput-wide v3, v2, v0

    .line 540
    .end local v1    # "j":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1
    .param p1, "right"    # Landroid/net/NetworkStats;

    .line 678
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1090
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 1091
    .local v0, "writer":Ljava/io/CharArrayWriter;
    const-string v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1092
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withoutUids([I)Landroid/net/NetworkStats;
    .locals 4
    .param p1, "uids"    # [I

    .line 915
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 917
    .local v0, "stats":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 918
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_1

    .line 919
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 920
    iget v3, v1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 921
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 918
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 925
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 286
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 287
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 291
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 292
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 293
    iget-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 294
    iget-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 295
    iget-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 296
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 297
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 298
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 299
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 300
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 301
    return-void
.end method
