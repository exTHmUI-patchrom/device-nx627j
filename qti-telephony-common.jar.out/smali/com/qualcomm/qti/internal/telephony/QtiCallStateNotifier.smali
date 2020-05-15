.class public Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;
.super Ljava/lang/Object;
.source "QtiCallStateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;
    }
.end annotation


# static fields
.field protected static mInstance:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;


# instance fields
.field private final EVENT_PRECISE_CS_CALL_STATE_CHANGED:I

.field private final EVENT_PRECISE_IMS_CALL_STATE_CHANGED:I

.field private final LOG_TAG:Ljava/lang/String;

.field private mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

.field private mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mCallEndRegistrants:Landroid/os/RegistrantList;

.field private mCallStateHandler:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;

.field private mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

.field private mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private mIsCallInActiveState:Z

.field private mIsCallInProgress:Z

.field private final mNumPhones:I

.field private mPhones:[Lcom/android/internal/telephony/Phone;

.field private mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

.field private mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mInstance:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    return-void
.end method

.method private constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "QtiCallStateNotifier"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->LOG_TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mIsCallInActiveState:Z

    .line 41
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mIsCallInProgress:Z

    .line 43
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mCallEndRegistrants:Landroid/os/RegistrantList;

    .line 46
    const/16 v1, 0x65

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->EVENT_PRECISE_CS_CALL_STATE_CHANGED:I

    .line 47
    const/16 v2, 0x66

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->EVENT_PRECISE_IMS_CALL_STATE_CHANGED:I

    .line 72
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mNumPhones:I

    .line 73
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 75
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mNumPhones:I

    new-array v3, v3, [Lcom/android/internal/telephony/imsphone/ImsPhone;

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 76
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mNumPhones:I

    new-array v3, v3, [Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    .line 77
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mNumPhones:I

    new-array v3, v3, [Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    .line 78
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mNumPhones:I

    new-array v3, v3, [Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    .line 79
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mNumPhones:I

    new-array v3, v3, [Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 80
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mNumPhones:I

    new-array v3, v3, [Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 81
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mNumPhones:I

    new-array v3, v3, [Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 83
    new-instance v3, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$1;)V

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mCallStateHandler:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;

    .line 86
    nop

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mNumPhones:I

    if-ge v0, v3, :cond_2

    .line 87
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mCallStateHandler:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 88
    invoke-virtual {v3, v4, v1, v5}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 90
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/GsmCdmaCall;

    aput-object v4, v3, v0

    .line 91
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/GsmCdmaCall;

    aput-object v4, v3, v0

    .line 92
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/GsmCdmaCall;

    aput-object v4, v3, v0

    .line 95
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhone;

    aput-object v4, v3, v0

    .line 96
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    .line 97
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mCallStateHandler:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier$CallStateHandler;

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 97
    invoke-virtual {v3, v4, v2, v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 99
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v4

    aput-object v4, v3, v0

    .line 100
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v4

    aput-object v4, v3, v0

    .line 101
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v4

    aput-object v4, v3, v0

    .line 86
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 104
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    .line 28
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mIsCallInActiveState:Z

    return v0
.end method

.method static synthetic access$102(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mIsCallInActiveState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;
    .param p1, "x1"    # I

    .line 28
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->isCallActive(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;
    .param p1, "x1"    # I

    .line 28
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->isCallIdle(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    .line 28
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mIsCallInProgress:Z

    return v0
.end method

.method static synthetic access$402(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mIsCallInProgress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    .line 28
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mCallEndRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;
    .locals 3

    .line 63
    const-class v0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mInstance:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    if-eqz v1, :cond_0

    .line 67
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mInstance:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    monitor-exit v0

    return-object v1

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "QtiCallStateNotifier is not initialized!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static init([Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p0, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 55
    const-class v0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mInstance:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;-><init>([Lcom/android/internal/telephony/Phone;)V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mInstance:Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;

    .line 59
    :cond_0
    monitor-exit v0

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isCallActive(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 135
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v0, v0, p1

    .line 136
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v0, v0, p1

    .line 137
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 138
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 139
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 140
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 135
    :goto_1
    return v0
.end method

.method private isCallIdle(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 147
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v0, v0, p1

    .line 148
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v0, v0, p1

    .line 149
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 150
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 151
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 152
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0
.end method


# virtual methods
.method public isCallActive()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mIsCallInActiveState:Z

    return v0
.end method

.method public isCallInProgress()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mIsCallInProgress:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "l"    # Ljava/lang/String;

    .line 190
    const-string v0, "QtiCallStateNotifier"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public registerForCallEnd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "o"    # Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mCallEndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    return-void
.end method

.method public unregisterForCallEnd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 128
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->mCallEndRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 129
    return-void
.end method
