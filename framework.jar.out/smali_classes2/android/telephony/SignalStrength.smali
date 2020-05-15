.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field private static final LTE_RSRP_THRESHOLDS_NUM:I = 0x4

.field private static final MAX_LTE_RSRP:I = -0x2c

.field private static final MAX_WCDMA_RSCP:I = -0x18

.field private static final MEASUMENT_TYPE_RSCP:Ljava/lang/String; = "rscp"

.field private static final MIN_LTE_RSRP:I = -0x8c

.field private static final MIN_WCDMA_RSCP:I = -0x78

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static final WCDMA_RSCP_THRESHOLDS_NUM:I = 0x4


# instance fields
.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mIsGsm:Z

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrpBoost:I

.field private mLteRsrpThresholds:[I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mTdScdmaRscp:I

.field private mUseOnlyRsrpForLteLevel:Z

.field private mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

.field private mWcdmaRscp:I

.field private mWcdmaRscpAsu:I

.field private mWcdmaRscpThresholds:[I

.field private mWcdmaSignalStrength:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 56
    const-string/jumbo v0, "none"

    const-string/jumbo v1, "poor"

    const-string/jumbo v2, "moderate"

    const-string v3, "good"

    const-string v4, "great"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 354
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;-><init>(Z)V

    .line 138
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIII)V
    .locals 20
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I

    .line 222
    const-string v19, ""

    const/16 v14, 0x63

    const v15, 0x7fffffff

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v19}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIIZZLjava/lang/String;)V

    .line 225
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIII)V
    .locals 20
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "wcdmaSignalStrength"    # I
    .param p15, "wcdmaRscp"    # I

    .line 237
    const-string v19, ""

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-direct/range {v0 .. v19}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIIZZLjava/lang/String;)V

    .line 241
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIZZLjava/lang/String;)V
    .locals 17
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "wcdmaSignalStrength"    # I
    .param p15, "wcdmaRscpAsu"    # I
    .param p16, "lteRsrpBoost"    # I
    .param p17, "gsmFlag"    # Z
    .param p18, "lteLevelBaseOnRsrp"    # Z
    .param p19, "wcdmaDefaultMeasurement"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p15

    .line 186
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v2, 0x4

    new-array v3, v2, [I

    iput-object v3, v0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 111
    new-array v2, v2, [I

    iput-object v2, v0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    .line 187
    move/from16 v2, p1

    iput v2, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 188
    move/from16 v3, p2

    iput v3, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 189
    move/from16 v4, p3

    iput v4, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 190
    move/from16 v5, p4

    iput v5, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 191
    move/from16 v6, p5

    iput v6, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 192
    move/from16 v7, p6

    iput v7, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 193
    move/from16 v8, p7

    iput v8, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 194
    move/from16 v9, p8

    iput v9, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 195
    move/from16 v10, p9

    iput v10, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 196
    move/from16 v11, p10

    iput v11, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 197
    move/from16 v12, p11

    iput v12, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 198
    move/from16 v13, p12

    iput v13, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 199
    move/from16 v14, p13

    iput v14, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 200
    move/from16 v15, p14

    iput v15, v0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    .line 201
    iput v1, v0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    .line 202
    add-int/lit8 v2, v1, -0x78

    iput v2, v0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 203
    move/from16 v2, p16

    iput v2, v0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 204
    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    .line 205
    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    .line 206
    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 207
    invoke-direct/range {p0 .. p0}, Landroid/telephony/SignalStrength;->getDefaultLteRsrpThresholds()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setLteRsrpThresholds([I)V

    .line 208
    invoke-direct/range {p0 .. p0}, Landroid/telephony/SignalStrength;->getDefaultWcdmaRscpThresholds()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setWcdmaRscpThresholds([I)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 111
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 311
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 312
    return-void
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 111
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    .line 251
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 252
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "gsmFlag"    # Z

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 111
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    .line 149
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 150
    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 151
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 152
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 153
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 154
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 155
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 156
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 157
    const v1, 0x7fffffff

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 158
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 159
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 160
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 161
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 162
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    .line 163
    iput v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 164
    const/16 v0, 0xff

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 166
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    .line 167
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    .line 168
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getDefaultLteRsrpThresholds()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->setLteRsrpThresholds([I)V

    .line 170
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getDefaultWcdmaRscpThresholds()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->setWcdmaRscpThresholds([I)V

    .line 171
    return-void
.end method

.method private getCdmaRelatedSignalStrength()I
    .locals 3

    .line 1264
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 1265
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 1266
    .local v1, "evdoLevel":I
    if-nez v1, :cond_0

    .line 1268
    move v2, v0

    .local v2, "level":I
    :goto_0
    goto :goto_1

    .line 1269
    .end local v2    # "level":I
    :cond_0
    if-nez v0, :cond_1

    .line 1271
    move v2, v1

    goto :goto_0

    .line 1274
    :cond_1
    if-ge v0, v1, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    .line 1276
    .restart local v2    # "level":I
    :goto_1
    return v2
.end method

.method private getDefaultLteRsrpThresholds()[I
    .locals 2

    .line 1361
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v1, "lte_rsrp_thresholds_int_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private getDefaultWcdmaRscpThresholds()[I
    .locals 2

    .line 1371
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v1, "wcdma_rscp_thresholds_int_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private getGsmRelatedSignalStrength()I
    .locals 1

    .line 1248
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .line 1249
    .local v0, "level":I
    if-nez v0, :cond_0

    .line 1250
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v0

    .line 1251
    if-nez v0, :cond_0

    .line 1252
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaLevel()I

    move-result v0

    .line 1253
    if-nez v0, :cond_0

    .line 1254
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    .line 1258
    :cond_0
    return v0
.end method

.method private getNubiaCdmaLevel()I
    .locals 3

    .line 1405
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 1407
    .local v0, "cdmaDbm":I
    const/16 v1, -0x5a

    if-lt v0, v1, :cond_0

    const/4 v1, 0x4

    .local v1, "levelDbm":I
    :goto_0
    goto :goto_1

    .line 1408
    .end local v1    # "levelDbm":I
    :cond_0
    const/16 v1, -0x62

    if-lt v0, v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    .line 1409
    :cond_1
    const/16 v1, -0x68

    if-lt v0, v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    .line 1410
    :cond_2
    const/16 v1, -0x6e

    if-lt v0, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    .line 1411
    :cond_3
    const/4 v1, 0x0

    .line 1412
    .restart local v1    # "levelDbm":I
    :goto_1
    move v2, v1

    .line 1414
    .local v2, "level":I
    return v2
.end method

.method private getNubiaEvdoLevel()I
    .locals 3

    .line 1439
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1441
    .local v0, "evdoDbm":I
    const/16 v1, -0x5a

    if-lt v0, v1, :cond_0

    const/4 v1, 0x4

    .local v1, "levelEvdoDbm":I
    :goto_0
    goto :goto_1

    .line 1442
    .end local v1    # "levelEvdoDbm":I
    :cond_0
    const/16 v1, -0x62

    if-lt v0, v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    .line 1443
    :cond_1
    const/16 v1, -0x68

    if-lt v0, v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    .line 1444
    :cond_2
    const/16 v1, -0x6e

    if-lt v0, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    .line 1445
    :cond_3
    const/4 v1, 0x0

    .line 1446
    .restart local v1    # "levelEvdoDbm":I
    :goto_1
    move v2, v1

    .line 1448
    .local v2, "level":I
    return v2
.end method

.method private getNubiaGsmLevel()I
    .locals 3

    .line 1388
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1389
    .local v0, "asu":I
    const/4 v1, 0x2

    mul-int/2addr v1, v0

    const/16 v2, -0x71

    add-int/2addr v2, v1

    .line 1391
    .local v2, "signalDbm":I
    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .local v1, "level":I
    :goto_0
    goto :goto_1

    .line 1393
    .end local v1    # "level":I
    :cond_0
    const/16 v1, -0x5a

    if-lt v2, v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    .line 1394
    :cond_1
    const/16 v1, -0x62

    if-lt v2, v1, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    .line 1395
    :cond_2
    const/16 v1, -0x68

    if-lt v2, v1, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    .line 1396
    :cond_3
    const/4 v1, 0x1

    .line 1398
    .restart local v1    # "level":I
    :goto_1
    return v1
.end method

.method private getNubiaLteLevel()I
    .locals 3

    .line 1455
    const/4 v0, -0x1

    .line 1456
    .local v0, "rsrpIconLevel":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x2c

    if-le v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1457
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x61

    if-lt v1, v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 1458
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x6e

    if-lt v1, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1459
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x74

    if-lt v1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 1460
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x7a

    if-lt v1, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 1461
    :cond_4
    const/4 v0, 0x0

    .line 1462
    :goto_0
    return v0
.end method

.method private getNubiaTdScdmaLevel()I
    .locals 2

    .line 1472
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v0

    .line 1474
    .local v0, "tdScdmaDbm":I
    const/16 v1, -0x19

    if-gt v0, v1, :cond_5

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1477
    :cond_0
    const/16 v1, -0x5a

    if-lt v0, v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    .line 1478
    :cond_1
    const/16 v1, -0x62

    if-lt v0, v1, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    .line 1479
    :cond_2
    const/16 v1, -0x68

    if-lt v0, v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    .line 1480
    :cond_3
    const/16 v1, -0x6e

    if-lt v0, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    .line 1481
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1475
    :cond_5
    :goto_0
    const/4 v1, 0x0

    .line 1481
    .local v1, "level":I
    :goto_1
    nop

    .line 1483
    return v1
.end method

.method private getNubiaWcdmaLevel()I
    .locals 2

    .line 1422
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaDbm()I

    move-result v0

    .line 1424
    .local v0, "WcdmaDbm":I
    const/16 v1, -0x18

    if-gt v0, v1, :cond_5

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1426
    :cond_0
    const/16 v1, -0x5a

    if-lt v0, v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    .line 1427
    :cond_1
    const/16 v1, -0x62

    if-lt v0, v1, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    .line 1428
    :cond_2
    const/16 v1, -0x68

    if-lt v0, v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    .line 1429
    :cond_3
    const/16 v1, -0x6e

    if-lt v0, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    .line 1430
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1425
    :cond_5
    :goto_0
    const/4 v1, 0x0

    .line 1430
    .local v1, "levelDbm":I
    :goto_1
    nop

    .line 1431
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 1379
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .line 126
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 127
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 128
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Bundle;

    .line 1286
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1287
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1288
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1289
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1290
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1291
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1292
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1293
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1294
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1295
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1296
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1297
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1298
    const-string v0, "LteRsrpBoost"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 1299
    const-string v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1300
    const-string v0, "WcdmaSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    .line 1301
    const-string v0, "WcdmaRscpAsu"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    .line 1302
    const-string v0, "WcdmaRscp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 1303
    const-string v0, "IsGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    .line 1304
    const-string v0, "UseOnlyRsrpForLteLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    .line 1305
    const-string v0, "WcdmaDefaultSignalMeasurement"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 1306
    const-string/jumbo v0, "lteRsrpThresholds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1307
    .local v0, "lteRsrpThresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    move v2, v1

    .line 1307
    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1308
    iget-object v3, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    .line 1307
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1310
    .end local v2    # "i":I
    :cond_0
    const-string/jumbo v2, "wcdmaRscpThresholds"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1311
    .local v2, "wcdmaRscpThresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    nop

    .line 1311
    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1312
    iget-object v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v1

    .line 1311
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1314
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .line 258
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 259
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 260
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 261
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 262
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 263
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 264
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 265
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 266
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 267
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 268
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 269
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 270
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 271
    iget v0, p1, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    .line 272
    iget v0, p1, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    .line 273
    iget v0, p1, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 274
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 275
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->mIsGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    .line 276
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    .line 277
    iget-object v0, p1, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 278
    iget-object v0, p1, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->setLteRsrpThresholds([I)V

    .line 279
    iget-object v0, p1, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->setWcdmaRscpThresholds([I)V

    .line 280
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1182
    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/SignalStrength;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    .local v1, "s":Landroid/telephony/SignalStrength;
    nop

    .line 1184
    nop

    .line 1187
    if-nez p1, :cond_0

    .line 1188
    return v0

    .line 1191
    :cond_0
    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    iget-boolean v3, v1, Landroid/telephony/SignalStrength;->mIsGsm:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    iget-boolean v3, v1, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    iget-object v3, v1, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 1210
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    iget-object v3, v1, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 1211
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    iget-object v3, v1, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    .line 1212
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    nop

    .line 1191
    :cond_1
    return v0

    .line 1183
    .end local v1    # "s":Landroid/telephony/SignalStrength;
    :catch_0
    move-exception v1

    .line 1184
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public equalsDbm(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1493
    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/SignalStrength;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1496
    .local v1, "s":Landroid/telephony/SignalStrength;
    nop

    .line 1495
    nop

    .line 1498
    if-nez p1, :cond_0

    .line 1499
    return v0

    .line 1502
    :cond_0
    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-ne v2, v3, :cond_1

    .line 1512
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    nop

    .line 1502
    :cond_1
    return v0

    .line 1494
    .end local v1    # "s":Landroid/telephony/SignalStrength;
    :catch_0
    move-exception v1

    .line 1495
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "m"    # Landroid/os/Bundle;

    .line 1323
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1324
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1325
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1326
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1327
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1328
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1329
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1330
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1331
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1332
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1333
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1334
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1335
    const-string v0, "LteRsrpBoost"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1336
    const-string v0, "TdScdma"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1337
    const-string v0, "WcdmaSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1338
    const-string v0, "WcdmaRscpAsu"

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1339
    const-string v0, "WcdmaRscp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1340
    const-string v0, "IsGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1341
    const-string v0, "UseOnlyRsrpForLteLevel"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1342
    const-string v0, "WcdmaDefaultSignalMeasurement"

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1344
    .local v0, "lteRsrpThresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    .line 1345
    .local v5, "value":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    .end local v5    # "value":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1347
    :cond_0
    const-string/jumbo v1, "lteRsrpThresholds"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1348
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    .local v1, "wcdmaRscpThresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_1

    aget v5, v2, v3

    .line 1350
    .restart local v5    # "value":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    .end local v5    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1352
    :cond_1
    const-string/jumbo v2, "wcdmaRscpThresholds"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1353
    return-void
.end method

.method public fixType()V
    .locals 1

    .line 420
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getGsmRelatedSignalStrength()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    .line 422
    return-void
.end method

.method public getAsuLevel()I
    .locals 4

    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, "asuLevel":I
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    if-eqz v1, :cond_3

    .line 604
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 605
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_1

    .line 606
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-eq v1, v2, :cond_1

    .line 607
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v0

    goto :goto_1

    .line 608
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-eq v1, v2, :cond_2

    .line 609
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaAsuLevel()I

    move-result v0

    goto :goto_1

    .line 611
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    goto :goto_1

    .line 614
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 615
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 616
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_4

    .line 618
    move v0, v1

    goto :goto_1

    .line 619
    :cond_4
    if-nez v1, :cond_5

    .line 621
    move v0, v2

    goto :goto_1

    .line 624
    :cond_5
    if-ge v1, v2, :cond_6

    move v3, v1

    goto :goto_0

    :cond_6
    move v3, v2

    :goto_0
    move v0, v3

    .line 628
    .end local v1    # "cdmaAsuLevel":I
    .end local v2    # "evdoAsuLevel":I
    :goto_1
    return v0
.end method

.method public getCdmaAsuLevel()I
    .locals 6

    .line 766
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 767
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 771
    .local v1, "cdmaEcio":I
    const/16 v2, 0x63

    const/16 v3, -0x64

    const/16 v4, -0x5a

    const/16 v5, -0x4b

    if-lt v0, v5, :cond_0

    const/16 v5, 0x10

    .local v5, "cdmaAsuLevel":I
    :goto_0
    goto :goto_1

    .line 772
    .end local v5    # "cdmaAsuLevel":I
    :cond_0
    const/16 v5, -0x52

    if-lt v0, v5, :cond_1

    const/16 v5, 0x8

    goto :goto_0

    .line 773
    :cond_1
    if-lt v0, v4, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    .line 774
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    .line 775
    :cond_3
    if-lt v0, v3, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    .line 776
    :cond_4
    move v5, v2

    .line 779
    .restart local v5    # "cdmaAsuLevel":I
    :goto_1
    if-lt v1, v4, :cond_5

    const/16 v2, 0x10

    .local v2, "ecioAsuLevel":I
    :goto_2
    goto :goto_3

    .line 780
    .end local v2    # "ecioAsuLevel":I
    :cond_5
    if-lt v1, v3, :cond_6

    const/16 v2, 0x8

    goto :goto_2

    .line 781
    :cond_6
    const/16 v3, -0x73

    if-lt v1, v3, :cond_7

    const/4 v2, 0x4

    goto :goto_2

    .line 782
    :cond_7
    const/16 v3, -0x82

    if-lt v1, v3, :cond_8

    const/4 v2, 0x2

    goto :goto_2

    .line 783
    :cond_8
    const/16 v3, -0x96

    if-lt v1, v3, :cond_9

    const/4 v2, 0x1

    goto :goto_2

    .line 784
    :cond_9
    nop

    .line 786
    .restart local v2    # "ecioAsuLevel":I
    :goto_3
    if-ge v5, v2, :cond_a

    move v3, v5

    goto :goto_4

    :cond_a
    move v3, v2

    .line 788
    .local v3, "level":I
    :goto_4
    return v3
.end method

.method public getCdmaDbm()I
    .locals 1

    .line 521
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .line 528
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 1

    .line 756
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getNubiaCdmaLevel()I

    move-result v0

    return v0
.end method

.method public getDbm()I
    .locals 4

    .line 637
    const v0, 0x7fffffff

    .line 639
    .local v0, "dBm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 640
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    .line 641
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    .line 642
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v2

    if-nez v2, :cond_1

    .line 643
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaDbm()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 644
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    goto :goto_0

    .line 646
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaDbm()I

    move-result v0

    goto :goto_0

    .line 649
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v0

    .line 660
    :cond_2
    :goto_0
    return v0

    .line 653
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 654
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 656
    .local v2, "evdoDbm":I
    const/16 v3, -0x78

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_4
    if-ne v1, v3, :cond_5

    goto :goto_2

    .line 657
    :cond_5
    if-ge v1, v2, :cond_6

    .line 656
    :goto_1
    move v3, v1

    goto :goto_3

    :cond_6
    :goto_2
    move v3, v2

    :goto_3
    return v3
.end method

.method public getEvdoAsuLevel()I
    .locals 5

    .line 831
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 832
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 836
    .local v1, "evdoSnr":I
    const/16 v2, 0x63

    const/16 v3, -0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x10

    .local v3, "levelEvdoDbm":I
    :goto_0
    goto :goto_1

    .line 837
    .end local v3    # "levelEvdoDbm":I
    :cond_0
    const/16 v3, -0x4b

    if-lt v0, v3, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    .line 838
    :cond_1
    const/16 v3, -0x55

    if-lt v0, v3, :cond_2

    const/4 v3, 0x4

    goto :goto_0

    .line 839
    :cond_2
    const/16 v3, -0x5f

    if-lt v0, v3, :cond_3

    const/4 v3, 0x2

    goto :goto_0

    .line 840
    :cond_3
    const/16 v3, -0x69

    if-lt v0, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    .line 841
    :cond_4
    move v3, v2

    .line 843
    .restart local v3    # "levelEvdoDbm":I
    :goto_1
    const/4 v4, 0x7

    if-lt v1, v4, :cond_5

    const/16 v2, 0x10

    .local v2, "levelEvdoSnr":I
    :goto_2
    goto :goto_3

    .line 844
    .end local v2    # "levelEvdoSnr":I
    :cond_5
    const/4 v4, 0x6

    if-lt v1, v4, :cond_6

    const/16 v2, 0x8

    goto :goto_2

    .line 845
    :cond_6
    const/4 v4, 0x5

    if-lt v1, v4, :cond_7

    const/4 v2, 0x4

    goto :goto_2

    .line 846
    :cond_7
    const/4 v4, 0x3

    if-lt v1, v4, :cond_8

    const/4 v2, 0x2

    goto :goto_2

    .line 847
    :cond_8
    const/4 v4, 0x1

    if-lt v1, v4, :cond_9

    const/4 v2, 0x1

    goto :goto_2

    .line 848
    :cond_9
    nop

    .line 850
    .restart local v2    # "levelEvdoSnr":I
    :goto_3
    if-ge v3, v2, :cond_a

    move v4, v3

    goto :goto_4

    :cond_a
    move v4, v2

    .line 852
    .local v4, "level":I
    :goto_4
    return v4
.end method

.method public getEvdoDbm()I
    .locals 1

    .line 535
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .line 542
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 1

    .line 821
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getNubiaEvdoLevel()I

    move-result v0

    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    .line 549
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .line 720
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 722
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .line 497
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 4

    .line 671
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 672
    .local v0, "gsmSignalStrength":I
    const/4 v1, -0x1

    const/16 v2, 0x63

    if-ne v0, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 673
    .local v2, "asu":I
    :goto_0
    if-eq v2, v1, :cond_1

    .line 674
    const/16 v1, -0x71

    const/4 v3, 0x2

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    .local v1, "dBm":I
    goto :goto_1

    .line 676
    .end local v1    # "dBm":I
    :cond_1
    nop

    .line 679
    .restart local v1    # "dBm":I
    :goto_1
    return v1
.end method

.method public getGsmLevel()I
    .locals 1

    .line 706
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getNubiaGsmLevel()I

    move-result v0

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .line 490
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 591
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getGsmRelatedSignalStrength()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getCdmaRelatedSignalStrength()I

    move-result v0

    .line 593
    .local v0, "level":I
    :goto_0
    return v0
.end method

.method public getLteAsuLevel()I
    .locals 3

    .line 964
    const/16 v0, 0x63

    .line 965
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 979
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    .line 980
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    .line 982
    :goto_0
    return v0
.end method

.method public getLteCqi()I
    .locals 1

    .line 574
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .line 861
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 1

    .line 952
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getNubiaLteLevel()I

    move-result v0

    return v0
.end method

.method public getLteRsrp()I
    .locals 1

    .line 559
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrpBoost()I
    .locals 1

    .line 579
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .line 564
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .line 569
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .line 554
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 2

    .line 1045
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v0

    .line 1048
    .local v0, "tdScdmaDbm":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/16 v1, 0xff

    .local v1, "tdScdmaAsuLevel":I
    goto :goto_0

    .line 1049
    .end local v1    # "tdScdmaAsuLevel":I
    :cond_0
    add-int/lit8 v1, v0, 0x78

    .line 1051
    .restart local v1    # "tdScdmaAsuLevel":I
    :goto_0
    return v1
.end method

.method public getTdScdmaDbm()I
    .locals 1

    .line 1007
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 1

    .line 1035
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getNubiaTdScdmaLevel()I

    move-result v0

    return v0
.end method

.method public getWcdmaAsuLevel()I
    .locals 3

    .line 1077
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaDbm()I

    move-result v0

    .line 1078
    .local v0, "wcdmaDbm":I
    const/16 v1, 0xff

    .line 1081
    .local v1, "wcdmaAsuLevel":I
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    .line 1082
    :cond_0
    add-int/lit8 v1, v0, 0x78

    .line 1084
    :goto_0
    return v1
.end method

.method public getWcdmaDbm()I
    .locals 1

    .line 1093
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    return v0
.end method

.method public getWcdmaLevel()I
    .locals 1

    .line 1152
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getNubiaWcdmaLevel()I

    move-result v0

    return v0
.end method

.method public getWcdmaRscp()I
    .locals 1

    .line 1060
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1160
    const/16 v0, 0x1f

    .line 1161
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 1169
    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    add-int/2addr v1, v2

    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 1170
    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 1171
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 1161
    return v1
.end method

.method public isGsm()Z
    .locals 1

    .line 989
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .line 433
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    .line 434
    return-void
.end method

.method public setLteRsrpBoost(I)V
    .locals 0
    .param p1, "lteRsrpBoost"    # I

    .line 466
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 467
    return-void
.end method

.method public setLteRsrpThresholds([I)V
    .locals 3
    .param p1, "lteRsrpThresholds"    # [I

    .line 477
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    return-void

    .line 479
    :cond_1
    :goto_0
    const-string v0, "SignalStrength"

    const-string/jumbo v1, "setLteRsrpThresholds - lteRsrpThresholds is invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void
.end method

.method public setUseOnlyRsrpForLteLevel(Z)V
    .locals 0
    .param p1, "useOnlyRsrpForLteLevel"    # Z

    .line 444
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    .line 445
    return-void
.end method

.method public setWcdmaDefaultSignalMeasurement(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultMeasurement"    # Ljava/lang/String;

    .line 454
    iput-object p1, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    .line 455
    return-void
.end method

.method public setWcdmaRscpThresholds([I)V
    .locals 3
    .param p1, "wcdmaRscpThresholds"    # [I

    .line 508
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 515
    return-void

    .line 510
    :cond_1
    :goto_0
    const-string v0, "SignalStrength"

    const-string/jumbo v1, "setWcdmaRscpThresholds - wcdmaRscpThresholds is invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    if-eqz v1, :cond_0

    const-string v1, "gsm|lte"

    goto :goto_0

    :cond_0
    const-string v1, "cdma"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "use_only_rsrp_for_lte_level"

    goto :goto_1

    .line 1240
    :cond_1
    const-string/jumbo v1, "use_rsrp_and_rssnr_for_lte_level"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    .line 1242
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    .line 1243
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1220
    return-object v0
.end method

.method public useOnlyRsrpForLteLevel()Z
    .locals 1

    .line 998
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    return v0
.end method

.method public validateInput()V
    .locals 4

    .line 378
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const/16 v1, 0x63

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 379
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    .line 380
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    nop

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 385
    nop

    .line 386
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    add-int/lit8 v0, v0, -0x78

    const/16 v1, -0x18

    const/16 v2, -0x78

    if-lt v0, v2, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    add-int/lit8 v0, v0, -0x78

    if-gt v0, v1, :cond_3

    .line 387
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    goto :goto_2

    :cond_3
    const/16 v0, 0xff

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    .line 388
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const v3, 0x7fffffff

    if-lt v0, v2, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-gt v0, v1, :cond_4

    .line 389
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 391
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 392
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    const/16 v1, -0xa0

    if-ltz v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    goto :goto_5

    :cond_6
    move v0, v1

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 394
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    nop

    :cond_7
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 395
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v1, v0

    nop

    :cond_8
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 396
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ltz v0, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    goto :goto_6

    :cond_9
    const/4 v0, -0x1

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 399
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    const/16 v1, -0x8c

    if-lt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    const/16 v1, -0x2c

    if-gt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    goto :goto_7

    .line 400
    :cond_a
    move v0, v3

    :goto_7
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 401
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    goto :goto_8

    :cond_b
    move v0, v3

    :goto_8
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 402
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    goto :goto_9

    .line 403
    :cond_c
    move v0, v3

    :goto_9
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 405
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ltz v0, :cond_d

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x60

    if-gt v0, v1, :cond_d

    .line 406
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    add-int/lit8 v3, v0, -0x78

    nop

    :cond_d
    iput v3, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 409
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 318
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 336
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 337
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 339
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 340
    return-void
.end method
