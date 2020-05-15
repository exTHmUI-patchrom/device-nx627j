.class public Lcom/android/server/wifi/rtt/RttNative;
.super Landroid/hardware/wifi/V1_0/IWifiRttControllerEventCallback$Stub;
.source "RttNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RttNative"

.field private static final VDBG:Z = false


# instance fields
.field mDbg:Z

.field private final mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

.field private volatile mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

.field private mLock:Ljava/lang/Object;

.field private volatile mRttCapabilities:Landroid/hardware/wifi/V1_0/RttCapabilities;

.field private final mRttService:Lcom/android/server/wifi/rtt/RttServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/rtt/RttServiceImpl;Lcom/android/server/wifi/HalDeviceManager;)V
    .locals 1
    .param p1, "rttService"    # Lcom/android/server/wifi/rtt/RttServiceImpl;
    .param p2, "halDeviceManager"    # Lcom/android/server/wifi/HalDeviceManager;

    .line 60
    invoke-direct {p0}, Landroid/hardware/wifi/V1_0/IWifiRttControllerEventCallback$Stub;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/rtt/RttNative;->mDbg:Z

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/rtt/RttNative;->mLock:Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttNative;->mRttService:Lcom/android/server/wifi/rtt/RttServiceImpl;

    .line 62
    iput-object p2, p0, Lcom/android/server/wifi/rtt/RttNative;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    .line 63
    return-void
.end method

.method private static convertRangingRequestToRttConfigs(Landroid/net/wifi/rtt/RangingRequest;ZLandroid/hardware/wifi/V1_0/RttCapabilities;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "request"    # Landroid/net/wifi/rtt/RangingRequest;
    .param p1, "isCalledFromPrivilegedContext"    # Z
    .param p2, "cap"    # Landroid/hardware/wifi/V1_0/RttCapabilities;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/rtt/RangingRequest;",
            "Z",
            "Landroid/hardware/wifi/V1_0/RttCapabilities;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/RttConfig;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    .local v0, "rttConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttConfig;>;"
    iget-object v1, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/rtt/ResponderConfig;

    .line 288
    .local v2, "responder":Landroid/net/wifi/rtt/ResponderConfig;
    if-nez p1, :cond_0

    .line 289
    iget-boolean v3, v2, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    if-nez v3, :cond_0

    .line 290
    const-string v3, "RttNative"

    const-string v4, "Invalid responder: does not support 802.11mc"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    goto :goto_0

    .line 295
    :cond_0
    new-instance v3, Landroid/hardware/wifi/V1_0/RttConfig;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/RttConfig;-><init>()V

    .line 297
    .local v3, "config":Landroid/hardware/wifi/V1_0/RttConfig;
    iget-object v4, v2, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-virtual {v4}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v4

    iget-object v5, v3, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    iget-object v6, v3, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 301
    :try_start_0
    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    iput v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->type:I

    .line 302
    iget v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->type:I

    if-ne v4, v6, :cond_2

    if-eqz p2, :cond_2

    iget-boolean v4, p2, Landroid/hardware/wifi/V1_0/RttCapabilities;->rttOneSidedSupported:Z

    if-nez v4, :cond_2

    .line 303
    const-string v4, "RttNative"

    const-string v5, "Device does not support one-sided RTT"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    goto :goto_0

    .line 307
    :cond_2
    iget v4, v2, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    invoke-static {v4}, Lcom/android/server/wifi/rtt/RttNative;->halRttPeerTypeFromResponderType(I)I

    move-result v4

    iput v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->peer:I

    .line 308
    iget-object v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v8, v2, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    invoke-static {v8}, Lcom/android/server/wifi/rtt/RttNative;->halChannelWidthFromResponderChannelWidth(I)I

    move-result v8

    iput v8, v4, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->width:I

    .line 310
    iget-object v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v8, v2, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    iput v8, v4, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq:I

    .line 311
    iget-object v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v8, v2, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    iput v8, v4, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq0:I

    .line 312
    iget-object v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v8, v2, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    iput v8, v4, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq1:I

    .line 313
    iget v4, v2, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    invoke-static {v4}, Lcom/android/server/wifi/rtt/RttNative;->halRttChannelBandwidthFromResponderChannelWidth(I)I

    move-result v4

    iput v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->bw:I

    .line 314
    iget v4, v2, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    invoke-static {v4}, Lcom/android/server/wifi/rtt/RttNative;->halRttPreambleFromResponderPreamble(I)I

    move-result v4

    iput v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->preamble:I

    .line 316
    iget v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->peer:I

    const/16 v8, 0x9

    const/4 v9, 0x5

    const/4 v10, 0x3

    if-ne v4, v9, :cond_3

    .line 317
    iput-boolean v7, v3, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    .line 318
    iput-boolean v7, v3, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    .line 319
    iput v7, v3, Landroid/hardware/wifi/V1_0/RttConfig;->burstPeriod:I

    .line 320
    iput v7, v3, Landroid/hardware/wifi/V1_0/RttConfig;->numBurst:I

    .line 321
    iput v9, v3, Landroid/hardware/wifi/V1_0/RttConfig;->numFramesPerBurst:I

    .line 322
    iput v7, v3, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerRttFrame:I

    .line 323
    iput v10, v3, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerFtmr:I

    .line 324
    iput v8, v3, Landroid/hardware/wifi/V1_0/RttConfig;->burstDuration:I

    goto :goto_5

    .line 326
    :cond_3
    iput-boolean p1, v3, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    .line 327
    iput-boolean p1, v3, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    .line 328
    iput v7, v3, Landroid/hardware/wifi/V1_0/RttConfig;->burstPeriod:I

    .line 329
    iput v7, v3, Landroid/hardware/wifi/V1_0/RttConfig;->numBurst:I

    .line 330
    const/16 v4, 0x8

    iput v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->numFramesPerBurst:I

    .line 331
    iget v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->type:I

    if-ne v4, v5, :cond_4

    move v4, v7

    goto :goto_2

    :cond_4
    move v4, v10

    :goto_2
    iput v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerRttFrame:I

    .line 332
    iput v10, v3, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerFtmr:I

    .line 333
    iput v8, v3, Landroid/hardware/wifi/V1_0/RttConfig;->burstDuration:I

    .line 335
    if-eqz p2, :cond_7

    .line 336
    iget-boolean v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p2, Landroid/hardware/wifi/V1_0/RttCapabilities;->lciSupported:Z

    if-eqz v4, :cond_5

    move v4, v6

    goto :goto_3

    :cond_5
    move v4, v7

    :goto_3
    iput-boolean v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    .line 337
    iget-boolean v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p2, Landroid/hardware/wifi/V1_0/RttCapabilities;->lcrSupported:Z

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v6, v7

    :goto_4
    iput-boolean v6, v3, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    .line 338
    iget v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->bw:I

    invoke-static {v4, p2}, Lcom/android/server/wifi/rtt/RttNative;->halRttChannelBandwidthCapabilityLimiter(ILandroid/hardware/wifi/V1_0/RttCapabilities;)I

    move-result v4

    iput v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->bw:I

    .line 339
    iget v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->preamble:I

    invoke-static {v4, p2}, Lcom/android/server/wifi/rtt/RttNative;->halRttPreambleCapabilityLimiter(ILandroid/hardware/wifi/V1_0/RttCapabilities;)I

    move-result v4

    iput v4, v3, Landroid/hardware/wifi/V1_0/RttConfig;->preamble:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :cond_7
    :goto_5
    nop

    .line 347
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .end local v2    # "responder":Landroid/net/wifi/rtt/ResponderConfig;
    .end local v3    # "config":Landroid/hardware/wifi/V1_0/RttConfig;
    goto/16 :goto_0

    .line 342
    .restart local v2    # "responder":Landroid/net/wifi/rtt/ResponderConfig;
    .restart local v3    # "config":Landroid/hardware/wifi/V1_0/RttConfig;
    :catch_0
    move-exception v4

    .line 343
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "RttNative"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid configuration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    goto/16 :goto_0

    .line 350
    .end local v2    # "responder":Landroid/net/wifi/rtt/ResponderConfig;
    .end local v3    # "config":Landroid/hardware/wifi/V1_0/RttConfig;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_8
    return-object v0
.end method

.method private static halChannelWidthFromResponderChannelWidth(I)I
    .locals 3
    .param p0, "responderChannelWidth"    # I

    .line 372
    packed-switch p0, :pswitch_data_0

    .line 384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "halChannelWidthFromResponderChannelWidth: bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 380
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 378
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 376
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 374
    :pswitch_4
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static halRttChannelBandwidthCapabilityLimiter(ILandroid/hardware/wifi/V1_0/RttCapabilities;)I
    .locals 3
    .param p0, "halRttChannelBandwidth"    # I
    .param p1, "cap"    # Landroid/hardware/wifi/V1_0/RttCapabilities;

    .line 431
    :goto_0
    if-eqz p0, :cond_0

    iget v0, p1, Landroid/hardware/wifi/V1_0/RttCapabilities;->bwSupport:I

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    .line 432
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 435
    :cond_0
    if-eqz p0, :cond_1

    .line 436
    return p0

    .line 439
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT BW="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", not supported by device capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - and no supported alternative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static halRttChannelBandwidthFromResponderChannelWidth(I)I
    .locals 3
    .param p0, "responderChannelWidth"    # I

    .line 390
    const/16 v0, 0x20

    packed-switch p0, :pswitch_data_0

    .line 402
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "halRttChannelBandwidthFromHalBandwidth: bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :pswitch_0
    return v0

    .line 398
    :pswitch_1
    return v0

    .line 396
    :pswitch_2
    const/16 v0, 0x10

    return v0

    .line 394
    :pswitch_3
    const/16 v0, 0x8

    return v0

    .line 392
    :pswitch_4
    const/4 v0, 0x4

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static halRttPeerTypeFromResponderType(I)I
    .locals 3
    .param p0, "responderType"    # I

    .line 354
    packed-switch p0, :pswitch_data_0

    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "halRttPeerTypeFromResponderType: bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 362
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 360
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 358
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 356
    :pswitch_4
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static halRttPreambleCapabilityLimiter(ILandroid/hardware/wifi/V1_0/RttCapabilities;)I
    .locals 3
    .param p0, "halRttPreamble"    # I
    .param p1, "cap"    # Landroid/hardware/wifi/V1_0/RttCapabilities;

    .line 453
    :goto_0
    if-eqz p0, :cond_0

    iget v0, p1, Landroid/hardware/wifi/V1_0/RttCapabilities;->preambleSupport:I

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    .line 454
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 457
    :cond_0
    if-eqz p0, :cond_1

    .line 458
    return p0

    .line 461
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT Preamble="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", not supported by device capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - and no supported alternative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static halRttPreambleFromResponderPreamble(I)I
    .locals 3
    .param p0, "responderPreamble"    # I

    .line 408
    packed-switch p0, :pswitch_data_0

    .line 416
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "halRttPreambleFromResponderPreamble: bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 412
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 410
    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$start$0(Lcom/android/server/wifi/rtt/RttNative;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/server/wifi/rtt/RttNative;->updateController()V

    .line 74
    return-void
.end method

.method public static synthetic lambda$updateRttCapabilities$1(Lcom/android/server/wifi/rtt/RttNative;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/RttCapabilities;)V
    .locals 3
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p2, "capabilities"    # Landroid/hardware/wifi/V1_0/RttCapabilities;

    .line 134
    iget v0, p1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "RttNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateController: error requesting capabilities -- code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 140
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/rtt/RttNative;->mDbg:Z

    if-eqz v0, :cond_1

    .line 141
    const-string v0, "RttNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateController: RTT capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    iput-object p2, p0, Lcom/android/server/wifi/rtt/RttNative;->mRttCapabilities:Landroid/hardware/wifi/V1_0/RttCapabilities;

    .line 144
    return-void
.end method

.method private rangeRequestInternal(ILandroid/net/wifi/rtt/RangingRequest;ZZ)Z
    .locals 7
    .param p1, "cmdId"    # I
    .param p2, "request"    # Landroid/net/wifi/rtt/RangingRequest;
    .param p3, "isCalledFromPrivilegedContext"    # Z
    .param p4, "tryToReinitIfNecessary"    # Z

    .line 174
    iget-boolean v0, p0, Lcom/android/server/wifi/rtt/RttNative;->mDbg:Z

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "RttNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rangeRequest: cmdId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", # of requests="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    .line 176
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/rtt/RttNative;->updateRttCapabilities()V

    .line 180
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/rtt/RttNative;->isReady()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 182
    const-string v1, "RttNative"

    const-string v3, "rangeRequest: RttController is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-eqz p4, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/android/server/wifi/rtt/RttNative;->updateController()V

    .line 185
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/server/wifi/rtt/RttNative;->rangeRequestInternal(ILandroid/net/wifi/rtt/RangingRequest;ZZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 188
    :cond_1
    monitor-exit v0

    return v2

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttNative;->mRttCapabilities:Landroid/hardware/wifi/V1_0/RttCapabilities;

    invoke-static {p2, p3, v1}, Lcom/android/server/wifi/rtt/RttNative;->convertRangingRequestToRttConfigs(Landroid/net/wifi/rtt/RangingRequest;ZLandroid/hardware/wifi/V1_0/RttCapabilities;)Ljava/util/ArrayList;

    move-result-object v1

    .line 193
    .local v1, "rttConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttConfig;>;"
    if-nez v1, :cond_3

    .line 194
    const-string v3, "RttNative"

    const-string v4, "rangeRequest: invalid request parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    monitor-exit v0

    return v2

    .line 197
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_4

    .line 198
    const-string v2, "RttNative"

    const-string v3, "rangeRequest: all requests invalidated"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttNative;->mRttService:Lcom/android/server/wifi/rtt/RttServiceImpl;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wifi/rtt/RttServiceImpl;->onRangingResults(ILjava/util/List;)V

    .line 200
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    .line 204
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/rtt/RttNative;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    invoke-interface {v3, p1, v1}, Landroid/hardware/wifi/V1_0/IWifiRttController;->rangeRequest(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 205
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v5, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    if-eqz p4, :cond_5

    .line 207
    const-string v4, "RttNative"

    const-string v5, "rangeRequest: RTT controller invalidated from under us - reinit!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wifi/rtt/RttNative;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    .line 209
    invoke-direct {p0}, Lcom/android/server/wifi/rtt/RttNative;->updateController()V

    .line 210
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/server/wifi/rtt/RttNative;->rangeRequestInternal(ILandroid/net/wifi/rtt/RangingRequest;ZZ)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v4

    .line 213
    :cond_5
    :try_start_3
    iget v5, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v5, :cond_6

    .line 214
    const-string v4, "RttNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rangeRequest: cannot issue range request -- code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    :try_start_4
    monitor-exit v0

    return v2

    .line 220
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_6
    nop

    .line 222
    monitor-exit v0

    return v4

    .line 217
    :catch_0
    move-exception v3

    .line 218
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "RttNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rangeRequest: exception issuing range request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    monitor-exit v0

    return v2

    .line 223
    .end local v1    # "rttConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttConfig;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private updateController()V
    .locals 6

    .line 87
    iget-boolean v0, p0, Lcom/android/server/wifi/rtt/RttNative;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "RttNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateController: mIWifiRttController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttNative;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttNative;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    .line 93
    .local v1, "localWifiRttController":Landroid/hardware/wifi/V1_0/IWifiRttController;
    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttNative;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/HalDeviceManager;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    if-nez v1, :cond_3

    .line 95
    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttNative;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/HalDeviceManager;->createRttController()Landroid/hardware/wifi/V1_0/IWifiRttController;

    move-result-object v2

    move-object v1, v2

    .line 96
    if-nez v1, :cond_1

    .line 97
    const-string v2, "RttNative"

    const-string v3, "updateController: Failed creating RTT controller - but Wifi is started!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 101
    :cond_1
    :try_start_1
    invoke-interface {v1, p0}, Landroid/hardware/wifi/V1_0/IWifiRttController;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiRttControllerEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "RttNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateController: exception registering callback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v1, 0x0

    .line 105
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 109
    :cond_2
    const/4 v1, 0x0

    .line 111
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/android/server/wifi/rtt/RttNative;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    .line 113
    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttNative;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    if-nez v2, :cond_4

    .line 114
    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttNative;->mRttService:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/wifi/rtt/RttServiceImpl;->disable()V

    goto :goto_2

    .line 116
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/rtt/RttNative;->mRttService:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/wifi/rtt/RttServiceImpl;->enableIfPossible()V

    .line 117
    invoke-virtual {p0}, Lcom/android/server/wifi/rtt/RttNative;->updateRttCapabilities()V

    .line 119
    .end local v1    # "localWifiRttController":Landroid/hardware/wifi/V1_0/IWifiRttController;
    :goto_2
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 471
    const-string v0, "RttNative:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHalDeviceManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttNative;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIWifiRttController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttNative;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRttCapabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttNative;->mRttCapabilities:Landroid/hardware/wifi/V1_0/RttCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttNative;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onResults(ILjava/util/ArrayList;)V
    .locals 3
    .param p1, "cmdId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/RttResult;",
            ">;)V"
        }
    .end annotation

    .line 266
    .local p2, "halResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttResult;>;"
    iget-boolean v0, p0, Lcom/android/server/wifi/rtt/RttNative;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "RttNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResults: cmdId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", # of results="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    if-nez p2, :cond_1

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p2, v0

    .line 272
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 273
    .local v0, "lit":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/hardware/wifi/V1_0/RttResult;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 275
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttNative;->mRttService:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/rtt/RttServiceImpl;->onRangingResults(ILjava/util/List;)V

    .line 279
    return-void
.end method

.method public rangeCancel(ILjava/util/ArrayList;)Z
    .locals 6
    .param p1, "cmdId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "[B>;)Z"
        }
    .end annotation

    .line 235
    .local p2, "macAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-boolean v0, p0, Lcom/android/server/wifi/rtt/RttNative;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "RttNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rangeCancel: cmdId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/rtt/RttNative;->isReady()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 238
    const-string v1, "RttNative"

    const-string v3, "rangeCancel: RttController is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 243
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttNative;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    invoke-interface {v1, p1, p2}, Landroid/hardware/wifi/V1_0/IWifiRttController;->rangeCancel(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 244
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v3, v1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v3, :cond_2

    .line 245
    const-string v3, "RttNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rangeCancel: cannot issue range cancel -- code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :try_start_2
    monitor-exit v0

    return v2

    .line 251
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_2
    nop

    .line 253
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "RttNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rangeCancel: exception issuing range cancel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    monitor-exit v0

    return v2

    .line 254
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public rangeRequest(ILandroid/net/wifi/rtt/RangingRequest;Z)Z
    .locals 1
    .param p1, "cmdId"    # I
    .param p2, "request"    # Landroid/net/wifi/rtt/RangingRequest;
    .param p3, "isCalledFromPrivilegedContext"    # Z

    .line 169
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wifi/rtt/RttNative;->rangeRequestInternal(ILandroid/net/wifi/rtt/RangingRequest;ZZ)Z

    move-result v0

    return v0
.end method

.method public start(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 69
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttNative;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/HalDeviceManager;->initialize()V

    .line 71
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttNative;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    new-instance v2, Lcom/android/server/wifi/rtt/-$$Lambda$RttNative$51zuZWl5ad-UD9FpUAuwwPgkpgg;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/rtt/-$$Lambda$RttNative$51zuZWl5ad-UD9FpUAuwwPgkpgg;-><init>(Lcom/android/server/wifi/rtt/RttNative;)V

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wifi/HalDeviceManager;->registerStatusListener(Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;Landroid/os/Handler;)V

    .line 75
    invoke-direct {p0}, Lcom/android/server/wifi/rtt/RttNative;->updateController()V

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateRttCapabilities()V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttNative;->mRttCapabilities:Landroid/hardware/wifi/V1_0/RttCapabilities;

    if-eqz v0, :cond_0

    .line 127
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttNative;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    new-instance v2, Lcom/android/server/wifi/rtt/-$$Lambda$RttNative$nRSOFcP2WhqxmfStf2OeZAekTCY;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/rtt/-$$Lambda$RttNative$nRSOFcP2WhqxmfStf2OeZAekTCY;-><init>(Lcom/android/server/wifi/rtt/RttNative;)V

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiRttController;->getCapabilities(Landroid/hardware/wifi/V1_0/IWifiRttController$getCapabilitiesCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    goto :goto_0

    .line 153
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "RttNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateController: exception requesting capabilities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttNative;->mRttCapabilities:Landroid/hardware/wifi/V1_0/RttCapabilities;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttNative;->mRttCapabilities:Landroid/hardware/wifi/V1_0/RttCapabilities;

    iget-boolean v1, v1, Landroid/hardware/wifi/V1_0/RttCapabilities;->rttFtmSupported:Z

    if-nez v1, :cond_1

    .line 150
    const-string v1, "RttNative"

    const-string v2, "Firmware indicates RTT is not supported - but device supports RTT - ignored!?"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
