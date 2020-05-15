.class public Lcom/android/server/wifi/hotspot2/NetworkDetail;
.super Ljava/lang/Object;
.source "NetworkDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;,
        Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkDetail:"


# instance fields
.field private final mANQPElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnqpDomainID:I

.field private final mAnqpOICount:I

.field private final mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field private final mBSSID:J

.field private final mCapacity:I

.field private final mCenterfreq0:I

.field private final mCenterfreq1:I

.field private final mChannelUtilization:I

.field private final mChannelWidth:I

.field private mDtimInterval:I

.field private final mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

.field private final mHESSID:J

.field private final mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

.field private final mInternet:Z

.field private final mIsHiddenSsid:Z

.field private final mMaxRate:I

.field private final mPrimaryFreq:I

.field private final mRoamingConsortiums:[J

.field private final mSSID:Ljava/lang/String;

.field private final mStationCount:I

.field private final mWifiMode:I


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V
    .locals 2
    .param p1, "base"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .line 332
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    .line 333
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    .line 334
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mIsHiddenSsid:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mIsHiddenSsid:Z

    .line 335
    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    .line 336
    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    .line 337
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    .line 338
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    .line 339
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    .line 340
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 341
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    .line 342
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    .line 343
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    .line 344
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    .line 345
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    .line 346
    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    iget-object v1, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;-><init>(Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;)V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    .line 348
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    .line 349
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    .line 350
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    .line 351
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    .line 352
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    .line 353
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    .line 354
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    .line 355
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    .line 356
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;I)V
    .locals 34
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "infoElements"    # [Landroid/net/wifi/ScanResult$InformationElement;
    .param p4, "freq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .local p3, "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, -0x1

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    .line 125
    if-eqz v2, :cond_17

    .line 129
    invoke-static/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    .line 131
    const/4 v3, 0x0

    .line 132
    .local v3, "ssid":Ljava/lang/String;
    const/4 v4, 0x0

    .line 133
    .local v4, "isHiddenSsid":Z
    const/4 v5, 0x0

    .line 135
    .local v5, "ssidOctets":[B
    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;

    invoke-direct {v0}, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;-><init>()V

    move-object v6, v0

    .line 137
    .local v6, "bssLoad":Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;
    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;

    invoke-direct {v0}, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;-><init>()V

    move-object v7, v0

    .line 140
    .local v7, "interworking":Lcom/android/server/wifi/util/InformationElementUtil$Interworking;
    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;

    invoke-direct {v0}, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;-><init>()V

    move-object v8, v0

    .line 143
    .local v8, "roamingConsortium":Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;
    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;

    invoke-direct {v0}, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;-><init>()V

    move-object v9, v0

    .line 145
    .local v9, "vsa":Lcom/android/server/wifi/util/InformationElementUtil$Vsa;
    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;

    invoke-direct {v0}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;-><init>()V

    move-object v10, v0

    .line 146
    .local v10, "htOperation":Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;
    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;

    invoke-direct {v0}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;-><init>()V

    move-object v11, v0

    .line 149
    .local v11, "vhtOperation":Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;
    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    invoke-direct {v0}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;-><init>()V

    move-object v12, v0

    .line 152
    .local v12, "extendedCapabilities":Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;
    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;

    invoke-direct {v0}, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;-><init>()V

    move-object v13, v0

    .line 155
    .local v13, "trafficIndicationMap":Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;
    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;

    invoke-direct {v0}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;-><init>()V

    move-object v14, v0

    .line 157
    .local v14, "supportedRates":Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;
    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;

    invoke-direct {v0}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;-><init>()V

    move-object v15, v0

    .line 160
    .local v15, "extendedSupportedRates":Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;
    const/16 v16, 0x0

    .line 162
    .local v16, "exception":Ljava/lang/RuntimeException;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v0

    .line 164
    .local v17, "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v18, v3

    .end local v3    # "ssid":Ljava/lang/String;
    .local v18, "ssid":Ljava/lang/String;
    :try_start_0
    array-length v0, v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "ssidOctets":[B
    .local v19, "ssidOctets":[B
    :goto_0
    if-ge v5, v0, :cond_9

    :try_start_1
    aget-object v20, v2, v5

    move-object/from16 v21, v20

    .line 165
    .local v21, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    move/from16 v22, v0

    move-object/from16 v3, v21

    iget v0, v3, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .end local v21    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    .local v3, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v2, v17

    :try_start_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v17    # "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v2, "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v0, v3, Landroid/net/wifi/ScanResult$InformationElement;->id:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v23, v4

    .end local v4    # "isHiddenSsid":Z
    .local v23, "isHiddenSsid":Z
    const/4 v4, 0x5

    if-eq v0, v4, :cond_8

    const/16 v4, 0xb

    if-eq v0, v4, :cond_7

    const/16 v4, 0x32

    if-eq v0, v4, :cond_6

    const/16 v4, 0x3d

    if-eq v0, v4, :cond_5

    const/16 v4, 0x6b

    if-eq v0, v4, :cond_4

    const/16 v4, 0x6f

    if-eq v0, v4, :cond_3

    const/16 v4, 0x7f

    if-eq v0, v4, :cond_2

    const/16 v4, 0xc0

    if-eq v0, v4, :cond_1

    const/16 v4, 0xdd

    if-eq v0, v4, :cond_0

    packed-switch v0, :pswitch_data_0

    .end local v3    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    goto :goto_1

    .line 195
    .restart local v3    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    :pswitch_0
    :try_start_3
    invoke-virtual {v14, v3}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 196
    goto :goto_1

    .line 168
    :pswitch_1
    iget-object v0, v3, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 169
    .end local v19    # "ssidOctets":[B
    .local v0, "ssidOctets":[B
    nop

    .line 164
    move-object/from16 v19, v0

    goto :goto_1

    .line 205
    .end local v0    # "ssidOctets":[B
    .end local v3    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    .restart local v19    # "ssidOctets":[B
    :catch_0
    move-exception v0

    goto :goto_2

    .line 186
    .restart local v3    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    :cond_0
    invoke-virtual {v9, v3}, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 187
    goto :goto_1

    .line 177
    :cond_1
    invoke-virtual {v11, v3}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 178
    goto :goto_1

    .line 189
    :cond_2
    invoke-virtual {v12, v3}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 190
    goto :goto_1

    .line 183
    :cond_3
    invoke-virtual {v8, v3}, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 184
    goto :goto_1

    .line 180
    :cond_4
    invoke-virtual {v7, v3}, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 181
    goto :goto_1

    .line 174
    :cond_5
    invoke-virtual {v10, v3}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 175
    goto :goto_1

    .line 198
    :cond_6
    invoke-virtual {v15, v3}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 199
    goto :goto_1

    .line 171
    :cond_7
    invoke-virtual {v6, v3}, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 172
    goto :goto_1

    .line 192
    :cond_8
    invoke-virtual {v13, v3}, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->from(Landroid/net/wifi/ScanResult$InformationElement;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 193
    nop

    .line 164
    .end local v3    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v17, v2

    move/from16 v0, v22

    move/from16 v4, v23

    move-object/from16 v2, p2

    goto :goto_0

    .line 205
    .end local v23    # "isHiddenSsid":Z
    .restart local v4    # "isHiddenSsid":Z
    :catch_1
    move-exception v0

    move/from16 v23, v4

    .end local v4    # "isHiddenSsid":Z
    .restart local v23    # "isHiddenSsid":Z
    goto :goto_2

    .end local v2    # "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23    # "isHiddenSsid":Z
    .restart local v4    # "isHiddenSsid":Z
    .restart local v17    # "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_2
    move-exception v0

    move/from16 v23, v4

    move-object/from16 v2, v17

    goto :goto_2

    .line 211
    :cond_9
    move/from16 v23, v4

    move-object/from16 v2, v17

    .end local v4    # "isHiddenSsid":Z
    .end local v17    # "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v2    # "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v23    # "isHiddenSsid":Z
    goto :goto_3

    .line 205
    .end local v2    # "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19    # "ssidOctets":[B
    .end local v23    # "isHiddenSsid":Z
    .restart local v4    # "isHiddenSsid":Z
    .restart local v5    # "ssidOctets":[B
    .restart local v17    # "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_3
    move-exception v0

    move/from16 v23, v4

    move-object/from16 v2, v17

    move-object/from16 v19, v5

    .line 206
    .end local v4    # "isHiddenSsid":Z
    .end local v5    # "ssidOctets":[B
    .end local v17    # "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v2    # "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v19    # "ssidOctets":[B
    .restart local v23    # "isHiddenSsid":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-eqz v19, :cond_16

    .line 210
    move-object/from16 v16, v0

    .line 212
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v19    # "ssidOctets":[B
    .local v3, "ssidOctets":[B
    :goto_3
    move-object/from16 v3, v19

    if-eqz v3, :cond_10

    .line 221
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    move-object v4, v0

    .line 223
    .local v4, "decoder":Ljava/nio/charset/CharsetDecoder;
    :try_start_4
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 224
    .local v0, "decoded":Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v0, v5

    .line 228
    .end local v18    # "ssid":Ljava/lang/String;
    .local v0, "ssid":Ljava/lang/String;
    goto :goto_4

    .line 226
    .end local v0    # "ssid":Ljava/lang/String;
    .restart local v18    # "ssid":Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 227
    .local v0, "cce":Ljava/nio/charset/CharacterCodingException;
    const/4 v0, 0x0

    .line 230
    .end local v18    # "ssid":Ljava/lang/String;
    .local v0, "ssid":Ljava/lang/String;
    :goto_4
    if-nez v0, :cond_d

    .line 232
    const-string v5, "GBK"

    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiGbk;->encodeSsid([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "ssid2":Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 234
    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    move-object/from16 v25, v4

    goto :goto_6

    .line 238
    :cond_a
    invoke-virtual {v12}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->isStrictUtf8()Z

    move-result v17

    if-eqz v17, :cond_c

    if-nez v16, :cond_b

    .line 242
    move-object/from16 v24, v0

    move-object/from16 v25, v4

    goto :goto_5

    .line 239
    :cond_b
    move-object/from16 v24, v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    .end local v0    # "ssid":Ljava/lang/String;
    .local v24, "ssid":Ljava/lang/String;
    move-object/from16 v25, v4

    const-string v4, "Failed to decode SSID in dubious IE string"

    .end local v4    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .local v25, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    .end local v24    # "ssid":Ljava/lang/String;
    .end local v25    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .restart local v0    # "ssid":Ljava/lang/String;
    .restart local v4    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :cond_c
    move-object/from16 v24, v0

    move-object/from16 v25, v4

    .end local v0    # "ssid":Ljava/lang/String;
    .end local v4    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .restart local v24    # "ssid":Ljava/lang/String;
    .restart local v25    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :goto_5
    new-instance v0, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .end local v5    # "ssid2":Ljava/lang/String;
    .end local v24    # "ssid":Ljava/lang/String;
    .restart local v0    # "ssid":Ljava/lang/String;
    goto :goto_6

    .line 245
    .end local v25    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .restart local v4    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :cond_d
    move-object/from16 v24, v0

    move-object/from16 v25, v4

    .end local v4    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .restart local v25    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :goto_6
    const/4 v4, 0x1

    .line 246
    .end local v23    # "isHiddenSsid":Z
    .local v4, "isHiddenSsid":Z
    array-length v5, v3

    move-object/from16 v26, v0

    const/4 v0, 0x0

    .end local v0    # "ssid":Ljava/lang/String;
    .local v26, "ssid":Ljava/lang/String;
    :goto_7
    if-ge v0, v5, :cond_f

    aget-byte v17, v3, v0

    .line 247
    .local v17, "byteVal":B
    if-eqz v17, :cond_e

    .line 248
    const/4 v4, 0x0

    .line 249
    goto :goto_8

    .line 246
    .end local v17    # "byteVal":B
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 254
    .end local v25    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v26    # "ssid":Ljava/lang/String;
    .restart local v0    # "ssid":Ljava/lang/String;
    :cond_f
    :goto_8
    move-object/from16 v0, v26

    goto :goto_9

    .end local v0    # "ssid":Ljava/lang/String;
    .end local v4    # "isHiddenSsid":Z
    .restart local v18    # "ssid":Ljava/lang/String;
    .restart local v23    # "isHiddenSsid":Z
    :cond_10
    move-object/from16 v0, v18

    move/from16 v4, v23

    .end local v18    # "ssid":Ljava/lang/String;
    .end local v23    # "isHiddenSsid":Z
    .restart local v0    # "ssid":Ljava/lang/String;
    .restart local v4    # "isHiddenSsid":Z
    :goto_9
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    .line 255
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    iget-wide v2, v7, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->hessid:J

    .end local v2    # "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "ssidOctets":[B
    .local v27, "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v28, "ssidOctets":[B
    iput-wide v2, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    .line 256
    iput-boolean v4, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mIsHiddenSsid:Z

    .line 257
    iget v2, v6, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->stationCount:I

    iput v2, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    .line 258
    iget v2, v6, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->channelUtilization:I

    iput v2, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    .line 259
    iget v2, v6, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->capacity:I

    iput v2, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    .line 260
    iget-object v2, v7, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->ant:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    iput-object v2, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 261
    iget-boolean v2, v7, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->internet:Z

    iput-boolean v2, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    .line 262
    iget-object v2, v9, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    iput-object v2, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    .line 263
    iget v2, v9, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->anqpDomainID:I

    iput v2, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    .line 264
    iget v2, v8, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->anqpOICount:I

    iput v2, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    .line 265
    invoke-virtual {v8}, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->getRoamingConsortiums()[J

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    .line 266
    iput-object v12, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    .line 267
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    .line 269
    move/from16 v2, p4

    iput v2, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    .line 271
    invoke-virtual {v11}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->isValid()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 273
    invoke-virtual {v11}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->getChannelWidth()I

    move-result v3

    iput v3, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    .line 274
    invoke-virtual {v11}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->getCenterFreq0()I

    move-result v3

    iput v3, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    .line 275
    invoke-virtual {v11}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->getCenterFreq1()I

    move-result v3

    iput v3, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    goto :goto_a

    .line 277
    :cond_11
    invoke-virtual {v10}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->getChannelWidth()I

    move-result v3

    iput v3, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    .line 278
    iget v3, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    invoke-virtual {v10, v3}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->getCenterFreq0(I)I

    move-result v3

    iput v3, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    .line 279
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    .line 283
    :goto_a
    invoke-virtual {v13}, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->isValid()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 284
    iget v3, v13, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimPeriod:I

    iput v3, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    .line 287
    :cond_12
    const/4 v3, 0x0

    .line 288
    .local v3, "maxRateA":I
    const/4 v5, 0x0

    .line 290
    .local v5, "maxRateB":I
    invoke-virtual {v15}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->isValid()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 292
    move-object/from16 v29, v0

    iget-object v0, v15, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    .end local v0    # "ssid":Ljava/lang/String;
    .local v29, "ssid":Ljava/lang/String;
    iget-object v2, v15, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_b

    .line 295
    .end local v29    # "ssid":Ljava/lang/String;
    .restart local v0    # "ssid":Ljava/lang/String;
    :cond_13
    move-object/from16 v29, v0

    .end local v0    # "ssid":Ljava/lang/String;
    .restart local v29    # "ssid":Ljava/lang/String;
    :goto_b
    invoke-virtual {v14}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->isValid()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 296
    iget-object v0, v14, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    iget-object v2, v14, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 297
    if-le v3, v5, :cond_14

    move v0, v3

    goto :goto_c

    :cond_14
    move v0, v5

    :goto_c
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    .line 298
    iget v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    iget v2, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    .line 299
    move/from16 v30, v3

    invoke-virtual {v11}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->isValid()Z

    move-result v3

    .line 300
    .end local v3    # "maxRateA":I
    .local v30, "maxRateA":I
    move/from16 v31, v4

    const/16 v4, 0x3d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .end local v4    # "isHiddenSsid":Z
    .local v31, "isHiddenSsid":Z
    move/from16 v32, v5

    move-object/from16 v5, v27

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .end local v27    # "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v5, "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v32, "maxRateB":I
    move-object/from16 v33, v6

    const/16 v6, 0x2a

    .line 301
    .end local v6    # "bssLoad":Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;
    .local v33, "bssLoad":Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 298
    invoke-static {v0, v2, v3, v4, v6}, Lcom/android/server/wifi/util/InformationElementUtil$WifiMode;->determineMode(IIZZZ)I

    move-result v0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    goto :goto_d

    .line 303
    .end local v30    # "maxRateA":I
    .end local v31    # "isHiddenSsid":Z
    .end local v32    # "maxRateB":I
    .end local v33    # "bssLoad":Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;
    .restart local v3    # "maxRateA":I
    .restart local v4    # "isHiddenSsid":Z
    .local v5, "maxRateB":I
    .restart local v6    # "bssLoad":Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;
    .restart local v27    # "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_15
    move/from16 v31, v4

    move/from16 v32, v5

    move-object/from16 v33, v6

    move-object/from16 v5, v27

    .end local v4    # "isHiddenSsid":Z
    .end local v6    # "bssLoad":Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;
    .end local v27    # "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v5, "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v31    # "isHiddenSsid":Z
    .restart local v32    # "maxRateB":I
    .restart local v33    # "bssLoad":Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    .line 304
    iput v2, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    .line 323
    move/from16 v30, v3

    .end local v3    # "maxRateA":I
    .restart local v30    # "maxRateA":I
    :goto_d
    return-void

    .line 208
    .end local v5    # "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v28    # "ssidOctets":[B
    .end local v29    # "ssid":Ljava/lang/String;
    .end local v30    # "maxRateA":I
    .end local v31    # "isHiddenSsid":Z
    .end local v32    # "maxRateB":I
    .end local v33    # "bssLoad":Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v2    # "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "bssLoad":Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;
    .restart local v18    # "ssid":Ljava/lang/String;
    .restart local v19    # "ssidOctets":[B
    .restart local v23    # "isHiddenSsid":Z
    :cond_16
    move-object v5, v2

    move-object/from16 v33, v6

    .end local v2    # "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "bssLoad":Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;
    .restart local v5    # "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v33    # "bssLoad":Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Malformed IE string (no SSID)"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 126
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v5    # "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "interworking":Lcom/android/server/wifi/util/InformationElementUtil$Interworking;
    .end local v8    # "roamingConsortium":Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;
    .end local v9    # "vsa":Lcom/android/server/wifi/util/InformationElementUtil$Vsa;
    .end local v10    # "htOperation":Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;
    .end local v11    # "vhtOperation":Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;
    .end local v12    # "extendedCapabilities":Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;
    .end local v13    # "trafficIndicationMap":Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;
    .end local v14    # "supportedRates":Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;
    .end local v15    # "extendedSupportedRates":Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;
    .end local v16    # "exception":Ljava/lang/RuntimeException;
    .end local v18    # "ssid":Ljava/lang/String;
    .end local v19    # "ssidOctets":[B
    .end local v23    # "isHiddenSsid":Z
    .end local v33    # "bssLoad":Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null information elements"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getAndAdvancePayload(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "plLength"    # I

    .line 326
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 327
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 328
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 329
    return-object v0
.end method

.method public static toMACString(J)Ljava/lang/String;
    .locals 10
    .param p0, "mac"    # J

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 545
    .local v1, "first":Z
    const/4 v2, 0x5

    .local v2, "n":I
    :goto_0
    if-ltz v2, :cond_1

    .line 546
    if-eqz v1, :cond_0

    .line 547
    const/4 v1, 0x0

    goto :goto_1

    .line 549
    :cond_0
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 551
    :goto_1
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    mul-int/lit8 v6, v2, 0x8

    ushr-long v6, p0, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 553
    .end local v2    # "n":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public complete(Ljava/util/Map;)Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;)",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;"
        }
    .end annotation

    .line 359
    .local p1, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;>;"
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;-><init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 481
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 482
    return v0

    .line 484
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 488
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .line 490
    .local v2, "that":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 485
    .end local v2    # "that":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    :cond_3
    :goto_1
    return v1
.end method

.method public getANQPElements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    return-object v0
.end method

.method public getAnqpDomainID()I
    .locals 1

    .line 428
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    return v0
.end method

.method public getAnqpOICount()I
    .locals 1

    .line 440
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    return v0
.end method

.method public getAnt()Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    return-object v0
.end method

.method public getBSSID()J
    .locals 2

    .line 396
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    return-wide v0
.end method

.method public getBSSIDString()Ljava/lang/String;
    .locals 2

    .line 517
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toMACString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCapacity()I
    .locals 1

    .line 408
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    return v0
.end method

.method public getCenterfreq0()I
    .locals 1

    .line 456
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    return v0
.end method

.method public getCenterfreq1()I
    .locals 1

    .line 460
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    return v0
.end method

.method public getChannelUtilization()I
    .locals 1

    .line 404
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    return v0
.end method

.method public getChannelWidth()I
    .locals 1

    .line 452
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    return v0
.end method

.method public getDtimInterval()I
    .locals 1

    .line 468
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    return v0
.end method

.method public getHESSID()J
    .locals 2

    .line 392
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    return-wide v0
.end method

.method public getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    return-object v0
.end method

.method public getOsuProviders()[B
    .locals 3

    .line 432
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 433
    return-object v1

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;

    .line 436
    .local v0, "osuProviders":Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->getPayload()[B

    move-result-object v1

    nop

    :cond_1
    return-object v1
.end method

.method public getRoamingConsortiums()[J
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getStationCount()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    return v0
.end method

.method public getTrimmedSSID()Ljava/lang/String;
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 382
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 383
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    return-object v1

    .line 382
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "n":I
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getWifiMode()I
    .locals 1

    .line 464
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    return v0
.end method

.method public has80211uInfo()Z
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    if-eqz v0, :cond_0

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

.method public hasInterworking()Z
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 495
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public is80211McResponderSupport()Z
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    invoke-virtual {v0}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder()Z

    move-result v0

    return v0
.end method

.method public isBeaconFrame()Z
    .locals 1

    .line 528
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHiddenBeaconFrame()Z
    .locals 1

    .line 539
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isBeaconFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mIsHiddenSsid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInternet()Z
    .locals 1

    .line 420
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    return v0
.end method

.method public isInterworking()Z
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSSID_UTF8()Z
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    invoke-virtual {v0}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->isStrictUtf8()Z

    move-result v0

    return v0
.end method

.method public queriable(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            ">;)Z"
        }
    .end annotation

    .line 363
    .local p1, "queryElements":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;>;"
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    if-eqz v0, :cond_1

    .line 364
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/Constants;->hasBaseANQPElements(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/Constants;->hasR2Elements(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0
.end method

.method public toKeyString()Ljava/lang/String;
    .locals 7

    .line 511
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 512
    const-string v0, "\'%s\':%012x (%012x)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    aput-object v5, v4, v3

    iget-wide v5, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v2

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 513
    :cond_0
    const-string v0, "\'%s\':%012x"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    aput-object v4, v1, v3

    iget-wide v3, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 511
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 500
    const-string v0, "NetworkInfo{SSID=\'%s\', HESSID=%x, BSSID=%x, StationCount=%d, ChannelUtilization=%d, Capacity=%d, Ant=%s, Internet=%s, HSRelease=%s, AnqpDomainID=%d, AnqpOICount=%d, RoamingConsortiums=%s}"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    .line 504
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    .line 505
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    .line 506
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    .line 507
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->roamingConsortiumsToString([J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 500
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
