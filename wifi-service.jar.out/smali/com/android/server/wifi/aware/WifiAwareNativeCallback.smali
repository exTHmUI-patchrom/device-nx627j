.class public Lcom/android/server/wifi/aware/WifiAwareNativeCallback;
.super Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;
.source "WifiAwareNativeCallback.java"

# interfaces
.implements Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;


# static fields
.field private static final CB_EV_CLUSTER:I = 0x0

.field private static final CB_EV_DATA_PATH_CONFIRM:I = 0x9

.field private static final CB_EV_DATA_PATH_REQUEST:I = 0x8

.field private static final CB_EV_DATA_PATH_SCHED_UPDATE:I = 0xb

.field private static final CB_EV_DATA_PATH_TERMINATED:I = 0xa

.field private static final CB_EV_DISABLED:I = 0x1

.field private static final CB_EV_FOLLOWUP_RECEIVED:I = 0x6

.field private static final CB_EV_MATCH:I = 0x4

.field private static final CB_EV_MATCH_EXPIRED:I = 0x5

.field private static final CB_EV_PUBLISH_TERMINATED:I = 0x2

.field private static final CB_EV_SUBSCRIBE_TERMINATED:I = 0x3

.field private static final CB_EV_TRANSMIT_FOLLOWUP:I = 0x7

.field private static final TAG:Ljava/lang/String; = "WifiAwareNativeCallback"

.field private static final VDBG:Z = false


# instance fields
.field private mCallbackCounter:Landroid/util/SparseIntArray;

.field mDbg:Z

.field mIsHal12OrLater:Z

.field private final mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V
    .locals 1
    .param p1, "wifiAwareStateManager"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 57
    invoke-direct {p0}, Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mIsHal12OrLater:Z

    .line 77
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mCallbackCounter:Landroid/util/SparseIntArray;

    .line 58
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 59
    return-void
.end method

.method private convertArrayListToNativeByteArray(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 559
    .local p1, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-nez p1, :cond_0

    .line 560
    const/4 v0, 0x0

    return-object v0

    .line 563
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 564
    .local v0, "to":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 565
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 564
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private incrementCbCount(I)V
    .locals 2
    .param p1, "callbackId"    # I

    .line 80
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mCallbackCounter:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mCallbackCounter:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    return-void
.end method

.method private static statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;

    .line 571
    if-nez p0, :cond_0

    .line 572
    const-string v0, "status=null"

    return-object v0

    .line 574
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiNanStatus;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 544
    const-string v0, "WifiAwareNativeCallback:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCallbackCounter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mCallbackCounter:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public eventClusterEvent(Landroid/hardware/wifi/V1_0/NanClusterEventInd;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/wifi/V1_0/NanClusterEventInd;

    .line 353
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventClusterEvent: eventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->eventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->addr:[B

    .line 355
    invoke-static {v2}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->incrementCbCount(I)V

    .line 359
    iget v1, p1, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->eventType:I

    if-nez v1, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v1, p1, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->addr:[B

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onInterfaceAddressChangeNotification([B)V

    goto :goto_0

    .line 361
    :cond_1
    iget v1, p1, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->eventType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 362
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->addr:[B

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onClusterChangeNotification(I[B)V

    goto :goto_0

    .line 364
    :cond_2
    iget v0, p1, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 365
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v1, p1, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->addr:[B

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onClusterChangeNotification(I[B)V

    goto :goto_0

    .line 368
    :cond_3
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventClusterEvent: invalid eventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->eventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_0
    return-void
.end method

.method public eventDataPathConfirm(Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;

    .line 481
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 482
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataPathConfirm: ndpInstanceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->ndpInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", peerNdiMacAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->peerNdiMacAddr:[B

    .line 483
    invoke-static {v2}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dataPathSetupSuccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->dataPathSetupSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->status:Landroid/hardware/wifi/V1_0/WifiNanStatus;

    iget v2, v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mIsHal12OrLater:Z

    if-eqz v0, :cond_1

    .line 488
    const-string v0, "WifiAwareNativeCallback"

    const-string v1, "eventDataPathConfirm should not be called by a >=1.2 HAL!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_1
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->incrementCbCount(I)V

    .line 492
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v2, p1, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->ndpInstanceId:I

    iget-object v3, p1, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->peerNdiMacAddr:[B

    iget-boolean v4, p1, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->dataPathSetupSuccess:Z

    iget-object v0, p1, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->status:Landroid/hardware/wifi/V1_0/WifiNanStatus;

    iget v5, v0, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    iget-object v0, p1, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->appInfo:Ljava/util/ArrayList;

    .line 494
    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->convertArrayListToNativeByteArray(Ljava/util/ArrayList;)[B

    move-result-object v6

    const/4 v7, 0x0

    .line 492
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onDataPathConfirmNotification(I[BZI[BLjava/util/List;)V

    .line 495
    return-void
.end method

.method public eventDataPathConfirm_1_2(Landroid/hardware/wifi/V1_2/NanDataPathConfirmInd;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/wifi/V1_2/NanDataPathConfirmInd;

    .line 499
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 500
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventDataPathConfirm_1_2: ndpInstanceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;

    iget v2, v2, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->ndpInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", peerNdiMacAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;

    iget-object v2, v2, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->peerNdiMacAddr:[B

    .line 502
    invoke-static {v2}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    .line 501
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dataPathSetupSuccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;

    iget-boolean v2, v2, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->dataPathSetupSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;

    iget-object v2, v2, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->status:Landroid/hardware/wifi/V1_0/WifiNanStatus;

    iget v2, v2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mIsHal12OrLater:Z

    if-nez v0, :cond_1

    .line 506
    const-string v0, "WifiAwareNativeCallback"

    const-string v1, "eventDataPathConfirm_1_2 should not be called by a <1.2 HAL!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-void

    .line 509
    :cond_1
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->incrementCbCount(I)V

    .line 511
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v0, p1, Landroid/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;

    iget v2, v0, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->ndpInstanceId:I

    iget-object v0, p1, Landroid/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->peerNdiMacAddr:[B

    iget-object v0, p1, Landroid/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;

    iget-boolean v4, v0, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->dataPathSetupSuccess:Z

    iget-object v0, p1, Landroid/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;

    iget-object v0, v0, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->status:Landroid/hardware/wifi/V1_0/WifiNanStatus;

    iget v5, v0, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    iget-object v0, p1, Landroid/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;

    iget-object v0, v0, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->appInfo:Ljava/util/ArrayList;

    .line 513
    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->convertArrayListToNativeByteArray(Ljava/util/ArrayList;)[B

    move-result-object v6

    iget-object v7, p1, Landroid/hardware/wifi/V1_2/NanDataPathConfirmInd;->channelInfo:Ljava/util/ArrayList;

    .line 511
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onDataPathConfirmNotification(I[BZI[BLjava/util/List;)V

    .line 515
    return-void
.end method

.method public eventDataPathRequest(Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;

    .line 467
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 468
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventDataPathRequest: discoverySessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p1, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->discoverySessionId:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", peerDiscMacAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->peerDiscMacAddr:[B

    .line 470
    invoke-static {v2}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    .line 469
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ndpInstanceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->ndpInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->incrementCbCount(I)V

    .line 475
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-byte v1, p1, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->discoverySessionId:B

    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->peerDiscMacAddr:[B

    iget v3, p1, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->ndpInstanceId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onDataPathRequestNotification(I[BI)V

    .line 477
    return-void
.end method

.method public eventDataPathScheduleUpdate(Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;

    .line 519
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 520
    const-string v0, "WifiAwareNativeCallback"

    const-string v1, "eventDataPathScheduleUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mIsHal12OrLater:Z

    if-nez v0, :cond_1

    .line 523
    const-string v0, "WifiAwareNativeCallback"

    const-string v1, "eventDataPathScheduleUpdate should not be called by a <1.2 HAL!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void

    .line 526
    :cond_1
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->incrementCbCount(I)V

    .line 528
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v1, p1, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    iget-object v2, p1, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onDataPathScheduleUpdateNotification([BLjava/util/ArrayList;Ljava/util/List;)V

    .line 530
    return-void
.end method

.method public eventDataPathTerminated(I)V
    .locals 3
    .param p1, "ndpInstanceId"    # I

    .line 534
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventDataPathTerminated: ndpInstanceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->incrementCbCount(I)V

    .line 537
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onDataPathEndNotification(I)V

    .line 538
    return-void
.end method

.method public eventDisabled(Landroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;

    .line 374
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventDisabled: status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->incrementCbCount(I)V

    .line 377
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p1, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onAwareDownNotification(I)V

    .line 378
    return-void
.end method

.method public eventFollowupReceived(Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;

    .line 438
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_1

    .line 439
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventFollowupReceived: discoverySessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p1, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->discoverySessionId:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", peerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->peerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->addr:[B

    .line 441
    invoke-static {v2}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    .line 440
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", serviceSpecificInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 442
    invoke-direct {p0, v2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->convertArrayListToNativeByteArray(Ljava/util/ArrayList;)[B

    move-result-object v2

    .line 441
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ssi.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_1
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->incrementCbCount(I)V

    .line 447
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-byte v1, p1, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->discoverySessionId:B

    iget v2, p1, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->peerId:I

    iget-object v3, p1, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->addr:[B

    iget-object v4, p1, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 448
    invoke-direct {p0, v4}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->convertArrayListToNativeByteArray(Ljava/util/ArrayList;)[B

    move-result-object v4

    .line 447
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageReceivedNotification(II[B[B)V

    .line 449
    return-void
.end method

.method public eventMatch(Landroid/hardware/wifi/V1_0/NanMatchInd;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/wifi/V1_0/NanMatchInd;

    .line 404
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_2

    .line 405
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventMatch: discoverySessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", peerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    .line 406
    invoke-static {v2}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", serviceSpecificInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 408
    invoke-direct {p0, v2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->convertArrayListToNativeByteArray(Ljava/util/ArrayList;)[B

    move-result-object v2

    .line 407
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ssi.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", matchFilter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    .line 411
    invoke-direct {p0, v2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->convertArrayListToNativeByteArray(Ljava/util/ArrayList;)[B

    move-result-object v2

    .line 410
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mf.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rangingIndicationType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rangingMeasurementInCm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_2
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->incrementCbCount(I)V

    .line 419
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-byte v2, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    iget v3, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    iget-object v4, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    iget-object v0, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 420
    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->convertArrayListToNativeByteArray(Ljava/util/ArrayList;)[B

    move-result-object v5

    iget-object v0, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    .line 421
    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->convertArrayListToNativeByteArray(Ljava/util/ArrayList;)[B

    move-result-object v6

    iget v7, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    iget v0, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    mul-int/lit8 v8, v0, 0xa

    .line 419
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMatchNotification(II[B[B[BII)V

    .line 423
    return-void
.end method

.method public eventMatchExpired(BI)V
    .locals 3
    .param p1, "discoverySessionId"    # B
    .param p2, "peerId"    # I

    .line 427
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 428
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventMatchExpired: discoverySessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", peerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->incrementCbCount(I)V

    .line 434
    return-void
.end method

.method public eventPublishTerminated(BLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3
    .param p1, "sessionId"    # B
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;

    .line 382
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 383
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventPublishTerminated: sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-static {p2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->incrementCbCount(I)V

    .line 388
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionTerminatedNotification(IIZ)V

    .line 389
    return-void
.end method

.method public eventSubscribeTerminated(BLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3
    .param p1, "sessionId"    # B
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;

    .line 393
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 394
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventSubscribeTerminated: sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-static {p2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->incrementCbCount(I)V

    .line 399
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionTerminatedNotification(IIZ)V

    .line 400
    return-void
.end method

.method public eventTransmitFollowup(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3
    .param p1, "id"    # S
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;

    .line 453
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 454
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventTransmitFollowup: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->incrementCbCount(I)V

    .line 458
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageSendSuccessNotification(S)V

    goto :goto_0

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageSendFailNotification(SI)V

    .line 463
    :goto_0
    return-void
.end method

.method public notifyCapabilitiesResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;Landroid/hardware/wifi/V1_0/NanCapabilities;)V
    .locals 3
    .param p1, "id"    # S
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;
    .param p3, "capabilities"    # Landroid/hardware/wifi/V1_0/NanCapabilities;

    .line 148
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCapabilitiesResponse: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Lcom/android/server/wifi/aware/Capabilities;

    invoke-direct {v0}, Lcom/android/server/wifi/aware/Capabilities;-><init>()V

    .line 155
    .local v0, "frameworkCapabilities":Lcom/android/server/wifi/aware/Capabilities;
    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxConcurrentClusters:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxConcurrentAwareClusters:I

    .line 156
    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxPublishes:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxPublishes:I

    .line 157
    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxSubscribes:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxSubscribes:I

    .line 158
    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxServiceNameLen:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxServiceNameLen:I

    .line 159
    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxMatchFilterLen:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxMatchFilterLen:I

    .line 160
    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxTotalMatchFilterLen:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxTotalMatchFilterLen:I

    .line 161
    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxServiceSpecificInfoLen:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxServiceSpecificInfoLen:I

    .line 163
    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxExtendedServiceSpecificInfoLen:I

    .line 165
    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxNdiInterfaces:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxNdiInterfaces:I

    .line 166
    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxNdpSessions:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxNdpSessions:I

    .line 167
    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxAppInfoLen:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxAppInfoLen:I

    .line 168
    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxQueuedTransmitMessages:I

    .line 170
    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxSubscribeInterfaceAddresses:I

    .line 172
    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->supportedCipherSuites:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->supportedCipherSuites:I

    .line 174
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onCapabilitiesUpdateResponse(SLcom/android/server/wifi/aware/Capabilities;)V

    .line 175
    .end local v0    # "frameworkCapabilities":Lcom/android/server/wifi/aware/Capabilities;
    goto :goto_0

    .line 176
    :cond_1
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCapabilitiesResponse: error code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    return-void
.end method

.method public notifyConfigResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3
    .param p1, "id"    # S
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;

    .line 199
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyConfigResponse: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onConfigSuccessResponse(S)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onConfigFailedResponse(SI)V

    .line 206
    :goto_0
    return-void
.end method

.method public notifyCreateDataInterfaceResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3
    .param p1, "id"    # S
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;

    .line 294
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCreateDataInterfaceResponse: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {p2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onCreateDataPathInterfaceResponse(SZI)V

    .line 301
    return-void
.end method

.method public notifyDeleteDataInterfaceResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3
    .param p1, "id"    # S
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;

    .line 305
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDeleteDataInterfaceResponse: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-static {p2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onDeleteDataPathInterfaceResponse(SZI)V

    .line 312
    return-void
.end method

.method public notifyDisableResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3
    .param p1, "id"    # S
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;

    .line 210
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDisableResponse: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-eqz v0, :cond_1

    .line 215
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDisableResponse: failure - code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onDisableResponse(SI)V

    .line 219
    return-void
.end method

.method public notifyEnableResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 4
    .param p1, "id"    # S
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;

    .line 183
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyEnableResponse: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 186
    const-string v0, "WifiAwareNativeCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyEnableResponse: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", already enabled!?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-eqz v0, :cond_3

    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onConfigFailedResponse(SI)V

    goto :goto_1

    .line 191
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onConfigSuccessResponse(S)V

    .line 195
    :goto_1
    return-void
.end method

.method public notifyInitiateDataPathResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;I)V
    .locals 3
    .param p1, "id"    # S
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;
    .param p3, "ndpInstanceId"    # I

    .line 317
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyInitiateDataPathResponse: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-static {p2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ndpInstanceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onInitiateDataPathResponseSuccess(SI)V

    goto :goto_0

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onInitiateDataPathResponseFail(SI)V

    .line 327
    :goto_0
    return-void
.end method

.method public notifyRespondToDataPathIndicationResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3
    .param p1, "id"    # S
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;

    .line 331
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 332
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRespondToDataPathIndicationResponse: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-static {p2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onRespondToDataPathSetupRequestResponse(SZI)V

    .line 338
    return-void
.end method

.method public notifyStartPublishResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;B)V
    .locals 3
    .param p1, "id"    # S
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;
    .param p3, "publishId"    # B

    .line 223
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStartPublishResponse: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", publishId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionConfigSuccessResponse(SZB)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionConfigFailResponse(SZI)V

    .line 233
    :goto_0
    return-void
.end method

.method public notifyStartSubscribeResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;B)V
    .locals 3
    .param p1, "id"    # S
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;
    .param p3, "subscribeId"    # B

    .line 251
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStartSubscribeResponse: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", subscribeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionConfigSuccessResponse(SZB)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionConfigFailResponse(SZI)V

    .line 261
    :goto_0
    return-void
.end method

.method public notifyStopPublishResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3
    .param p1, "id"    # S
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;

    .line 237
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStopPublishResponse: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStopPublishResponse: failure - code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return-void
.end method

.method public notifyStopSubscribeResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3
    .param p1, "id"    # S
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;

    .line 265
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStopSubscribeResponse: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-static {p2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 273
    :cond_1
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStopSubscribeResponse: failure - code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :goto_0
    return-void
.end method

.method public notifyTerminateDataPathResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3
    .param p1, "id"    # S
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;

    .line 342
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 343
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyTerminateDataPathResponse: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-static {p2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onEndDataPathResponse(SZI)V

    .line 349
    return-void
.end method

.method public notifyTransmitFollowupResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3
    .param p1, "id"    # S
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiNanStatus;

    .line 280
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    if-eqz v0, :cond_0

    .line 281
    const-string v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyTransmitFollowupResponse: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {p2}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageSendQueuedSuccessResponse(S)V

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageSendQueuedFailResponse(SI)V

    .line 290
    :goto_0
    return-void
.end method

.method public onCommand(Landroid/os/ShellCommand;)I
    .locals 11
    .param p1, "parentShell"    # Landroid/os/ShellCommand;

    .line 90
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 91
    .local v0, "pwe":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 93
    .local v1, "pwo":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "subCmd":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const v6, -0x5ea4c008

    if-eq v3, v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "get_cb_count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    if-eqz v3, :cond_2

    .line 125
    const-string v3, "Unknown \'wifiaware native_cb <cmd>\'"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    return v5

    .line 97
    :cond_2
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "option":Ljava/lang/String;
    const/4 v6, 0x0

    .line 100
    .local v6, "reset":Z
    if-eqz v3, :cond_4

    .line 101
    const-string v7, "--reset"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 102
    const/4 v6, 0x1

    goto :goto_2

    .line 104
    :cond_3
    const-string v4, "Unknown option to \'get_cb_count\'"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    return v5

    .line 109
    :cond_4
    :goto_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .local v5, "j":Lorg/json/JSONObject;
    move v7, v4

    .local v7, "i":I
    :goto_3
    :try_start_0
    iget-object v8, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mCallbackCounter:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 112
    iget-object v8, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mCallbackCounter:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mCallbackCounter:Landroid/util/SparseIntArray;

    .line 113
    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .line 112
    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 117
    .end local v7    # "i":I
    :cond_5
    goto :goto_4

    .line 115
    :catch_0
    move-exception v7

    .line 116
    .local v7, "e":Lorg/json/JSONException;
    const-string v8, "WifiAwareNativeCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCommand: get_cb_count e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v7    # "e":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    if-eqz v6, :cond_6

    .line 120
    iget-object v7, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mCallbackCounter:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    .line 122
    :cond_6
    return v4
.end method

.method public onHelp(Ljava/lang/String;Landroid/os/ShellCommand;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parentShell"    # Landroid/os/ShellCommand;

    .line 138
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 140
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    const-string v1, "    get_cb_count [--reset]: gets the number of callbacks (and optionally reset count)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public onReset()V
    .locals 0

    .line 134
    return-void
.end method
