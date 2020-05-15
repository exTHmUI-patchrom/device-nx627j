.class public Landroid/telephony/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ServiceState$RilRadioTechnology;,
        Landroid/telephony/ServiceState$DuplexMode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field static final DBG:Z = false

.field public static final DUPLEX_MODE_FDD:I = 0x1

.field public static final DUPLEX_MODE_TDD:I = 0x2

.field public static final DUPLEX_MODE_UNKNOWN:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final NEXT_RIL_RADIO_TECHNOLOGY:I = 0x14

.field public static final RIL_RADIO_CDMA_TECHNOLOGY_BITMASK:I = 0x18f8

.field public static final RIL_RADIO_TECHNOLOGY_1xRTT:I = 0x6

.field public static final RIL_RADIO_TECHNOLOGY_EDGE:I = 0x2

.field public static final RIL_RADIO_TECHNOLOGY_EHRPD:I = 0xd

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_0:I = 0x7

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_A:I = 0x8

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_B:I = 0xc

.field public static final RIL_RADIO_TECHNOLOGY_GPRS:I = 0x1

.field public static final RIL_RADIO_TECHNOLOGY_GSM:I = 0x10

.field public static final RIL_RADIO_TECHNOLOGY_HSDPA:I = 0x9

.field public static final RIL_RADIO_TECHNOLOGY_HSPA:I = 0xb

.field public static final RIL_RADIO_TECHNOLOGY_HSPAP:I = 0xf

.field public static final RIL_RADIO_TECHNOLOGY_HSUPA:I = 0xa

.field public static final RIL_RADIO_TECHNOLOGY_IS95A:I = 0x4

.field public static final RIL_RADIO_TECHNOLOGY_IS95B:I = 0x5

.field public static final RIL_RADIO_TECHNOLOGY_IWLAN:I = 0x12

.field public static final RIL_RADIO_TECHNOLOGY_LTE:I = 0xe

.field public static final RIL_RADIO_TECHNOLOGY_LTE_CA:I = 0x13

.field public static final RIL_RADIO_TECHNOLOGY_TD_SCDMA:I = 0x11

.field public static final RIL_RADIO_TECHNOLOGY_UMTS:I = 0x3

.field public static final RIL_RADIO_TECHNOLOGY_UNKNOWN:I = 0x0

.field public static final ROAMING_TYPE_DOMESTIC:I = 0x2

.field public static final ROAMING_TYPE_INTERNATIONAL:I = 0x3

.field public static final ROAMING_TYPE_NOT_ROAMING:I = 0x0

.field public static final ROAMING_TYPE_UNKNOWN:I = 0x1

.field public static final STATE_EMERGENCY_ONLY:I = 0x2

.field public static final STATE_IN_SERVICE:I = 0x0

.field public static final STATE_OUT_OF_SERVICE:I = 0x1

.field public static final STATE_POWER_OFF:I = 0x3

.field public static final UNKNOWN_ID:I = -0x1

.field static final VDBG:Z = false


# instance fields
.field private mBaseStationId:I

.field private mCdmaDefaultRoamingIndicator:I

.field private mCdmaEriIconIndex:I

.field private mCdmaEriIconMode:I

.field private mCdmaRoamingIndicator:I

.field private mCellBandwidths:[I

.field private mChannelNumber:I

.field private mCssIndicator:Z

.field private mDataOperatorAlphaLong:Ljava/lang/String;

.field private mDataOperatorAlphaShort:Ljava/lang/String;

.field private mDataOperatorNumeric:Ljava/lang/String;

.field private mDataRegState:I

.field private mDataRoamingType:I

.field private mIsDataRoamingFromRegistration:Z

.field private mIsEmergencyOnly:Z

.field private mIsManualNetworkSelection:Z

.field private mIsUsingCarrierAggregation:Z

.field private mLteEarfcnRsrpBoost:I

.field private mNetworkId:I

.field private mNetworkRegistrationStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/NetworkRegistrationState;",
            ">;"
        }
    .end annotation
.end field

.field private mRilDataRadioTechnology:I

.field private mRilVoiceRadioTechnology:I

.field private mSystemId:I

.field private mVoiceOperatorAlphaLong:Ljava/lang/String;

.field private mVoiceOperatorAlphaShort:Ljava/lang/String;

.field private mVoiceOperatorNumeric:Ljava/lang/String;

.field private mVoiceRegState:I

.field private mVoiceRoamingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 427
    new-instance v0, Landroid/telephony/ServiceState$1;

    invoke-direct {v0}, Landroid/telephony/ServiceState$1;-><init>()V

    sput-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 194
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 251
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mBaseStationId:I

    .line 257
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 261
    iput v0, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    .line 309
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 194
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 251
    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/ServiceState;->mBaseStationId:I

    .line 257
    const/4 v1, 0x0

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 261
    iput v1, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    .line 263
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mBaseStationId:I

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    .line 385
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    const-class v1, Landroid/telephony/NetworkRegistrationState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 388
    return-void
.end method

.method public constructor <init>(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 194
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 251
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ServiceState;->mBaseStationId:I

    .line 257
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 261
    iput v0, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    .line 317
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    .line 318
    return-void
.end method

.method public static bearerBitmapHasCdma(I)Z
    .locals 1
    .param p0, "radioTechnologyBitmap"    # I

    .line 1462
    const/16 v0, 0x18f8

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static bitmaskHasTech(II)Z
    .locals 3
    .param p0, "bearerBitmask"    # I
    .param p1, "radioTech"    # I

    .line 1467
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 1468
    return v0

    .line 1469
    :cond_0
    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    .line 1470
    add-int/lit8 v2, p1, -0x1

    shl-int v2, v0, v2

    and-int/2addr v2, p0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 1472
    :cond_2
    return v1
.end method

.method public static convertBearerBitmaskToNetworkTypeBitmask(I)I
    .locals 3
    .param p0, "bearerBitmask"    # I

    .line 1520
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1521
    return v0

    .line 1523
    :cond_0
    const/4 v1, 0x0

    .line 1524
    .local v1, "networkTypeBitmask":I
    nop

    .local v0, "bearerInt":I
    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_2

    .line 1525
    invoke-static {p0, v0}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1526
    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v2

    or-int/2addr v1, v2

    .line 1524
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1529
    .end local v0    # "bearerInt":I
    :cond_2
    return v1
.end method

.method public static convertNetworkTypeBitmaskToBearerBitmask(I)I
    .locals 3
    .param p0, "networkTypeBitmask"    # I

    .line 1506
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1507
    return v0

    .line 1509
    :cond_0
    const/4 v1, 0x0

    .line 1510
    .local v1, "bearerBitmask":I
    nop

    .local v0, "bearerInt":I
    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_2

    .line 1511
    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    invoke-static {p0, v2}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1512
    invoke-static {v0}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v2

    or-int/2addr v1, v2

    .line 1510
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1515
    .end local v0    # "bearerInt":I
    :cond_2
    return v1
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 1121
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static getBitmaskForTech(I)I
    .locals 2
    .param p0, "radioTech"    # I

    .line 1477
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    .line 1478
    add-int/lit8 v1, p0, -0x1

    shl-int/2addr v0, v1

    return v0

    .line 1480
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getBitmaskFromString(Ljava/lang/String;)I
    .locals 8
    .param p0, "bearerList"    # Ljava/lang/String;

    .line 1485
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1486
    .local v0, "bearers":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1487
    .local v1, "bearerBitmask":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .end local v1    # "bearerBitmask":I
    .local v4, "bearerBitmask":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 1488
    .local v5, "bearer":Ljava/lang/String;
    move v6, v3

    .line 1490
    .local v6, "bearerInt":I
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 1493
    nop

    .line 1495
    if-nez v6, :cond_0

    .line 1496
    return v3

    .line 1499
    :cond_0
    invoke-static {v6}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v7

    or-int/2addr v4, v7

    .line 1487
    .end local v5    # "bearer":Ljava/lang/String;
    .end local v6    # "bearerInt":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1491
    .restart local v5    # "bearer":Ljava/lang/String;
    .restart local v6    # "bearerInt":I
    :catch_0
    move-exception v1

    .line 1492
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return v3

    .line 1501
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "bearer":Ljava/lang/String;
    .end local v6    # "bearerInt":I
    :cond_1
    return v4
.end method

.method public static final getRoamingLogString(I)Ljava/lang/String;
    .locals 1
    .param p0, "roamingType"    # I

    .line 270
    packed-switch p0, :pswitch_data_0

    .line 284
    const-string v0, "UNKNOWN"

    return-object v0

    .line 281
    :pswitch_0
    const-string v0, "International Roaming"

    return-object v0

    .line 278
    :pswitch_1
    const-string v0, "Domestic Roaming"

    return-object v0

    .line 275
    :pswitch_2
    const-string/jumbo v0, "roaming"

    return-object v0

    .line 272
    :pswitch_3
    const-string v0, "home"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isCdma(I)Z
    .locals 1
    .param p0, "radioTechnology"    # I

    .line 1445
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

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

.method public static isGsm(I)Z
    .locals 2
    .param p0, "radioTechnology"    # I

    .line 1428
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1

    const/16 v1, 0xe

    if-eq p0, v1, :cond_1

    const/16 v1, 0xf

    if-eq p0, v1, :cond_1

    const/16 v1, 0x10

    if-eq p0, v1, :cond_1

    const/16 v1, 0x11

    if-eq p0, v1, :cond_1

    const/16 v1, 0x12

    if-eq p0, v1, :cond_1

    const/16 v1, 0x13

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static isLte(I)Z
    .locals 1
    .param p0, "radioTechnology"    # I

    .line 1456
    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-ne p0, v0, :cond_0

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

.method public static mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 2
    .param p0, "baseSs"    # Landroid/telephony/ServiceState;
    .param p1, "voiceSs"    # Landroid/telephony/ServiceState;

    .line 1538
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    if-eqz v0, :cond_0

    .line 1539
    return-object p0

    .line 1542
    :cond_0
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 1545
    .local v0, "newSs":Landroid/telephony/ServiceState;
    iget v1, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v1, v0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1546
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1548
    return-object v0
.end method

.method public static networkTypeToRilRadioTechnology(I)I
    .locals 1
    .param p0, "networkType"    # I

    .line 1350
    packed-switch p0, :pswitch_data_0

    .line 1388
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1386
    :pswitch_1
    const/16 v0, 0x13

    return v0

    .line 1384
    :pswitch_2
    const/16 v0, 0x12

    return v0

    .line 1382
    :pswitch_3
    const/16 v0, 0x11

    return v0

    .line 1380
    :pswitch_4
    const/16 v0, 0x10

    return v0

    .line 1378
    :pswitch_5
    const/16 v0, 0xf

    return v0

    .line 1374
    :pswitch_6
    const/16 v0, 0xd

    return v0

    .line 1376
    :pswitch_7
    const/16 v0, 0xe

    return v0

    .line 1372
    :pswitch_8
    const/16 v0, 0xc

    return v0

    .line 1362
    :pswitch_9
    const/16 v0, 0xb

    return v0

    .line 1360
    :pswitch_a
    const/16 v0, 0xa

    return v0

    .line 1358
    :pswitch_b
    const/16 v0, 0x9

    return v0

    .line 1366
    :pswitch_c
    const/4 v0, 0x6

    return v0

    .line 1370
    :pswitch_d
    const/16 v0, 0x8

    return v0

    .line 1368
    :pswitch_e
    const/4 v0, 0x7

    return v0

    .line 1364
    :pswitch_f
    const/4 v0, 0x4

    return v0

    .line 1356
    :pswitch_10
    const/4 v0, 0x3

    return v0

    .line 1354
    :pswitch_11
    const/4 v0, 0x2

    return v0

    .line 1352
    :pswitch_12
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .line 300
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 301
    .local v0, "ret":Landroid/telephony/ServiceState;
    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 302
    return-object v0
.end method

.method public static rilRadioTechnologyToAccessNetworkType(I)I
    .locals 1
    .param p0, "rt"    # I

    .line 1317
    packed-switch p0, :pswitch_data_0

    .line 1344
    const/4 v0, 0x0

    return v0

    .line 1341
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 1339
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 1336
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 1328
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1321
    :pswitch_4
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static rilRadioTechnologyToNetworkType(I)I
    .locals 1
    .param p0, "rt"    # I

    .line 1272
    packed-switch p0, :pswitch_data_0

    .line 1311
    const/4 v0, 0x0

    return v0

    .line 1309
    :pswitch_0
    const/16 v0, 0x13

    return v0

    .line 1307
    :pswitch_1
    const/16 v0, 0x12

    return v0

    .line 1305
    :pswitch_2
    const/16 v0, 0x11

    return v0

    .line 1303
    :pswitch_3
    const/16 v0, 0x10

    return v0

    .line 1301
    :pswitch_4
    const/16 v0, 0xf

    return v0

    .line 1299
    :pswitch_5
    const/16 v0, 0xd

    return v0

    .line 1297
    :pswitch_6
    const/16 v0, 0xe

    return v0

    .line 1295
    :pswitch_7
    const/16 v0, 0xc

    return v0

    .line 1284
    :pswitch_8
    const/16 v0, 0xa

    return v0

    .line 1282
    :pswitch_9
    const/16 v0, 0x9

    return v0

    .line 1280
    :pswitch_a
    const/16 v0, 0x8

    return v0

    .line 1293
    :pswitch_b
    const/4 v0, 0x6

    return v0

    .line 1291
    :pswitch_c
    const/4 v0, 0x5

    return v0

    .line 1289
    :pswitch_d
    const/4 v0, 0x7

    return v0

    .line 1287
    :pswitch_e
    const/4 v0, 0x4

    return v0

    .line 1278
    :pswitch_f
    const/4 v0, 0x3

    return v0

    .line 1276
    :pswitch_10
    const/4 v0, 0x2

    return v0

    .line 1274
    :pswitch_11
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static rilRadioTechnologyToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "rt"    # I

    .line 808
    packed-switch p0, :pswitch_data_0

    .line 870
    const-string v0, "Unexpected"

    .line 871
    .local v0, "rtString":Ljava/lang/String;
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected radioTechnology="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 867
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "LTE_CA"

    .line 868
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 861
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "IWLAN"

    .line 862
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 864
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "TD-SCDMA"

    .line 865
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 858
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "GSM"

    .line 859
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 855
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_4
    const-string v0, "HSPAP"

    .line 856
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 852
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_5
    const-string v0, "LTE"

    .line 853
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 849
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_6
    const-string v0, "eHRPD"

    .line 850
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 846
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_7
    const-string v0, "EvDo-rev.B"

    .line 847
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 843
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_8
    const-string v0, "HSPA"

    .line 844
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 840
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_9
    const-string v0, "HSUPA"

    .line 841
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 837
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_a
    const-string v0, "HSDPA"

    .line 838
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 834
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_b
    const-string v0, "EvDo-rev.A"

    .line 835
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 831
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_c
    const-string v0, "EvDo-rev.0"

    .line 832
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 828
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_d
    const-string v0, "1xRTT"

    .line 829
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 825
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_e
    const-string v0, "CDMA-IS95B"

    .line 826
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 822
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_f
    const-string v0, "CDMA-IS95A"

    .line 823
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 819
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_10
    const-string v0, "UMTS"

    .line 820
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 816
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_11
    const-string v0, "EDGE"

    .line 817
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 813
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_12
    const-string v0, "GPRS"

    .line 814
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 810
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_13
    const-string v0, "Unknown"

    .line 811
    .restart local v0    # "rtString":Ljava/lang/String;
    nop

    .line 874
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static rilServiceStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "serviceState"    # I

    .line 886
    packed-switch p0, :pswitch_data_0

    .line 896
    const-string v0, "UNKNOWN"

    return-object v0

    .line 894
    :pswitch_0
    const-string v0, "POWER_OFF"

    return-object v0

    .line 892
    :pswitch_1
    const-string v0, "EMERGENCY_ONLY"

    return-object v0

    .line 890
    :pswitch_2
    const-string v0, "OUT_OF_SERVICE"

    return-object v0

    .line 888
    :pswitch_3
    const-string v0, "IN_SERVICE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .line 1131
    const-string/jumbo v0, "voiceRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1132
    const-string v0, "dataRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1133
    const-string/jumbo v0, "voiceRoamingType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 1134
    const-string v0, "dataRoamingType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 1135
    const-string/jumbo v0, "operator-alpha-long"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1136
    const-string/jumbo v0, "operator-alpha-short"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 1137
    const-string/jumbo v0, "operator-numeric"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 1138
    const-string v0, "data-operator-alpha-long"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1139
    const-string v0, "data-operator-alpha-short"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 1140
    const-string v0, "data-operator-numeric"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 1141
    const-string/jumbo v0, "manual"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 1142
    const-string/jumbo v0, "radioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 1143
    const-string v0, "dataRadioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 1144
    const-string v0, "cssIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1145
    const-string/jumbo v0, "networkId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1146
    const-string/jumbo v0, "systemId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1147
    const-string v0, "cdmaRoamingIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 1148
    const-string v0, "cdmaDefaultRoamingIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1149
    const-string v0, "emergencyOnly"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1150
    const-string v0, "isDataRoamingFromRegistration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 1151
    const-string v0, "isUsingCarrierAggregation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    .line 1153
    const-string v0, "basestationid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mBaseStationId:I

    .line 1155
    const-string v0, "LteEarfcnRsrpBoost"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    .line 1156
    const-string v0, "ChannelNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 1157
    const-string v0, "CellBandwidths"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 1158
    return-void
.end method

.method private setNullState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 936
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 937
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 938
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 939
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 940
    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 941
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 942
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 943
    iput-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 944
    iput-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 945
    iput-object v2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 946
    iput-object v2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 947
    iput-object v2, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 948
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 949
    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 950
    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 951
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 952
    iput v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 953
    iput v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 954
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 955
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 956
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 957
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 958
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 959
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 960
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    .line 962
    iput v1, p0, Landroid/telephony/ServiceState;->mBaseStationId:I

    .line 964
    iput v0, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    .line 965
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    .line 966
    return-void
.end method


# virtual methods
.method public addNetworkRegistrationState(Landroid/telephony/NetworkRegistrationState;)V
    .locals 5
    .param p1, "regState"    # Landroid/telephony/NetworkRegistrationState;

    .line 1609
    if-nez p1, :cond_0

    return-void

    .line 1611
    :cond_0
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    monitor-enter v0

    .line 1612
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1613
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationState;

    .line 1614
    .local v2, "curRegState":Landroid/telephony/NetworkRegistrationState;
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationState;->getTransportType()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationState;->getTransportType()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1615
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationState;->getDomain()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationState;->getDomain()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1616
    iget-object v3, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1617
    goto :goto_1

    .line 1612
    .end local v2    # "curRegState":Landroid/telephony/NetworkRegistrationState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1621
    .end local v1    # "i":I
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1622
    monitor-exit v0

    .line 1623
    return-void

    .line 1622
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected copyFrom(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 321
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 322
    iget v0, p1, Landroid/telephony/ServiceState;->mDataRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 323
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 324
    iget v0, p1, Landroid/telephony/ServiceState;->mDataRoamingType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 325
    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 326
    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 327
    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 328
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 329
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 330
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 331
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 332
    iget v0, p1, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 333
    iget v0, p1, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 334
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mCssIndicator:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 335
    iget v0, p1, Landroid/telephony/ServiceState;->mNetworkId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 336
    iget v0, p1, Landroid/telephony/ServiceState;->mSystemId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 337
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 338
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 339
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 340
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 341
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 342
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 343
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    .line 345
    iget v0, p1, Landroid/telephony/ServiceState;->mBaseStationId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mBaseStationId:I

    .line 347
    iget v0, p1, Landroid/telephony/ServiceState;->mChannelNumber:I

    iput v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 348
    iget-object v0, p1, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    iget-object v1, p1, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 349
    iget v0, p1, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    .line 351
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 761
    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/ServiceState;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    .local v1, "s":Landroid/telephony/ServiceState;
    nop

    .line 763
    nop

    .line 766
    if-nez p1, :cond_0

    .line 767
    return v0

    .line 770
    :cond_0
    iget v2, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iget v3, v1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    iget v3, v1, Landroid/telephony/ServiceState;->mDataRegState:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iget-boolean v3, v1, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    iget v3, v1, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    iget v3, v1, Landroid/telephony/ServiceState;->mDataRoamingType:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    iget v3, v1, Landroid/telephony/ServiceState;->mChannelNumber:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    iget-object v3, v1, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 776
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    iget-object v3, v1, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 777
    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    iget-object v3, v1, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 778
    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    iget-object v3, v1, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 779
    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    iget-object v3, v1, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 780
    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    iget-object v3, v1, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 781
    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    iget-object v3, v1, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 782
    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 783
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 784
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 785
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v1, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 786
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 787
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 788
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 789
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 790
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 789
    invoke-static {v2, v3}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iget-boolean v3, v1, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    iget-boolean v3, v1, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    iget-boolean v3, v1, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    iget-object v3, v1, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    .line 794
    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    nop

    .line 770
    :cond_1
    return v0

    .line 762
    .end local v1    # "s":Landroid/telephony/ServiceState;
    :catch_0
    move-exception v1

    .line 763
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .line 1167
    const-string/jumbo v0, "voiceRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1168
    const-string v0, "dataRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1169
    const-string/jumbo v0, "voiceRoamingType"

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1170
    const-string v0, "dataRoamingType"

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1171
    const-string/jumbo v0, "operator-alpha-long"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    const-string/jumbo v0, "operator-alpha-short"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const-string/jumbo v0, "operator-numeric"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    const-string v0, "data-operator-alpha-long"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    const-string v0, "data-operator-alpha-short"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string v0, "data-operator-numeric"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const-string/jumbo v0, "manual"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1178
    const-string/jumbo v0, "radioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1179
    const-string v0, "dataRadioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1180
    const-string v0, "cssIndicator"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1181
    const-string/jumbo v0, "networkId"

    iget v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1182
    const-string/jumbo v0, "systemId"

    iget v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1183
    const-string v0, "cdmaRoamingIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1184
    const-string v0, "cdmaDefaultRoamingIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1185
    const-string v0, "emergencyOnly"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1186
    const-string v0, "isDataRoamingFromRegistration"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1187
    const-string v0, "isUsingCarrierAggregation"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1189
    const-string v0, "basestationid"

    iget v1, p0, Landroid/telephony/ServiceState;->mBaseStationId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1191
    const-string v0, "LteEarfcnRsrpBoost"

    iget v1, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1192
    const-string v0, "ChannelNumber"

    iget v1, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1193
    const-string v0, "CellBandwidths"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1194
    return-void
.end method

.method public getBaseStationId()I
    .locals 1

    .line 1639
    iget v0, p0, Landroid/telephony/ServiceState;->mBaseStationId:I

    return v0
.end method

.method public getCdmaDefaultRoamingIndicator()I
    .locals 1

    .line 598
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .line 605
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .line 612
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    return v0
.end method

.method public getCdmaNetworkId()I
    .locals 1

    .line 1414
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    return v0
.end method

.method public getCdmaRoamingIndicator()I
    .locals 1

    .line 591
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    return v0
.end method

.method public getCdmaSystemId()I
    .locals 1

    .line 1423
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    return v0
.end method

.method public getCellBandwidths()[I
    .locals 1

    .line 510
    iget-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    :goto_0
    return-object v0
.end method

.method public getChannelNumber()I
    .locals 1

    .line 501
    iget v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    return v0
.end method

.method public getCssIndicator()I
    .locals 1

    .line 1405
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    return v0
.end method

.method public getDataNetworkType()I
    .locals 1

    .line 1395
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getDataOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .line 642
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getDataOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .line 671
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getDataOperatorNumeric()Ljava/lang/String;
    .locals 1

    .line 723
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getDataRegState()I
    .locals 1

    .line 470
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    return v0
.end method

.method public getDataRoaming()Z
    .locals 1

    .line 548
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDataRoamingFromRegistration()Z
    .locals 1

    .line 568
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    return v0
.end method

.method public getDataRoamingType()I
    .locals 1

    .line 577
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    return v0
.end method

.method public getDuplexMode()I
    .locals 2

    .line 485
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v0}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    const/4 v0, 0x0

    return v0

    .line 489
    :cond_0
    iget v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getOperatingBandForEarfcn(I)I

    move-result v0

    .line 490
    .local v0, "band":I
    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getDuplexModeForEutranBand(I)I

    move-result v1

    return v1
.end method

.method public getIsManualSelection()Z
    .locals 1

    .line 732
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    return v0
.end method

.method public getLteEarfcnRsrpBoost()I
    .locals 1

    .line 1232
    iget v0, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    return v0
.end method

.method public getNetworkRegistrationStates(II)Landroid/telephony/NetworkRegistrationState;
    .locals 4
    .param p1, "transportType"    # I
    .param p2, "domain"    # I

    .line 1593
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    monitor-enter v0

    .line 1594
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationState;

    .line 1595
    .local v2, "networkRegistrationState":Landroid/telephony/NetworkRegistrationState;
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationState;->getTransportType()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1596
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationState;->getDomain()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1597
    monitor-exit v0

    return-object v2

    .line 1599
    .end local v2    # "networkRegistrationState":Landroid/telephony/NetworkRegistrationState;
    :cond_0
    goto :goto_0

    .line 1600
    :cond_1
    monitor-exit v0

    .line 1602
    const/4 v0, 0x0

    return-object v0

    .line 1600
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNetworkRegistrationStates()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/NetworkRegistrationState;",
            ">;"
        }
    .end annotation

    .line 1558
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    monitor-enter v0

    .line 1559
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 1560
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNetworkRegistrationStates(I)Ljava/util/List;
    .locals 5
    .param p1, "transportType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/NetworkRegistrationState;",
            ">;"
        }
    .end annotation

    .line 1571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1573
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationState;>;"
    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    monitor-enter v1

    .line 1574
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NetworkRegistrationState;

    .line 1575
    .local v3, "networkRegistrationState":Landroid/telephony/NetworkRegistrationState;
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationState;->getTransportType()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1576
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1578
    .end local v3    # "networkRegistrationState":Landroid/telephony/NetworkRegistrationState;
    :cond_0
    goto :goto_0

    .line 1579
    :cond_1
    monitor-exit v1

    .line 1581
    return-object v0

    .line 1579
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getOperatorAlpha()Ljava/lang/String;
    .locals 1

    .line 685
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    return-object v0

    .line 689
    :cond_0
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .line 624
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .line 653
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .line 705
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioTechnology()I
    .locals 2

    .line 1266
    const-string v0, "PHONE"

    const-string v1, "ServiceState.getRadioTechnology() DEPRECATED will be removed *******"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    return v0
.end method

.method public getRilDataRadioTechnology()I
    .locals 1

    .line 1258
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    return v0
.end method

.method public getRilVoiceRadioTechnology()I
    .locals 1

    .line 1254
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    return v0
.end method

.method public getRoaming()Z
    .locals 1

    .line 521
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

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

.method public getState()I
    .locals 1

    .line 442
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .line 1400
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getVoiceOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .line 633
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .line 662
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceOperatorNumeric()Ljava/lang/String;
    .locals 1

    .line 714
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceRegState()I
    .locals 1

    .line 456
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    return v0
.end method

.method public getVoiceRoaming()Z
    .locals 1

    .line 530
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVoiceRoamingType()I
    .locals 1

    .line 539
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 737
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 742
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    .line 743
    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    add-int/2addr v0, v1

    .line 744
    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 745
    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    .line 746
    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    .line 747
    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    .line 748
    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    .line 749
    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    add-int/2addr v0, v1

    .line 752
    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    add-int/2addr v0, v1

    .line 753
    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    add-int/2addr v0, v1

    .line 737
    return v0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .line 584
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    return v0
.end method

.method public isUsingCarrierAggregation()Z
    .locals 1

    .line 1222
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    return v0
.end method

.method public setBaseStationId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 1631
    iput p1, p0, Landroid/telephony/ServiceState;->mBaseStationId:I

    .line 1632
    return-void
.end method

.method public setCdmaDefaultRoamingIndicator(I)V
    .locals 0
    .param p1, "roaming"    # I

    .line 1048
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1049
    return-void
.end method

.method public setCdmaEriIconIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 1055
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 1056
    return-void
.end method

.method public setCdmaEriIconMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 1062
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 1063
    return-void
.end method

.method public setCdmaRoamingIndicator(I)V
    .locals 0
    .param p1, "roaming"    # I

    .line 1041
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 1042
    return-void
.end method

.method public setCdmaSystemAndNetworkId(II)V
    .locals 0
    .param p1, "systemId"    # I
    .param p2, "networkId"    # I

    .line 1248
    iput p1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1249
    iput p2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1250
    return-void
.end method

.method public setCellBandwidths([I)V
    .locals 0
    .param p1, "bandwidths"    # [I

    .line 996
    iput-object p1, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    .line 997
    return-void
.end method

.method public setChannelNumber(I)V
    .locals 0
    .param p1, "channelNumber"    # I

    .line 1002
    iput p1, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    .line 1003
    return-void
.end method

.method public setCssIndicator(I)V
    .locals 1
    .param p1, "css"    # I

    .line 1242
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1243
    return-void
.end method

.method public setDataOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    .line 1106
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1107
    return-void
.end method

.method public setDataOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .line 1083
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1084
    iput-object p2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 1085
    iput-object p3, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 1086
    return-void
.end method

.method public setDataRegState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 989
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 991
    return-void
.end method

.method public setDataRoaming(Z)V
    .locals 0
    .param p1, "dataRoaming"    # Z

    .line 1022
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 1023
    return-void
.end method

.method public setDataRoamingFromRegistration(Z)V
    .locals 0
    .param p1, "dataRoaming"    # Z

    .line 559
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 560
    return-void
.end method

.method public setDataRoamingType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 1027
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 1028
    return-void
.end method

.method public setEmergencyOnly(Z)V
    .locals 0
    .param p1, "emergencyOnly"    # Z

    .line 1034
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1035
    return-void
.end method

.method public setIsManualSelection(Z)V
    .locals 0
    .param p1, "isManual"    # Z

    .line 1110
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 1111
    return-void
.end method

.method public setIsUsingCarrierAggregation(Z)V
    .locals 0
    .param p1, "ca"    # Z

    .line 1227
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    .line 1228
    return-void
.end method

.method public setLteEarfcnRsrpBoost(I)V
    .locals 0
    .param p1, "LteEarfcnRsrpBoost"    # I

    .line 1237
    iput p1, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    .line 1238
    return-void
.end method

.method public setOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    .line 1095
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1096
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1097
    return-void
.end method

.method public setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .line 1066
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1067
    iput-object p2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 1068
    iput-object p3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 1069
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1070
    iput-object p2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 1071
    iput-object p3, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 1072
    return-void
.end method

.method public setRilDataRadioTechnology(I)V
    .locals 1
    .param p1, "rt"    # I

    .line 1209
    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    .line 1210
    const/16 p1, 0xe

    .line 1211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    goto :goto_0

    .line 1213
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    .line 1215
    :goto_0
    iput p1, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 1218
    return-void
.end method

.method public setRilVoiceRadioTechnology(I)V
    .locals 1
    .param p1, "rt"    # I

    .line 1199
    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    .line 1200
    const/16 p1, 0xe

    .line 1203
    :cond_0
    iput p1, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 1204
    return-void
.end method

.method public setRoaming(Z)V
    .locals 1
    .param p1, "roaming"    # Z

    .line 1006
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 1007
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 1008
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 977
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 979
    return-void
.end method

.method public setStateOff()V
    .locals 1

    .line 973
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->setNullState(I)V

    .line 974
    return-void
.end method

.method public setStateOutOfService()V
    .locals 1

    .line 969
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->setNullState(I)V

    .line 970
    return-void
.end method

.method public setVoiceOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    .line 1101
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1102
    return-void
.end method

.method public setVoiceOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .line 1076
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1077
    iput-object p2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 1078
    iput-object p3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 1079
    return-void
.end method

.method public setVoiceRegState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 983
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 985
    return-void
.end method

.method public setVoiceRoaming(Z)V
    .locals 0
    .param p1, "roaming"    # Z

    .line 1012
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 1013
    return-void
.end method

.method public setVoiceRoamingType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 1017
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 1018
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mVoiceRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 903
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDataRegState="

    .line 904
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 905
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mChannelNumber="

    .line 906
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duplexMode()="

    .line 907
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDuplexMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCellBandwidths="

    .line 908
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mVoiceRoamingType="

    .line 909
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDataRoamingType="

    .line 910
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mVoiceOperatorAlphaLong="

    .line 911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mVoiceOperatorAlphaShort="

    .line 912
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDataOperatorAlphaLong="

    .line 913
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDataOperatorAlphaShort="

    .line 914
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isManualNetworkSelection="

    .line 915
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 916
    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v1, :cond_0

    const-string v1, "(manual)"

    goto :goto_0

    :cond_0
    const-string v1, "(automatic)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRilVoiceRadioTechnology="

    .line 917
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 918
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRilDataRadioTechnology="

    .line 919
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 920
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCssIndicator="

    .line 921
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "supported"

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "unsupported"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNetworkId="

    .line 922
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSystemId="

    .line 923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCdmaRoamingIndicator="

    .line 924
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCdmaDefaultRoamingIndicator="

    .line 925
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsEmergencyOnly="

    .line 926
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsDataRoamingFromRegistration="

    .line 927
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsUsingCarrierAggregation="

    .line 928
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLteEarfcnRsrpBoost="

    .line 929
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNetworkRegistrationStates="

    .line 930
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 931
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 902
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 391
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsUsingCarrierAggregation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget v0, p0, Landroid/telephony/ServiceState;->mBaseStationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget v0, p0, Landroid/telephony/ServiceState;->mLteEarfcnRsrpBoost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget-object v0, p0, Landroid/telephony/ServiceState;->mNetworkRegistrationStates:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 419
    iget v0, p0, Landroid/telephony/ServiceState;->mChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget-object v0, p0, Landroid/telephony/ServiceState;->mCellBandwidths:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 421
    return-void
.end method
