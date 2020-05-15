.class public Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "QtiServiceStateTracker.java"


# static fields
.field private static final ACTION_MANAGED_ROAMING_IND:Ljava/lang/String; = "codeaurora.intent.action.ACTION_MANAGED_ROAMING_IND"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "QtiServiceStateTracker"

.field private static final VDBG:Z = false


# instance fields
.field private final ACTION_RAC_CHANGED:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRac:I

.field private final mRacChange:Ljava/lang/String;

.field private mRat:I

.field private final mRatInfo:Ljava/lang/String;

.field private mTac:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 34
    const-string v0, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->ACTION_RAC_CHANGED:Ljava/lang/String;

    .line 35
    const-string v0, "rat"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRatInfo:Ljava/lang/String;

    .line 36
    const-string v0, "rac"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRacChange:Ljava/lang/String;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mTac:I

    .line 41
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    return-void
.end method

.method static synthetic access$002(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;
    .param p1, "x1"    # I

    .line 28
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRac:I

    return p1
.end method

.method static synthetic access$102(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;
    .param p1, "x1"    # I

    .line 28
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRat:I

    return p1
.end method


# virtual methods
.method public getPollingContext()[I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPollingContext:[I

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->setPowerStateToDesired()V

    .line 105
    const-string v0, "Trigger as manual polling"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->log(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->pollState()V

    goto :goto_0

    .line 108
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 113
    :goto_0
    return-void
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 63
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 96
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 65
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    .line 66
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/NetworkRegistrationState;

    .line 68
    .local v0, "regStates":Landroid/telephony/NetworkRegistrationState;
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationState;->getRegState()I

    move-result v1

    .line 70
    .local v1, "regState":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 71
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationState;->getReasonForDenial()I

    move-result v2

    .line 73
    .local v2, "rejCode":I
    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Posting Managed roaming intent sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 75
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->log(Ljava/lang/String;)V

    .line 77
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "codeaurora.intent.action.ACTION_MANAGED_ROAMING_IND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v3, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.qualcomm.qti.networksetting"

    const-string v6, "com.qualcomm.qti.networksetting.ManagedRoaming"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 82
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    const-string v4, "subscription"

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 84
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v5

    .line 83
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 86
    :catch_0
    move-exception v3

    .line 87
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to start activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 91
    .end local v0    # "regStates":Landroid/telephony/NetworkRegistrationState;
    .end local v1    # "regState":I
    .end local v2    # "rejCode":I
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    :goto_0
    nop

    .line 98
    :cond_2
    :goto_1
    return-void
.end method
