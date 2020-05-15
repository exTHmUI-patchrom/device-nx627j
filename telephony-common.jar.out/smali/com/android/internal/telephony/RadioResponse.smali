.class public Lcom/android/internal/telephony/RadioResponse;
.super Landroid/hardware/radio/V1_2/IRadioResponse$Stub;
.source "RadioResponse.java"


# static fields
.field private static final CDMA_BROADCAST_SMS_NO_OF_SERVICE_CATEGORIES:I = 0x1f

.field private static final CDMA_BSI_NO_OF_INTS_STRUCT:I = 0x3


# instance fields
.field mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 70
    invoke-direct {p0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    .line 72
    return-void
.end method

.method private convertHalCardStatus(Landroid/hardware/radio/V1_0/CardStatus;)Lcom/android/internal/telephony/uicc/IccCardStatus;
    .locals 8
    .param p1, "cardStatus"    # Landroid/hardware/radio/V1_0/CardStatus;

    .line 1382
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 1383
    .local v0, "iccCardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    iget v1, p1, Landroid/hardware/radio/V1_0/CardStatus;->cardState:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 1384
    iget v1, p1, Landroid/hardware/radio/V1_0/CardStatus;->universalPinState:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 1385
    iget v1, p1, Landroid/hardware/radio/V1_0/CardStatus;->gsmUmtsSubscriptionAppIndex:I

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 1386
    iget v1, p1, Landroid/hardware/radio/V1_0/CardStatus;->cdmaSubscriptionAppIndex:I

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 1387
    iget v1, p1, Landroid/hardware/radio/V1_0/CardStatus;->imsSubscriptionAppIndex:I

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 1388
    iget-object v1, p1, Landroid/hardware/radio/V1_0/CardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1391
    .local v1, "numApplications":I
    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 1393
    const/16 v1, 0x8

    .line 1396
    :cond_0
    new-array v2, v1, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 1397
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1398
    iget-object v3, p1, Landroid/hardware/radio/V1_0/CardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/AppStatus;

    .line 1399
    .local v3, "rilAppStatus":Landroid/hardware/radio/V1_0/AppStatus;
    new-instance v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 1400
    .local v4, "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    iget v5, v3, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 1401
    iget v5, v3, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 1402
    iget v5, v3, Landroid/hardware/radio/V1_0/AppStatus;->persoSubstate:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 1404
    iget-object v5, v3, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 1405
    iget-object v5, v3, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 1406
    iget v5, v3, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    iput v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 1407
    iget v5, v3, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 1408
    iget v5, v3, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 1409
    iget-object v5, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v4, v5, v2

    .line 1410
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IccCardApplicationStatus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1397
    .end local v3    # "rilAppStatus":Landroid/hardware/radio/V1_0/AppStatus;
    .end local v4    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1412
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private convertHalKeepaliveStatusCode(I)I
    .locals 3
    .param p1, "halCode"    # I

    .line 1368
    packed-switch p1, :pswitch_data_0

    .line 1376
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Keepalive Status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1377
    const/4 v0, -0x1

    return v0

    .line 1374
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1372
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1370
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertOpertatorInfoToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # I

    .line 1779
    if-nez p0, :cond_0

    .line 1780
    const-string v0, "unknown"

    return-object v0

    .line 1781
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 1782
    const-string v0, "available"

    return-object v0

    .line 1783
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 1784
    const-string v0, "current"

    return-object v0

    .line 1785
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 1786
    const-string v0, "forbidden"

    return-object v0

    .line 1788
    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method private responseActivityData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V
    .locals 19
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "activityInfo"    # Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1962
    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 1964
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v3, :cond_2

    .line 1965
    const/4 v4, 0x0

    .line 1966
    .local v4, "ret":Landroid/telephony/ModemActivityInfo;
    iget v5, v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-nez v5, :cond_1

    .line 1967
    iget v5, v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->sleepModeTimeMs:I

    .line 1968
    .local v5, "sleepModeTimeMs":I
    iget v15, v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->idleModeTimeMs:I

    .line 1969
    .local v15, "idleModeTimeMs":I
    new-array v14, v7, [I

    .line 1970
    .local v14, "txModeTimeMs":[I
    nop

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 1971
    iget-object v8, v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->txmModetimeMs:[I

    aget v8, v8, v6

    aput v8, v14, v6

    .line 1970
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1973
    .end local v6    # "i":I
    :cond_0
    iget v6, v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->rxModeTimeMs:I

    .line 1974
    .local v6, "rxModeTimeMs":I
    new-instance v7, Landroid/telephony/ModemActivityInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const/16 v16, 0x0

    move-object v8, v7

    move v11, v5

    move v12, v15

    move-object v13, v14

    move-object/from16 v17, v14

    move v14, v6

    .end local v14    # "txModeTimeMs":[I
    .local v17, "txModeTimeMs":[I
    move/from16 v18, v15

    move/from16 v15, v16

    .end local v15    # "idleModeTimeMs":I
    .local v18, "idleModeTimeMs":I
    invoke-direct/range {v8 .. v15}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    move-object v4, v7

    .line 1976
    .end local v5    # "sleepModeTimeMs":I
    .end local v6    # "rxModeTimeMs":I
    .end local v17    # "txModeTimeMs":[I
    .end local v18    # "idleModeTimeMs":I
    goto :goto_1

    .line 1977
    :cond_1
    new-instance v5, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v12, v7, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v5

    invoke-direct/range {v7 .. v14}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    move-object v4, v5

    .line 1979
    iput v6, v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 1981
    :goto_1
    iget-object v5, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v5, v4}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1982
    iget-object v5, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v5, v3, v1, v4}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1984
    .end local v4    # "ret":Landroid/telephony/ModemActivityInfo;
    :cond_2
    return-void
.end method

.method private responseCallForwardInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .line 1759
    .local p2, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1760
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_2

    .line 1761
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1762
    .local v1, "ret":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1763
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v3, v1, v2

    .line 1764
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1765
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1766
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1767
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1768
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget-object v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1769
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1762
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1771
    .end local v2    # "i":I
    :cond_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 1772
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1774
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1776
    .end local v1    # "ret":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_2
    return-void
.end method

.method private responseCarrierIdentifiers(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    .locals 21
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "allAllowed"    # Z
    .param p3, "carriers"    # Landroid/hardware/radio/V1_0/CarrierRestrictions;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2059
    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 2061
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v3, :cond_6

    .line 2062
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2063
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, v2, Landroid/hardware/radio/V1_0/CarrierRestrictions;->allowedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 2064
    iget-object v6, v2, Landroid/hardware/radio/V1_0/CarrierRestrictions;->allowedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Carrier;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Carrier;->mcc:Ljava/lang/String;

    .line 2065
    .local v6, "mcc":Ljava/lang/String;
    iget-object v7, v2, Landroid/hardware/radio/V1_0/CarrierRestrictions;->allowedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/V1_0/Carrier;

    iget-object v14, v7, Landroid/hardware/radio/V1_0/Carrier;->mnc:Ljava/lang/String;

    .line 2066
    .local v14, "mnc":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "spn":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "imsi":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "gid1":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2067
    .local v10, "gid2":Ljava/lang/String;
    iget-object v11, v2, Landroid/hardware/radio/V1_0/CarrierRestrictions;->allowedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/radio/V1_0/Carrier;

    iget v15, v11, Landroid/hardware/radio/V1_0/Carrier;->matchType:I

    .line 2068
    .local v15, "matchType":I
    iget-object v11, v2, Landroid/hardware/radio/V1_0/CarrierRestrictions;->allowedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/radio/V1_0/Carrier;

    iget-object v13, v11, Landroid/hardware/radio/V1_0/Carrier;->matchData:Ljava/lang/String;

    .line 2069
    .local v13, "matchData":Ljava/lang/String;
    const/4 v11, 0x1

    if-ne v15, v11, :cond_1

    .line 2070
    move-object v7, v13

    .line 2078
    .end local v7    # "spn":Ljava/lang/String;
    .end local v8    # "imsi":Ljava/lang/String;
    .end local v9    # "gid1":Ljava/lang/String;
    .end local v10    # "gid2":Ljava/lang/String;
    .local v16, "spn":Ljava/lang/String;
    .local v17, "imsi":Ljava/lang/String;
    .local v18, "gid1":Ljava/lang/String;
    .local v19, "gid2":Ljava/lang/String;
    :cond_0
    :goto_1
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    goto :goto_2

    .line 2071
    .end local v16    # "spn":Ljava/lang/String;
    .end local v17    # "imsi":Ljava/lang/String;
    .end local v18    # "gid1":Ljava/lang/String;
    .end local v19    # "gid2":Ljava/lang/String;
    .restart local v7    # "spn":Ljava/lang/String;
    .restart local v8    # "imsi":Ljava/lang/String;
    .restart local v9    # "gid1":Ljava/lang/String;
    .restart local v10    # "gid2":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x2

    if-ne v15, v11, :cond_2

    .line 2072
    move-object v8, v13

    goto :goto_1

    .line 2073
    :cond_2
    const/4 v11, 0x3

    if-ne v15, v11, :cond_3

    .line 2074
    move-object v9, v13

    goto :goto_1

    .line 2075
    :cond_3
    const/4 v11, 0x4

    if-ne v15, v11, :cond_0

    .line 2076
    move-object v10, v13

    goto :goto_1

    .line 2078
    .end local v7    # "spn":Ljava/lang/String;
    .end local v8    # "imsi":Ljava/lang/String;
    .end local v9    # "gid1":Ljava/lang/String;
    .end local v10    # "gid2":Ljava/lang/String;
    .restart local v16    # "spn":Ljava/lang/String;
    .restart local v17    # "imsi":Ljava/lang/String;
    .restart local v18    # "gid1":Ljava/lang/String;
    .restart local v19    # "gid2":Ljava/lang/String;
    :goto_2
    new-instance v12, Landroid/service/carrier/CarrierIdentifier;

    move-object v7, v12

    move-object v8, v6

    move-object v9, v14

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object v2, v12

    move-object/from16 v12, v18

    move-object/from16 v20, v13

    move-object/from16 v13, v19

    .end local v13    # "matchData":Ljava/lang/String;
    .local v20, "matchData":Ljava/lang/String;
    invoke-direct/range {v7 .. v13}, Landroid/service/carrier/CarrierIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2063
    .end local v6    # "mcc":Ljava/lang/String;
    .end local v14    # "mnc":Ljava/lang/String;
    .end local v15    # "matchType":I
    .end local v16    # "spn":Ljava/lang/String;
    .end local v17    # "imsi":Ljava/lang/String;
    .end local v18    # "gid1":Ljava/lang/String;
    .end local v19    # "gid2":Ljava/lang/String;
    .end local v20    # "matchData":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p3

    goto :goto_0

    .line 2080
    .end local v5    # "i":I
    :cond_4
    iget v2, v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_5

    .line 2082
    iget-object v2, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v4}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2084
    :cond_5
    iget-object v2, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 2086
    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    :cond_6
    return-void
.end method

.method private responseCdmaBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 1887
    .local p2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1889
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_4

    .line 1890
    const/4 v1, 0x0

    .line 1892
    .local v1, "ret":[I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1894
    .local v2, "numServiceCategories":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 1899
    const/16 v5, 0x5e

    .line 1901
    .local v5, "numInts":I
    new-array v1, v5, [I

    .line 1904
    const/16 v6, 0x1f

    aput v6, v1, v3

    .line 1908
    move v6, v4

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_0

    .line 1909
    add-int/lit8 v7, v6, 0x0

    div-int/lit8 v8, v6, 0x3

    aput v8, v1, v7

    .line 1910
    add-int/lit8 v7, v6, 0x1

    aput v4, v1, v7

    .line 1911
    add-int/lit8 v7, v6, 0x2

    aput v3, v1, v7

    .line 1908
    add-int/lit8 v6, v6, 0x3

    goto :goto_0

    .line 1913
    .end local v5    # "numInts":I
    .end local v6    # "i":I
    :cond_0
    goto :goto_2

    .line 1915
    :cond_1
    mul-int/lit8 v5, v2, 0x3

    add-int/2addr v5, v4

    .line 1916
    .restart local v5    # "numInts":I
    new-array v1, v5, [I

    .line 1918
    aput v2, v1, v3

    .line 1919
    const/4 v4, 0x1

    .local v3, "j":I
    .local v4, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 1921
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    iget v6, v6, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->serviceCategory:I

    aput v6, v1, v4

    .line 1922
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    iget v7, v7, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->language:I

    aput v7, v1, v6

    .line 1923
    add-int/lit8 v6, v4, 0x2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    iget-boolean v7, v7, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->selected:Z

    aput v7, v1, v6

    .line 1920
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x3

    goto :goto_1

    .line 1926
    .end local v3    # "j":I
    .end local v4    # "i":I
    .end local v5    # "numInts":I
    :cond_2
    :goto_2
    iget v3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_3

    .line 1927
    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1929
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1931
    .end local v1    # "ret":[I
    .end local v2    # "numServiceCategories":I
    :cond_4
    return-void
.end method

.method private responseCellInfoList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1935
    .local p2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1937
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1938
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1939
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 1940
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1942
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1944
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_1
    return-void
.end method

.method private responseCellInfoList_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1949
    .local p2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1951
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1952
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertHalCellInfoList_1_2(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1953
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 1954
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1956
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1958
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_1
    return-void
.end method

.method private responseCellList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/NeighboringCell;",
            ">;)V"
        }
    .end annotation

    .line 1839
    .local p2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1841
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_2

    .line 1844
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1847
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 1848
    .local v2, "subId":[I
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v3, v3, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    .line 1849
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    aget v5, v2, v4

    .line 1850
    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v3

    .line 1852
    .local v3, "radioType":I
    if-eqz v3, :cond_0

    .line 1853
    nop

    .local v4, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1854
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/NeighboringCell;

    iget v5, v5, Landroid/hardware/radio/V1_0/NeighboringCell;->rssi:I

    .line 1855
    .local v5, "rssi":I
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/NeighboringCell;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/NeighboringCell;->cid:Ljava/lang/String;

    .line 1856
    .local v6, "location":Ljava/lang/String;
    new-instance v7, Landroid/telephony/NeighboringCellInfo;

    invoke-direct {v7, v5, v6, v3}, Landroid/telephony/NeighboringCellInfo;-><init>(ILjava/lang/String;I)V

    .line 1857
    .local v7, "cell":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1853
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1860
    .end local v4    # "i":I
    .end local v5    # "rssi":I
    .end local v6    # "location":Ljava/lang/String;
    .end local v7    # "cell":Landroid/telephony/NeighboringCellInfo;
    :cond_0
    iget v4, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v4, :cond_1

    .line 1861
    iget-object v4, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v4, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1863
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v4, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1865
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v2    # "subId":[I
    .end local v3    # "radioType":I
    :cond_2
    return-void
.end method

.method private responseCurrentCalls(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Call;",
            ">;)V"
        }
    .end annotation

    .line 1470
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1472
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_6

    .line 1473
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1474
    .local v1, "num":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1477
    .local v2, "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 1478
    new-instance v5, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v5}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 1481
    .local v5, "dc":Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->state:I

    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 1482
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->index:I

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 1483
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->toa:I

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 1484
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 1485
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 1486
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-byte v6, v6, Landroid/hardware/radio/V1_0/Call;->als:B

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 1487
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 1488
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 1489
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1490
    nop

    .line 1492
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    .line 1491
    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 1493
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 1494
    nop

    .line 1495
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 1496
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1497
    new-instance v6, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1498
    iget-object v6, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_0/Call;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_0/UusInfo;

    iget v8, v8, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 1499
    iget-object v6, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_0/Call;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_0/UusInfo;

    iget v8, v8, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 1500
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/UusInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1501
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/UusInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1502
    .local v6, "userData":[B
    iget-object v8, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v8, v6}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 1503
    .end local v6    # "userData":[B
    goto :goto_1

    .line 1504
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v8, "responseCurrentCalls: uusInfo data is null or empty"

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1507
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v8, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1508
    invoke-virtual {v10}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    iget-object v10, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v10}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    iget-object v10, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1509
    invoke-virtual {v10}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v10

    array-length v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    .line 1507
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 1510
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incoming UUS : data (hex): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1511
    invoke-virtual {v8}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1510
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    goto :goto_2

    .line 1513
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v7, "Incoming UUS : NOT present!"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 1517
    :goto_2
    iget-object v6, v5, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v7, v5, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1519
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    iget-boolean v6, v5, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v6, :cond_2

    .line 1522
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1523
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v7, "InCall VoicePrivacy is enabled"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_3

    .line 1525
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1526
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v7, "InCall VoicePrivacy is disabled"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1477
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1530
    .end local v4    # "i":I
    .end local v5    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1532
    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v4, v4, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1533
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v3, v3, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v3, :cond_4

    .line 1534
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v4, "responseCurrentCalls: call ended, testing emergency call, notify ECM Registrants"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1536
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v3, v3, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v3}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1540
    :cond_4
    iget v3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_5

    .line 1541
    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v3, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1543
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1545
    .end local v1    # "num":I
    .end local v2    # "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    :cond_6
    return-void
.end method

.method private responseCurrentCalls_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/Call;",
            ">;)V"
        }
    .end annotation

    .line 1549
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1551
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_6

    .line 1552
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1553
    .local v1, "num":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1556
    .local v2, "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 1557
    new-instance v5, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v5}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 1560
    .local v5, "dc":Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->state:I

    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 1561
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->index:I

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 1562
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->toa:I

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 1563
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 1564
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 1565
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-byte v6, v6, Landroid/hardware/radio/V1_0/Call;->als:B

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 1566
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 1567
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 1568
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1569
    nop

    .line 1571
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    .line 1570
    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 1572
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 1573
    nop

    .line 1574
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 1575
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1576
    new-instance v6, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1577
    iget-object v6, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_2/Call;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_0/UusInfo;

    iget v8, v8, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 1578
    iget-object v6, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_2/Call;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_0/UusInfo;

    iget v8, v8, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 1579
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/UusInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1580
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/UusInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1581
    .local v6, "userData":[B
    iget-object v8, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v8, v6}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 1582
    .end local v6    # "userData":[B
    goto :goto_1

    .line 1583
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v8, "responseCurrentCalls: uusInfo data is null or empty"

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1586
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v8, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1587
    invoke-virtual {v10}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    iget-object v10, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v10}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    iget-object v10, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1588
    invoke-virtual {v10}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v10

    array-length v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    .line 1586
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 1589
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incoming UUS : data (hex): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1590
    invoke-virtual {v8}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1589
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    goto :goto_2

    .line 1592
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v7, "Incoming UUS : NOT present!"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 1596
    :goto_2
    iget-object v6, v5, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v7, v5, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1598
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget v6, v6, Landroid/hardware/radio/V1_2/Call;->audioQuality:I

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    .line 1600
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1602
    iget-boolean v6, v5, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v6, :cond_2

    .line 1603
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1604
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v7, "InCall VoicePrivacy is enabled"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_3

    .line 1606
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1607
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v7, "InCall VoicePrivacy is disabled"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1556
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1611
    .end local v4    # "i":I
    .end local v5    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1613
    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v4, v4, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1614
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v3, v3, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v3, :cond_4

    .line 1615
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v4, "responseCurrentCalls: call ended, testing emergency call, notify ECM Registrants"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1617
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v3, v3, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v3}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1621
    :cond_4
    iget v3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_5

    .line 1622
    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v3, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1624
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1626
    .end local v1    # "num":I
    .end local v2    # "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    :cond_6
    return-void
.end method

.method private responseDataCallList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 1827
    .local p2, "dataCallResultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1829
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1830
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 1831
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1833
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1835
    :cond_1
    return-void
.end method

.method private responseGmsBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 1869
    .local p2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1871
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_2

    .line 1872
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1873
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1874
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v5, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromServiceId:I

    .line 1875
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v6, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toServiceId:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v7, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromCodeScheme:I

    .line 1876
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v8, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toCodeScheme:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget-boolean v9, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->selected:Z

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 1874
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1873
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1878
    .end local v2    # "i":I
    :cond_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 1879
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1881
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1883
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :cond_2
    return-void
.end method

.method private responseHardwareConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .line 1989
    .local p2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1991
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1992
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RIL;->convertHalHwConfigList(Ljava/util/ArrayList;Lcom/android/internal/telephony/RIL;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1993
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 1994
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1996
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1998
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    :cond_1
    return-void
.end method

.method private responseICC_IOBase64(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "result"    # Landroid/hardware/radio/V1_0/IccIoResult;

    .line 2002
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2004
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_2

    .line 2005
    new-instance v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    iget v2, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw1:I

    iget v3, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw2:I

    .line 2008
    iget-object v4, p2, Landroid/hardware/radio/V1_0/IccIoResult;->simResponse:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2009
    iget-object v4, p2, Landroid/hardware/radio/V1_0/IccIoResult;->simResponse:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    goto :goto_0

    .line 2010
    :cond_0
    const/4 v4, 0x0

    check-cast v4, [B

    :goto_0
    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    .line 2011
    .local v1, "ret":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 2012
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2014
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 2016
    .end local v1    # "ret":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_2
    return-void
.end method

.method private responseIccCardStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "cardStatus"    # Landroid/hardware/radio/V1_0/CardStatus;

    .line 1416
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1418
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1419
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioResponse;->convertHalCardStatus(Landroid/hardware/radio/V1_0/CardStatus;)Lcom/android/internal/telephony/uicc/IccCardStatus;

    move-result-object v1

    .line 1420
    .local v1, "iccCardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseIccCardStatus: from HIDL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1421
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 1422
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1424
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1426
    .end local v1    # "iccCardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :cond_1
    return-void
.end method

.method private responseIccCardStatus_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "cardStatus"    # Landroid/hardware/radio/V1_2/CardStatus;

    .line 1430
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1432
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1433
    iget-object v1, p2, Landroid/hardware/radio/V1_2/CardStatus;->base:Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RadioResponse;->convertHalCardStatus(Landroid/hardware/radio/V1_0/CardStatus;)Lcom/android/internal/telephony/uicc/IccCardStatus;

    move-result-object v1

    .line 1434
    .local v1, "iccCardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    iget v2, p2, Landroid/hardware/radio/V1_2/CardStatus;->physicalSlotId:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->physicalSlotIndex:I

    .line 1435
    iget-object v2, p2, Landroid/hardware/radio/V1_2/CardStatus;->atr:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    .line 1436
    iget-object v2, p2, Landroid/hardware/radio/V1_2/CardStatus;->iccid:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    .line 1437
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseIccCardStatus: from HIDL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1438
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 1439
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1441
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1443
    .end local v1    # "iccCardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :cond_1
    return-void
.end method

.method private responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "result"    # Landroid/hardware/radio/V1_0/IccIoResult;

    .line 1745
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1747
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1748
    new-instance v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    iget v2, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw1:I

    iget v3, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw2:I

    iget-object v4, p2, Landroid/hardware/radio/V1_0/IccIoResult;->simResponse:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(IILjava/lang/String;)V

    .line 1749
    .local v1, "ret":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 1750
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1752
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1754
    .end local v1    # "ret":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_1
    return-void
.end method

.method private responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1454
    .local p2, "var":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1456
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_2

    .line 1457
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 1458
    .local v1, "ret":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1459
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 1458
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1461
    .end local v2    # "i":I
    :cond_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 1462
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1464
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1466
    .end local v1    # "ret":[I
    :cond_2
    return-void
.end method

.method private varargs responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var"    # [I

    .line 1446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1447
    .local v0, "ints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1448
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1447
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1450
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1451
    return-void
.end method

.method private responseLastCallFailCauseInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "fcInfo"    # Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    .line 1678
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1680
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1681
    new-instance v1, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v1}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 1682
    .local v1, "ret":Lcom/android/internal/telephony/LastCallFailCause;
    iget v2, p2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->causeCode:I

    iput v2, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 1683
    iget-object v2, p2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->vendorCause:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 1684
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 1685
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1687
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1689
    .end local v1    # "ret":Lcom/android/internal/telephony/LastCallFailCause;
    :cond_1
    return-void
.end method

.method private responseLceData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "lceInfo"    # Landroid/hardware/radio/V1_0/LceDataInfo;

    .line 2046
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2048
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 2049
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RIL;->convertHalLceData(Landroid/hardware/radio/V1_0/LceDataInfo;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/LinkCapacityEstimate;

    move-result-object v1

    .line 2050
    .local v1, "ret":Lcom/android/internal/telephony/LinkCapacityEstimate;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 2051
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2053
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 2055
    .end local v1    # "ret":Lcom/android/internal/telephony/LinkCapacityEstimate;
    :cond_1
    return-void
.end method

.method private responseLceStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "statusInfo"    # Landroid/hardware/radio/V1_0/LceStatusInfo;

    .line 2032
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2034
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 2035
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2036
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v2, p2, Landroid/hardware/radio/V1_0/LceStatusInfo;->lceStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2037
    iget-byte v2, p2, Landroid/hardware/radio/V1_0/LceStatusInfo;->actualIntervalMs:B

    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2038
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 2039
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2041
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 2043
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method

.method private responseOperatorInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .line 1795
    .local p2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1797
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_2

    .line 1798
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1799
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1800
    new-instance v3, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v4, v4, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    .line 1801
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    .line 1802
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget v7, v7, Landroid/hardware/radio/V1_0/OperatorInfo;->status:I

    invoke-static {v7}, Lcom/android/internal/telephony/RadioResponse;->convertOpertatorInfoToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1799
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1804
    .end local v2    # "i":I
    :cond_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 1805
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1807
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1809
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    :cond_2
    return-void
.end method

.method private responseRadioCapability(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "rc"    # Landroid/hardware/radio/V1_0/RadioCapability;

    .line 2020
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2022
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 2023
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RIL;->convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;

    move-result-object v1

    .line 2024
    .local v1, "ret":Lcom/android/internal/telephony/RadioCapability;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 2025
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2027
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 2029
    .end local v1    # "ret":Lcom/android/internal/telephony/RadioCapability;
    :cond_1
    return-void
.end method

.method private responseScanStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1812
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1814
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1815
    const/4 v1, 0x0

    .line 1816
    .local v1, "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 1817
    new-instance v2, Lcom/android/internal/telephony/NetworkScanResult;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    move-object v1, v2

    .line 1819
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1821
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1823
    .end local v1    # "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    :cond_1
    return-void
.end method

.method private responseSetupDataCall(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "setupDataCallResult"    # Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 1733
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1735
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1736
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 1737
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1739
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1741
    :cond_1
    return-void
.end method

.method private responseSignalStrength(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "signalStrength"    # Landroid/hardware/radio/V1_0/SignalStrength;

    .line 1694
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1696
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1697
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertHalSignalStrength(Landroid/hardware/radio/V1_0/SignalStrength;)Landroid/telephony/SignalStrength;

    move-result-object v1

    .line 1698
    .local v1, "ret":Landroid/telephony/SignalStrength;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 1699
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1701
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1703
    .end local v1    # "ret":Landroid/telephony/SignalStrength;
    :cond_1
    return-void
.end method

.method private responseSignalStrength_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "signalStrength"    # Landroid/hardware/radio/V1_2/SignalStrength;

    .line 1708
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1710
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1711
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertHalSignalStrength_1_2(Landroid/hardware/radio/V1_2/SignalStrength;)Landroid/telephony/SignalStrength;

    move-result-object v1

    .line 1712
    .local v1, "ret":Landroid/telephony/SignalStrength;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 1713
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1715
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1717
    .end local v1    # "ret":Landroid/telephony/SignalStrength;
    :cond_1
    return-void
.end method

.method private responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sms"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .line 1720
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1722
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1723
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    iget v2, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->messageRef:I

    iget-object v3, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->ackPDU:Ljava/lang/String;

    iget v4, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->errorCode:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    .line 1724
    .local v1, "ret":Lcom/android/internal/telephony/SmsResponse;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 1725
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1727
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1729
    .end local v1    # "ret":Lcom/android/internal/telephony/SmsResponse;
    :cond_1
    return-void
.end method

.method private responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "str"    # Ljava/lang/String;

    .line 1642
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1644
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1645
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 1646
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1648
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1650
    :cond_1
    return-void
.end method

.method static responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "ril"    # Lcom/android/internal/telephony/RIL;
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/RIL;",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1662
    .local p2, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1664
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_2

    .line 1665
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1666
    .local v1, "ret":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1667
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1666
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1669
    .end local v2    # "i":I
    :cond_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 1670
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1672
    :cond_1
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1674
    .end local v1    # "ret":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private varargs responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "str"    # [Ljava/lang/String;

    .line 1653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1654
    .local v0, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1655
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1654
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1657
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v1, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1658
    return-void
.end method

.method private responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1630
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1632
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 1633
    const/4 v1, 0x0

    .line 1634
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 1635
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1637
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1639
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "ret"    # Ljava/lang/Object;

    .line 80
    if-eqz p0, :cond_0

    .line 81
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 82
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 487
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 488
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 985
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 986
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 831
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 832
    return-void
.end method

.method public acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 480
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 481
    return-void
.end method

.method public acknowledgeRequest(I)V
    .locals 1
    .param p1, "serial"    # I

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processRequestAck(I)V

    .line 95
    return-void
.end method

.method public cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 416
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 417
    return-void
.end method

.method public changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .line 159
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 160
    return-void
.end method

.method public changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .line 151
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 152
    return-void
.end method

.method public conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 236
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 237
    return-void
.end method

.method public deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 494
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 495
    return-void
.end method

.method public deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 911
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 912
    return-void
.end method

.method public deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 662
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 663
    return-void
.end method

.method public dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 193
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 194
    return-void
.end method

.method public exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 930
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 931
    return-void
.end method

.method public explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 710
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 711
    return-void
.end method

.method public getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "allAllowed"    # Z
    .param p3, "carriers"    # Landroid/hardware/radio/V1_0/CarrierRestrictions;

    .line 1255
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioResponse;->responseCarrierIdentifiers(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 1256
    return-void
.end method

.method public getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 679
    .local p2, "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 680
    return-void
.end method

.method public getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .line 556
    .local p2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseOperatorInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 557
    return-void
.end method

.method public getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "version"    # Ljava/lang/String;

    .line 595
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method public getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mdn"    # Ljava/lang/String;
    .param p3, "hSid"    # Ljava/lang/String;
    .param p4, "hNid"    # Ljava/lang/String;
    .param p5, "min"    # Ljava/lang/String;
    .param p6, "prl"    # Ljava/lang/String;

    .line 895
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V

    .line 896
    return-void
.end method

.method public getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .line 443
    .local p2, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCallForwardInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 444
    return-void
.end method

.method public getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I

    .line 466
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 467
    return-void
.end method

.method public getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 865
    .local p2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCdmaBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 866
    return-void
.end method

.method public getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "type"    # I

    .line 767
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 768
    return-void
.end method

.method public getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "source"    # I

    .line 968
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 969
    return-void
.end method

.method public getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1009
    .local p2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellInfoList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1010
    return-void
.end method

.method public getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1019
    .local p2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellInfoList_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1020
    return-void
.end method

.method public getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "status"    # I

    .line 627
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 628
    return-void
.end method

.method public getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 425
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 426
    return-void
.end method

.method public getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Call;",
            ">;)V"
        }
    .end annotation

    .line 177
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCurrentCalls(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 178
    return-void
.end method

.method public getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/Call;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCurrentCalls_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 187
    return-void
.end method

.method public getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 637
    .local p2, "dataCallResultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseDataCallList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 638
    return-void
.end method

.method public getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "dataRegResponse"    # Landroid/hardware/radio/V1_0/DataRegStateResult;

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 316
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 317
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 318
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 322
    :cond_1
    return-void
.end method

.method public getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "dataRegResponse"    # Landroid/hardware/radio/V1_2/DataRegStateResult;

    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 333
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 334
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 335
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 339
    :cond_1
    return-void
.end method

.method public getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "imei"    # Ljava/lang/String;
    .param p3, "imeisv"    # Ljava/lang/String;
    .param p4, "esn"    # Ljava/lang/String;
    .param p5, "meid"    # Ljava/lang/String;

    .line 923
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method public getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # I

    .line 505
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 506
    return-void
.end method

.method public getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 841
    .local p2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseGmsBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 842
    return-void
.end method

.method public getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .line 1150
    .local p2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseHardwareConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1151
    return-void
.end method

.method public getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "imsi"    # Ljava/lang/String;

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "cardStatus"    # Landroid/hardware/radio/V1_0/CardStatus;

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccCardStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    .line 103
    return-void
.end method

.method public getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "cardStatus"    # Landroid/hardware/radio/V1_2/CardStatus;

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccCardStatus_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V

    .line 112
    return-void
.end method

.method public getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "isRegistered"    # Z
    .param p3, "ratFamily"    # I

    .line 1045
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 1046
    return-void
.end method

.method public getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "fcInfo"    # Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    .line 255
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseLastCallFailCauseInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 256
    return-void
.end method

.method public getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "activityInfo"    # Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    .line 1232
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseActivityData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    .line 1233
    return-void
.end method

.method public getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "enable"    # Z

    .line 618
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 619
    return-void
.end method

.method public getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/NeighboringCell;",
            ">;)V"
        }
    .end annotation

    .line 737
    .local p2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 738
    return-void
.end method

.method public getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "selection"    # Z

    .line 530
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 531
    return-void
.end method

.method public getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "longName"    # Ljava/lang/String;
    .param p3, "shortName"    # Ljava/lang/String;
    .param p4, "numeric"    # Ljava/lang/String;

    .line 351
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "nwType"    # I

    .line 726
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iput p2, v0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    .line 727
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 728
    return-void
.end method

.method public getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "enable"    # Z

    .line 801
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 802
    return-void
.end method

.method public getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "rc"    # Landroid/hardware/radio/V1_0/RadioCapability;

    .line 1180
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1182
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_3

    .line 1183
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RIL;->convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;

    move-result-object v1

    .line 1184
    .local v1, "ret":Lcom/android/internal/telephony/RadioCapability;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1188
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v1

    .line 1189
    const/4 v2, 0x0

    iput v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 1191
    :cond_1
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_2

    .line 1192
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1194
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1196
    .end local v1    # "ret":Lcom/android/internal/telephony/RadioCapability;
    :cond_3
    return-void
.end method

.method public getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sigStrength"    # Landroid/hardware/radio/V1_0/SignalStrength;

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSignalStrength(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 261
    return-void
.end method

.method public getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "signalStrength"    # Landroid/hardware/radio/V1_2/SignalStrength;

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSignalStrength_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V

    .line 271
    return-void
.end method

.method public getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "smsc"    # Ljava/lang/String;

    .line 938
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 939
    return-void
.end method

.method public getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mode"    # I

    .line 783
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 784
    return-void
.end method

.method public getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "rat"    # I

    .line 1004
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 1005
    return-void
.end method

.method public getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "voiceRegResponse"    # Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 282
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 283
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 284
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 288
    :cond_1
    return-void
.end method

.method public getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "voiceRegResponse"    # Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 299
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_1

    .line 300
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 301
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 305
    :cond_1
    return-void
.end method

.method public handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 703
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 704
    return-void
.end method

.method public hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 208
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 209
    return-void
.end method

.method public hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 222
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 223
    return-void
.end method

.method public hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 215
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 216
    return-void
.end method

.method public iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1089
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1090
    return-void
.end method

.method public iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "iccIo"    # Landroid/hardware/radio/V1_0/IccIoResult;

    .line 402
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 403
    return-void
.end method

.method public iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "channelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1077
    .local p3, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1078
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1080
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1082
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1083
    return-void
.end method

.method public iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "result"    # Landroid/hardware/radio/V1_0/IccIoResult;

    .line 1065
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 1066
    return-void
.end method

.method public iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "result"    # Landroid/hardware/radio/V1_0/IccIoResult;

    .line 1100
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 1101
    return-void
.end method

.method public nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "result"    # Ljava/lang/String;

    .line 1109
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 1110
    return-void
.end method

.method public nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1130
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1131
    return-void
.end method

.method public nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1123
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1124
    return-void
.end method

.method public nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1116
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1117
    return-void
.end method

.method public pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "lceInfo"    # Landroid/hardware/radio/V1_0/LceDataInfo;

    .line 1222
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseLceData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 1223
    return-void
.end method

.method public rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 243
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 244
    return-void
.end method

.method public reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 952
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 953
    return-void
.end method

.method public reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 959
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 960
    return-void
.end method

.method public requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "result"    # Landroid/hardware/radio/V1_0/IccIoResult;

    .line 1161
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseICC_IOBase64(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 1162
    return-void
.end method

.method public requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 978
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Inexplicable response received for requestIsimAuthentication"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1175
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1176
    return-void
.end method

.method public sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 815
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 816
    return-void
.end method

.method public sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 808
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 809
    return-void
.end method

.method public sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sms"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .line 824
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 825
    return-void
.end method

.method public sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1262
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1263
    return-void
.end method

.method public sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 365
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 366
    return-void
.end method

.method public sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "commandResponse"    # Ljava/lang/String;

    .line 689
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 690
    return-void
.end method

.method public sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "iccIo"    # Landroid/hardware/radio/V1_0/IccIoResult;

    .line 995
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 996
    return-void
.end method

.method public sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sms"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .line 1054
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 1055
    return-void
.end method

.method public sendOemRilRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 641
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    return-void
.end method

.method public sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sms"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .line 383
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 384
    return-void
.end method

.method public sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sms"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .line 374
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 375
    return-void
.end method

.method public sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 696
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 697
    return-void
.end method

.method public sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 409
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 410
    return-void
.end method

.method public separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 602
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 603
    return-void
.end method

.method public setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "numAllowed"    # I

    .line 1243
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 1244
    return-void
.end method

.method public setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 669
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 670
    return-void
.end method

.method public setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 521
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 522
    return-void
.end method

.method public setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 450
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 451
    return-void
.end method

.method public setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 473
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 474
    return-void
.end method

.method public setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1269
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1270
    return-void
.end method

.method public setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 879
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 880
    return-void
.end method

.method public setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 872
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 873
    return-void
.end method

.method public setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 758
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 759
    return-void
.end method

.method public setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 751
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 752
    return-void
.end method

.method public setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1026
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1027
    return-void
.end method

.method public setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 432
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 433
    return-void
.end method

.method public setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1144
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1145
    return-void
.end method

.method public setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1168
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1169
    return-void
.end method

.method public setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "retry"    # I

    .line 514
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 515
    return-void
.end method

.method public setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 855
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 856
    return-void
.end method

.method public setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 848
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 849
    return-void
.end method

.method public setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1276
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1277
    return-void
.end method

.method public setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1033
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1034
    return-void
.end method

.method public setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1297
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1298
    return-void
.end method

.method public setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 744
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 745
    return-void
.end method

.method public setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 609
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 610
    return-void
.end method

.method public setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 537
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 538
    return-void
.end method

.method public setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 544
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 545
    return-void
.end method

.method public setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 717
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 718
    return-void
.end method

.method public setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 790
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 791
    return-void
.end method

.method public setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "rc"    # Landroid/hardware/radio/V1_0/RadioCapability;

    .line 1200
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseRadioCapability(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 1201
    return-void
.end method

.method public setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 358
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 359
    return-void
.end method

.method public setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1290
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1291
    return-void
.end method

.method public setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1283
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1284
    return-void
.end method

.method public setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1304
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1305
    return-void
.end method

.method public setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 945
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 946
    return-void
.end method

.method public setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 647
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 648
    return-void
.end method

.method public setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 774
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 775
    return-void
.end method

.method public setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1137
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1138
    return-void
.end method

.method public setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "setupDataCallResult"    # Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 393
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSetupDataCall(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 394
    return-void
.end method

.method public startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 579
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 580
    return-void
.end method

.method public startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "keepaliveStatus"    # Landroid/hardware/radio/V1_1/KeepaliveStatus;

    .line 1315
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1317
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-nez v0, :cond_0

    .line 1318
    return-void

    .line 1321
    :cond_0
    const/4 v1, 0x0

    .line 1323
    .local v1, "ret":Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 v4, 0x6

    if-eq v2, v4, :cond_2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_1

    .line 1342
    new-instance v2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;-><init>(I)V

    move-object v1, v2

    goto :goto_0

    .line 1339
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;-><init>(I)V

    move-object v1, v2

    .line 1340
    goto :goto_0

    .line 1333
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;-><init>(I)V

    move-object v1, v2

    .line 1336
    const/4 v2, 0x0

    iput v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 1337
    goto :goto_0

    .line 1325
    :cond_3
    iget v2, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->code:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RadioResponse;->convertHalKeepaliveStatusCode(I)I

    move-result v2

    .line 1326
    .local v2, "convertedStatus":I
    if-gez v2, :cond_4

    .line 1327
    new-instance v4, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;-><init>(I)V

    move-object v1, v4

    goto :goto_0

    .line 1329
    :cond_4
    new-instance v3, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;

    iget v4, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->sessionHandle:I

    invoke-direct {v3, v4, v2}, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;-><init>(II)V

    move-object v1, v3

    .line 1331
    nop

    .line 1345
    .end local v2    # "convertedStatus":I
    :goto_0
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1346
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1347
    return-void
.end method

.method public startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "statusInfo"    # Landroid/hardware/radio/V1_0/LceStatusInfo;

    .line 1209
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseLceStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 1210
    return-void
.end method

.method public startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 564
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseScanStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 565
    return-void
.end method

.method public stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 586
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 587
    return-void
.end method

.method public stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1353
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1355
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-nez v0, :cond_0

    .line 1356
    return-void

    .line 1359
    :cond_0
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_1

    .line 1360
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1361
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1365
    :cond_1
    return-void
.end method

.method public stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "statusInfo"    # Landroid/hardware/radio/V1_0/LceStatusInfo;

    .line 1218
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseLceStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 1219
    return-void
.end method

.method public stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 572
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseScanStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 573
    return-void
.end method

.method public supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .line 135
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 136
    return-void
.end method

.method public supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 120
    return-void
.end method

.method public supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .line 143
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 144
    return-void
.end method

.method public supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .line 127
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 128
    return-void
.end method

.method public supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "retriesRemaining"    # I

    .line 168
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 169
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 229
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 230
    return-void
.end method

.method public writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "index"    # I

    .line 904
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 905
    return-void
.end method

.method public writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "index"    # I

    .line 655
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 656
    return-void
.end method
