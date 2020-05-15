.class Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;
.super Landroid/telephony/NetworkService$NetworkServiceProvider;
.source "CellularNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CellularNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellularNetworkServiceProvider"
.end annotation


# instance fields
.field private final mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/Message;",
            "Landroid/telephony/NetworkServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLooper:Landroid/os/Looper;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field final synthetic this$0:Lcom/android/internal/telephony/CellularNetworkService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CellularNetworkService;I)V
    .locals 3
    .param p2, "slotId"    # I

    .line 70
    iput-object p1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->this$0:Lcom/android/internal/telephony/CellularNetworkService;

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/telephony/NetworkService$NetworkServiceProvider;-><init>(Landroid/telephony/NetworkService;I)V

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getSlotId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 75
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/android/internal/telephony/CellularNetworkService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mLooper:Landroid/os/Looper;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;

    iget-object v1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;-><init>(Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;Landroid/os/Looper;Lcom/android/internal/telephony/CellularNetworkService;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    .line 123
    iget-object p1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;

    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;Ljava/lang/Object;I)Landroid/telephony/NetworkRegistrationState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegistrationStateFromResult(Ljava/lang/Object;I)Landroid/telephony/NetworkRegistrationState;

    move-result-object v0

    return-object v0
.end method

.method private convertHalCellIdentityToCellIdentity(Landroid/hardware/radio/V1_0/CellIdentity;)Landroid/telephony/CellIdentity;
    .locals 13
    .param p1, "cellIdentity"    # Landroid/hardware/radio/V1_0/CellIdentity;

    .line 301
    if-nez p1, :cond_0

    .line 302
    const/4 v0, 0x0

    return-object v0

    .line 305
    :cond_0
    const/4 v0, 0x0

    .line 306
    .local v0, "result":Landroid/telephony/CellIdentity;
    iget v1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellInfoType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 328
    :pswitch_0
    iget-object v1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 329
    iget-object v1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    .line 330
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    .line 331
    .local v1, "cellIdentityTdscdma":Landroid/hardware/radio/V1_0/CellIdentityTdscdma;
    new-instance v8, Landroid/telephony/CellIdentityTdscdma;

    iget-object v3, v1, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->mcc:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->mnc:Ljava/lang/String;

    iget v5, v1, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->lac:I

    iget v6, v1, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cid:I

    iget v7, v1, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cpid:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/telephony/CellIdentityTdscdma;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    move-object v0, v8

    .line 334
    .end local v1    # "cellIdentityTdscdma":Landroid/hardware/radio/V1_0/CellIdentityTdscdma;
    goto/16 :goto_0

    .line 318
    :pswitch_1
    iget-object v1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 319
    iget-object v1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    .line 320
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    .line 321
    .local v1, "cellIdentityWcdma":Landroid/hardware/radio/V1_0/CellIdentityWcdma;
    new-instance v11, Landroid/telephony/CellIdentityWcdma;

    iget v3, v1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    iget v4, v1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    iget v5, v1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->psc:I

    iget v6, v1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->uarfcn:I

    iget-object v7, v1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    iget-object v8, v1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v11

    .line 324
    .end local v1    # "cellIdentityWcdma":Landroid/hardware/radio/V1_0/CellIdentityWcdma;
    goto/16 :goto_0

    .line 338
    :pswitch_2
    iget-object v1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 339
    iget-object v1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    .line 340
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/CellIdentityLte;

    .line 342
    .local v1, "cellIdentityLte":Landroid/hardware/radio/V1_0/CellIdentityLte;
    new-instance v12, Landroid/telephony/CellIdentityLte;

    iget v3, v1, Landroid/hardware/radio/V1_0/CellIdentityLte;->ci:I

    iget v4, v1, Landroid/hardware/radio/V1_0/CellIdentityLte;->pci:I

    iget v5, v1, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    iget v6, v1, Landroid/hardware/radio/V1_0/CellIdentityLte;->earfcn:I

    const v7, 0x7fffffff

    iget-object v8, v1, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    iget-object v9, v1, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Landroid/telephony/CellIdentityLte;-><init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    .line 345
    .end local v1    # "cellIdentityLte":Landroid/hardware/radio/V1_0/CellIdentityLte;
    goto :goto_0

    .line 349
    :pswitch_3
    iget-object v1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 350
    iget-object v1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    .line 351
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/CellIdentityCdma;

    .line 353
    .local v1, "cellIdentityCdma":Landroid/hardware/radio/V1_0/CellIdentityCdma;
    new-instance v8, Landroid/telephony/CellIdentityCdma;

    iget v3, v1, Landroid/hardware/radio/V1_0/CellIdentityCdma;->networkId:I

    iget v4, v1, Landroid/hardware/radio/V1_0/CellIdentityCdma;->systemId:I

    iget v5, v1, Landroid/hardware/radio/V1_0/CellIdentityCdma;->baseStationId:I

    iget v6, v1, Landroid/hardware/radio/V1_0/CellIdentityCdma;->longitude:I

    iget v7, v1, Landroid/hardware/radio/V1_0/CellIdentityCdma;->latitude:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/telephony/CellIdentityCdma;-><init>(IIIII)V

    move-object v0, v8

    .line 356
    .end local v1    # "cellIdentityCdma":Landroid/hardware/radio/V1_0/CellIdentityCdma;
    goto :goto_0

    .line 308
    :pswitch_4
    iget-object v1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 309
    iget-object v1, p1, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    .line 310
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;

    .line 311
    .local v1, "cellIdentityGsm":Landroid/hardware/radio/V1_0/CellIdentityGsm;
    new-instance v11, Landroid/telephony/CellIdentityGsm;

    iget v3, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    iget v4, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->cid:I

    iget v5, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->arfcn:I

    iget-byte v6, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->bsic:B

    iget-object v7, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    iget-object v8, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v11

    .line 314
    .end local v1    # "cellIdentityGsm":Landroid/hardware/radio/V1_0/CellIdentityGsm;
    nop

    .line 364
    :cond_1
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertHalCellIdentityToCellIdentity(Landroid/hardware/radio/V1_2/CellIdentity;)Landroid/telephony/CellIdentity;
    .locals 13
    .param p1, "cellIdentity"    # Landroid/hardware/radio/V1_2/CellIdentity;

    .line 369
    if-nez p1, :cond_0

    .line 370
    const/4 v0, 0x0

    return-object v0

    .line 373
    :cond_0
    const/4 v0, 0x0

    .line 374
    .local v0, "result":Landroid/telephony/CellIdentity;
    iget v1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellInfoType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 410
    :pswitch_0
    iget-object v1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 411
    iget-object v1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    .line 412
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    .line 414
    .local v1, "cellIdentityTdscdma":Landroid/hardware/radio/V1_2/CellIdentityTdscdma;
    new-instance v10, Landroid/telephony/CellIdentityTdscdma;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    iget-object v3, v2, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->mcc:Ljava/lang/String;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->mnc:Ljava/lang/String;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    iget v5, v2, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->lac:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    iget v6, v2, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cid:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    iget v7, v2, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cpid:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, v2, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, v2, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/telephony/CellIdentityTdscdma;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .line 422
    .end local v1    # "cellIdentityTdscdma":Landroid/hardware/radio/V1_2/CellIdentityTdscdma;
    goto/16 :goto_0

    .line 393
    :pswitch_1
    iget-object v1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 394
    iget-object v1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    .line 395
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    .line 397
    .local v1, "cellIdentityWcdma":Landroid/hardware/radio/V1_2/CellIdentityWcdma;
    new-instance v11, Landroid/telephony/CellIdentityWcdma;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v3, v2, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v4, v2, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v5, v2, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->psc:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v6, v2, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->uarfcn:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v7, v2, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v8, v2, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, v2, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v10, v2, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v11

    .line 406
    .end local v1    # "cellIdentityWcdma":Landroid/hardware/radio/V1_2/CellIdentityWcdma;
    goto/16 :goto_0

    .line 426
    :pswitch_2
    iget-object v1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 427
    iget-object v1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    .line 428
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_2/CellIdentityLte;

    .line 430
    .local v1, "cellIdentityLte":Landroid/hardware/radio/V1_2/CellIdentityLte;
    new-instance v12, Landroid/telephony/CellIdentityLte;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v3, v2, Landroid/hardware/radio/V1_0/CellIdentityLte;->ci:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v4, v2, Landroid/hardware/radio/V1_0/CellIdentityLte;->pci:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v5, v2, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v6, v2, Landroid/hardware/radio/V1_0/CellIdentityLte;->earfcn:I

    iget v7, v1, Landroid/hardware/radio/V1_2/CellIdentityLte;->bandwidth:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v8, v2, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v9, v2, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v10, v2, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v11, v2, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Landroid/telephony/CellIdentityLte;-><init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    .line 440
    .end local v1    # "cellIdentityLte":Landroid/hardware/radio/V1_2/CellIdentityLte;
    goto :goto_0

    .line 444
    :pswitch_3
    iget-object v1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 445
    iget-object v1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    .line 446
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_2/CellIdentityCdma;

    .line 448
    .local v1, "cellIdentityCdma":Landroid/hardware/radio/V1_2/CellIdentityCdma;
    new-instance v10, Landroid/telephony/CellIdentityCdma;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityCdma;->base:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v3, v2, Landroid/hardware/radio/V1_0/CellIdentityCdma;->networkId:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityCdma;->base:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v4, v2, Landroid/hardware/radio/V1_0/CellIdentityCdma;->systemId:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityCdma;->base:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v5, v2, Landroid/hardware/radio/V1_0/CellIdentityCdma;->baseStationId:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityCdma;->base:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v6, v2, Landroid/hardware/radio/V1_0/CellIdentityCdma;->longitude:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityCdma;->base:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v7, v2, Landroid/hardware/radio/V1_0/CellIdentityCdma;->latitude:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityCdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, v2, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityCdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, v2, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/telephony/CellIdentityCdma;-><init>(IIIIILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .line 456
    .end local v1    # "cellIdentityCdma":Landroid/hardware/radio/V1_2/CellIdentityCdma;
    goto :goto_0

    .line 376
    :pswitch_4
    iget-object v1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 377
    iget-object v1, p1, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    .line 378
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_2/CellIdentityGsm;

    .line 380
    .local v1, "cellIdentityGsm":Landroid/hardware/radio/V1_2/CellIdentityGsm;
    new-instance v11, Landroid/telephony/CellIdentityGsm;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v3, v2, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v4, v2, Landroid/hardware/radio/V1_0/CellIdentityGsm;->cid:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v5, v2, Landroid/hardware/radio/V1_0/CellIdentityGsm;->arfcn:I

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-byte v6, v2, Landroid/hardware/radio/V1_0/CellIdentityGsm;->bsic:B

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v7, v2, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v8, v2, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, v2, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v10, v2, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v11

    .line 389
    .end local v1    # "cellIdentityGsm":Landroid/hardware/radio/V1_2/CellIdentityGsm;
    nop

    .line 464
    :cond_1
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createRegistrationStateFromDataRegState(Ljava/lang/Object;)Landroid/telephony/NetworkRegistrationState;
    .locals 23
    .param p1, "result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    .line 261
    move-object/from16 v1, p1

    const/4 v12, 0x1

    .line 262
    .local v12, "transportType":I
    const/4 v13, 0x2

    .line 264
    .local v13, "domain":I
    instance-of v2, v1, Landroid/hardware/radio/V1_0/DataRegStateResult;

    if-eqz v2, :cond_0

    .line 265
    move-object v14, v1

    check-cast v14, Landroid/hardware/radio/V1_0/DataRegStateResult;

    .line 267
    .local v14, "dataRegState":Landroid/hardware/radio/V1_0/DataRegStateResult;
    iget v2, v14, Landroid/hardware/radio/V1_0/DataRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v15

    .line 268
    .local v15, "regState":I
    iget v2, v14, Landroid/hardware/radio/V1_0/DataRegStateResult;->rat:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAccessNetworkTechnologyFromRat(I)I

    move-result v16

    .line 269
    .local v16, "accessNetworkTechnology":I
    iget v11, v14, Landroid/hardware/radio/V1_0/DataRegStateResult;->reasonDataDenied:I

    .line 270
    .local v11, "reasonForDenial":I
    iget v2, v14, Landroid/hardware/radio/V1_0/DataRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v10

    .line 271
    .local v10, "emergencyOnly":Z
    iget v9, v14, Landroid/hardware/radio/V1_0/DataRegStateResult;->maxDataCalls:I

    .line 272
    .local v9, "maxDataCalls":I
    invoke-direct {v0, v15, v13, v10}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAvailableServices(IIZ)[I

    move-result-object v17

    .line 273
    .local v17, "availableServices":[I
    iget-object v2, v14, Landroid/hardware/radio/V1_0/DataRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_0/CellIdentity;

    .line 274
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalCellIdentityToCellIdentity(Landroid/hardware/radio/V1_0/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object v18

    .line 276
    .local v18, "cellIdentity":Landroid/telephony/CellIdentity;
    new-instance v19, Landroid/telephony/NetworkRegistrationState;

    move-object/from16 v2, v19

    move v3, v12

    move v4, v13

    move v5, v15

    move/from16 v6, v16

    move v7, v11

    move v8, v10

    move/from16 v20, v9

    move-object/from16 v9, v17

    .end local v9    # "maxDataCalls":I
    .local v20, "maxDataCalls":I
    move/from16 v21, v10

    move-object/from16 v10, v18

    .end local v10    # "emergencyOnly":Z
    .local v21, "emergencyOnly":Z
    move/from16 v22, v11

    move/from16 v11, v20

    .end local v11    # "reasonForDenial":I
    .local v22, "reasonForDenial":I
    invoke-direct/range {v2 .. v11}, Landroid/telephony/NetworkRegistrationState;-><init>(IIIIIZ[ILandroid/telephony/CellIdentity;I)V

    return-object v19

    .line 279
    .end local v14    # "dataRegState":Landroid/hardware/radio/V1_0/DataRegStateResult;
    .end local v15    # "regState":I
    .end local v16    # "accessNetworkTechnology":I
    .end local v17    # "availableServices":[I
    .end local v18    # "cellIdentity":Landroid/telephony/CellIdentity;
    .end local v20    # "maxDataCalls":I
    .end local v21    # "emergencyOnly":Z
    .end local v22    # "reasonForDenial":I
    :cond_0
    instance-of v2, v1, Landroid/hardware/radio/V1_2/DataRegStateResult;

    if-eqz v2, :cond_1

    .line 280
    move-object v14, v1

    check-cast v14, Landroid/hardware/radio/V1_2/DataRegStateResult;

    .line 282
    .local v14, "dataRegState":Landroid/hardware/radio/V1_2/DataRegStateResult;
    iget v2, v14, Landroid/hardware/radio/V1_2/DataRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v15

    .line 283
    .restart local v15    # "regState":I
    iget v2, v14, Landroid/hardware/radio/V1_2/DataRegStateResult;->rat:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAccessNetworkTechnologyFromRat(I)I

    move-result v16

    .line 284
    .restart local v16    # "accessNetworkTechnology":I
    iget v11, v14, Landroid/hardware/radio/V1_2/DataRegStateResult;->reasonDataDenied:I

    .line 285
    .restart local v11    # "reasonForDenial":I
    iget v2, v14, Landroid/hardware/radio/V1_2/DataRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v10

    .line 286
    .restart local v10    # "emergencyOnly":Z
    iget v9, v14, Landroid/hardware/radio/V1_2/DataRegStateResult;->maxDataCalls:I

    .line 287
    .restart local v9    # "maxDataCalls":I
    invoke-direct {v0, v15, v13, v10}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAvailableServices(IIZ)[I

    move-result-object v17

    .line 288
    .restart local v17    # "availableServices":[I
    iget-object v2, v14, Landroid/hardware/radio/V1_2/DataRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_2/CellIdentity;

    .line 289
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalCellIdentityToCellIdentity(Landroid/hardware/radio/V1_2/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object v18

    .line 291
    .restart local v18    # "cellIdentity":Landroid/telephony/CellIdentity;
    new-instance v19, Landroid/telephony/NetworkRegistrationState;

    move-object/from16 v2, v19

    move v3, v12

    move v4, v13

    move v5, v15

    move/from16 v6, v16

    move v7, v11

    move v8, v10

    move/from16 v20, v9

    move-object/from16 v9, v17

    .end local v9    # "maxDataCalls":I
    .restart local v20    # "maxDataCalls":I
    move/from16 v21, v10

    move-object/from16 v10, v18

    .end local v10    # "emergencyOnly":Z
    .restart local v21    # "emergencyOnly":Z
    move/from16 v22, v11

    move/from16 v11, v20

    .end local v11    # "reasonForDenial":I
    .restart local v22    # "reasonForDenial":I
    invoke-direct/range {v2 .. v11}, Landroid/telephony/NetworkRegistrationState;-><init>(IIIIIZ[ILandroid/telephony/CellIdentity;I)V

    return-object v19

    .line 296
    .end local v14    # "dataRegState":Landroid/hardware/radio/V1_2/DataRegStateResult;
    .end local v15    # "regState":I
    .end local v16    # "accessNetworkTechnology":I
    .end local v17    # "availableServices":[I
    .end local v18    # "cellIdentity":Landroid/telephony/CellIdentity;
    .end local v20    # "maxDataCalls":I
    .end local v21    # "emergencyOnly":Z
    .end local v22    # "reasonForDenial":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private createRegistrationStateFromVoiceRegState(Ljava/lang/Object;)Landroid/telephony/NetworkRegistrationState;
    .locals 29
    .param p1, "result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    .line 212
    move-object/from16 v1, p1

    const/4 v15, 0x1

    .line 213
    .local v15, "transportType":I
    const/4 v14, 0x1

    .line 215
    .local v14, "domain":I
    instance-of v2, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    if-eqz v2, :cond_0

    .line 216
    move-object v13, v1

    check-cast v13, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    .line 218
    .local v13, "voiceRegState":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    iget v2, v13, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v12

    .line 219
    .local v12, "regState":I
    iget v2, v13, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->rat:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAccessNetworkTechnologyFromRat(I)I

    move-result v16

    .line 220
    .local v16, "accessNetworkTechnology":I
    iget v11, v13, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->reasonForDenial:I

    .line 221
    .local v11, "reasonForDenial":I
    iget v2, v13, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v10

    .line 222
    .local v10, "emergencyOnly":Z
    iget-boolean v9, v13, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cssSupported:Z

    .line 223
    .local v9, "cssSupported":Z
    iget v8, v13, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->roamingIndicator:I

    .line 224
    .local v8, "roamingIndicator":I
    iget v7, v13, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->systemIsInPrl:I

    .line 225
    .local v7, "systemIsInPrl":I
    iget v6, v13, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->defaultRoamingIndicator:I

    .line 226
    .local v6, "defaultRoamingIndicator":I
    invoke-direct {v0, v12, v14, v10}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAvailableServices(IIZ)[I

    move-result-object v17

    .line 228
    .local v17, "availableServices":[I
    iget-object v2, v13, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_0/CellIdentity;

    .line 229
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalCellIdentityToCellIdentity(Landroid/hardware/radio/V1_0/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object v18

    .line 231
    .local v18, "cellIdentity":Landroid/telephony/CellIdentity;
    new-instance v19, Landroid/telephony/NetworkRegistrationState;

    move-object/from16 v2, v19

    move v3, v15

    move v4, v14

    move v5, v12

    move/from16 v20, v6

    move/from16 v6, v16

    .end local v6    # "defaultRoamingIndicator":I
    .local v20, "defaultRoamingIndicator":I
    move/from16 v21, v7

    move v7, v11

    .end local v7    # "systemIsInPrl":I
    .local v21, "systemIsInPrl":I
    move/from16 v22, v8

    move v8, v10

    .end local v8    # "roamingIndicator":I
    .local v22, "roamingIndicator":I
    move/from16 v23, v9

    move-object/from16 v9, v17

    .end local v9    # "cssSupported":Z
    .local v23, "cssSupported":Z
    move/from16 v24, v10

    move-object/from16 v10, v18

    .end local v10    # "emergencyOnly":Z
    .local v24, "emergencyOnly":Z
    move/from16 v25, v11

    move/from16 v11, v23

    .end local v11    # "reasonForDenial":I
    .local v25, "reasonForDenial":I
    move/from16 v26, v12

    move/from16 v12, v22

    .end local v12    # "regState":I
    .local v26, "regState":I
    move-object/from16 v27, v13

    move/from16 v13, v21

    .end local v13    # "voiceRegState":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    .local v27, "voiceRegState":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    move/from16 v28, v15

    move v15, v14

    move/from16 v14, v20

    .end local v14    # "domain":I
    .local v15, "domain":I
    .local v28, "transportType":I
    invoke-direct/range {v2 .. v14}, Landroid/telephony/NetworkRegistrationState;-><init>(IIIIIZ[ILandroid/telephony/CellIdentity;ZIII)V

    return-object v19

    .line 235
    .end local v16    # "accessNetworkTechnology":I
    .end local v17    # "availableServices":[I
    .end local v18    # "cellIdentity":Landroid/telephony/CellIdentity;
    .end local v20    # "defaultRoamingIndicator":I
    .end local v21    # "systemIsInPrl":I
    .end local v22    # "roamingIndicator":I
    .end local v23    # "cssSupported":Z
    .end local v24    # "emergencyOnly":Z
    .end local v25    # "reasonForDenial":I
    .end local v26    # "regState":I
    .end local v27    # "voiceRegState":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    .end local v28    # "transportType":I
    .restart local v14    # "domain":I
    .local v15, "transportType":I
    :cond_0
    move/from16 v28, v15

    move v15, v14

    .end local v14    # "domain":I
    .local v15, "domain":I
    .restart local v28    # "transportType":I
    instance-of v2, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    if-eqz v2, :cond_1

    .line 236
    move-object v14, v1

    check-cast v14, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    .line 238
    .local v14, "voiceRegState":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    iget v2, v14, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v13

    .line 239
    .local v13, "regState":I
    iget v2, v14, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->rat:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAccessNetworkTechnologyFromRat(I)I

    move-result v16

    .line 240
    .restart local v16    # "accessNetworkTechnology":I
    iget v12, v14, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->reasonForDenial:I

    .line 241
    .local v12, "reasonForDenial":I
    iget v2, v14, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v11

    .line 242
    .local v11, "emergencyOnly":Z
    iget-boolean v10, v14, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cssSupported:Z

    .line 243
    .local v10, "cssSupported":Z
    iget v9, v14, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->roamingIndicator:I

    .line 244
    .local v9, "roamingIndicator":I
    iget v8, v14, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->systemIsInPrl:I

    .line 245
    .local v8, "systemIsInPrl":I
    iget v7, v14, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->defaultRoamingIndicator:I

    .line 246
    .local v7, "defaultRoamingIndicator":I
    invoke-direct {v0, v13, v15, v11}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAvailableServices(IIZ)[I

    move-result-object v17

    .line 248
    .restart local v17    # "availableServices":[I
    iget-object v2, v14, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_2/CellIdentity;

    .line 249
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalCellIdentityToCellIdentity(Landroid/hardware/radio/V1_2/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object v18

    .line 251
    .restart local v18    # "cellIdentity":Landroid/telephony/CellIdentity;
    new-instance v19, Landroid/telephony/NetworkRegistrationState;

    move-object/from16 v2, v19

    move/from16 v3, v28

    move v4, v15

    move v5, v13

    move/from16 v6, v16

    move/from16 v20, v7

    move v7, v12

    .end local v7    # "defaultRoamingIndicator":I
    .restart local v20    # "defaultRoamingIndicator":I
    move/from16 v21, v8

    move v8, v11

    .end local v8    # "systemIsInPrl":I
    .restart local v21    # "systemIsInPrl":I
    move/from16 v22, v9

    move-object/from16 v9, v17

    .end local v9    # "roamingIndicator":I
    .restart local v22    # "roamingIndicator":I
    move/from16 v23, v10

    move-object/from16 v10, v18

    .end local v10    # "cssSupported":Z
    .restart local v23    # "cssSupported":Z
    move/from16 v24, v11

    move/from16 v11, v23

    .end local v11    # "emergencyOnly":Z
    .restart local v24    # "emergencyOnly":Z
    move/from16 v25, v12

    move/from16 v12, v22

    .end local v12    # "reasonForDenial":I
    .restart local v25    # "reasonForDenial":I
    move/from16 v26, v13

    move/from16 v13, v21

    .end local v13    # "regState":I
    .restart local v26    # "regState":I
    move-object/from16 v27, v14

    move/from16 v14, v20

    .end local v14    # "voiceRegState":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    .local v27, "voiceRegState":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    invoke-direct/range {v2 .. v14}, Landroid/telephony/NetworkRegistrationState;-><init>(IIIIIZ[ILandroid/telephony/CellIdentity;ZIII)V

    return-object v19

    .line 257
    .end local v16    # "accessNetworkTechnology":I
    .end local v17    # "availableServices":[I
    .end local v18    # "cellIdentity":Landroid/telephony/CellIdentity;
    .end local v20    # "defaultRoamingIndicator":I
    .end local v21    # "systemIsInPrl":I
    .end local v22    # "roamingIndicator":I
    .end local v23    # "cssSupported":Z
    .end local v24    # "emergencyOnly":Z
    .end local v25    # "reasonForDenial":I
    .end local v26    # "regState":I
    .end local v27    # "voiceRegState":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getAccessNetworkTechnologyFromRat(I)I
    .locals 1
    .param p1, "rilRat"    # I

    .line 193
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method private getAvailableServices(IIZ)[I
    .locals 4
    .param p1, "regState"    # I
    .param p2, "domain"    # I
    .param p3, "emergencyOnly"    # Z

    .line 169
    const/4 v0, 0x0

    .line 174
    .local v0, "availableServices":[I
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    .line 175
    new-array v3, v3, [I

    aput v1, v3, v2

    move-object v0, v3

    goto :goto_0

    .line 176
    :cond_0
    if-eq p1, v1, :cond_1

    if-ne p1, v3, :cond_3

    .line 178
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 179
    new-array v3, v3, [I

    aput v1, v3, v2

    move-object v0, v3

    goto :goto_0

    .line 180
    :cond_2
    if-ne p2, v3, :cond_3

    .line 181
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    move-object v0, v1

    .line 189
    :cond_3
    :goto_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x4
    .end array-data
.end method

.method private getRegStateFromHalRegState(I)I
    .locals 2
    .param p1, "halRegState"    # I

    .line 128
    const/16 v0, 0xa

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 146
    return v1

    .line 144
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 142
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 139
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 136
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 133
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 131
    :cond_0
    :pswitch_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getRegistrationStateFromResult(Ljava/lang/Object;I)Landroid/telephony/NetworkRegistrationState;
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "domain"    # I

    .line 197
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 198
    return-object v0

    .line 202
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 203
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->createRegistrationStateFromVoiceRegState(Ljava/lang/Object;)Landroid/telephony/NetworkRegistrationState;

    move-result-object v0

    return-object v0

    .line 204
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 205
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->createRegistrationStateFromDataRegState(Ljava/lang/Object;)Landroid/telephony/NetworkRegistrationState;

    move-result-object v0

    return-object v0

    .line 207
    :cond_2
    return-object v0
.end method

.method private isEmergencyOnly(I)Z
    .locals 1
    .param p1, "halRegState"    # I

    .line 151
    packed-switch p1, :pswitch_data_0

    .line 164
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 156
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getNetworkRegistrationState(ILandroid/telephony/NetworkServiceCallback;)V
    .locals 5
    .param p1, "domain"    # I
    .param p2, "callback"    # Landroid/telephony/NetworkServiceCallback;

    .line 470
    const/4 v0, 0x0

    .line 472
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 473
    iget-object v2, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 476
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 477
    iget-object v2, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 481
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->this$0:Lcom/android/internal/telephony/CellularNetworkService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkRegistrationState invalid domain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/CellularNetworkService;->access$200(Lcom/android/internal/telephony/CellularNetworkService;Ljava/lang/String;)V

    .line 482
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/telephony/NetworkServiceCallback;->onGetNetworkRegistrationStateComplete(ILandroid/telephony/NetworkRegistrationState;)V

    .line 485
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 489
    invoke-super {p0}, Landroid/telephony/NetworkService$NetworkServiceProvider;->onDestroy()V

    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkStateChanged(Landroid/os/Handler;)V

    .line 494
    return-void
.end method
