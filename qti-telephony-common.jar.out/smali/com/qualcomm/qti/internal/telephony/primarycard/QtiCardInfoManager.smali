.class public Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
.super Landroid/os/Handler;
.source "QtiCardInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;,
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_MANUAL_PROVISION_STATE_CHANGED:I = 0x1

.field private static final EVENT_READ_EF_HPLMNWACT_DONE:I = 0x2

.field private static final EVENT_SUBINFO_RECORD_ADDED:I = 0x4

.field private static final HPLMN_SEL_DATA_LEN:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "QtiPcCardInfoManager"

.field static final PHONE_COUNT:I

.field private static final PRIMARYCARD_SUBSCRIPTION_KEY:Ljava/lang/String; = "primarycard_sub"

.field private static final UPDATE_CARDTYPE_COMPLETED:I = 0x2

.field private static final UPDATE_CARDTYPE_INIT:I = 0x0

.field private static final UPDATE_CARDTYPE_IN_PROGRESS:I = 0x1

.field private static final UPDATE_CARDTYPE_NOT_NEEDED:I = 0x3

.field private static final VDBG:Z = false

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;


# instance fields
.field private mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

.field private mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

.field private mQtiCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->PHONE_COUNT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 195
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 67
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    .line 174
    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->PHONE_COUNT:I

    new-array v0, v0, [Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    .line 216
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 196
    sput-object p1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mContext:Landroid/content/Context;

    .line 197
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->PHONE_COUNT:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    new-instance v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    invoke-direct {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;-><init>()V

    aput-object v3, v1, v0

    .line 199
    aget-object v1, p2, v0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "index":I
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mQtiCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    .line 203
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mQtiCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->registerForManualProvisionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 205
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 207
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, p0, v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->registerForAddSubscriptionRecord(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 209
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 48
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;)[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    .line 48
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->updateCardInfo(I)V

    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
    .locals 3

    .line 186
    const-class v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    monitor-enter v0

    .line 187
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    if-eqz v1, :cond_0

    .line 190
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    monitor-exit v0

    return-object v1

    .line 188
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "QtiCardInfoManager was not initialized!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 177
    const-class v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    monitor-enter v0

    .line 178
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    .line 181
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    return-object v0

    .line 181
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isSubsidyRestricted()Z
    .locals 1

    .line 392
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mContext:Landroid/content/Context;

    .line 393
    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isPermanentlyUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 392
    :goto_0
    return v0
.end method

.method private isUpdateCardInfoRequired(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "currIccId"    # Ljava/lang/String;
    .param p3, "currProvState"    # I
    .param p4, "currMccmnc"    # Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$800(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->isSubsidyRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    .line 403
    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$900(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    .line 404
    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$600(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I

    move-result v0

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    .line 405
    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$700(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    .line 406
    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$1000(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    .line 407
    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$700(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 410
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 408
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 513
    const-string v0, "QtiPcCardInfoManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 521
    const-string v0, "QtiPcCardInfoManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 517
    const-string v0, "QtiPcCardInfoManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void
.end method

.method private notifyAllCardsInfoAvailableIfNeeded()V
    .locals 3

    .line 499
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->PHONE_COUNT:I

    if-ge v0, v1, :cond_1

    .line 500
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->isCardInfoAvailable(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " card info not available "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 502
    return-void

    .line 499
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    .end local v0    # "index":I
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 506
    return-void
.end method

.method private onEfLoaded(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 467
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 468
    .local v0, "slotId":I
    const-string v1, "onEfLoaded: Started"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 470
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EF_HPLMNWACT read with exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 473
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 474
    .local v1, "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 475
    array-length v2, v1

    div-int/lit8 v2, v2, 0x5

    .line 476
    .local v2, "numRec":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number of Records="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 478
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 479
    mul-int/lit8 v4, v3, 0x5

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1

    .line 480
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v4, v4, v0

    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->CARDTYPE_4G:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    invoke-static {v4, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$1002(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    .line 481
    goto :goto_1

    .line 478
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 485
    .end local v1    # "data":[B
    .end local v2    # "numRec":I
    .end local v3    # "i":I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$702(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I

    .line 486
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->notifyAllCardsInfoAvailableIfNeeded()V

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEfLoaded("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") : mCardType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$1000(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method private onIccChanged(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "iccChangedResult"    # Landroid/os/AsyncResult;

    .line 293
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->updateCardInfo(I)V

    .line 296
    :cond_0
    return-void
.end method

.method private onManualProvisionStateChanged(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "manualProvisionResult"    # Landroid/os/AsyncResult;

    .line 299
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->updateCardInfo(I)V

    goto :goto_2

    .line 301
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->PHONE_COUNT:I

    if-ge v0, v1, :cond_2

    .line 302
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->updateCardInfo(I)V

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 307
    .end local v0    # "index":I
    :cond_2
    :goto_2
    return-void
.end method

.method private onSubscriptionInfoChanged(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "subInfoChange"    # Landroid/os/AsyncResult;

    .line 285
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 287
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$500(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)V

    .line 288
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->updateCardInfo(I)V

    .line 290
    .end local v0    # "slotId":I
    :cond_0
    return-void
.end method

.method private updateCardInfo(I)V
    .locals 9
    .param p1, "slotId"    # I

    .line 310
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mQtiCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    .line 311
    .local v0, "currProvState":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mQtiCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "currIccId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 313
    .local v2, "currMccMnc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCardInfo["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: Start!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isRadioInValidState()Z

    move-result v3

    if-nez v3, :cond_0

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCardInfo["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: Radio is in Invalid State, IGNORE!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->loge(Ljava/lang/String;)V

    .line 319
    return-void

    .line 325
    :cond_0
    const/4 v3, 0x1

    if-ne v3, v0, :cond_4

    .line 326
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    .line 328
    .local v4, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v4, :cond_3

    .line 329
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 334
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    .line 335
    .local v3, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 336
    .local v5, "subId":I
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 337
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCardInfo["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]: subId not added yet!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->loge(Ljava/lang/String;)V

    .line 338
    return-void

    .line 343
    :cond_2
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 344
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    .line 345
    invoke-virtual {v6, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .line 346
    .local v6, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v6, :cond_4

    .line 347
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v3    # "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    .end local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v5    # "subId":I
    .end local v6    # "sir":Landroid/telephony/SubscriptionInfo;
    goto :goto_1

    .line 330
    .restart local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCardInfo["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: card not READY!! "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->loge(Ljava/lang/String;)V

    .line 331
    return-void

    .line 358
    .end local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_4
    :goto_1
    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    .line 360
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$500(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)V

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCardInfo["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: ProvStatus is Invalid, reset cardInfo!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 363
    :cond_5
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->isUpdateCardInfoRequired(ILjava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 364
    const/4 v3, -0x2

    if-ne v0, v3, :cond_6

    .line 366
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$500(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)V

    .line 367
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v3, v3, p1

    invoke-static {v3, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$602(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I

    .line 368
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v3, v3, p1

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$702(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCardInfo["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: CardAbsent!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->notifyAllCardsInfoAvailableIfNeeded()V

    goto :goto_2

    .line 373
    :cond_6
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$500(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)V

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCardInfo["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: Query current state is required!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 375
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v3, v3, p1

    invoke-static {v3, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$802(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 376
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v3, v3, p1

    invoke-static {v3, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$902(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 377
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v3, v3, p1

    invoke-static {v3, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$602(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I

    .line 378
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->updateUiccCardType(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 379
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v3, v3, p1

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$702(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I

    .line 380
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->notifyAllCardsInfoAvailableIfNeeded()V

    .line 386
    :cond_7
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCardInfo["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: Exit! - UpdateCardTypeState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v4, v4, p1

    .line 387
    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$700(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mCardType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v4, v4, p1

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$1000(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 386
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logi(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method private updateUiccCardType(I)Z
    .locals 8
    .param p1, "slotId"    # I

    .line 428
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 429
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 431
    .local v2, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v3, v4, :cond_0

    .line 432
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v3, v3, p1

    sget-object v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->CARDTYPE_2G:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$1002(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    goto :goto_0

    .line 434
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->read4gFlag()Z

    move-result v3

    .line 435
    .local v3, "read4gEf":Z
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v4, v4, p1

    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->CARDTYPE_3G:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    invoke-static {v4, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$1002(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    .line 436
    if-eqz v3, :cond_1

    .line 437
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v4

    .line 439
    .local v4, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, p1

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$600(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I

    move-result v5

    if-ne v5, v0, :cond_1

    .line 441
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, p1

    invoke-static {v5, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->access$702(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I

    .line 442
    const/16 v5, 0x6f62

    const/4 v6, 0x2

    .line 443
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 442
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    const/4 v0, 0x0

    return v0

    .line 452
    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v2    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "read4gEf":Z
    .end local v4    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_1
    :goto_0
    goto :goto_1

    .line 448
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Exception while updateUiccCardType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->loge(Ljava/lang/String;)V

    .line 453
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method


# virtual methods
.method public clearCardIccIdInfoInSp()V
    .locals 4

    .line 526
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v1, :cond_0

    .line 527
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "primarycard_sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 528
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 529
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    .locals 1
    .param p1, "slotId"    # I

    .line 509
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 264
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 278
    :pswitch_0
    const-string v0, "on EVENT_SUBINFO_RECORD_ADDED"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 279
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->onSubscriptionInfoChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 274
    :pswitch_1
    const-string v0, "on EVENT_ICC_CHANGED"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 275
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->onIccChanged(Landroid/os/AsyncResult;)V

    .line 276
    goto :goto_0

    .line 270
    :pswitch_2
    const-string v0, "on EVENT_READ_EF_HPLMNWACT_DONE"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 271
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->onEfLoaded(Landroid/os/AsyncResult;)V

    .line 272
    goto :goto_0

    .line 266
    :pswitch_3
    const-string v0, "on EVENT_MANUAL_PROVISION_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 267
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->onManualProvisionStateChanged(Landroid/os/AsyncResult;)V

    .line 268
    nop

    .line 282
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 244
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 245
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 246
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 247
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->PHONE_COUNT:I

    if-ge v2, v3, :cond_1

    .line 248
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v3, v3, v2

    invoke-virtual {v3, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->isCardInfoAvailable(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 249
    monitor-exit v1

    return-void

    .line 247
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    .end local v2    # "index":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 253
    monitor-exit v1

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public unregisterAllCardsInfoAvailable(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 257
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 259
    monitor-exit v0

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
