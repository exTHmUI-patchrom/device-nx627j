.class public Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;
.super Ljava/lang/Object;
.source "QtiDdsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;
    }
.end annotation


# static fields
.field public static mTempDdsSwitchRequired:Z


# instance fields
.field private final EVENT_PRECISE_CS_CALL_STATE_CHANGED:I

.field private final EVENT_PRECISE_IMS_CALL_STATE_CHANGED:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final PROPERTY_TEMP_DDSSWITCH:Ljava/lang/String;

.field private isLplusLSupported:Z

.field private isPropertyEnabled:Z

.field private final mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

.field private final mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private final mContext:Landroid/content/Context;

.field private final mDdsSwitchHandler:Landroid/os/Handler;

.field private final mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

.field private final mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private final mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private mIsCallActive:Z

.field private mNotifyCallState:Z

.field private final mNumPhones:I

.field private final mPhones:[Lcom/android/internal/telephony/Phone;

.field private final mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

.field private final mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private final mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private mUserDdsSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mTempDdsSwitchRequired:Z

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;[Lcom/android/internal/telephony/Phone;Z)V
    .locals 3
    .param p1, "numPhones"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "phones"    # [Lcom/android/internal/telephony/Phone;
    .param p6, "status"    # Z

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "QtiDdsSwitchController"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->LOG_TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mIsCallActive:Z

    .line 51
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNotifyCallState:Z

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mUserDdsSubId:I

    .line 60
    const-string v1, "persist.vendor.radio.enable_temp_dds"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->PROPERTY_TEMP_DDSSWITCH:Ljava/lang/String;

    .line 61
    const-string v1, "persist.vendor.radio.enable_temp_dds"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isPropertyEnabled:Z

    .line 64
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isLplusLSupported:Z

    .line 67
    const/16 v1, 0x65

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->EVENT_PRECISE_CS_CALL_STATE_CHANGED:I

    .line 68
    const/16 v1, 0x66

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->EVENT_PRECISE_IMS_CALL_STATE_CHANGED:I

    .line 76
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNumPhones:I

    .line 77
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mContext:Landroid/content/Context;

    .line 78
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 79
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;

    invoke-direct {v1, p0, p4}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mDdsSwitchHandler:Landroid/os/Handler;

    .line 80
    iput-object p5, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 81
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/imsphone/ImsPhone;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 82
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    .line 83
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    .line 84
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    .line 85
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 86
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 87
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 88
    iput-boolean p6, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isLplusLSupported:Z

    .line 91
    nop

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhone;

    aput-object v2, v1, v0

    .line 93
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaCall;

    aput-object v2, v1, v0

    .line 95
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaCall;

    aput-object v2, v1, v0

    .line 96
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaCall;

    aput-object v2, v1, v0

    .line 98
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    aput-object v2, v1, v0

    .line 99
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    aput-object v2, v1, v0

    .line 100
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    aput-object v2, v1, v0

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    .line 32
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNotifyCallState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;
    .param p1, "x1"    # Z

    .line 32
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNotifyCallState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    .line 32
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mUserDdsSubId:I

    return v0
.end method

.method static synthetic access$102(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;
    .param p1, "x1"    # I

    .line 32
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mUserDdsSubId:I

    return p1
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    .line 32
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;)[Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    .line 32
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    .line 32
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;
    .param p1, "x1"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isCallOnNonDds(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;
    .param p1, "x1"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->processCallStateChanged(I)V

    return-void
.end method

.method private isCallActive(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 193
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v0, v0, p1

    .line 194
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v0, v0, p1

    .line 195
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 196
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 197
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 198
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

    .line 193
    :goto_1
    return v0
.end method

.method private isCallIdle(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 205
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v0, v0, p1

    .line 206
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v0, v0, p1

    .line 207
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 208
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 209
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 210
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0
.end method

.method private isCallOnNonDds(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 217
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mUserDdsSubId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 218
    .local v0, "ddsPhoneId":I
    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isFeatureEnabled()Z
    .locals 2

    .line 184
    const-string v0, "persist.vendor.radio.enable_temp_dds"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isPropertyEnabled:Z

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPropertyEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isPropertyEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 186
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isPropertyEnabled:Z

    return v0
.end method

.method public static isTempDdsSwitchRequired()Z
    .locals 1

    .line 136
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mTempDdsSwitchRequired:Z

    return v0
.end method

.method private onCallEnded(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 122
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mTempDdsSwitchRequired:Z

    .line 124
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mUserDdsSubId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set DDS to actual sub: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mUserDdsSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mUserDdsSubId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    goto :goto_0

    .line 128
    :cond_0
    const-string v0, "User dds sub is invalid, skip dds reset"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void
.end method

.method private onCallStarted(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 110
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mUserDdsSubId:I

    .line 111
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 113
    .local v0, "callSubId":I
    const/4 v1, 0x1

    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mTempDdsSwitchRequired:Z

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trigger temporary DDS switch to sub: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 116
    return-void
.end method

.method private processCallStateChanged(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 225
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mIsCallActive:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isCallActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "notifyCallStateChanged: call active on non dds"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mIsCallActive:Z

    .line 228
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->onCallStarted(I)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isCallIdle(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNotifyCallState:Z

    .line 232
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mIsCallActive:Z

    if-eqz v1, :cond_2

    .line 233
    const-string v1, "notifyCallStateChanged: call disconnected on non dds"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 234
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mIsCallActive:Z

    .line 235
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->onCallEnded(I)V

    goto :goto_0

    .line 238
    :cond_1
    const-string v0, "ignore call state change"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 240
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "l"    # Ljava/lang/String;

    .line 285
    const-string v0, "QtiDdsSwitchController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method public resetTempDdsSwitchRequired()V
    .locals 1

    .line 145
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mTempDdsSwitchRequired:Z

    .line 146
    return-void
.end method

.method public updateLplusLStatus(Z)V
    .locals 5
    .param p1, "status"    # Z

    .line 152
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isLplusLSupported:Z

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLplusLStatus - status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 154
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isLplusLSupported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 155
    nop

    .local v1, "i":I
    :goto_0
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNumPhones:I

    if-ge v0, v1, :cond_5

    .line 156
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register for call state change on phone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mDdsSwitchHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 158
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register for call state change on ims phone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mDdsSwitchHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 163
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 155
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 168
    .end local v1    # "i":I
    :cond_2
    nop

    .restart local v1    # "i":I
    :goto_1
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNumPhones:I

    if-ge v0, v1, :cond_5

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregister for call state change on phone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mDdsSwitchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 173
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 174
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mDdsSwitchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 168
    :cond_4
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 178
    .end local v1    # "i":I
    :cond_5
    return-void
.end method
