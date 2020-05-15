.class public Lcom/android/internal/telephony/LocaleTracker;
.super Landroid/os/Handler;
.source "LocaleTracker.java"


# static fields
.field private static final CELL_INFO_MAX_DELAY_MS:J = 0x927c0L

.field private static final CELL_INFO_MIN_DELAY_MS:J = 0x7d0L

.field private static final CELL_INFO_PERIODIC_POLLING_DELAY_MS:J = 0x927c0L

.field private static final DBG:Z = true

.field private static final EVENT_GET_CELL_INFO:I = 0x1

.field private static final EVENT_GET_CELL_INFO_TEST:I = 0x4

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x3

.field private static final EVENT_UPDATE_OPERATOR_NUMERIC:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCellInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mFailCellInfoCount:I

.field private mLastServiceState:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mOperatorNumeric:Ljava/lang/String;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/LocaleTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 163
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mLastServiceState:I

    .line 109
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    .line 112
    new-instance v0, Lcom/android/internal/telephony/LocaleTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LocaleTracker$1;-><init>(Lcom/android/internal/telephony/LocaleTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    iput-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mSimState:I

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/LocaleTracker;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LocaleTracker;

    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/LocaleTracker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LocaleTracker;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LocaleTracker;->onSimCardStateChanged(I)V

    return-void
.end method

.method private getCellInfo()V
    .locals 8

    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    const-string v0, "Radio is off. Stopped cell info retry. Cleared the previous cached cell info."

    .line 355
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 356
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 358
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->stopCellInfoRetry()V

    .line 359
    return-void

    .line 368
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 370
    .local v0, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 372
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getAllCellInfo(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    .line 375
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCellInfo: cell info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "msg":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 378
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 380
    iget v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mFailCellInfoCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mFailCellInfoCount:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->getCellInfoDelayTime(I)J

    move-result-wide v4

    .line 381
    .local v4, "delay":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t get cell info. Try again in "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " secs."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/LocaleTracker;->removeMessages(I)V

    .line 383
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/LocaleTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/LocaleTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 384
    .end local v4    # "delay":J
    goto :goto_0

    .line 386
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->stopCellInfoRetry()V

    .line 390
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/LocaleTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x927c0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/LocaleTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 393
    :goto_0
    return-void
.end method

.method private getCellInfoDelayTime(I)J
    .locals 4
    .param p1, "failCount"    # I

    .line 330
    add-int/lit8 v0, p1, -0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x7d0

    mul-long/2addr v0, v2

    .line 331
    .local v0, "delay":J
    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 332
    const-wide/16 v0, 0x7d0

    goto :goto_0

    .line 333
    :cond_0
    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 334
    const-wide/32 v0, 0x927c0

    .line 336
    :cond_1
    :goto_0
    return-wide v0
.end method

.method private getMccFromCellInfo()Ljava/lang/String;
    .locals 8

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "selectedMcc":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 193
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v1, "countryCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 195
    .local v2, "maxCount":I
    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellInfo;

    .line 196
    .local v4, "cellInfo":Landroid/telephony/CellInfo;
    const/4 v5, 0x0

    .line 197
    .local v5, "mcc":Ljava/lang/String;
    instance-of v6, v4, Landroid/telephony/CellInfoGsm;

    if-eqz v6, :cond_0

    .line 198
    move-object v6, v4

    check-cast v6, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityGsm;->getMccString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 199
    :cond_0
    instance-of v6, v4, Landroid/telephony/CellInfoLte;

    if-eqz v6, :cond_1

    .line 200
    move-object v6, v4

    check-cast v6, Landroid/telephony/CellInfoLte;

    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getMccString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 201
    :cond_1
    instance-of v6, v4, Landroid/telephony/CellInfoWcdma;

    if-eqz v6, :cond_2

    .line 202
    move-object v6, v4

    check-cast v6, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityWcdma;->getMccString()Ljava/lang/String;

    move-result-object v5

    .line 204
    :cond_2
    :goto_1
    if-eqz v5, :cond_4

    .line 205
    const/4 v6, 0x1

    .line 206
    .local v6, "count":I
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 207
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v6, v7, 0x1

    .line 209
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    if-le v6, v2, :cond_4

    .line 213
    move v2, v6

    .line 214
    move-object v0, v5

    .line 217
    .end local v4    # "cellInfo":Landroid/telephony/CellInfo;
    .end local v5    # "mcc":Ljava/lang/String;
    .end local v6    # "count":I
    :cond_4
    goto :goto_0

    .line 219
    .end local v1    # "countryCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "maxCount":I
    :cond_5
    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 447
    sget-object v0, Lcom/android/internal/telephony/LocaleTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 451
    sget-object v0, Lcom/android/internal/telephony/LocaleTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void
.end method

.method private onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 244
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 245
    .local v0, "state":I
    iget v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mLastServiceState:I

    if-eq v0, v1, :cond_3

    .line 246
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Get cell info now."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "msg":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->getCellInfo()V

    .line 254
    .end local v1    # "msg":Ljava/lang/String;
    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->stopCellInfoRetry()V

    .line 259
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateLocale()V

    .line 260
    iput v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mLastServiceState:I

    .line 262
    :cond_3
    return-void
.end method

.method private declared-synchronized onSimCardStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    monitor-enter p0

    .line 230
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mSimState:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 231
    const-string v0, "Sim absent. Get latest cell info from the modem."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->getCellInfo()V

    .line 233
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateLocale()V

    .line 235
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mSimState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 229
    .end local p1    # "state":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/LocaleTracker;
    throw p1
.end method

.method private stopCellInfoRetry()V
    .locals 1

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mFailCellInfoCount:I

    .line 345
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->removeMessages(I)V

    .line 346
    return-void
.end method

.method private updateLocale()V
    .locals 6

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "mcc":Ljava/lang/String;
    const-string v1, ""

    .line 402
    .local v1, "countryIso":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 404
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 405
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 409
    goto :goto_0

    .line 406
    :catch_0
    move-exception v2

    .line 407
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLocale: Can\'t get country from operator numeric. mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". ex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LocaleTracker;->loge(Ljava/lang/String;)V

    .line 414
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 415
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->getMccFromCellInfo()Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 418
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 422
    goto :goto_1

    .line 419
    :catch_1
    move-exception v2

    .line 420
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLocale: Can\'t get country from cell info. mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". ex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LocaleTracker;->loge(Ljava/lang/String;)V

    .line 426
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLocale: mcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", country = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "msg":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 428
    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v3, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 429
    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLocale: Change the current country to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 432
    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v3, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 433
    iput-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    .line 435
    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v4, "gsm.operator.iso-country"

    iget-object v5, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 442
    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;)V

    .line 444
    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 462
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 463
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v1, "LocaleTracker:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOperatorNumeric = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mSimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCellInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentCountryIso = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFailCellInfoCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mFailCellInfoCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 470
    const-string v1, "Local logs:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 472
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 474
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 475
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 476
    return-void
.end method

.method public declared-synchronized getCurrentCountry()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/LocaleTracker;
    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message arrives. msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->getCellInfo()V

    .line 149
    goto :goto_0

    .line 143
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 144
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ServiceState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LocaleTracker;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 145
    goto :goto_0

    .line 140
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->updateOperatorNumericSync(Ljava/lang/String;)V

    .line 141
    goto :goto_0

    .line 134
    :pswitch_3
    monitor-enter p0

    .line 135
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->getCellInfo()V

    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateLocale()V

    .line 137
    monitor-exit p0

    .line 138
    nop

    .line 154
    :goto_0
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateOperatorNumericAsync(Ljava/lang/String;)V
    .locals 2
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOperatorNumericAsync. mcc/mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/LocaleTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->sendMessage(Landroid/os/Message;)Z

    .line 319
    return-void
.end method

.method public declared-synchronized updateOperatorNumericSync(Ljava/lang/String;)V
    .locals 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    monitor-enter p0

    .line 274
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOperatorNumericSync. mcc/mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Operator numeric changes to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "msg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 279
    iput-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    .line 283
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    const-string v1, "Operator numeric unavailable. Get latest cell info from the modem."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 292
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LocaleTracker;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LocaleTracker;->removeMessages(I)V

    .line 296
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LocaleTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LocaleTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 302
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->stopCellInfoRetry()V

    .line 304
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateLocale()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    monitor-exit p0

    return-void

    .line 273
    .end local p1    # "operatorNumeric":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/LocaleTracker;
    throw p1
.end method
