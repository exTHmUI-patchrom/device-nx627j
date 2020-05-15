.class public Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;
.super Landroid/os/Handler;
.source "NBDefaultVoiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;
    }
.end annotation


# static fields
.field private static final DEFAULT_VOICE_ICCID:Ljava/lang/String; = "default_voice_iccid"

.field private static final LOG_TAG:Ljava/lang/String; = "NBDefaultVoiceController"

.field private static final NON_DEFAULT_VOICE_ICCID:Ljava/lang/String; = "non_default_voice_iccid"

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;


# instance fields
.field mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentIccIds:[Ljava/lang/String;

.field private mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTargetDefaultVoiceSlotPending:I


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 68
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mTargetDefaultVoiceSlotPending:I

    .line 81
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$1;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$2;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 69
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 71
    sget v0, Lcom/qualcomm/qti/internal/telephony/NBDualCardConstans;->PHONE_COUNT:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mCurrentIccIds:[Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;

    .line 23
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->handleProvisonStateChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;

    .line 23
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->handleSubInfoChanged()V

    return-void
.end method

.method private chooseVoiceSlotAccordingLastestDvs()I
    .locals 7

    .line 120
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->isTwoCdmaCardInserted(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 121
    return v1

    .line 124
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/NBDualCardConstans;->PHONE_COUNT:I

    if-ge v2, v3, :cond_1

    .line 125
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mCurrentIccIds:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->getSimDataIccid(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 126
    const-string v3, "NBDefaultVoiceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentIccIds["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mCurrentIccIds:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/NBLogUtils;->getLogIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mCurrentIccIds:[Ljava/lang/String;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->hasAnyValidCard([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 130
    return v1

    .line 133
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->getLastDefaultVoiceIccid()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "lastDefaultVoiceIccid":Ljava/lang/String;
    const-string v3, "NBDefaultVoiceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastDefaultVoiceIccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/NBLogUtils;->getLogIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget v3, Lcom/qualcomm/qti/internal/telephony/NBDualCardConstans;->PHONE_COUNT:I

    new-array v3, v3, [Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    .line 136
    .local v3, "simVoiceType":[Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;
    nop

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mCurrentIccIds:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 137
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mCurrentIccIds:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {p0, v4, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->getCardVoiceType(Ljava/lang/String;Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    move-result-object v4

    aput-object v4, v3, v0

    .line 138
    const-string v4, "NBDefaultVoiceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simVoiceType["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    .end local v0    # "i":I
    :cond_3
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->getCardVoiceStatus([Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;)I

    move-result v0

    .line 142
    .local v0, "cardVoiceStatus":I
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;->CARD_TYPE_VOICE:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;->getValue()I

    move-result v4

    and-int/2addr v4, v0

    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;->CARD_TYPE_VOICE:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    .line 143
    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 144
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;->CARD_TYPE_VOICE:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    invoke-direct {p0, v3, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->getFirstTargetVoiceTypePhoneId([Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;)I

    move-result v1

    return v1

    .line 147
    :cond_4
    return v1
.end method

.method private getCardVoiceStatus([Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;)I
    .locals 5
    .param p1, "simVoiceType"    # [Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "cardVoiceStatus":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 171
    .local v3, "type":Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;
    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;->getValue()I

    move-result v4

    or-int/2addr v0, v4

    .line 170
    .end local v3    # "type":Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return v0
.end method

.method private getCardVoiceType(Ljava/lang/String;Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;
    .locals 2
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "lastDefaultVoiceIccid"    # Ljava/lang/String;

    .line 158
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;->CARD_TYPE_UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    .line 159
    .local v0, "type":Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;->CARD_TYPE_UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;->CARD_TYPE_VOICE:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    .line 165
    :cond_1
    :goto_0
    return-object v0
.end method

.method private getFirstTargetVoiceTypePhoneId([Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;)I
    .locals 4
    .param p1, "simVoiceType"    # [Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;
    .param p2, "targetVoiceType"    # Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 179
    aget-object v1, p1, v0

    if-ne v1, p2, :cond_0

    .line 180
    const-string v1, "NBDefaultVoiceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first target Voicetype["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] Slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return v0

    .line 178
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;
    .locals 3

    .line 60
    const-class v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;

    monitor-exit v0

    return-object v1

    .line 62
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NBDefaultVoiceController was not initialized!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getLastDefaultVoiceIccid()Ljava/lang/String;
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "default_voice_iccid"

    .line 153
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    return-object v0
.end method

.method private getSimDataIccid(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    const-string v1, "N/A"

    return-object v1

    .line 261
    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    .line 262
    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 264
    const-string v1, "SIM_NOT_PROVISIONED"

    return-object v1

    .line 266
    :cond_2
    return-object v0
.end method

.method private handleProvisonStateChanged()V
    .locals 4

    .line 107
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->chooseVoiceSlotAccordingLastestDvs()I

    move-result v0

    .line 108
    .local v0, "newDefaultVoiceSlotId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "NBDefaultVoiceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleProvisonStateChanged setDefaultVoiceSlotId on = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->setDefaultVoiceToTargetSlot(IZ)V

    .line 113
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->setSmartSelectionEnable(Landroid/content/Context;Z)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->setSmartSelectionEnable(Landroid/content/Context;Z)V

    .line 117
    :goto_0
    return-void
.end method

.method private handleSubInfoChanged()V
    .locals 4

    .line 219
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mTargetDefaultVoiceSlotPending:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mTargetDefaultVoiceSlotPending:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 221
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget v2, v0, v1

    .line 222
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    aget v1, v0, v1

    const v2, 0x7ffffffb

    if-ge v1, v2, :cond_0

    .line 224
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mTargetDefaultVoiceSlotPending:I

    .line 225
    .local v1, "targetVoiceSlotId":I
    const/4 v2, -0x1

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mTargetDefaultVoiceSlotPending:I

    .line 226
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 227
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 229
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->setDefaultVoiceToTargetSlot(IZ)V

    .line 232
    .end local v0    # "subIds":[I
    .end local v1    # "targetVoiceSlotId":I
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 52
    const-class v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;

    .line 56
    :cond_0
    monitor-exit v0

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setDefaultVoiceToTargetSlot(IZ)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "forceSet"    # Z

    .line 189
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->getVirtualCardSlot(Landroid/content/Context;)I

    move-result v0

    .line 190
    .local v0, "virtualCardSlot":I
    sget-boolean v1, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->NUBIA_ROAMING_ENABLE:Z

    if-eqz v1, :cond_0

    .line 191
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eq v0, p1, :cond_4

    .line 195
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 196
    .local v1, "subIds":[I
    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    const/4 v2, 0x0

    aget v3, v1, v2

    .line 197
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    aget v3, v1, v2

    const v4, 0x7ffffffb

    if-ge v3, v4, :cond_3

    .line 199
    aget v3, v1, v2

    .line 200
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v4

    if-ne v3, v4, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    const-string v2, "NBDefaultVoiceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "already on slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 201
    :cond_2
    :goto_0
    const-string v3, "NBDefaultVoiceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "targetDefaultVoiceSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    aget v2, v1, v2

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    goto :goto_1

    .line 209
    :cond_3
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mTargetDefaultVoiceSlotPending:I

    .line 210
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 211
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 213
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->storeLastDefaultVoiceIccid()V

    .line 216
    .end local v1    # "subIds":[I
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public storeLastDefaultVoiceIccid()V
    .locals 6

    .line 235
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 236
    .local v0, "currentVoiceSubId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    .line 237
    .local v1, "currentVoiceSlot":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7ffffffb

    if-ge v0, v2, :cond_0

    .line 239
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mCurrentIccIds:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 241
    .local v2, "currentVoiceIccId":Ljava/lang/String;
    const-string v3, "NBDefaultVoiceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last VoiceIccId changed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/NBLogUtils;->getLogIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 241
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 244
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->mContext:Landroid/content/Context;

    .line 245
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 246
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "default_voice_iccid"

    .line 247
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 248
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    .end local v2    # "currentVoiceIccId":Ljava/lang/String;
    :cond_0
    return-void
.end method
