.class public Lcom/android/internal/telephony/RadioConfig;
.super Landroid/os/Handler;
.source "RadioConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_SERVICE_DEAD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RadioConfig"

.field private static final VDBG:Z = false

.field private static sRadioConfig:Lcom/android/internal/telephony/RadioConfig;


# instance fields
.field private final mDefaultWorkSource:Landroid/os/WorkSource;

.field private final mIsMobileNetworkSupported:Z

.field private final mRadioConfigIndication:Lcom/android/internal/telephony/RadioConfigIndication;

.field private volatile mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

.field private final mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mRadioConfigResponse:Lcom/android/internal/telephony/RadioConfigResponse;

.field private final mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceDeathRecipient:Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;

.field protected mSimSlotStatusRegistrant:Landroid/os/Registrant;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    .line 78
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 80
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/RadioConfig;->mIsMobileNetworkSupported:Z

    .line 82
    new-instance v1, Lcom/android/internal/telephony/RadioConfigResponse;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/RadioConfigResponse;-><init>(Lcom/android/internal/telephony/RadioConfig;)V

    iput-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigResponse:Lcom/android/internal/telephony/RadioConfigResponse;

    .line 83
    new-instance v1, Lcom/android/internal/telephony/RadioConfigIndication;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/RadioConfigIndication;-><init>(Lcom/android/internal/telephony/RadioConfig;)V

    iput-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigIndication:Lcom/android/internal/telephony/RadioConfigIndication;

    .line 84
    new-instance v1, Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;-><init>(Lcom/android/internal/telephony/RadioConfig;)V

    iput-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mServiceDeathRecipient:Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;

    .line 86
    new-instance v1, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 88
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 48
    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private clearRequestList(IZ)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 122
    .local v1, "count":I
    if-eqz p2, :cond_0

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearRequestList: mRequestList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 126
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 127
    iget-object v3, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RILRequest;

    .line 128
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz p2, :cond_1

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RadioConfig;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 131
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 132
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 135
    .end local v1    # "count":I
    monitor-exit v0

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static convertHalSlotStatus(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/config/V1_0/SimSlotStatus;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/IccSlotStatus;",
            ">;"
        }
    .end annotation

    .line 321
    .local p0, "halSlotStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/config/V1_0/SimSlotStatus;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 322
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/IccSlotStatus;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    .line 323
    .local v2, "slotStatus":Landroid/hardware/radio/config/V1_0/SimSlotStatus;
    new-instance v3, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccSlotStatus;-><init>()V

    .line 324
    .local v3, "iccSlotStatus":Lcom/android/internal/telephony/uicc/IccSlotStatus;
    iget v4, v2, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->cardState:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->setCardState(I)V

    .line 325
    iget v4, v2, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->slotState:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->setSlotState(I)V

    .line 326
    iget v4, v2, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->logicalSlotId:I

    iput v4, v3, Lcom/android/internal/telephony/uicc/IccSlotStatus;->logicalSlotIndex:I

    .line 327
    iget-object v4, v2, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->atr:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    .line 328
    iget-object v4, v2, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->iccid:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/uicc/IccSlotStatus;->iccid:Ljava/lang/String;

    .line 329
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .end local v2    # "slotStatus":Landroid/hardware/radio/config/V1_0/SimSlotStatus;
    .end local v3    # "iccSlotStatus":Lcom/android/internal/telephony/uicc/IccSlotStatus;
    goto :goto_0

    .line 331
    :cond_0
    return-object v0
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .locals 3
    .param p1, "serial"    # I

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    .line 208
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v1, :cond_0

    .line 209
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 211
    :cond_0
    monitor-exit v0

    .line 213
    return-object v1

    .line 211
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/RadioConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 94
    sget-object v0, Lcom/android/internal/telephony/RadioConfig;->sRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/android/internal/telephony/RadioConfig;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/RadioConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/RadioConfig;->sRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 97
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/RadioConfig;->sRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    return-object v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .line 335
    const-string v0, "RadioConfig"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .line 339
    const-string v0, "RadioConfig"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void
.end method

.method private obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;
    .locals 4
    .param p1, "request"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 197
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 198
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 200
    monitor-exit v1

    .line 201
    return-object v0

    .line 200
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static primitiveArrayToArrayList([I)Ljava/util/ArrayList;
    .locals 5
    .param p0, "arr"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 286
    .local v3, "i":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .end local v3    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_0
    return-object v0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .line 292
    packed-switch p0, :pswitch_data_0

    .line 298
    const-string v0, "<unknown request>"

    return-object v0

    .line 296
    :pswitch_0
    const-string v0, "SET_LOGICAL_TO_PHYSICAL_SLOT_MAPPING"

    return-object v0

    .line 294
    :pswitch_1
    const-string v0, "GET_SLOT_STATUS"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x90
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 145
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 147
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/RadioConfig;->clearRequestList(IZ)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Landroid/hardware/radio/config/V1_0/IRadioConfig;

    .line 150
    return-void
.end method


# virtual methods
.method public getRadioConfigProxy(Landroid/os/Message;)Landroid/hardware/radio/config/V1_0/IRadioConfig;
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 154
    iget-boolean v0, p0, Lcom/android/internal/telephony/RadioConfig;->mIsMobileNetworkSupported:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 156
    if-eqz p1, :cond_0

    .line 157
    nop

    .line 158
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 157
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 159
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 161
    :cond_0
    return-object v2

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

    return-object v0

    .line 169
    :cond_2
    :try_start_0
    invoke-static {v1}, Landroid/hardware/radio/config/V1_0/IRadioConfig;->getService(Z)Landroid/hardware/radio/config/V1_0/IRadioConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

    iget-object v3, p0, Lcom/android/internal/telephony/RadioConfig;->mServiceDeathRecipient:Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;

    iget-object v4, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 172
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 171
    invoke-interface {v0, v3, v4, v5}, Landroid/hardware/radio/config/V1_0/IRadioConfig;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

    iget-object v3, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigResponse:Lcom/android/internal/telephony/RadioConfigResponse;

    iget-object v4, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigIndication:Lcom/android/internal/telephony/RadioConfigIndication;

    invoke-interface {v0, v3, v4}, Landroid/hardware/radio/config/V1_0/IRadioConfig;->setResponseFunctions(Landroid/hardware/radio/config/V1_0/IRadioConfigResponse;Landroid/hardware/radio/config/V1_0/IRadioConfigIndication;)V

    goto :goto_0

    .line 176
    :cond_3
    const-string v0, "getRadioConfigProxy: mRadioConfigProxy == null"

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    iput-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRadioConfigProxy: RadioConfigProxy getService/setResponseFunctions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

    if-nez v0, :cond_4

    .line 185
    const-string v0, "getRadioConfigProxy: mRadioConfigProxy == null"

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 186
    if-eqz p1, :cond_4

    .line 187
    nop

    .line 188
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 187
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 189
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

    return-object v0
.end method

.method public getSimSlotsStatus(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Landroid/hardware/radio/config/V1_0/IRadioConfig;

    move-result-object v0

    .line 245
    .local v0, "radioConfigProxy":Landroid/hardware/radio/config/V1_0/IRadioConfig;
    if-eqz v0, :cond_0

    .line 246
    const/16 v1, 0x90

    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 249
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RadioConfig;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 253
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v0, v2}, Landroid/hardware/radio/config/V1_0/IRadioConfig;->getSimSlotsStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    goto :goto_0

    .line 254
    :catch_0
    move-exception v2

    .line 255
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getSimSlotsStatus"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 258
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: EVENT_SERVICE_DEAD cookie = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRadioConfigProxyCookie = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 105
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 106
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 107
    const-string v0, "EVENT_SERVICE_DEAD"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 111
    :cond_1
    :goto_0
    return-void
.end method

.method public processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .locals 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 223
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    .line 224
    .local v0, "serial":I
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 225
    .local v1, "error":I
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    .line 227
    .local v2, "type":I
    if-eqz v2, :cond_0

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processResponse: Unexpected response type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 231
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 232
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_1

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processResponse: Unexpected response! serial: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 234
    const/4 v4, 0x0

    return-object v4

    .line 237
    :cond_1
    return-object v3
.end method

.method public registerForSimSlotStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 306
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Landroid/os/Registrant;

    .line 307
    return-void
.end method

.method public setSimSlotsMapping([ILandroid/os/Message;)V
    .locals 4
    .param p1, "physicalSlots"    # [I
    .param p2, "result"    # Landroid/os/Message;

    .line 264
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Landroid/hardware/radio/config/V1_0/IRadioConfig;

    move-result-object v0

    .line 265
    .local v0, "radioConfigProxy":Landroid/hardware/radio/config/V1_0/IRadioConfig;
    if-eqz v0, :cond_0

    .line 266
    const/16 v1, 0x91

    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 270
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RadioConfig;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-static {v2}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 275
    :try_start_0
    iget v2, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 276
    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v3

    .line 275
    invoke-interface {v0, v2, v3}, Landroid/hardware/radio/config/V1_0/IRadioConfig;->setSimSlotsMapping(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_0

    .line 277
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setSimSlotsMapping"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 281
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterForSimSlotStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Landroid/os/Registrant;

    .line 317
    :cond_0
    return-void
.end method
