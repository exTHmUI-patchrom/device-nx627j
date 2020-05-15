.class public Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;
.super Landroid/os/Handler;
.source "NBDefaultDataController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;
    }
.end annotation


# static fields
.field private static final CARD_DETECTED_DELAY:I = 0xbb8

.field private static final DBG:Z = true

.field private static final DEFAULT_DATA_ICCID:Ljava/lang/String; = "default_data_iccid"

.field private static final DEFAULT_DATA_SLOT:Ljava/lang/String; = "default_data_slot"

.field private static final LOG_TAG:Ljava/lang/String; = "NBDefaultDataController"

.field private static final MANUAL_DATA_ENABLED:Ljava/lang/String; = "manual_data_enabled"

.field private static final MSG_CARD_PROVISION_STATE_CHANGED:I = 0x2

.field private static final NON_DEFAULT_DATA_ICCID:Ljava/lang/String; = "non_default_data_iccid"

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;


# instance fields
.field mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentIccIds:[Ljava/lang/String;

.field private mCurrentPref:[I

.field private mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTargetDefaultDataSlotPending:I


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 83
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    .line 110
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$1;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$2;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$2;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 84
    const-string v1, "NBDefaultDataController()"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    .line 86
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    .line 87
    sget v1, Lcom/qualcomm/qti/internal/telephony/NBDualCardConstans;->PHONE_COUNT:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentIccIds:[Ljava/lang/String;

    .line 88
    sget v1, Lcom/qualcomm/qti/internal/telephony/NBDualCardConstans;->PHONE_COUNT:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentPref:[I

    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/NBDualCardConstans;->PHONE_COUNT:I

    if-ge v1, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentPref:[I

    aput v0, v2, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "i":I
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "android.phone.action.CHANGE.PRIMARY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)[I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    .line 30
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentPref:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    .line 30
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    .line 30
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->handleDefaultDataChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 30
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->handleSimStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 30
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->handleSwitchDefaultDataSlot(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    .line 30
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->handleSubInfoChanged()V

    return-void
.end method

.method private cleanTargetDefaultDataSlotPending()V
    .locals 3

    .line 445
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clean pending target default data slot = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 447
    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    .line 448
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 449
    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 452
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/NBDualCardConstans;->PHONE_COUNT:I

    if-ge v0, v2, :cond_1

    .line 453
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentPref:[I

    aput v1, v2, v0

    .line 454
    const-string v2, "clean mCurrentPref"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private getCardDataStatus([Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;)I
    .locals 5
    .param p1, "simDataType"    # [Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "cardDataStatus":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 382
    .local v3, "type":Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;
    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->getValue()I

    move-result v4

    or-int/2addr v0, v4

    .line 381
    .end local v3    # "type":Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    :cond_0
    return v0
.end method

.method private getCardDataType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;
    .locals 2
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "lastDataIccid"    # Ljava/lang/String;
    .param p3, "lastUnDataIccid"    # Ljava/lang/String;

    .line 362
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 363
    .local v0, "type":Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "N/A"

    .line 364
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SIM_NOT_PROVISIONED"

    .line 365
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 368
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    goto :goto_1

    .line 370
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 371
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NOT_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    goto :goto_1

    .line 374
    :cond_2
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NEW_CARD:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    goto :goto_1

    .line 366
    :cond_3
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 376
    :goto_1
    return-object v0
.end method

.method private getFirstTargetDataTypePhoneId([Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;)I
    .locals 3
    .param p1, "simDataType"    # [Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;
    .param p2, "targetDataType"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 390
    aget-object v1, p1, v0

    if-ne v1, p2, :cond_0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first target datatype["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] Slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 393
    return v0

    .line 389
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;
    .locals 3

    .line 75
    const-class v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    monitor-exit v0

    return-object v1

    .line 77
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NBDefaultDataController was not initialized!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getLastDefaultDataIccid()Ljava/lang/String;
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "default_data_iccid"

    .line 352
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    return-object v0
.end method

.method private getLastUnDefaultDataIccid()Ljava/lang/String;
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "non_default_data_iccid"

    .line 357
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    return-object v0
.end method

.method private getPhoneIdIfHaveOnlyOneCardInsert([Ljava/lang/String;)I
    .locals 5
    .param p1, "iccids"    # [Ljava/lang/String;

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "insertCardCount":I
    const/4 v1, -0x1

    .line 340
    .local v1, "insertPhoneId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 341
    aget-object v3, p1, v2

    const-string v4, "N/A"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 342
    add-int/lit8 v0, v0, 0x1

    .line 343
    move v1, v2

    .line 340
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    if-ne v2, v0, :cond_2

    move v2, v1

    goto :goto_1

    .line 347
    :cond_2
    const/4 v2, -0x1

    .line 346
    :goto_1
    return v2
.end method

.method private getSimDataIccid(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v0

    .line 515
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    const-string v1, "N/A"

    return-object v1

    .line 517
    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    .line 518
    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 520
    const-string v1, "SIM_NOT_PROVISIONED"

    return-object v1

    .line 522
    :cond_2
    return-object v0
.end method

.method private handleDefaultDataChanged()V
    .locals 3

    .line 175
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 174
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 176
    .local v0, "currentDefaultDataSlot":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDefaultDataChanged currentDefaultDataSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 178
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->storeDefaultDataDistribution(I)V

    .line 182
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->updateDataEnabled()V

    .line 183
    return-void
.end method

.method private handleProvisonStateChanged()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->getVirtualCardSlot(Landroid/content/Context;)I

    move-result v0

    .line 155
    .local v0, "virtualCardSlot":I
    sget-boolean v1, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v1, :cond_1

    .line 156
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->cleanTargetDefaultDataSlotPending()V

    goto :goto_2

    .line 157
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->chooseDataSlotAccordingLastDds()I

    move-result v1

    .line 158
    .local v1, "newDefaultDataSlotId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleProvisonStateChanged setDefaultData on = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 161
    nop

    .line 162
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->isTargetDefaultDataSlotPending(I)Z

    move-result v2

    .line 161
    invoke-direct {p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->setDefaultDataToTargetSlot(IZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 163
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->pendingTargetDefaultDataSlot(I)V

    goto :goto_1

    .line 165
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->cleanTargetDefaultDataSlotPending()V

    .line 168
    .end local v1    # "newDefaultDataSlotId":I
    :cond_3
    :goto_1
    nop

    .line 171
    :goto_2
    return-void
.end method

.method private handleSimStateChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 186
    const-string v0, "slot"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 187
    .local v0, "slot":I
    const-string v1, "ss"

    .line 188
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "stateExtra":Ljava/lang/String;
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "LOADED"

    .line 191
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "IMSI"

    .line 192
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "NOT_READY"

    .line 202
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 203
    :cond_1
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->isTargetDefaultDataSlotPending(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "ABSENT"

    .line 204
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 205
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->cleanTargetDefaultDataSlotPending()V

    goto :goto_1

    .line 193
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->isTargetDefaultDataSlotPending(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSimStateChanged setDefaultData on PendingSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 195
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->setDefaultDataToTargetSlot(IZ)Z

    move-result v2

    if-nez v2, :cond_3

    .line 196
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->pendingTargetDefaultDataSlot(I)V

    goto :goto_1

    .line 198
    :cond_3
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->cleanTargetDefaultDataSlotPending()V

    .line 208
    :cond_4
    :goto_1
    return-void
.end method

.method private handleSubInfoChanged()V
    .locals 4

    .line 224
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    .line 225
    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->isSimReady(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    .line 227
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 228
    .local v0, "subIds":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget v2, v0, v1

    .line 229
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    aget v1, v0, v1

    const v2, 0x7ffffffb

    if-ge v1, v2, :cond_1

    .line 231
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    .line 232
    .local v1, "targetDataSlotId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSubInfoChanged setDefaultData on PendingSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 234
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->setDefaultDataToTargetSlot(IZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->pendingTargetDefaultDataSlot(I)V

    goto :goto_0

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->cleanTargetDefaultDataSlotPending()V

    .line 241
    .end local v0    # "subIds":[I
    .end local v1    # "targetDataSlotId":I
    :cond_1
    :goto_0
    return-void
.end method

.method private handleSwitchDefaultDataSlot(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 211
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 213
    .local v0, "currentDefaultDataSlotId":I
    const-string v1, "phone"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 215
    .local v1, "targetDefaultDataSlotId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSwitchDefaultDataSlot targetDefaultDataSlotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 217
    if-eq v1, v0, :cond_0

    .line 218
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->setDefaultDataEnabledPending(Z)V

    .line 219
    invoke-direct {p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->setDefaultDataToTargetSlot(IZ)Z

    .line 221
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 67
    const-class v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    .line 71
    :cond_0
    monitor-exit v0

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isMobileDataEnabled(I)Z
    .locals 3
    .param p1, "subId"    # I

    .line 501
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    .line 502
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobile_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    .line 504
    .local v0, "isEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSubId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]MobileDataEnabledNow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 506
    return v0
.end method

.method private isTargetDefaultDataSlotPending(I)Z
    .locals 2
    .param p1, "targetSlot"    # I

    .line 430
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 527
    const-string v0, "NBDefaultDataController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void
.end method

.method private pendingTargetDefaultDataSlot(I)V
    .locals 2
    .param p1, "targetDataSlot"    # I

    .line 435
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 436
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 437
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 440
    :cond_0
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new pending target default data slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mTargetDefaultDataSlotPending:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method private setDefaultDataToTargetSlot(IZ)Z
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "forceSet"    # Z

    .line 246
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 247
    .local v0, "subIds":[I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->isSimReady(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 248
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isFlexMapInProgress()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    aget v1, v0, v2

    .line 251
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    aget v1, v0, v2

    const v3, 0x7ffffffb

    if-ge v1, v3, :cond_2

    .line 253
    aget v1, v0, v2

    .line 254
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    if-ne v1, v3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already on slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->storeDefaultDataDistribution(I)V

    .line 263
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->updateDataEnabled()V

    goto :goto_1

    .line 255
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "targetDefaultDataSlot = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", subId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->storeDefaultDataDistribution(I)V

    .line 258
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 266
    :goto_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_data_slot"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 269
    const/4 v1, 0x1

    return v1

    .line 271
    :cond_2
    return v2
.end method

.method private updateDataEnabled()V
    .locals 9

    .line 459
    const-string v0, "updateDataEnabled +"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 460
    const/4 v0, -0x1

    .line 461
    .local v0, "targetDefaultDataSlot":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultDataSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 465
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 466
    return-void

    .line 468
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 469
    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 470
    .local v3, "unDefaultDataSlot":I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 471
    .local v4, "targetDefaultDataSubId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 472
    .local v5, "unDefaultDataSubId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "targetDefaultDataSubId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", unDefaultDataSubId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 474
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    .line 475
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 476
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->isMobileDataEnabled(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 477
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getDefaultDataEnabledPending()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 478
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDataSubid["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] Enable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v6, v4, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 481
    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->setDefaultDataEnabledPending(Z)V

    .line 485
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nubia_mobile_data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 486
    const-string v1, "updateDataEnabled -"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 487
    return-void
.end method


# virtual methods
.method public chooseDataSlotAccordingLastDds()I
    .locals 8

    .line 276
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/NBDualCardConstans;->PHONE_COUNT:I

    if-ge v1, v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentIccIds:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getSimDataIccid(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentIccIds["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentIccIds:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/NBLogUtils;->getLogIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentIccIds:[Ljava/lang/String;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->hasAnyValidCard([Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    .line 282
    return v2

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->isTwoCdmaCardInserted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 286
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    .line 287
    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    .line 288
    .local v1, "currentPrivisionStatus0":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v3

    .line 289
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v3

    .line 290
    .local v3, "currentPrivisionStatus1":I
    if-ne v3, v4, :cond_2

    if-eq v1, v4, :cond_2

    .line 292
    return v4

    .line 293
    :cond_2
    if-ne v1, v4, :cond_3

    if-ne v3, v4, :cond_3

    .line 295
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v4

    .line 296
    .local v4, "mPreDefaultDataPhoneId":I
    if-eq v4, v2, :cond_3

    .line 297
    return v4

    .line 300
    .end local v4    # "mPreDefaultDataPhoneId":I
    :cond_3
    return v0

    .line 303
    .end local v1    # "currentPrivisionStatus0":I
    .end local v3    # "currentPrivisionStatus1":I
    :cond_4
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentIccIds:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getPhoneIdIfHaveOnlyOneCardInsert([Ljava/lang/String;)I

    move-result v1

    .line 304
    .local v1, "theOnlyPhoneId":I
    if-eq v2, v1, :cond_5

    .line 305
    return v1

    .line 308
    :cond_5
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getLastDefaultDataIccid()Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "lastDataIccid":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getLastUnDefaultDataIccid()Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "lastUnDataIccid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastDataIccid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/NBLogUtils;->getLogIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 311
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastUnDataIccid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/NBLogUtils;->getLogIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 312
    sget v5, Lcom/qualcomm/qti/internal/telephony/NBDualCardConstans;->PHONE_COUNT:I

    new-array v5, v5, [Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 313
    .local v5, "simDataType":[Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;
    nop

    .local v0, "i":I
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_6

    .line 314
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentIccIds:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-direct {p0, v6, v3, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getCardDataType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    move-result-object v6

    aput-object v6, v5, v0

    .line 316
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simDataType["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v5, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    .end local v0    # "i":I
    :cond_6
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getCardDataStatus([Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;)I

    move-result v0

    .line 320
    .local v0, "cardDataStatus":I
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->getValue()I

    move-result v6

    and-int/2addr v6, v0

    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 321
    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_7

    .line 322
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    invoke-direct {p0, v5, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getFirstTargetDataTypePhoneId([Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;)I

    move-result v2

    return v2

    .line 324
    :cond_7
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NEW_CARD:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->getValue()I

    move-result v6

    and-int/2addr v6, v0

    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NEW_CARD:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 325
    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_8

    .line 326
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NEW_CARD:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    invoke-direct {p0, v5, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getFirstTargetDataTypePhoneId([Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;)I

    move-result v2

    return v2

    .line 328
    :cond_8
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NOT_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->getValue()I

    move-result v6

    and-int/2addr v6, v0

    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NOT_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 329
    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_9

    .line 330
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NOT_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    invoke-direct {p0, v5, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->getFirstTargetDataTypePhoneId([Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;)I

    move-result v2

    return v2

    .line 333
    :cond_9
    return v2
.end method

.method public getDefaultDataEnabledPending()Z
    .locals 3

    .line 496
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "manual_data_enabled"

    .line 497
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 496
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->handleProvisonStateChanged()V

    .line 108
    :goto_0
    return-void
.end method

.method public setDefaultDataEnabledPending(Z)V
    .locals 2
    .param p1, "maual"    # Z

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultDataEnabledPending = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "manual_data_enabled"

    .line 492
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 493
    return-void
.end method

.method public storeDefaultDataDistribution(I)V
    .locals 6
    .param p1, "currentDataSlot"    # I

    .line 400
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    .line 402
    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->getVirtualCardSlot(Landroid/content/Context;)I

    move-result v0

    .line 401
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentIccIds:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 404
    .local v0, "defaultDataIccId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "store defaultDataIccId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/NBLogUtils;->getLogIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",currentDataSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    .line 407
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 408
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "default_data_iccid"

    .line 411
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    goto :goto_0

    .line 412
    :cond_1
    nop

    .line 409
    move-object v3, v0

    :goto_0
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 412
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 414
    if-nez p1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 415
    :cond_2
    const/4 v1, 0x0

    .line 416
    .local v1, "unDefaultDataSlot":I
    :goto_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mCurrentIccIds:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 417
    .local v2, "unDefaultDataIccId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "store unDefaultDataIccId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/NBLogUtils;->getLogIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",unDefaultDataSlot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->logd(Ljava/lang/String;)V

    .line 419
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->mContext:Landroid/content/Context;

    .line 420
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 421
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "non_default_data_iccid"

    .line 424
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, ""

    goto :goto_2

    .line 425
    :cond_3
    nop

    .line 422
    move-object v5, v2

    :goto_2
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 425
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    .end local v0    # "defaultDataIccId":Ljava/lang/String;
    .end local v1    # "unDefaultDataSlot":I
    .end local v2    # "unDefaultDataIccId":Ljava/lang/String;
    :cond_4
    return-void
.end method
