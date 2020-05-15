.class public Lcom/android/internal/telephony/test/SimulatedCommands;
.super Lcom/android/internal/telephony/BaseCommands;
.source "SimulatedCommands.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;
.implements Lcom/android/internal/telephony/test/SimulatedRadioControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;,
        Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;
    }
.end annotation


# static fields
.field public static final DEFAULT_PIN1_ATTEMPT:I = 0x5

.field public static final DEFAULT_PIN2_ATTEMPT:I = 0x5

.field public static final DEFAULT_SIM_PIN2_CODE:Ljava/lang/String; = "5678"

.field public static final DEFAULT_SIM_PIN_CODE:Ljava/lang/String; = "1234"

.field public static final FAKE_ESN:Ljava/lang/String; = "1234"

.field public static final FAKE_IMEI:Ljava/lang/String; = "012345678901234"

.field public static final FAKE_IMEISV:Ljava/lang/String; = "99"

.field public static final FAKE_LONG_NAME:Ljava/lang/String; = "Fake long name"

.field public static final FAKE_MCC_MNC:Ljava/lang/String; = "310260"

.field public static final FAKE_MEID:Ljava/lang/String; = "1234"

.field public static final FAKE_SHORT_NAME:Ljava/lang/String; = "Fake short name"

.field private static final INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field private static final INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

.field private static final LOG_TAG:Ljava/lang/String; = "SimulatedCommands"

.field private static final SIM_PUK2_CODE:Ljava/lang/String; = "87654321"

.field private static final SIM_PUK_CODE:Ljava/lang/String; = "12345678"


# instance fields
.field private final getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelId:I

.field public mCssSupported:Z

.field private mDataRadioTech:I

.field private mDataRegState:I

.field private mDcSuccess:Z

.field public mDefaultRoamingIndicator:I

.field private final mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private mIccCardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;

.field private mIccIoResultForApduLogicalChannel:Lcom/android/internal/telephony/uicc/IccIoResult;

.field private mIccSlotStatus:Lcom/android/internal/telephony/uicc/IccSlotStatus;

.field private mImei:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field private mImsRegState:[I

.field private mIsRadioPowerFailResponse:Z

.field public mMaxDataCalls:I

.field mNetworkType:I

.field mNextCallFailCause:I

.field mPausedResponseCount:I

.field mPausedResponses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mPin1attemptsRemaining:I

.field mPin2Code:Ljava/lang/String;

.field mPin2UnlockAttempts:I

.field mPinCode:Ljava/lang/String;

.field mPinUnlockAttempts:I

.field mPuk2UnlockAttempts:I

.field mPukUnlockAttempts:I

.field public mReasonForDenial:I

.field public mRoamingIndicator:I

.field private mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimFdnEnabled:Z

.field mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field mSimLockEnabled:Z

.field mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

.field mSsnNotifyOn:Z

.field public mSystemIsInPrl:I

.field private mVoiceRadioTech:I

.field private mVoiceRegState:I

.field simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

.field private smscAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 89
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 114
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin1attemptsRemaining:I

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    .line 122
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRegState:I

    .line 123
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRadioTech:I

    .line 124
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDataRegState:I

    .line 125
    iput v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDataRadioTech:I

    .line 139
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mChannelId:I

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    .line 144
    const/16 v2, 0x10

    iput v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNextCallFailCause:I

    .line 146
    iput-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcSuccess:Z

    .line 148
    iput-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIsRadioPowerFailResponse:Z

    .line 977
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1005
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1030
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1420
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2193
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SimulatedCommands"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    .line 156
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 157
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 159
    .local v2, "looper":Landroid/os/Looper;
    new-instance v3, Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    .line 161
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 162
    sget-object v3, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 163
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v4, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    if-eq v3, v4, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    .line 164
    const-string v3, "1234"

    iput-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    .line 165
    sget-object v3, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 166
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sget-object v4, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    if-eq v3, v4, :cond_1

    move v0, v1

    nop

    :cond_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    .line 167
    const-string v0, "5678"

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    .line 168
    return-void
.end method

.method private isSimLocked()Z
    .locals 2

    .line 1245
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    if-eq v0, v1, :cond_0

    .line 1246
    const/4 v0, 0x1

    return v0

    .line 1248
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 177
    const-string v0, "SimulatedCommands"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method private resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "ret"    # Ljava/lang/Object;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 1687
    if-eqz p1, :cond_1

    .line 1688
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1689
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    if-lez v0, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1692
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1695
    :cond_1
    :goto_0
    return-void
.end method

.method private resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "ret"    # Ljava/lang/Object;

    .line 1676
    if-eqz p1, :cond_1

    .line 1677
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1678
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    if-lez v0, :cond_0

    .line 1679
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1681
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1684
    :cond_1
    :goto_0
    return-void
.end method

.method private unimplemented(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .line 1663
    if-eqz p1, :cond_1

    .line 1664
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unimplemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1667
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    if-lez v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1670
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1673
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 789
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->acceptCall(Landroid/os/Message;)V

    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onAnswer()Z

    move-result v0

    .line 792
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 793
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 795
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 797
    :goto_0
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1282
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1283
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1276
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1277
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1269
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1270
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    .line 1271
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 1272
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 1507
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1508
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 394
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 395
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 361
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    iput-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    .line 363
    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 365
    return-void

    .line 368
    :cond_0
    const-string v1, "SimulatedCommands"

    const-string v2, "[SimCmd] changeIccPin: pin failed!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 372
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 373
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 377
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iput-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    .line 379
    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 381
    return-void

    .line 384
    :cond_0
    const-string v1, "SimulatedCommands"

    const-string v2, "[SimCmd] changeIccPin2: pin2 failed!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 388
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 389
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1881
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1882
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1873
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1875
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1876
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v1, 0x33

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 732
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 733
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 735
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 737
    :goto_0
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1178
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->deactivateDataCall(IILandroid/os/Message;)V

    .line 1179
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1180
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1113
    const-string v0, "SimulatedCommands"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete RUIM message at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1115
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1107
    const-string v0, "SimulatedCommands"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete message at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1109
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 552
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    .line 553
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    .line 555
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 556
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .line 571
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    .line 574
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 575
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 174
    :cond_0
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1397
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 751
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v1, 0x34

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 753
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 754
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 756
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 758
    :goto_0
    return-void
.end method

.method public forceDataDormancy(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1821
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1822
    return-void
.end method

.method public getAllowedCarriers(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2071
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 2072
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1434
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1435
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 1455
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getBasebandVersion(Landroid/os/Message;)V

    .line 1456
    const-string v0, "SimulatedCommands"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1457
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .line 1708
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1709
    .local v0, "ret":[Ljava/lang/String;
    const-string v1, "123"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1710
    const-string v1, "456"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1711
    const-string v1, "789"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1712
    const-string v1, "234"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1713
    const-string v1, "345"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1714
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1715
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1329
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1811
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1813
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1241
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1242
    return-void
.end method

.method public getCellInfoList(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "WorkSource"    # Landroid/os/WorkSource;

    .line 1903
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCellInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1905
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1906
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1907
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1908
    const-wide v1, 0x1526bf6e6d4L

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1909
    const/16 v1, 0x136

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1910
    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1911
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1912
    const/16 v1, 0x1c8

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1913
    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1914
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1915
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1917
    sget-object v1, Landroid/telephony/CellInfoGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfoGsm;

    .line 1919
    .local v1, "cellInfo":Landroid/telephony/CellInfoGsm;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1920
    .local v2, "mCellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1923
    .end local v0    # "p":Landroid/os/Parcel;
    .end local v1    # "cellInfo":Landroid/telephony/CellInfoGsm;
    .end local v2    # "mCellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCellInfoList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1924
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .line 507
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getCurrentCalls(Landroid/os/Message;)V

    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedCommands;->isSimLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->getDriverCalls()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 513
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 516
    :goto_0
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 537
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 996
    new-instance v0, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 997
    .local v0, "ret":Landroid/hardware/radio/V1_0/DataRegStateResult;
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDataRegState:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataRegStateResult;->regState:I

    .line 998
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDataRadioTech:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataRegStateResult;->rat:I

    .line 999
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mMaxDataCalls:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataRegStateResult;->maxDataCalls:I

    .line 1000
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mReasonForDenial:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataRegStateResult;->reasonDataDenied:I

    .line 1002
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1003
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 1701
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getDeviceIdentity(Landroid/os/Message;)V

    .line 1702
    const-string v0, "012345678901234"

    const-string v1, "99"

    const-string v2, "1234"

    const-string v3, "1234"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1703
    return-void
.end method

.method public getGetDataRegistrationStateCallCount()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1009
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getGetNetworkSelectionModeCallCount()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1424
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getGetOperatorCallCount()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1034
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1035
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    return v1
.end method

.method public getGetVoiceRegistrationStateCallCount()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 981
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1838
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1839
    return-void
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2025
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 2026
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 606
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getIMEI(Landroid/os/Message;)V

    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImei:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImei:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "012345678901234"

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 608
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 623
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getIMEISV(Landroid/os/Message;)V

    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImeiSv:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImeiSv:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "99"

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 625
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 579
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 580
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 590
    const-string v0, "012345678901234"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 591
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .line 184
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getIccCardStatus(Landroid/os/Message;)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccCardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccCardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IccCardStatus not set"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 190
    :goto_0
    return-void
.end method

.method public getIccSlotsStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .line 198
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getIccSlotsStatus(Landroid/os/Message;)V

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccSlotStatus:Lcom/android/internal/telephony/uicc/IccSlotStatus;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccSlotStatus:Lcom/android/internal/telephony/uicc/IccSlotStatus;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 202
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 205
    :goto_0
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 1950
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImsRegState:[I

    if-nez v0, :cond_0

    .line 1951
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImsRegState:[I

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImsRegState:[I

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1955
    return-void

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 828
    new-instance v0, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v0}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 829
    .local v0, "mFailCause":Lcom/android/internal/telephony/LastCallFailCause;
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNextCallFailCause:I

    iput v1, v0, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 830
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 831
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 845
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 846
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 839
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 840
    return-void
.end method

.method public getModemActivityInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2061
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 2062
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 852
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .line 1200
    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 1202
    .local v1, "ret":[I
    const/4 v2, 0x0

    const/4 v3, 0x6

    aput v3, v1, v2

    .line 1203
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1204
    aput v2, v1, v2

    .line 1203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1206
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1207
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1412
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1413
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1414
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1416
    .local v0, "ret":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 1417
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1418
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .line 1020
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1021
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 1023
    .local v0, "ret":[Ljava/lang/String;
    const-string v1, "Fake long name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1024
    const-string v1, "Fake short name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1025
    const-string v1, "310260"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1027
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1028
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 524
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->getDataCallList(Landroid/os/Message;)V

    .line 525
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .line 1191
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1192
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1194
    .local v0, "ret":[I
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNetworkType:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1195
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1196
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1740
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1741
    return-void
.end method

.method public getRadioCapability(Landroid/os/Message;)V
    .locals 8
    .param p1, "result"    # Landroid/os/Message;

    .line 2076
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getRadioCapability(Landroid/os/Message;)V

    .line 2077
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0xffff

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2078
    return-void
.end method

.method public getRilVersion()I
    .locals 1

    .line 1928
    const/16 v0, 0xb

    return v0
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 16
    .param p1, "result"    # Landroid/os/Message;

    move-object/from16 v0, p0

    .line 861
    iget-object v1, v0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v1, :cond_0

    .line 862
    new-instance v1, Landroid/telephony/SignalStrength;

    const/16 v3, 0x14

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/16 v10, 0x63

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const v13, 0x7fffffff

    const v14, 0x7fffffff

    const v15, 0x7fffffff

    move-object v2, v1

    invoke-direct/range {v2 .. v15}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIII)V

    iput-object v1, v0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 879
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 880
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 1217
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->smscAddress:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1218
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getSmscAddress(Landroid/os/Message;)V

    .line 1219
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .line 1891
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getVoiceRadioTechnology(Landroid/os/Message;)V

    .line 1892
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1893
    .local v0, "ret":[I
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRadioTech:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1894
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1895
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 963
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 965
    new-instance v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 966
    .local v0, "ret":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRegState:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->regState:I

    .line 967
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRadioTech:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->rat:I

    .line 968
    iget-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCssSupported:Z

    iput-boolean v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cssSupported:Z

    .line 969
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mRoamingIndicator:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->roamingIndicator:I

    .line 970
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSystemIsInPrl:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->systemIsInPrl:I

    .line 971
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDefaultRoamingIndicator:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->defaultRoamingIndicator:I

    .line 972
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mReasonForDenial:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->reasonForDenial:I

    .line 974
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 975
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "accept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 943
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 944
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 4
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v1, 0x30

    add-int/2addr v1, p1

    int-to-char v1, v1

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 644
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 645
    const-string v2, "GSM"

    const-string v3, "[SimCmd] hangupConnection: resultFail"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 648
    :cond_0
    const-string v2, "GSM"

    const-string v3, "[SimCmd] hangupConnection: resultSuccess"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 651
    :goto_0
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v1, 0x31

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 689
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 690
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 692
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 694
    :goto_0
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 667
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 668
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 670
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 672
    :goto_0
    return-void
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1981
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1982
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "response"    # Landroid/os/Message;

    .line 1288
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/test/SimulatedCommands;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1289
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "aid"    # Ljava/lang/String;
    .param p10, "result"    # Landroid/os/Message;

    .line 1299
    invoke-direct {p0, p10}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1300
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "p2"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1974
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1975
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mChannelId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1976
    .local v0, "result":Ljava/lang/Object;
    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1977
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .line 2000
    invoke-direct {p0, p7}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 2001
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    move-object v0, p0

    .line 1988
    move-object/from16 v10, p8

    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object v9, v10

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 1990
    iget-object v1, v0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccIoResultForApduLogicalChannel:Lcom/android/internal/telephony/uicc/IccIoResult;

    if-eqz v1, :cond_0

    .line 1991
    iget-object v1, v0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccIoResultForApduLogicalChannel:Lcom/android/internal/telephony/uicc/IccIoResult;

    invoke-direct {v0, v10, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 1993
    :cond_0
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IccIoResult not set"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v10, v1, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1995
    :goto_0
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 1519
    if-eqz p2, :cond_0

    .line 1520
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1521
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1523
    :cond_0
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1538
    if-eqz p2, :cond_0

    .line 1539
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1540
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1542
    :cond_0
    return-void
.end method

.method public isDataAllowed()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2204
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public notifyEmergencyCallbackMode()V
    .locals 1

    .line 2098
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 2099
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 2101
    :cond_0
    return-void
.end method

.method public notifyExitEmergencyCallbackMode()V
    .locals 3

    .line 2110
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 2111
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2114
    :cond_0
    return-void
.end method

.method public notifyGsmBroadcastSms(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 2086
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 2087
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 2089
    :cond_0
    return-void
.end method

.method public notifyIccSmsFull()V
    .locals 1

    .line 2092
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 2093
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 2095
    :cond_0
    return-void
.end method

.method public notifyImsNetworkStateChanged()V
    .locals 1

    .line 2117
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 2118
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2120
    :cond_0
    return-void
.end method

.method public notifyModemReset()V
    .locals 4

    .line 2123
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mModemResetRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 2124
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mModemResetRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const-string v2, "Test"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2126
    :cond_0
    return-void
.end method

.method public notifyNetworkStateChanged()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2140
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2141
    return-void
.end method

.method public notifyOtaProvisionStatusChanged()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2145
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 2146
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2147
    .local v0, "ret":[I
    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    .line 2148
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2150
    .end local v0    # "ret":[I
    :cond_0
    return-void
.end method

.method public notifyRadioOn()V
    .locals 1

    .line 2135
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2136
    return-void
.end method

.method public notifySignalStrength()V
    .locals 15

    .line 2153
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_0

    .line 2154
    new-instance v0, Landroid/telephony/SignalStrength;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, 0x63

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const v13, 0x7fffffff

    const v14, 0x7fffffff

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIII)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 2171
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_1

    .line 2172
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 2175
    :cond_1
    return-void
.end method

.method public notifySmsStatus(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 2080
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 2081
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 2083
    :cond_0
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 0
    .param p1, "itemID"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2005
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 2006
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 0
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2020
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 2021
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 0
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 2015
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 2016
    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 2010
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 2011
    return-void
.end method

.method public pauseResponses()V
    .locals 1

    .line 1642
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    .line 1643
    return-void
.end method

.method public progressConnectingCallState()V
    .locals 1

    .line 1558
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingCallState()V

    .line 1559
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1560
    return-void
.end method

.method public progressConnectingToActive()V
    .locals 1

    .line 1566
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingToActive()V

    .line 1567
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1568
    return-void
.end method

.method public pullLceData(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2046
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 2047
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 903
    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 905
    .local v1, "ret":[I
    const/4 v2, 0x0

    aput v0, v1, v2

    .line 906
    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 907
    const/4 v3, 0x3

    aput v3, v1, v2

    .line 908
    aput v0, v1, v3

    .line 910
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 911
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1309
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 1389
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 1391
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1392
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 0
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1350
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1351
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1725
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1726
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 412
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/test/SimulatedCommands;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 413
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    .line 418
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string v2, "SC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 419
    if-eqz p5, :cond_1

    .line 420
    new-array v0, v0, [I

    .line 421
    .local v0, "r":[I
    iget-boolean v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    aput v2, v0, v1

    .line 422
    const-string v2, "SimulatedCommands"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SimCmd] queryFacilityLock: SIM is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    aget v1, v0, v1

    if-nez v1, :cond_0

    const-string v1, "unlocked"

    goto :goto_0

    :cond_0
    const-string v1, "locked"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 426
    .end local v0    # "r":[I
    :cond_1
    return-void

    .line 427
    :cond_2
    if-eqz p1, :cond_5

    const-string v2, "FD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 428
    if-eqz p5, :cond_4

    .line 429
    new-array v0, v0, [I

    .line 430
    .restart local v0    # "r":[I
    iget-boolean v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    aput v2, v0, v1

    .line 431
    const-string v2, "SimulatedCommands"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SimCmd] queryFacilityLock: FDN is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    aget v1, v0, v1

    if-nez v1, :cond_3

    const-string v1, "disabled"

    goto :goto_1

    :cond_3
    const-string v1, "enabled"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 435
    .end local v0    # "r":[I
    :cond_4
    return-void

    .line 438
    :cond_5
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 439
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1776
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1777
    return-void
.end method

.method public registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2130
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2131
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2132
    return-void
.end method

.method public registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2268
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2269
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2270
    return-void
.end method

.method public registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2051
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2052
    return-void
.end method

.method public registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2217
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2218
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2219
    return-void
.end method

.method public registerForNattKeepaliveStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2280
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->registerForNattKeepaliveStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2281
    return-void
.end method

.method public registerForPcoData(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2209
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 809
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 811
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 812
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 814
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 816
    :goto_0
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1230
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1231
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 1232
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 1236
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1237
    return-void
.end method

.method public requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "authContext"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1886
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1887
    return-void
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2030
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 2031
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1513
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1514
    return-void
.end method

.method public resumeResponses()V
    .locals 3

    .line 1648
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    .line 1650
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    if-nez v0, :cond_1

    .line 1651
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1652
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1654
    .end local v0    # "i":I
    .end local v1    # "s":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 1656
    :cond_1
    const-string v0, "GSM"

    const-string v1, "SimulatedCommands.resumeResponses < 0"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :goto_1
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 1076
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1077
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1078
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "FeatureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1784
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1785
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 1792
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sendCdmaSms([BLandroid/os/Message;)V

    .line 1793
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1794
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;Z)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "expectMore"    # Z

    .line 1801
    return-void
.end method

.method public sendDeviceState(IZLandroid/os/Message;)V
    .locals 1
    .param p1, "stateType"    # I
    .param p2, "state"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 2223
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sendDeviceState(IZLandroid/os/Message;)V

    .line 2224
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2225
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1045
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1046
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 926
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 927
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 934
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 935
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 1960
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sendImsCdmaSms([BIILandroid/os/Message;)V

    .line 1961
    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1962
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 6
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 1967
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V

    .line 1969
    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1970
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1088
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1089
    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1090
    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1102
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1103
    return-void
.end method

.method public sendStkCcAplha(Ljava/lang/String;)V
    .locals 0
    .param p1, "alphaString"    # Ljava/lang/String;

    .line 1470
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->triggerIncomingStkCcAlpha(Ljava/lang/String;)V

    .line 1471
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 918
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 919
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1492
    const-string v0, "#646#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1493
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1496
    const-string v0, "0"

    const-string v1, "You have NNN minutes remaining."

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1498
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1500
    const-string v0, "0"

    const-string v1, "All Done"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    :goto_0
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 5
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 769
    add-int/lit8 v0, p1, 0x30

    int-to-char v0, v0

    .line 770
    .local v0, "ch":C
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x32

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v1

    .line 772
    .local v1, "success":Z
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 773
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Hangup Error"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2, v3}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 775
    :cond_0
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 777
    :goto_0
    return-void
.end method

.method public setAllowedCarriers(Ljava/util/List;Landroid/os/Message;)V
    .locals 0
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 2066
    .local p1, "carriers":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 2067
    return-void
.end method

.method public setAutoProgressConnectingCall(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 1576
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setAutoProgressConnectingCall(Z)V

    .line 1577
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "bandMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 890
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 891
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 0
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1338
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 1373
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1375
    const/4 v0, 0x0

    invoke-direct {p0, p6, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1376
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1362
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1363
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/os/Message;)V
    .locals 1
    .param p1, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 1529
    if-eqz p2, :cond_0

    .line 1530
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1531
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1533
    :cond_0
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1805
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1807
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 1817
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1818
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1730
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1731
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaSubscriptionType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1720
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1721
    return-void
.end method

.method public setCellInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1898
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCellInfoList:Ljava/util/List;

    .line 1899
    return-void
.end method

.method public setCellInfoListRate(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "rateInMillis"    # I
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 1933
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1934
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "allowed"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->log(Ljava/lang/String;)V

    .line 2198
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2199
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2200
    return-void
.end method

.method public setDataCallResult(ZLandroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "dcResult"    # Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 1130
    iput-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 1131
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcSuccess:Z

    .line 1132
    return-void
.end method

.method public setDataProfile([Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "dps"    # [Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 1942
    return-void
.end method

.method public setDataRadioTech(I)V
    .locals 0
    .param p1, "radioTech"    # I

    .line 985
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDataRadioTech:I

    .line 986
    return-void
.end method

.method public setDataRegState(I)V
    .locals 0
    .param p1, "dataRegState"    # I

    .line 989
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDataRegState:I

    .line 990
    return-void
.end method

.method public setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2105
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2106
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2107
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockEnabled"    # Z
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 444
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/test/SimulatedCommands;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 445
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockEnabled"    # Z
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .line 451
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "SC"

    .line 452
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    const-string v1, "SimulatedCommands"

    const-string v2, "[SimCmd] setFacilityLock: pin is valid"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iput-boolean p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    .line 457
    invoke-direct {p0, p6, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 459
    return-void

    .line 462
    :cond_0
    const-string v1, "SimulatedCommands"

    const-string v2, "[SimCmd] setFacilityLock: pin failed!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 466
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p6, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 468
    return-void

    .line 469
    .end local v1    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_1
    if-eqz p1, :cond_3

    const-string v1, "FD"

    .line 470
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 471
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 472
    const-string v1, "SimulatedCommands"

    const-string v2, "[SimCmd] setFacilityLock: pin2 is valid"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iput-boolean p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    .line 475
    invoke-direct {p0, p6, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 477
    return-void

    .line 480
    :cond_2
    const-string v1, "SimulatedCommands"

    const-string v2, "[SimCmd] setFacilityLock: pin2 failed!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 484
    .restart local v1    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p6, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 486
    return-void

    .line 489
    .end local v1    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_3
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 490
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1827
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1828
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 1833
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1834
    return-void
.end method

.method public setIMEI(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .line 594
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImei:Ljava/lang/String;

    .line 595
    return-void
.end method

.method public setIMEISV(Ljava/lang/String;)V
    .locals 0
    .param p1, "imeisv"    # Ljava/lang/String;

    .line 611
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImeiSv:Ljava/lang/String;

    .line 612
    return-void
.end method

.method public setIccCardStatus(Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .locals 0
    .param p1, "iccCardStatus"    # Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 2178
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccCardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 2179
    return-void
.end method

.method public setIccIoResultForApduLogicalChannel(Lcom/android/internal/telephony/uicc/IccIoResult;)V
    .locals 0
    .param p1, "iccIoResult"    # Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 2182
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccIoResultForApduLogicalChannel:Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 2183
    return-void
.end method

.method public setIccSlotStatus(Lcom/android/internal/telephony/uicc/IccSlotStatus;)V
    .locals 0
    .param p1, "iccSlotStatus"    # Lcom/android/internal/telephony/uicc/IccSlotStatus;

    .line 193
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccSlotStatus:Lcom/android/internal/telephony/uicc/IccSlotStatus;

    .line 194
    return-void
.end method

.method public setImsRegistrationState([I)V
    .locals 0
    .param p1, "regState"    # [I

    .line 1945
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImsRegState:[I

    .line 1946
    return-void
.end method

.method public setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 1938
    return-void
.end method

.method public setLinkCapacityReportingCriteria(III[I[IILandroid/os/Message;)V
    .locals 0
    .param p1, "hysteresisMs"    # I
    .param p2, "hysteresisDlKbps"    # I
    .param p3, "hysteresisUlKbps"    # I
    .param p4, "thresholdsDlKbps"    # [I
    .param p5, "thresholdsUlKbps"    # [I
    .param p6, "ran"    # I
    .param p7, "result"    # Landroid/os/Message;

    .line 2242
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1211
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 1212
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1213
    return-void
.end method

.method public setLogicalToPhysicalSlotMapping([ILandroid/os/Message;)V
    .locals 0
    .param p1, "physicalSlots"    # [I
    .param p2, "result"    # Landroid/os/Message;

    .line 209
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 210
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enableMute"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 849
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1395
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1400
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNextCallFailCause(I)V
    .locals 0
    .param p1, "gsmCause"    # I

    .line 1588
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNextCallFailCause:I

    .line 1589
    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 1582
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setNextDialFailImmediately(Z)V

    .line 1583
    return-void
.end method

.method public setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2258
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2259
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2260
    return-void
.end method

.method public setOpenChannelId(I)V
    .locals 0
    .param p1, "channelId"    # I

    .line 2186
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mChannelId:I

    .line 2187
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .param p1, "phoneType"    # I

    .line 1736
    return-void
.end method

.method public setPin1RemainingAttempt(I)V
    .locals 0
    .param p1, "pin1attemptsRemaining"    # I

    .line 2190
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin1attemptsRemaining:I

    .line 2191
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1184
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1185
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNetworkType:I

    .line 1186
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1187
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1745
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1746
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1253
    iget-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIsRadioPowerFailResponse:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1254
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "setRadioPower failed!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1255
    return-void

    .line 1258
    :cond_0
    if-eqz p1, :cond_1

    .line 1259
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_0

    .line 1261
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 1263
    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1264
    return-void
.end method

.method public setRadioPowerFailResponse(Z)V
    .locals 0
    .param p1, "fail"    # Z

    .line 2263
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIsRadioPowerFailResponse:Z

    .line 2264
    return-void
.end method

.method public setSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 855
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 856
    return-void
.end method

.method public setSignalStrengthReportingCriteria(II[IILandroid/os/Message;)V
    .locals 0
    .param p1, "hysteresisMs"    # I
    .param p2, "hysteresisDb"    # I
    .param p3, "thresholdsDbm"    # [I
    .param p4, "ran"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 2236
    return-void
.end method

.method public setSimCardPower(ILandroid/os/Message;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2246
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1223
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->smscAddress:Ljava/lang/String;

    .line 1224
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1225
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1226
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 400
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 402
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    if-eqz v0, :cond_0

    .line 403
    const-string v0, "SimulatedCommands"

    const-string v1, "Supp Service Notifications already enabled!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    .line 407
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 2
    .param p1, "ttyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1760
    const-string v0, "SimulatedCommands"

    const-string v1, "Not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1762
    return-void
.end method

.method public setUnsolResponseFilter(ILandroid/os/Message;)V
    .locals 1
    .param p1, "filter"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2229
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setUnsolResponseFilter(ILandroid/os/Message;)V

    .line 2230
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2231
    return-void
.end method

.method public setVoiceRadioTech(I)V
    .locals 0
    .param p1, "voiceRadioTech"    # I

    .line 947
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRadioTech:I

    .line 948
    return-void
.end method

.method public setVoiceRegState(I)V
    .locals 0
    .param p1, "voiceRegState"    # I

    .line 951
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRegState:I

    .line 952
    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V
    .locals 8
    .param p1, "accessNetworkType"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "result"    # Landroid/os/Message;

    .line 1146
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V

    .line 1149
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    if-nez v0, :cond_0

    .line 1151
    :try_start_0
    new-instance v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 1152
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    .line 1153
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const/4 v1, -0x1

    iput v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const/4 v1, 0x1

    iput v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    .line 1155
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const/4 v1, 0x2

    iput v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->active:I

    .line 1156
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v1, "IP"

    iput-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    .line 1157
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v1, "rmnet_data7"

    iput-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 1158
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v1, "12.34.56.78"

    iput-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    .line 1159
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v1, "98.76.54.32"

    iput-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    .line 1160
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v1, "11.22.33.44"

    iput-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    .line 1161
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string v1, ""

    iput-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    .line 1162
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const/16 v1, 0x5a0

    iput v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->mtu:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    goto :goto_0

    .line 1163
    :catch_0
    move-exception v0

    .line 1168
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcSuccess:Z

    if-eqz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {p0, p7, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_1

    .line 1171
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Setup data call failed!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p7, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1174
    :goto_1
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 1617
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 1618
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1619
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 1620
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1622
    :cond_0
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1055
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->startDtmf(CLandroid/os/Message;)V

    .line 1056
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1057
    return-void
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .locals 1
    .param p1, "report_interval_ms"    # I
    .param p2, "pullMode"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 2035
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->startLceService(IZLandroid/os/Message;)V

    .line 2037
    return-void
.end method

.method public startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .locals 1
    .param p1, "contextId"    # I
    .param p2, "packetData"    # Landroid/net/KeepalivePacketData;
    .param p3, "intervalMillis"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 2291
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V

    .line 2293
    return-void
.end method

.method public startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 0
    .param p1, "nsr"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "result"    # Landroid/os/Message;

    .line 1442
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1443
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 1066
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1067
    return-void
.end method

.method public stopLceService(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2041
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 2042
    return-void
.end method

.method public stopNattKeepalive(ILandroid/os/Message;)V
    .locals 1
    .param p1, "sessionHandle"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2297
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->stopNattKeepalive(ILandroid/os/Message;)V

    .line 2298
    return-void
.end method

.method public stopNetworkScan(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1450
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1451
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PIN:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 215
    const-string v0, "SimulatedCommands"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SimCmd] supplyIccPin: wrong state, state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 219
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p2, v2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 220
    return-void

    .line 223
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const-string v0, "SimulatedCommands"

    const-string v1, "[SimCmd] supplyIccPin: success!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    .line 226
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 229
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 231
    return-void

    .line 234
    :cond_1
    if-eqz p2, :cond_3

    .line 235
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    .line 237
    const-string v0, "SimulatedCommands"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SimCmd] supplyIccPin: failed! attempt="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 240
    const-string v0, "SimulatedCommands"

    const-string v1, "[SimCmd] supplyIccPin: set state to REQUIRE_PUK"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PUK:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 244
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 246
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p2, v2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 248
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_3
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PIN2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 290
    const-string v0, "SimulatedCommands"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SimCmd] supplyIccPin2: wrong state, state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 294
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p2, v2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 295
    return-void

    .line 298
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    const-string v0, "SimulatedCommands"

    const-string v1, "[SimCmd] supplyIccPin2: success!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    .line 301
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 303
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 304
    return-void

    .line 307
    :cond_1
    if-eqz p2, :cond_3

    .line 308
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    .line 310
    const-string v0, "SimulatedCommands"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SimCmd] supplyIccPin2: failed! attempt="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 313
    const-string v0, "SimulatedCommands"

    const-string v1, "[SimCmd] supplyIccPin2: set state to REQUIRE_PUK2"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 317
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 319
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p2, v2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 321
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_3
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 1863
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1864
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 1843
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1844
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1845
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1846
    return-void

    .line 1849
    :cond_0
    const-string v0, "SimulatedCommands"

    const-string v1, "[SimCmd] supplyIccPinForApp: pin failed!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1852
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 1853
    iget v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin1attemptsRemaining:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin1attemptsRemaining:I

    const/4 v1, 0x0

    if-gez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin1attemptsRemaining:I

    :goto_0
    aput v3, v2, v1

    .line 1852
    invoke-direct {p0, p3, v2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1854
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PUK:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 253
    const-string v0, "SimulatedCommands"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SimCmd] supplyIccPuk: wrong state, state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 257
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 258
    return-void

    .line 261
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "12345678"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    const-string v0, "SimulatedCommands"

    const-string v1, "[SimCmd] supplyIccPuk: success!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 267
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 268
    return-void

    .line 271
    :cond_1
    if-eqz p3, :cond_3

    .line 272
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    .line 274
    const-string v0, "SimulatedCommands"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SimCmd] supplyIccPuk: failed! attempt="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 277
    const-string v0, "SimulatedCommands"

    const-string v1, "[SimCmd] supplyIccPuk: set state to SIM_PERM_LOCKED"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 281
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 283
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 285
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_3
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 326
    const-string v0, "SimulatedCommands"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SimCmd] supplyIccPuk2: wrong state, state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 330
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 331
    return-void

    .line 334
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "87654321"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    const-string v0, "SimulatedCommands"

    const-string v1, "[SimCmd] supplyIccPuk2: success!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    .line 339
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 340
    return-void

    .line 343
    :cond_1
    if-eqz p3, :cond_3

    .line 344
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    .line 346
    const-string v0, "SimulatedCommands"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SimCmd] supplyIccPuk2: failed! attempt="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 349
    const-string v0, "SimulatedCommands"

    const-string v1, "[SimCmd] supplyIccPuk2: set state to SIM_PERM_LOCKED"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 353
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 355
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p3, v2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 357
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_3
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1868
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1869
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1858
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1859
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 494
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 495
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 711
    .local v0, "success":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 712
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 714
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 716
    :goto_0
    return-void
.end method

.method public triggerHangupAll()V
    .locals 1

    .line 1629
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupAll()Z

    .line 1630
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1631
    return-void
.end method

.method public triggerHangupBackground()V
    .locals 1

    .line 1602
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupBackground()Z

    .line 1603
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1604
    return-void
.end method

.method public triggerHangupForeground()V
    .locals 1

    .line 1594
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupForeground()Z

    .line 1595
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1596
    return-void
.end method

.method public triggerIncomingSMS(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 1637
    return-void
.end method

.method public triggerIncomingStkCcAlpha(Ljava/lang/String;)V
    .locals 1
    .param p1, "alphaString"    # Ljava/lang/String;

    .line 1464
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 1467
    :cond_0
    return-void
.end method

.method public triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "statusCode"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 1481
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 1482
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 1483
    .local v0, "result":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    invoke-virtual {v1, v0}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 1485
    .end local v0    # "result":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public triggerNITZupdate(Ljava/lang/String;)V
    .locals 6
    .param p1, "NITZStr"    # Ljava/lang/String;

    .line 1135
    if-eqz p1, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 1137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1136
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1139
    :cond_0
    return-void
.end method

.method public triggerRestrictedStateChanged(I)V
    .locals 4
    .param p1, "restrictedState"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2250
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 2251
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    .line 2252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2251
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 2254
    :cond_0
    return-void
.end method

.method public triggerRing(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 1551
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerRing(Ljava/lang/String;)Z

    .line 1552
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1553
    return-void
.end method

.method public triggerSsn(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "code"    # I

    .line 1608
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 1609
    .local v0, "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iput p1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 1610
    iput p2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 1611
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1612
    return-void
.end method

.method public unregisterForIccRefresh(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2274
    invoke-super {p0, p1}, Lcom/android/internal/telephony/BaseCommands;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 2275
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 2276
    return-void
.end method

.method public unregisterForLceInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2056
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->unregisterForLceInfo(Landroid/os/Handler;)V

    .line 2057
    return-void
.end method

.method public unregisterForNattKeepaliveStatus(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2285
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->unregisterForNattKeepaliveStatus(Landroid/os/Handler;)V

    .line 2286
    return-void
.end method

.method public unregisterForPcoData(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2213
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 1125
    const-string v0, "SimulatedCommands"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write SMS to RUIM with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1127
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1119
    const-string v0, "SimulatedCommands"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write SMS to SIM with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1121
    return-void
.end method
