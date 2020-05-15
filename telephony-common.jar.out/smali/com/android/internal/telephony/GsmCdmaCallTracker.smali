.class public Lcom/android/internal/telephony/GsmCdmaCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "GsmCdmaCallTracker.java"


# static fields
.field static final ACTION_CDMA_CALL_CONNECTED:Ljava/lang/String; = "com.android.incallui.ACTION_CDMA_CALL_CONNECTED"

.field private static final CALL_STATE:Ljava/lang/String; = "nubia_call_state"

.field private static final DBG_POLL:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "GsmCdmaCallTracker"

.field private static final MAX_CONNECTIONS_CDMA:I = 0x8

.field public static final MAX_CONNECTIONS_GSM:I = 0x13

.field private static final MAX_CONNECTIONS_PER_CALL_CDMA:I = 0x1

.field private static final MAX_CONNECTIONS_PER_CALL_GSM:I = 0x5

.field private static final REPEAT_POLLING:Z = false

.field private static final VDBG:Z = false


# instance fields
.field private m3WayCallFlashDelay:I

.field public mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

.field private mCallWaitingRegistrants:Landroid/os/RegistrantList;

.field public mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mDesiredMute:Z

.field private mDroppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/GsmCdmaConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mEcmExitReceiver:Landroid/content/BroadcastReceiver;

.field public mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

.field private mHangupPendingMO:Z

.field private mIsEcmTimerCanceled:Z

.field private mIsInEmergencyCall:Z

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private mPendingCallClirMode:I

.field private mPendingCallInEcm:Z

.field private mPendingCallUusInfo:Lcom/android/internal/telephony/UUSInfo;

.field private mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

.field private mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field public mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

.field public mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field private mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 146
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 73
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 74
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    .line 92
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 94
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 97
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 148
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x9

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xa

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x11

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneType(Z)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object v0
.end method

.method private canDial()Z
    .locals 9

    .line 646
    const-string v0, "ro.telephony.disable-call"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "disableCall":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 651
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 653
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 654
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 656
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v4, :cond_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 658
    .local v1, "ret":Z
    :goto_0
    if-nez v1, :cond_4

    .line 659
    const-string v4, "canDial is false\n(radio isOn ::=%s\n&& pendingMO == null::=%s\n&& !ringingCall.isRinging()::=%s\n&& !disableCall.equals(\"true\")::=%s\n&& (!foregroundCall.getState().isAlive()::=%s\n   || foregroundCall.getState() == GsmCdmaCall.State.ACTIVE::=%s\n   ||!backgroundCall.getState().isAlive())::=%s)"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 667
    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v6, :cond_2

    .line 668
    move v6, v3

    goto :goto_1

    .line 667
    :cond_2
    nop

    .line 668
    move v6, v2

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 669
    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    move-result v7

    xor-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "true"

    .line 670
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 671
    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    xor-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 672
    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_3

    move v2, v3

    nop

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x6

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 673
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    xor-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    .line 659
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 676
    :cond_4
    return v1
.end method

.method private checkAndEnableDataCallAfterEmergencyCallDropped()V
    .locals 4

    .line 1608
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    if-eqz v0, :cond_1

    .line 1609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    .line 1610
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/EcbmHandler;->isInEcm()Z

    move-result v1

    .line 1612
    .local v1, "inEcm":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndEnableDataCallAfterEmergencyCallDropped,inEcm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1614
    if-nez v1, :cond_0

    .line 1616
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/EcbmHandler;->setInternalDataEnabled(Z)V

    .line 1617
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    .line 1619
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallStateChange(Z)V

    .line 1621
    .end local v1    # "inEcm":Z
    :cond_1
    return-void
.end method

.method private checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p2, "i"    # I

    .line 1629
    const/4 v0, 0x0

    .line 1632
    .local v0, "newRinging":Lcom/android/internal/telephony/Connection;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v1, v2, :cond_0

    .line 1633
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v0, v1, p2

    .line 1634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify new ring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1639
    :cond_0
    const-string v1, "GsmCdmaCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phantom call appeared "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_1

    .line 1645
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    .line 1646
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v1, v2, :cond_1

    .line 1648
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onStartedHolding()V

    .line 1652
    :cond_1
    :goto_0
    return-object v0
.end method

.method private dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 20
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 401
    move/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    .line 403
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->canDial()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 407
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 408
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 409
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v10, p1

    .line 410
    .local v10, "origNumber":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v11

    .line 411
    .local v11, "operatorIsoContry":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v12

    .line 412
    .local v12, "simIsoContry":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v0, :cond_0

    .line 413
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v13

    goto :goto_0

    :cond_0
    move v0, v14

    .line 415
    .local v0, "internationalRoaming":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 416
    const-string v1, "us"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    if-eqz v0, :cond_1

    const-string v1, "vi"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v13

    goto :goto_1

    :cond_1
    move v1, v14

    :goto_1
    move v0, v1

    goto :goto_3

    .line 418
    :cond_2
    const-string v1, "vi"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 419
    if-eqz v0, :cond_3

    const-string v1, "us"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v13

    goto :goto_2

    :cond_3
    move v1, v14

    :goto_2
    move v0, v1

    .line 422
    .end local v0    # "internationalRoaming":Z
    .local v15, "internationalRoaming":Z
    :cond_4
    :goto_3
    move v15, v0

    if-eqz v15, :cond_5

    .line 423
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    move-object/from16 v1, p1

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .end local p1    # "dialString":Ljava/lang/String;
    .local v0, "dialString":Ljava/lang/String;
    move-object v6, v0

    goto :goto_4

    .end local v0    # "dialString":Ljava/lang/String;
    .restart local p1    # "dialString":Ljava/lang/String;
    :cond_5
    move-object/from16 v1, p1

    move-object v6, v1

    .end local p1    # "dialString":Ljava/lang/String;
    .local v6, "dialString":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/EcbmHandler;->isInEcm()Z

    move-result v16

    .line 427
    .local v16, "isPhoneInEcmMode":Z
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 428
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    .line 430
    .local v17, "isEmergencyCall":Z
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isModemEmergencyNumber(Ljava/lang/String;)Z

    move-result v18

    .line 434
    .local v18, "isModemEmergencyNumber":Z
    if-eqz v16, :cond_6

    if-eqz v17, :cond_6

    .line 435
    invoke-direct {v7, v13}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleEcmTimer(I)V

    .line 441
    :cond_6
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_7

    .line 442
    invoke-direct {v7, v6}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0

    .line 445
    :cond_7
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v2, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    move-object v1, v0

    move-object v4, v7

    move-object v13, v6

    move/from16 v6, v17

    .end local v6    # "dialString":Ljava/lang/String;
    .local v13, "dialString":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V

    iput-object v0, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 447
    iput-boolean v14, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 449
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 450
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_8

    goto :goto_7

    .line 459
    :cond_8
    invoke-virtual {v7, v14}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    .line 462
    invoke-direct {v7, v13}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 469
    if-eqz v16, :cond_a

    if-eqz v16, :cond_9

    if-eqz v17, :cond_9

    if-eqz v18, :cond_9

    goto :goto_6

    .line 473
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v0

    move-object v1, v0

    .line 475
    .local v1, "emergencyHandler":Lcom/android/internal/telephony/EcbmHandler;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/EcbmHandler;->exitEmergencyCallbackMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    goto :goto_5

    .line 476
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 479
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    const/16 v0, 0xe

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v0, v2}, Lcom/android/internal/telephony/EcbmHandler;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 480
    iput v8, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    .line 481
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    .end local v1    # "emergencyHandler":Lcom/android/internal/telephony/EcbmHandler;
    goto :goto_8

    .line 471
    :cond_a
    :goto_6
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v8, v2}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_8

    .line 452
    :cond_b
    :goto_7
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v1, 0x7

    iput v1, v0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 485
    :goto_8
    iget-boolean v0, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    if-eqz v0, :cond_c

    .line 486
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/GsmCdmaConnection;->setConverted(Ljava/lang/String;)V

    .line 487
    iput-boolean v14, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    .line 490
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 491
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 493
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object v0

    .line 404
    .end local v9    # "tm":Landroid/telephony/TelephonyManager;
    .end local v10    # "origNumber":Ljava/lang/String;
    .end local v11    # "operatorIsoContry":Ljava/lang/String;
    .end local v12    # "simIsoContry":Ljava/lang/String;
    .end local v13    # "dialString":Ljava/lang/String;
    .end local v15    # "internationalRoaming":Z
    .end local v16    # "isPhoneInEcmMode":Z
    .end local v17    # "isEmergencyCall":Z
    .end local v18    # "isModemEmergencyNumber":Z
    .restart local p1    # "dialString":Ljava/lang/String;
    :cond_d
    move-object/from16 v1, p1

    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cannot dial in current state"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 545
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method private dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 7
    .param p1, "dialString"    # Ljava/lang/String;

    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 500
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 503
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-boolean v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    move-object v1, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 508
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 509
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 510
    .local v1, "bundle":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    .line 511
    const-string v2, "cdma_3waycall_flash_delay_int"

    .line 512
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    goto :goto_0

    .line 515
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    .line 517
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    if-lez v2, :cond_1

    .line 518
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, ""

    const/16 v4, 0x14

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 520
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    .line 521
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 520
    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 523
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object v2

    .line 525
    .end local v0    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v1    # "bundle":Landroid/os/PersistableBundle;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private disableDataCallInEmergencyCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const-string v0, "disableDataCallInEmergencyCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setIsInEmergencyCall()V

    .line 385
    :cond_0
    return-void
.end method

.method private dumpState()V
    .locals 5

    .line 1157
    const-string v0, "GsmCdmaCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const-string v0, "GsmCdmaCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ringing call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1162
    .local v0, "l":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1163
    const-string v3, "GsmCdmaCallTracker"

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1166
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_0
    const-string v1, "GsmCdmaCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Foreground call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1169
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "s":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1170
    const-string v3, "GsmCdmaCallTracker"

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1173
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_1
    const-string v1, "GsmCdmaCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1176
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "s":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 1177
    const-string v3, "GsmCdmaCallTracker"

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1180
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_2
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 4

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 262
    .local v0, "connCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 263
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 265
    .local v3, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->fakeHoldBeforeDial()V

    .line 262
    .end local v3    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_0
    return-void
.end method

.method private flashAndSetGenericTrue()V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, ""

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 593
    return-void
.end method

.method private getCallStateFromDB()Z
    .locals 3

    .line 1737
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1738
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia_call_state"

    .line 1737
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;
    .locals 1
    .param p1, "what"    # I

    .line 1391
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1401
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object v0

    .line 1399
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object v0

    .line 1397
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object v0

    .line 1395
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->CONFERENCE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object v0

    .line 1393
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3
    .param p1, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 1383
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1384
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 1387
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 1388
    return-void
.end method

.method private handleEcmTimer(I)V
    .locals 3
    .param p1, "action"    # I

    .line 367
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/EcbmHandler;->handleTimerInEmergencyCallbackMode(I)V

    .line 368
    packed-switch p1, :pswitch_data_0

    .line 372
    const-string v0, "GsmCdmaCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEcmTimer, unsupported action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    goto :goto_0

    .line 370
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    .line 374
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .line 1151
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 1152
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->clearDisconnected()V

    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->clearDisconnected()V

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->clearDisconnected()V

    .line 697
    return-void
.end method

.method private isPhoneTypeGsm()Z
    .locals 2

    .line 1667
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 6
    .param p1, "call"    # Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1305
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1306
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1307
    iget-object v2, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1310
    .local v2, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v3
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1313
    .local v3, "call_index":I
    goto :goto_1

    .line 1311
    .end local v3    # "call_index":I
    :catch_0
    move-exception v3

    .line 1312
    .local v3, "ex":Lcom/android/internal/telephony/CallStateException;
    const/4 v3, -0x1

    .line 1314
    .local v3, "call_index":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;I)V

    .line 1306
    .end local v2    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v3    # "call_index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1317
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3
    .param p1, "obj"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 1375
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1378
    :cond_0
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .line 704
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I

    .line 712
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 714
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNeedsPoll:Z

    .line 719
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private onControlInfoRec()V
    .locals 5

    .line 1747
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->sendCdmaConnectedBroadcast()V

    .line 1748
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 1749
    const-string v0, "GsmCdmaCallTracker"

    const-string v1, "on accepted, reset connection time"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1751
    .local v0, "c":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getDurationMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isConnectionTimerReset()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1752
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->resetConnectionTimer()V

    .line 1753
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processNextPostDialChar()V

    .line 1755
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getCallStateFromDB()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1756
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setCallStateFromDB(Z)V

    .line 1759
    .end local v0    # "c":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_1
    return-void
.end method

.method private operationComplete()V
    .locals 2

    .line 723
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    .line 728
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNeedsPoll:Z

    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    goto :goto_0

    .line 731
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    if-gez v0, :cond_1

    .line 733
    const-string v0, "GsmCdmaCallTracker"

    const-string v1, "GsmCdmaCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    .line 736
    :cond_1
    :goto_0
    return-void
.end method

.method private reset()V
    .locals 5

    .line 193
    const-string v0, "GsmCdmaCallTracker"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x24

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 196
    .local v4, "gsmCdmaConnection":Lcom/android/internal/telephony/GsmCdmaConnection;
    if-eqz v4, :cond_0

    .line 197
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    .line 198
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->dispose()V

    .line 195
    .end local v4    # "gsmCdmaConnection":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->dispose()V

    .line 207
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 208
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    .line 210
    return-void
.end method

.method private setCallStateFromDB(Z)V
    .locals 2
    .param p1, "isActive"    # Z

    .line 1742
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1743
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia_call_state"

    .line 1742
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1744
    return-void
.end method

.method private updateMetrics([Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 4
    .param p1, "connections"    # [Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    .local v0, "activeConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/GsmCdmaConnection;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 1142
    .local v3, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    .end local v3    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1144
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallList(ILjava/util/ArrayList;)V

    .line 1145
    return-void
.end method

.method private updatePhoneState()V
    .locals 4

    .line 739
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 740
    .local v0, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_1

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 743
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 746
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 747
    .local v1, "imsPhone":Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_2

    .line 748
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->callEndCleanupHandOverCallIfAny()V

    .line 750
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .end local v1    # "imsPhone":Lcom/android/internal/telephony/Phone;
    goto :goto_1

    .line 744
    :cond_3
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 753
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_4

    .line 754
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_2

    .line 756
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_5

    .line 757
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 761
    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update phone state, old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_6

    .line 764
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhoneStateChanged()V

    .line 765
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V

    .line 767
    :cond_6
    return-void
.end method

.method private updatePhoneType(Z)V
    .locals 3
    .param p1, "duringInit"    # Z

    .line 168
    if-nez p1, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->reset()V

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/android/internal/telephony/GsmCdmaConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallWaitingInfo(Landroid/os/Handler;)V

    .line 177
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    if-eqz v0, :cond_2

    .line 178
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/EcbmHandler;->setInternalDataEnabled(Z)V

    goto :goto_0

    .line 181
    :cond_1
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/GsmCdmaConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    .line 183
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    .line 184
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    .line 185
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 186
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    .line 187
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xf

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 190
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 554
    const-string v0, "phone"

    const-string v1, "acceptCall: incoming..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    goto :goto_1

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 559
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    goto :goto_0

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 568
    .local v0, "cwConn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->updateParent(Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 569
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    .line 570
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 572
    .end local v0    # "cwConn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 576
    :goto_1
    return-void

    .line 574
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canConference()Z
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 639
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 640
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 641
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 638
    :goto_0
    return v0
.end method

.method public canTransfer()Z
    .locals 3

    .line 680
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 681
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 682
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 683
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 684
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 681
    :cond_1
    return v1

    .line 686
    :cond_2
    const-string v0, "GsmCdmaCallTracker"

    const-string v2, "canTransfer: not possible in CDMA"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return v1
.end method

.method public cleanupCalls()V
    .locals 0

    .line 1730
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 1731
    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    .line 631
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->internalClearDisconnected()V

    .line 633
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 635
    return-void
.end method

.method public conference()V
    .locals 2

    .line 618
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->conference(Landroid/os/Message;)V

    goto :goto_0

    .line 622
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->flashAndSetGenericTrue()V

    .line 624
    :goto_0
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 529
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 530
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0

    .line 532
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 9
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    monitor-enter p0

    .line 277
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    .line 279
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->canDial()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 283
    move-object v0, p1

    .line 284
    .local v0, "origNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 289
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    const-wide/16 v1, 0x1f4

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    goto :goto_0

    .line 300
    :catch_0
    move-exception v1

    .line 308
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->fakeHoldForegroundBeforeDial()V

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_6

    .line 315
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 317
    .local v1, "isEmergencyCall":Z
    new-instance v8, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    move-object v2, v8

    move-object v5, p0

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V

    iput-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 319
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 320
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v3, v4, v5, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDial(ILcom/android/internal/telephony/GsmCdmaConnection;ILcom/android/internal/telephony/UUSInfo;)V

    .line 323
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 324
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    goto :goto_3

    .line 333
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    .line 334
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/EcbmHandler;->isInEcm()Z

    move-result v3

    .line 336
    .local v3, "isPhoneInEcmMode":Z
    if-eqz v3, :cond_3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    goto :goto_2

    .line 339
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    .local v4, "emergencyHandler":Lcom/android/internal/telephony/EcbmHandler;
    :try_start_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/EcbmHandler;->exitEmergencyCallbackMode()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    goto :goto_1

    .line 342
    :catch_1
    move-exception v5

    .line 343
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/EcbmHandler;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 346
    iput p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    .line 347
    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 348
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    .end local v3    # "isPhoneInEcmMode":Z
    .end local v4    # "emergencyHandler":Lcom/android/internal/telephony/EcbmHandler;
    goto :goto_4

    .line 337
    .restart local v3    # "isPhoneInEcmMode":Z
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, p2, p3, v6}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_4

    .line 326
    .end local v3    # "isPhoneInEcmMode":Z
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v4, 0x7

    iput v4, v3, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    .line 330
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 351
    :goto_4
    iget-boolean v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    if-eqz v3, :cond_5

    .line 352
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setConverted(Ljava/lang/String;)V

    .line 353
    iput-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    .line 356
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 357
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 359
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v2

    .line 313
    .end local v1    # "isEmergencyCall":Z
    :cond_6
    :try_start_5
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cannot dial in current state"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    .end local v0    # "origNumber":Ljava/lang/String;
    :cond_7
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot dial in current state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 276
    .end local p1    # "dialString":Ljava/lang/String;
    .end local p2    # "clirMode":I
    .end local p3    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .end local p4    # "intentExtras":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/GsmCdmaCallTracker;
    throw p1
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 539
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1681
    const-string v0, "GsmCdmaCallTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1682
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mConnections: length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1684
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v2, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    .line 1685
    const-string v2, "  mConnections[%d]=%s\n"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v5, v5, v1

    aput-object v5, v3, v4

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1684
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1687
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mVoiceCallEndedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mVoiceCallStartedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCallWaitingRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1692
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDroppedDuringPoll: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1693
    move v1, v0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1694
    const-string v2, "  mDroppedDuringPoll[%d]=%s\n"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p2, v2, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1693
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1696
    .end local v1    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRingingCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mForegroundCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mBackgroundCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingMO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHangupPendingMO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDesiredMute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1704
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingCallInEcm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsInEmergencyCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingCallClirMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsEcmTimerCanceled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1711
    :cond_3
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 628
    return-void
.end method

.method protected finalize()V
    .locals 2

    .line 214
    const-string v0, "GsmCdmaCallTracker"

    const-string v1, "GsmCdmaCallTracker finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public getConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)Lcom/android/internal/telephony/GsmCdmaConnection;
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/GsmCdmaCall;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1362
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1363
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1364
    iget-object v2, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1365
    .local v2, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-boolean v3, v2, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1366
    return-object v2

    .line 1363
    .end local v2    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1370
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMaxConnectionsPerCall()I
    .locals 1

    .line 1719
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1720
    const/4 v0, 0x5

    goto :goto_0

    .line 1721
    :cond_0
    const/4 v0, 0x1

    .line 1719
    :goto_0
    return v0
.end method

.method public getMute()Z
    .locals 1

    .line 1256
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    return v0
.end method

.method public getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1

    .line 1671
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .line 1715
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 1410
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1596
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not handled by phone type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1597
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1569
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1570
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1571
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 1572
    new-instance v1, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 1582
    :cond_0
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1583
    const-string v1, "GsmCdmaCallTracker"

    const-string v2, "exception happened on Blank Flash for 3-way call"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1586
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not handled by phone type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1587
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1592
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->onControlInfoRec()V

    .line 1593
    goto/16 :goto_5

    .line 1555
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1556
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1557
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_10

    .line 1559
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    .line 1560
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    goto/16 :goto_5

    .line 1563
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not handled by phone type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1564
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1542
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1543
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1544
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_10

    .line 1545
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 1546
    const-string v1, "GsmCdmaCallTracker"

    const-string v2, "Event EVENT_CALL_WAITING_INFO_CDMA Received"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1549
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not handled by phone type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1550
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1528
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    if-eqz v0, :cond_5

    .line 1529
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1530
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1531
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    .line 1530
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 1533
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    .line 1534
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    .line 1533
    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1537
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/EcbmHandler;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1538
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    .line 1539
    goto/16 :goto_5

    .line 1428
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1429
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1430
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    .line 1433
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1434
    .local v1, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_6

    .line 1435
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->onConferenceMergeFailed()V

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "connection":Lcom/android/internal/telephony/Connection;
    goto :goto_1

    .line 1523
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleRadioNotAvailable()V

    .line 1524
    goto/16 :goto_5

    .line 1519
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleRadioAvailable()V

    .line 1520
    goto/16 :goto_5

    .line 1443
    :cond_6
    :goto_1
    :pswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1444
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1445
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    .line 1446
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getFailedService(I)Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 1448
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->operationComplete()V

    goto/16 :goto_5

    .line 1450
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    goto/16 :goto_5

    .line 1454
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not handled by phone type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1455
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1462
    :pswitch_a
    const/4 v0, 0x0

    .line 1463
    .local v0, "vendorCause":Ljava/lang/String;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1465
    .local v2, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->operationComplete()V

    .line 1467
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_a

    .line 1470
    const/16 v3, 0x10

    .line 1471
    .local v3, "causeCode":I
    const-string v4, "GsmCdmaCallTracker"

    const-string v5, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1474
    .end local v3    # "causeCode":I
    :cond_a
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/LastCallFailCause;

    .line 1475
    .local v3, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    iget v4, v3, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 1476
    .local v4, "causeCode":I
    iget-object v0, v3, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 1479
    .end local v3    # "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    move v3, v4

    .end local v4    # "causeCode":I
    .local v3, "causeCode":I
    :goto_2
    const/16 v4, 0x22

    if-eq v3, v4, :cond_b

    const/16 v4, 0x29

    if-eq v3, v4, :cond_b

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_b

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_b

    const/16 v4, 0x31

    if-eq v3, v4, :cond_b

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_b

    const v4, 0xffff

    if-ne v3, v4, :cond_e

    .line 1487
    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    .line 1488
    .local v4, "loc":Landroid/telephony/CellLocation;
    const/4 v5, -0x1

    .line 1489
    .local v5, "cid":I
    if-eqz v4, :cond_d

    .line 1490
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1491
    move-object v6, v4

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    goto :goto_3

    .line 1493
    :cond_c
    move-object v6, v4

    check-cast v6, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v5

    .line 1496
    :cond_d
    :goto_3
    const v6, 0xc3ba

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v1, 0x2

    .line 1497
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 1496
    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1500
    .end local v4    # "loc":Landroid/telephony/CellLocation;
    .end local v5    # "cid":I
    :cond_e
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "s":I
    :goto_4
    if-ge v1, v4, :cond_f

    .line 1501
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1503
    .local v5, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v5, v3, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onRemoteDisconnect(ILjava/lang/String;)V

    .line 1500
    .end local v5    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1506
    .end local v1    # "i":I
    .end local v4    # "s":I
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 1508
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1509
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallList(ILjava/util/ArrayList;)V

    .line 1510
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1511
    goto :goto_5

    .line 1424
    .end local v0    # "vendorCause":Ljava/lang/String;
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "causeCode":I
    :pswitch_b
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->operationComplete()V

    .line 1425
    goto :goto_5

    .line 1515
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 1516
    goto :goto_5

    .line 1412
    :pswitch_d
    const-string v0, "GsmCdmaCallTracker"

    const-string v3, "Event EVENT_POLL_CALLS_RESULT Received"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    if-ne p1, v0, :cond_10

    .line 1417
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNeedsPoll:Z

    .line 1418
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 1419
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    .line 1600
    :cond_10
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 30
    .param p1, "ar"    # Landroid/os/AsyncResult;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 776
    :try_start_0
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 777
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .local v0, "polledCalls":Ljava/util/List;
    :goto_0
    goto :goto_1

    .line 778
    .end local v0    # "polledCalls":Ljava/util/List;
    :cond_0
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 781
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 786
    .restart local v0    # "polledCalls":Ljava/util/List;
    :goto_1
    move-object v3, v0

    .line 789
    .end local v0    # "polledCalls":Ljava/util/List;
    .local v3, "polledCalls":Ljava/util/List;
    const/4 v0, 0x0

    .line 790
    .local v0, "newRinging":Lcom/android/internal/telephony/Connection;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v4, "newUnknownConnectionsGsm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    const/4 v5, 0x0

    .line 792
    .local v5, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    const/4 v6, 0x0

    .line 794
    .local v6, "hasNonHangupStateChanged":Z
    const/4 v7, 0x0

    .line 795
    .local v7, "hasAnyCallDisconnected":Z
    const/4 v8, 0x0

    .line 796
    .local v8, "needsPollDelay":Z
    const/4 v9, 0x0

    .line 797
    .local v9, "unknownConnectionAppeared":Z
    iget-object v10, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 800
    .local v10, "handoverConnectionsSize":I
    const/4 v11, 0x1

    .line 802
    .local v11, "noConnectionExists":Z
    const/4 v12, 0x0

    .local v12, "i":I
    const/4 v13, 0x0

    .local v13, "curDC":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v29, v5

    move-object v5, v0

    move v0, v11

    move v11, v9

    move v9, v6

    move-object/from16 v6, v29

    .line 803
    .local v0, "noConnectionExists":Z
    .local v5, "newRinging":Lcom/android/internal/telephony/Connection;
    .local v6, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .local v9, "hasNonHangupStateChanged":Z
    .local v11, "unknownConnectionAppeared":Z
    .local v14, "dcSize":I
    :goto_2
    iget-object v15, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v15, v15

    if-ge v12, v15, :cond_1e

    .line 804
    iget-object v15, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v15, v15, v12

    .line 805
    .local v15, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    const/16 v18, 0x0

    .line 808
    .local v18, "dc":Lcom/android/internal/telephony/DriverCall;
    if-ge v13, v14, :cond_2

    .line 809
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/DriverCall;

    move-object/from16 v20, v19

    .line 811
    .end local v18    # "dc":Lcom/android/internal/telephony/DriverCall;
    .local v20, "dc":Lcom/android/internal/telephony/DriverCall;
    move-object/from16 v21, v3

    move-object/from16 v2, v20

    iget v3, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    .end local v3    # "polledCalls":Ljava/util/List;
    .end local v20    # "dc":Lcom/android/internal/telephony/DriverCall;
    .local v2, "dc":Lcom/android/internal/telephony/DriverCall;
    .local v21, "polledCalls":Ljava/util/List;
    move-object/from16 v22, v2

    add-int/lit8 v2, v12, 0x1

    .end local v2    # "dc":Lcom/android/internal/telephony/DriverCall;
    .local v22, "dc":Lcom/android/internal/telephony/DriverCall;
    if-ne v3, v2, :cond_1

    .line 812
    add-int/lit8 v13, v13, 0x1

    .line 819
    move-object/from16 v2, v22

    goto :goto_3

    .line 814
    :cond_1
    const/16 v18, 0x0

    .line 819
    .end local v22    # "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v18    # "dc":Lcom/android/internal/telephony/DriverCall;
    move-object/from16 v2, v18

    goto :goto_3

    .end local v21    # "polledCalls":Ljava/util/List;
    .restart local v3    # "polledCalls":Ljava/util/List;
    :cond_2
    move-object/from16 v21, v3

    move-object/from16 v2, v18

    .end local v3    # "polledCalls":Ljava/util/List;
    .end local v18    # "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v2    # "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v21    # "polledCalls":Ljava/util/List;
    :goto_3
    if-nez v15, :cond_4

    if-eqz v2, :cond_3

    goto :goto_5

    .line 826
    .end local v0    # "noConnectionExists":Z
    .local v3, "noConnectionExists":Z
    :cond_3
    :goto_4
    move v3, v0

    goto :goto_6

    .line 820
    .end local v3    # "noConnectionExists":Z
    .restart local v0    # "noConnectionExists":Z
    :cond_4
    :goto_5
    const/4 v0, 0x0

    goto :goto_4

    .line 826
    .end local v0    # "noConnectionExists":Z
    .restart local v3    # "noConnectionExists":Z
    :goto_6
    if-nez v15, :cond_10

    if-eqz v2, :cond_10

    .line 828
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 833
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    move/from16 v23, v3

    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .end local v3    # "noConnectionExists":Z
    .local v23, "noConnectionExists":Z
    aput-object v3, v0, v12

    .line 834
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    iput v12, v0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 835
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 836
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 839
    iget-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    if-eqz v0, :cond_6

    .line 840
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    if-eqz v0, :cond_5

    .line 844
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleEcmTimer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "poll: hangupPendingMO, hangup conn "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 850
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v0, v0, v12

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    goto :goto_7

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    :try_start_2
    const-string v3, "GsmCdmaCallTracker"

    move-object/from16 v24, v0

    const-string v0, "unexpected error on hangup"

    .end local v0    # "ex":Lcom/android/internal/telephony/CallStateException;
    .local v24, "ex":Lcom/android/internal/telephony/CallStateException;
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 857
    .end local v24    # "ex":Lcom/android/internal/telephony/CallStateException;
    :goto_7
    monitor-exit p0

    return-void

    .line 910
    :cond_6
    move-object/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v11

    move/from16 v28, v13

    goto/16 :goto_b

    .line 861
    .end local v23    # "noConnectionExists":Z
    .restart local v3    # "noConnectionExists":Z
    :cond_7
    move/from16 v23, v3

    .end local v3    # "noConnectionExists":Z
    .restart local v23    # "noConnectionExists":Z
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pendingMo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", dc="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 864
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    new-instance v3, Lcom/android/internal/telephony/GsmCdmaConnection;

    move-object/from16 v25, v6

    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .end local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .local v25, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    invoke-direct {v3, v6, v2, v1, v12}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    aput-object v3, v0, v12

    .line 866
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 867
    .local v0, "hoConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_d

    .line 869
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v3, v3, v12

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    .line 872
    iget-object v3, v0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v6, :cond_8

    iget-object v3, v0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v6, :cond_8

    iget-object v3, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v6, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v3, v6, :cond_8

    .line 875
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    goto :goto_8

    .line 876
    :cond_8
    iget-object v3, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v6, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v3, v6, :cond_9

    iget-object v3, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v6, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v3, v6, :cond_a

    .line 878
    :cond_9
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    .line 881
    :cond_a
    :goto_8
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 883
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 884
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 885
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 886
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 887
    .local v6, "c":Lcom/android/internal/telephony/Connection;
    move/from16 v26, v7

    const-string v7, "GsmCdmaCallTracker"

    .end local v7    # "hasAnyCallDisconnected":Z
    .local v26, "hasAnyCallDisconnected":Z
    move/from16 v27, v11

    new-instance v11, Ljava/lang/StringBuilder;

    .end local v11    # "unknownConnectionAppeared":Z
    .local v27, "unknownConnectionAppeared":Z
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v13

    const-string v13, "HO Conn state is "

    .end local v13    # "curDC":I
    .local v28, "curDC":I
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v7, v6, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    iget-object v11, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    if-ne v7, v11, :cond_b

    .line 889
    const-string v7, "GsmCdmaCallTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removing HO conn "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 893
    .end local v6    # "c":Lcom/android/internal/telephony/Connection;
    :cond_b
    nop

    .line 884
    move/from16 v7, v26

    move/from16 v11, v27

    move/from16 v13, v28

    goto :goto_9

    .line 896
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    .end local v26    # "hasAnyCallDisconnected":Z
    .end local v27    # "unknownConnectionAppeared":Z
    .end local v28    # "curDC":I
    .restart local v7    # "hasAnyCallDisconnected":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    .restart local v13    # "curDC":I
    :cond_c
    move/from16 v26, v7

    move/from16 v27, v11

    move/from16 v28, v13

    .end local v7    # "hasAnyCallDisconnected":Z
    .end local v11    # "unknownConnectionAppeared":Z
    .end local v13    # "curDC":I
    .restart local v26    # "hasAnyCallDisconnected":Z
    .restart local v27    # "unknownConnectionAppeared":Z
    .restart local v28    # "curDC":I
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v6, v6, v12

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    goto :goto_b

    .line 899
    .end local v26    # "hasAnyCallDisconnected":Z
    .end local v27    # "unknownConnectionAppeared":Z
    .end local v28    # "curDC":I
    .restart local v7    # "hasAnyCallDisconnected":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    .restart local v13    # "curDC":I
    :cond_d
    move/from16 v26, v7

    move/from16 v27, v11

    move/from16 v28, v13

    .end local v7    # "hasAnyCallDisconnected":Z
    .end local v11    # "unknownConnectionAppeared":Z
    .end local v13    # "curDC":I
    .restart local v26    # "hasAnyCallDisconnected":Z
    .restart local v27    # "unknownConnectionAppeared":Z
    .restart local v28    # "curDC":I
    invoke-direct {v1, v2, v12}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    move-object v5, v3

    .line 900
    if-nez v5, :cond_f

    .line 901
    const/4 v11, 0x1

    .line 902
    .end local v27    # "unknownConnectionAppeared":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 903
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v3, v3, v12

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 905
    :cond_e
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v3, v3, v12

    move-object v6, v3

    .line 910
    .end local v0    # "hoConnection":Lcom/android/internal/telephony/Connection;
    .end local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .local v6, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    move-object/from16 v25, v6

    .end local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v11    # "unknownConnectionAppeared":Z
    .restart local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v27    # "unknownConnectionAppeared":Z
    :goto_a
    move/from16 v27, v11

    :cond_f
    :goto_b
    const/4 v0, 0x1

    .end local v2    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v9    # "hasNonHangupStateChanged":Z
    .end local v15    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v27    # "unknownConnectionAppeared":Z
    .local v0, "hasNonHangupStateChanged":Z
    .restart local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v11    # "unknownConnectionAppeared":Z
    :goto_c
    goto/16 :goto_13

    .line 911
    .end local v0    # "hasNonHangupStateChanged":Z
    .end local v23    # "noConnectionExists":Z
    .end local v26    # "hasAnyCallDisconnected":Z
    .end local v28    # "curDC":I
    .restart local v2    # "dc":Lcom/android/internal/telephony/DriverCall;
    .local v3, "noConnectionExists":Z
    .restart local v7    # "hasAnyCallDisconnected":Z
    .restart local v9    # "hasNonHangupStateChanged":Z
    .restart local v13    # "curDC":I
    .restart local v15    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_10
    move/from16 v23, v3

    move-object/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v11

    move/from16 v28, v13

    .end local v3    # "noConnectionExists":Z
    .end local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v7    # "hasAnyCallDisconnected":Z
    .end local v11    # "unknownConnectionAppeared":Z
    .end local v13    # "curDC":I
    .restart local v23    # "noConnectionExists":Z
    .restart local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v26    # "hasAnyCallDisconnected":Z
    .restart local v27    # "unknownConnectionAppeared":Z
    .restart local v28    # "curDC":I
    if-eqz v15, :cond_15

    if-nez v2, :cond_15

    .line 912
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 915
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 921
    :cond_11
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 922
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_d
    if-ge v3, v0, :cond_12

    .line 923
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adding fgCall cn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to droppedDuringPoll"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 924
    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v6, v6, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 925
    .local v6, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-object v7, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    .end local v6    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 927
    .end local v3    # "n":I
    :cond_12
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v3

    .line 930
    const/4 v3, 0x0

    .restart local v3    # "n":I
    :goto_e
    if-ge v3, v0, :cond_13

    .line 931
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adding rgCall cn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to droppedDuringPoll"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 932
    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v6, v6, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 933
    .restart local v6    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-object v7, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    .end local v6    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 937
    .end local v3    # "n":I
    :cond_13
    iget-boolean v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    if-eqz v3, :cond_14

    .line 938
    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleEcmTimer(I)V

    .line 941
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 945
    .end local v0    # "count":I
    :goto_f
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v3, 0x0

    aput-object v3, v0, v12

    goto/16 :goto_14

    .line 946
    :cond_15
    if-eqz v15, :cond_17

    if-eqz v2, :cond_17

    invoke-virtual {v15, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 950
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    new-instance v3, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {v3, v6, v2, v1, v12}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    aput-object v3, v0, v12

    .line 953
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v0, v3, :cond_16

    .line 954
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v0, v0, v12

    move-object v5, v0

    .line 956
    :cond_16
    const/4 v0, 0x1

    goto/16 :goto_c

    .line 957
    :cond_17
    if-eqz v15, :cond_1d

    if-eqz v2, :cond_1d

    .line 959
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v15}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    move-result v0

    iget-boolean v3, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-eq v0, v3, :cond_1a

    .line 960
    iget-boolean v0, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    const/4 v3, 0x1

    if-ne v0, v3, :cond_19

    .line 962
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    invoke-direct {v1, v2, v12}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 965
    .end local v5    # "newRinging":Lcom/android/internal/telephony/Connection;
    .local v0, "newRinging":Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_18

    .line 966
    const/4 v11, 0x1

    .line 967
    .end local v27    # "unknownConnectionAppeared":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    move-object v6, v15

    .line 969
    .end local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .local v6, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    move/from16 v27, v11

    goto :goto_10

    .end local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v11    # "unknownConnectionAppeared":Z
    .restart local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v27    # "unknownConnectionAppeared":Z
    :cond_18
    move-object/from16 v6, v25

    .end local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 803
    move-object v5, v0

    goto :goto_15

    .line 975
    .end local v0    # "newRinging":Lcom/android/internal/telephony/Connection;
    .end local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v5    # "newRinging":Lcom/android/internal/telephony/Connection;
    .restart local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    :cond_19
    const-string v0, "GsmCdmaCallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in RIL, Phantom call appeared "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 979
    :cond_1a
    invoke-virtual {v15, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v0

    .line 980
    .local v0, "changed":Z
    if-nez v9, :cond_1c

    if-eqz v0, :cond_1b

    goto :goto_11

    :cond_1b
    const/16 v17, 0x0

    goto :goto_12

    :cond_1c
    :goto_11
    const/16 v17, 0x1

    :goto_12
    move/from16 v0, v17

    .line 803
    .end local v0    # "changed":Z
    .end local v2    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v15    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v27    # "unknownConnectionAppeared":Z
    .restart local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v11    # "unknownConnectionAppeared":Z
    :goto_13
    move v9, v0

    :cond_1d
    :goto_14
    move-object/from16 v6, v25

    :goto_15
    move/from16 v11, v27

    add-int/lit8 v12, v12, 0x1

    .line 802
    move-object/from16 v3, v21

    move/from16 v0, v23

    move/from16 v7, v26

    move/from16 v13, v28

    move-object/from16 v2, p1

    goto/16 :goto_2

    .line 1005
    .end local v12    # "i":I
    .end local v14    # "dcSize":I
    .end local v21    # "polledCalls":Ljava/util/List;
    .end local v23    # "noConnectionExists":Z
    .end local v26    # "hasAnyCallDisconnected":Z
    .end local v28    # "curDC":I
    .local v0, "noConnectionExists":Z
    .local v3, "polledCalls":Ljava/util/List;
    .restart local v7    # "hasAnyCallDisconnected":Z
    :cond_1e
    move-object/from16 v21, v3

    move-object/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v11

    .end local v3    # "polledCalls":Ljava/util/List;
    .end local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v7    # "hasAnyCallDisconnected":Z
    .end local v11    # "unknownConnectionAppeared":Z
    .restart local v21    # "polledCalls":Ljava/util/List;
    .restart local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v26    # "hasAnyCallDisconnected":Z
    .restart local v27    # "unknownConnectionAppeared":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v2

    if-nez v2, :cond_1f

    if-eqz v0, :cond_1f

    .line 1006
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 1012
    :cond_1f
    iget-object v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v2, :cond_21

    .line 1013
    const-string v2, "GsmCdmaCallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pending MO dropped before poll fg state:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1014
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1013
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1018
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 1020
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v2

    if-nez v2, :cond_21

    .line 1021
    iget-boolean v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    if-eqz v2, :cond_20

    .line 1022
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    .line 1024
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 1028
    :cond_21
    if-eqz v5, :cond_22

    .line 1029
    iget-object v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1035
    :cond_22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    .local v2, "locallyDisconnectedConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/GsmCdmaConnection;>;"
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    move-object/from16 v6, v25

    .end local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .local v3, "i":I
    .restart local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    :goto_16
    if-ltz v3, :cond_28

    .line 1037
    iget-object v7, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1039
    .local v7, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    const/4 v11, 0x0

    .line 1041
    .local v11, "wasDisconnected":Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    move-result v12

    const/4 v13, 0x3

    if-eqz v12, :cond_24

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->getConnectTime()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-nez v12, :cond_24

    .line 1044
    iget v12, v7, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    if-ne v12, v13, :cond_23

    .line 1045
    const/16 v12, 0x10

    .local v12, "cause":I
    goto :goto_17

    .line 1047
    .end local v12    # "cause":I
    :cond_23
    const/4 v12, 0x1

    .line 1051
    .restart local v12    # "cause":I
    :goto_17
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "missed/rejected call, conn.cause="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v7, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1052
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setting cause to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1054
    iget-object v13, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1055
    invoke-virtual {v7, v12}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    move-result v13

    or-int v13, v26, v13

    .line 1056
    .end local v26    # "hasAnyCallDisconnected":Z
    .local v13, "hasAnyCallDisconnected":Z
    const/4 v11, 0x1

    .line 1057
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    .end local v12    # "cause":I
    nop

    .line 1066
    move/from16 v26, v13

    goto :goto_18

    .line 1058
    .end local v13    # "hasAnyCallDisconnected":Z
    .restart local v26    # "hasAnyCallDisconnected":Z
    :cond_24
    iget v12, v7, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    if-eq v12, v13, :cond_25

    iget v12, v7, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    const/4 v13, 0x7

    if-ne v12, v13, :cond_26

    .line 1060
    :cond_25
    iget-object v12, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1061
    iget v12, v7, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    invoke-virtual {v7, v12}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    move-result v12

    or-int v12, v26, v12

    .line 1062
    .end local v26    # "hasAnyCallDisconnected":Z
    .local v12, "hasAnyCallDisconnected":Z
    const/4 v11, 0x1

    .line 1063
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1066
    move/from16 v26, v12

    .end local v12    # "hasAnyCallDisconnected":Z
    .restart local v26    # "hasAnyCallDisconnected":Z
    :cond_26
    :goto_18
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v12

    if-nez v12, :cond_27

    if-eqz v11, :cond_27

    if-eqz v27, :cond_27

    if-ne v7, v6, :cond_27

    .line 1068
    const/4 v12, 0x0

    .line 1069
    .end local v27    # "unknownConnectionAppeared":Z
    .local v12, "unknownConnectionAppeared":Z
    const/4 v6, 0x0

    .line 1036
    .end local v7    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v11    # "wasDisconnected":Z
    move/from16 v27, v12

    .end local v12    # "unknownConnectionAppeared":Z
    .restart local v27    # "unknownConnectionAppeared":Z
    :cond_27
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_16

    .line 1072
    .end local v3    # "i":I
    :cond_28
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_29

    .line 1073
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v7, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v7

    invoke-virtual {v3, v7, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallList(ILjava/util/ArrayList;)V

    .line 1077
    :cond_29
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1078
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 1079
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Connection;

    .line 1080
    .local v7, "hoConnection":Lcom/android/internal/telephony/Connection;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handlePollCalls - disconnect hoConn= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " hoConn.State= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1080
    invoke-virtual {v1, v11}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 1083
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    goto :goto_1a

    .line 1085
    :cond_2a
    const/4 v11, 0x1

    const/4 v12, -0x1

    invoke-virtual {v7, v12}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    .line 1088
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1089
    .end local v7    # "hoConnection":Lcom/android/internal/telephony/Connection;
    goto :goto_19

    .line 1092
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :cond_2b
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2c

    .line 1093
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x5

    .line 1094
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1093
    invoke-interface {v3, v7}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 1097
    :cond_2c
    if-eqz v8, :cond_2d

    .line 1098
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsAfterDelay()V

    .line 1106
    :cond_2d
    if-nez v5, :cond_2e

    if-nez v9, :cond_2e

    if-eqz v26, :cond_2f

    .line 1107
    :cond_2e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->internalClearDisconnected()V

    .line 1111
    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 1113
    if-eqz v27, :cond_31

    .line 1114
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1115
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Connection;

    .line 1116
    .local v7, "c":Lcom/android/internal/telephony/Connection;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Notify unknown for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1117
    iget-object v11, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v11, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1118
    .end local v7    # "c":Lcom/android/internal/telephony/Connection;
    goto :goto_1b

    .line 1120
    :cond_30
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1124
    :cond_31
    if-nez v9, :cond_32

    if-nez v5, :cond_32

    if-eqz v26, :cond_33

    .line 1125
    :cond_32
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1126
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updateMetrics([Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 1130
    :cond_33
    if-lez v10, :cond_34

    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_34

    .line 1131
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1132
    .local v3, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_34

    .line 1133
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->callEndCleanupHandOverCallIfAny()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1137
    .end local v3    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_34
    monitor-exit p0

    return-void

    .line 785
    .end local v0    # "noConnectionExists":Z
    .end local v2    # "locallyDisconnectedConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/GsmCdmaConnection;>;"
    .end local v4    # "newUnknownConnectionsGsm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    .end local v5    # "newRinging":Lcom/android/internal/telephony/Connection;
    .end local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v8    # "needsPollDelay":Z
    .end local v9    # "hasNonHangupStateChanged":Z
    .end local v10    # "handoverConnectionsSize":I
    .end local v21    # "polledCalls":Ljava/util/List;
    .end local v26    # "hasAnyCallDisconnected":Z
    .end local v27    # "unknownConnectionAppeared":Z
    :cond_35
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsAfterDelay()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 786
    monitor-exit p0

    return-void

    .line 775
    .end local p1    # "ar":Landroid/os/AsyncResult;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/GsmCdmaCallTracker;
    throw v0
.end method

.method public hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 3
    .param p1, "call"    # Lcom/android/internal/telephony/GsmCdmaCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1263
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1267
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne p1, v0, :cond_0

    .line 1268
    const-string v0, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1269
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1270
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    goto :goto_0

    .line 1271
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne p1, v0, :cond_3

    .line 1272
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1274
    const-string v0, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    goto :goto_0

    .line 1277
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1278
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1280
    const-string v0, "hangup all conns in active/background call, without affecting ringing call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V

    goto :goto_0

    .line 1283
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1284
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_0

    .line 1286
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne p1, v0, :cond_5

    .line 1287
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1289
    const-string v0, "hangup all conns in background call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V

    goto :goto_0

    .line 1293
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupWaitingOrBackground()V

    .line 1300
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->onHangupLocal()V

    .line 1301
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1302
    return-void

    .line 1296
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCdmaCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "does not belong to GsmCdmaCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1264
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1185
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-ne v0, p0, :cond_3

    .line 1190
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-ne p1, v0, :cond_1

    .line 1192
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    if-eqz v0, :cond_0

    .line 1193
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleEcmTimer(I)V

    .line 1197
    :cond_0
    const-string v0, "hangup conn with callId \'-1\' as there is no DIAL response yet "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    goto :goto_0

    .line 1199
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1200
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1201
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 1213
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onLocalDisconnect()V

    .line 1215
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 1216
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1217
    return-void

    .line 1220
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;I)V

    .line 1221
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    goto :goto_0

    .line 1222
    :catch_0
    move-exception v0

    .line 1225
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GsmCdmaCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmCdmaCallTracker WARN: hangup() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    .end local v0    # "ex":Lcom/android/internal/telephony/CallStateException;
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onHangupLocal()V

    .line 1231
    return-void

    .line 1186
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCdmaConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "does not belong to GsmCdmaCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 6
    .param p1, "call"    # Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1347
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1348
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1349
    iget-object v2, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1350
    .local v2, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-boolean v3, v2, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v3, :cond_0

    .line 1351
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;I)V

    .line 1352
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v4

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    .end local v2    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1357
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 1355
    :catch_0
    move-exception v0

    .line 1356
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GsmCdmaCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hangupConnectionByIndex caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    .end local v0    # "ex":Lcom/android/internal/telephony/CallStateException;
    :goto_1
    return-void
.end method

.method public hangupConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)V
    .locals 6
    .param p1, "call"    # Lcom/android/internal/telephony/GsmCdmaCall;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1332
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1333
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1334
    iget-object v2, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1335
    .local v2, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-boolean v3, v2, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1336
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;I)V

    .line 1337
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1338
    return-void

    .line 1333
    .end local v2    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1342
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "no GsmCdma index found"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hangupForegroundResumeBackground()V
    .locals 2

    .line 1326
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1328
    return-void
.end method

.method public hangupWaitingOrBackground()V
    .locals 2

    .line 1320
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1321
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1322
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1323
    return-void
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .line 1663
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1676
    const-string v0, "GsmCdmaCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 247
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 248
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 249
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 237
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 239
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 222
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 223
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 225
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    .line 226
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 228
    :cond_0
    return-void
.end method

.method public rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    .line 586
    return-void

    .line 584
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected sendCdmaConnectedBroadcast()V
    .locals 2

    .line 1764
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1765
    .local v0, "cdmaCallRecIntent":Landroid/content/Intent;
    const-string v1, "com.android.incallui.ACTION_CDMA_CALL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1766
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1767
    return-void
.end method

.method public separate(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1234
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-ne v0, p0, :cond_0

    .line 1239
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v1

    const/16 v2, 0xc

    .line 1240
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1239
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    goto :goto_0

    .line 1241
    :catch_0
    move-exception v0

    .line 1244
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GsmCdmaCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmCdmaCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    .end local v0    # "ex":Lcom/android/internal/telephony/CallStateException;
    :goto_0
    return-void

    .line 1235
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCdmaConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "does not belong to GsmCdmaCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIsInEmergencyCall()V
    .locals 3

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    .line 390
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/EcbmHandler;->setInternalDataEnabled(Z)V

    .line 391
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    .line 392
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallStateChange(Z)V

    .line 393
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .line 1251
    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    .line 1252
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 1253
    return-void
.end method

.method public switchWaitingOrHoldingAndActive()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_2

    .line 600
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 602
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 601
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    goto :goto_0

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 605
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->flashAndSetGenericTrue()V

    goto :goto_0

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v2, ""

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 615
    :goto_0
    return-void

    .line 598
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 253
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 244
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 233
    return-void
.end method

.method public updatePhoneType()V
    .locals 1

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneType(Z)V

    .line 165
    return-void
.end method
