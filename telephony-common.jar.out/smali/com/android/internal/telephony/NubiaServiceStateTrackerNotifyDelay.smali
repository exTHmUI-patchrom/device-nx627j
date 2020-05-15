.class public Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;
.super Ljava/lang/Object;
.source "NubiaServiceStateTrackerNotifyDelay.java"


# static fields
.field private static final DELAY_TIME:I = 0x4e20

.field public static final NOT_PROVISIONED:I = 0x0

.field public static final PROVISIONED:I = 0x1


# instance fields
.field mCurDataServiceState:I

.field mCurVoiceServiceState:I

.field private mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

.field mHandler:Landroid/os/Handler;

.field private mNotifyDelay:Ljava/lang/Runnable;

.field mPreDataServiceState:I

.field mPreVoiceServiceState:I

.field private mSST:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 2
    .param p1, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay$1;-><init>(Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mNotifyDelay:Ljava/lang/Runnable;

    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 43
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;)Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;

    .line 21
    iget-object v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    return-object v0
.end method

.method private isCDMACard(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 113
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 114
    .local v0, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 115
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 116
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 117
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private isNeedBNotifyDelay(I)Z
    .locals 2
    .param p1, "cardState"    # I

    .line 79
    iget v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mPreVoiceServiceState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mPreDataServiceState:I

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mCurVoiceServiceState:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mCurDataServiceState:I

    if-ne v0, v1, :cond_1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isNeedNotifyDirect(I)Z
    .locals 3
    .param p1, "cardState"    # I

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 92
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 94
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 95
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    .line 91
    :cond_1
    :goto_0
    return v1
.end method

.method private isTwoCDMACard()Z
    .locals 4

    .line 123
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 124
    .local v0, "count":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 125
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->isCDMACard(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    return v1

    .line 124
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private notifyDelay()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mNotifyDelay:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    return-void
.end method

.method private notifyDirect(IZ)V
    .locals 2
    .param p1, "cardState"    # I
    .param p2, "force"    # Z

    .line 99
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->isNeedNotifyDirect(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mNotifyDelay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyServiceStateChanged()V

    .line 103
    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mNotifyDelay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mHandler:Landroid/os/Handler;

    .line 110
    :cond_0
    return-void
.end method

.method public getServiceState()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mPreVoiceServiceState:I

    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mPreDataServiceState:I

    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mCurVoiceServiceState:I

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mCurDataServiceState:I

    .line 51
    return-void
.end method

.method public notifyServiceStateChangedDealy()V
    .locals 4

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "cardState":I
    iget-object v1, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 58
    .local v1, "phoneId":I
    :try_start_0
    const-string v2, "extphone"

    .line 59
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 60
    iget-object v2, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    invoke-interface {v2, v1}, Lorg/codeaurora/internal/IExtTelephony;->getUiccCardProvisioningUserPreference(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 63
    :goto_0
    goto :goto_1

    .line 62
    :catch_0
    move-exception v2

    goto :goto_1

    .line 61
    :catch_1
    move-exception v2

    goto :goto_0

    .line 64
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    invoke-direct {p0}, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->isTwoCDMACard()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 66
    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 67
    .local v2, "cdmaNoService":Z
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->isNeedBNotifyDelay(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->notifyDelay()V

    goto :goto_3

    .line 71
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->notifyDirect(IZ)V

    .line 73
    .end local v2    # "cdmaNoService":Z
    :goto_3
    goto :goto_4

    .line 74
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyServiceStateChanged()V

    .line 76
    :goto_4
    return-void
.end method
