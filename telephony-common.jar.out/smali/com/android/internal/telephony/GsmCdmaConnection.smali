.class public Lcom/android/internal/telephony/GsmCdmaConnection;
.super Lcom/android/internal/telephony/Connection;
.source "GsmCdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final EVENT_DTMF_DELAY_DONE:I = 0x5

.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "GsmCdmaConnection"

.field static final PAUSE_DELAY_MILLIS_CDMA:I = 0x7d0

.field static final PAUSE_DELAY_MILLIS_GSM:I = 0xbb8

.field private static final VDBG:Z = false

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field private mAudioCodec:I

.field private mConnTimerReset:Z

.field mDisconnectTime:J

.field mDisconnected:Z

.field private mDtmfToneDelay:I

.field mHandler:Landroid/os/Handler;

.field mIndex:I

.field private mIsEmergencyCall:Z

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field mOrigConnection:Lcom/android/internal/telephony/Connection;

.field mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

.field mParent:Lcom/android/internal/telephony/GsmCdmaCall;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPreciseCause:I

.field mUusInfo:Lcom/android/internal/telephony/UUSInfo;

.field mVendorCause:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    .param p3, "ct"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/GsmCdmaCall;

    .line 221
    invoke-virtual {p4}, Lcom/android/internal/telephony/GsmCdmaCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    .line 76
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsEmergencyCall:Z

    .line 79
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    .line 82
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAudioCodec:I

    .line 84
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 98
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnTimerReset:Z

    .line 222
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 223
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->acquireWakeLock()V

    .line 225
    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 226
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/GsmCdmaConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    .line 227
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 228
    iget v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberPresentation:I

    .line 229
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    .line 230
    iget v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapNamePresentation:I

    .line 231
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsIncoming:Z

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCreateTime:J

    .line 234
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnectTime:J

    .line 235
    iput-object p4, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 236
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 237
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .param p4, "index"    # I

    .line 133
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    .line 76
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsEmergencyCall:Z

    .line 79
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    .line 82
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAudioCodec:I

    .line 84
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 98
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnTimerReset:Z

    .line 134
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 135
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->acquireWakeLock()V

    .line 137
    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 138
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/GsmCdmaConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    .line 140
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsEmergencyCall:Z

    .line 142
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsIncoming:Z

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCreateTime:J

    .line 144
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    .line 145
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapNamePresentation:I

    .line 146
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberPresentation:I

    .line 147
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 149
    iput p4, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 151
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/GsmCdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    .line 156
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAudioQualityFromDC(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setAudioQuality(I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/GsmCdmaCall;
    .param p5, "isEmergencyCall"    # Z

    .line 162
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    .line 76
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsEmergencyCall:Z

    .line 79
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    .line 82
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAudioCodec:I

    .line 84
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 98
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnTimerReset:Z

    .line 163
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 164
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->acquireWakeLock()V

    .line 166
    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 167
    new-instance v1, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/GsmCdmaConnection;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    .line 169
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDialString:Ljava/lang/String;

    .line 170
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    const-string v1, "GsmCdmaConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GsmCdmaConn] GsmCdmaConnection: dialString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaConnection;->maskDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    .line 179
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 180
    .local v2, "phoneId":I
    invoke-static {p2, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->formatDialStringForNubia(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 182
    const-string v3, "GsmCdmaConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GsmCdmaConn] GsmCdmaConnection:formated dialString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaConnection;->maskDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v1    # "subId":I
    .end local v2    # "phoneId":I
    :cond_0
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 188
    iput-boolean p5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsEmergencyCall:Z

    .line 189
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    .line 191
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 193
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsIncoming:Z

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    .line 195
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapNamePresentation:I

    .line 196
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberPresentation:I

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCreateTime:J

    .line 199
    if-eqz p4, :cond_3

    .line 200
    iput-object p4, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 201
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p4, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 206
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_0

    .line 208
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 214
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/GsmCdmaConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 45
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    return v0
.end method

.method private acquireWakeLock()V
    .locals 2

    .line 1153
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 1155
    :try_start_0
    const-string v1, "acquireWakeLock"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 1156
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1157
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1159
    :cond_0
    :goto_0
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1148
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1149
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "GsmCdmaConnection"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1150
    return-void
.end method

.method private doDisconnect()V
    .locals 4

    .line 919
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 920
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnectTime:J

    .line 921
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnectTimeReal:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDuration:J

    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    .line 923
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->clearPostDialListeners()V

    .line 924
    return-void
.end method

.method static equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 254
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    goto :goto_1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :goto_1
    return v0
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 249
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private fetchDtmfToneDelay(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1258
    nop

    .line 1259
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1260
    .local v0, "configMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1261
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    .line 1262
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDtmfToneDelayKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    .line 1264
    :cond_0
    return-void
.end method

.method private static findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "currIndex"    # I

    .line 1199
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v0

    .line 1200
    .local v0, "wMatched":Z
    add-int/lit8 v1, p1, 0x1

    .line 1201
    .local v1, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1202
    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1203
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1205
    .local v3, "cNext":C
    invoke-static {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1206
    const/4 v0, 0x1

    .line 1210
    :cond_0
    invoke-static {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1211
    goto :goto_1

    .line 1213
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1214
    .end local v3    # "cNext":C
    goto :goto_0

    .line 1218
    :cond_2
    :goto_1
    if-ge v1, v2, :cond_3

    add-int/lit8 v3, p1, 0x1

    if-le v1, v3, :cond_3

    if-nez v0, :cond_3

    .line 1219
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1220
    add-int/lit8 v3, p1, 0x1

    return v3

    .line 1222
    :cond_3
    return v1
.end method

.method private static findPOrWCharToAppend(Ljava/lang/String;II)C
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "currPwIndex"    # I
    .param p2, "nextNonPwCharIndex"    # I

    .line 1231
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1235
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    goto :goto_0

    :cond_0
    const/16 v1, 0x3b

    .line 1243
    .local v1, "ret":C
    :goto_0
    add-int/lit8 v2, p1, 0x1

    if-le p2, v2, :cond_1

    .line 1244
    const/16 v1, 0x3b

    .line 1246
    :cond_1
    return v1
.end method

.method public static formatDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 276
    if-nez p0, :cond_0

    .line 277
    const/4 v0, 0x0

    return-object v0

    .line 279
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 280
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 284
    .local v2, "currIndex":I
    :goto_0
    if-ge v2, v0, :cond_7

    .line 285
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 286
    .local v3, "c":C
    invoke-static {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 306
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 287
    :cond_2
    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_6

    .line 289
    invoke-static {p0, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I

    move-result v4

    .line 291
    .local v4, "nextIndex":I
    if-ge v4, v0, :cond_4

    .line 292
    invoke-static {p0, v2, v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->findPOrWCharToAppend(Ljava/lang/String;II)C

    move-result v5

    .line 293
    .local v5, "pC":C
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    add-int/lit8 v6, v2, 0x1

    if-le v4, v6, :cond_3

    .line 298
    add-int/lit8 v2, v4, -0x1

    .line 300
    .end local v5    # "pC":C
    :cond_3
    goto :goto_2

    :cond_4
    if-ne v4, v0, :cond_5

    .line 302
    add-int/lit8 v2, v0, -0x1

    .line 304
    .end local v4    # "nextIndex":I
    :cond_5
    :goto_2
    nop

    .line 308
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    .end local v3    # "c":C
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static formatDialStringForNubia(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 1344
    if-nez p0, :cond_0

    .line 1345
    const/4 v0, 0x0

    return-object v0

    .line 1347
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1348
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1350
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1352
    .local v2, "currIndex":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1353
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1354
    .local v3, "c":C
    invoke-static {v3, v0, v2, p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCurrIndex(CIILjava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v2

    goto :goto_0

    .line 1356
    .end local v3    # "c":C
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getAudioQualityFromDC(I)I
    .locals 2
    .param p1, "audioQuality"    # I

    .line 1112
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    .line 1117
    const/4 v0, 0x1

    return v0

    .line 1115
    :cond_0
    return v0
.end method

.method private static getCurrIndex(CIILjava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 1
    .param p0, "c"    # C
    .param p1, "length"    # I
    .param p2, "currIndex"    # I
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "ret"    # Ljava/lang/StringBuilder;

    .line 1361
    invoke-static {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1366
    :cond_0
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1362
    :cond_1
    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-ge p2, v0, :cond_2

    .line 1363
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCurrIndex(IILjava/lang/String;Ljava/lang/StringBuilder;)I

    move-result p2

    .line 1368
    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 1369
    return p2
.end method

.method private static getCurrIndex(IILjava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 3
    .param p0, "length"    # I
    .param p1, "currIndex"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "ret"    # Ljava/lang/StringBuilder;

    .line 1374
    invoke-static {p2, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I

    move-result v0

    .line 1375
    .local v0, "nextIndex":I
    if-ge v0, p0, :cond_1

    .line 1376
    invoke-static {p2, p1, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->findPOrWCharToAppend(Ljava/lang/String;II)C

    move-result v1

    .line 1377
    .local v1, "pC":C
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1378
    add-int/lit8 v2, p1, 0x1

    if-le v0, v2, :cond_0

    .line 1379
    add-int/lit8 p1, v0, -0x1

    .line 1381
    .end local v1    # "pC":C
    :cond_0
    goto :goto_0

    :cond_1
    if-ne v0, p0, :cond_2

    .line 1382
    add-int/lit8 p1, p0, -0x1

    .line 1384
    :cond_2
    :goto_0
    return p1
.end method

.method private isConnectingInOrOut()Z
    .locals 2

    .line 1083
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isPause(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 1183
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPhoneTypeGsm()Z
    .locals 2

    .line 1267
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v0

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

.method private static isWait(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 1187
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isWild(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 1191
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1271
    const-string v0, "GsmCdmaConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmCdmaConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    return-void
.end method

.method private maskDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .line 1254
    const-string v0, "<MASKED>"

    return-object v0
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/GsmCdmaCall;
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/DriverCall$State;

    .line 1090
    sget-object v0, Lcom/android/internal/telephony/GsmCdmaConnection$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1107
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1103
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0

    .line 1098
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0

    .line 1094
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processPostDialChar(C)Z
    .locals 5
    .param p1, "c"    # C

    .line 938
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_1

    .line 940
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 941
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 942
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 956
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 957
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/16 v3, 0xbb8

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x7d0

    .line 956
    :goto_0
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 958
    :cond_3
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 959
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_1

    .line 960
    :cond_4
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWild(C)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 961
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 966
    :goto_1
    return v1

    .line 963
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private releaseAllWakeLocks()V
    .locals 2

    .line 1173
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 1174
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 1175
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1176
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1178
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1180
    :cond_1
    :goto_1
    return-void
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 5
    .param p1, "s"    # Lcom/android/internal/telephony/Connection$PostDialState;

    .line 1128
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    const/4 v1, 0x4

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1141
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    goto :goto_2

    .line 1130
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 1131
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1132
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 1134
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->acquireWakeLock()V

    .line 1136
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1137
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1138
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1143
    :goto_2
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 1144
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->notifyPostDialListeners()V

    .line 1145
    return-void

    .line 1138
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .line 432
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 433
    return-void
.end method

.method compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 4
    .param p1, "c"    # Lcom/android/internal/telephony/DriverCall;

    .line 320
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsIncoming:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v0, :cond_0

    return v1

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_1

    return v1

    .line 330
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "cAddress":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsIncoming:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 380
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "deflect is not supported for CS"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method disconnectCauseFromCode(I)I
    .locals 7
    .param p1, "causeCode"    # I

    .line 458
    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    packed-switch p1, :pswitch_data_7

    packed-switch p1, :pswitch_data_8

    packed-switch p1, :pswitch_data_9

    packed-switch p1, :pswitch_data_a

    packed-switch p1, :pswitch_data_b

    sparse-switch p1, :sswitch_data_0

    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v0

    .line 665
    .local v0, "phone":Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 666
    .local v1, "serviceState":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 667
    .local v2, "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    goto :goto_0

    .line 668
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 669
    .local v3, "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :goto_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 670
    const/16 v4, 0x11

    return v4

    .line 672
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsEmergencyCall:Z

    const/4 v5, 0x2

    if-nez v4, :cond_5

    .line 677
    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    if-ne v1, v5, :cond_2

    goto :goto_1

    .line 683
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v3, v4, :cond_5

    .line 684
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v4

    const/16 v6, 0x13

    if-eqz v4, :cond_3

    .line 685
    return v6

    .line 687
    :cond_3
    iget v4, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    if-nez v4, :cond_5

    .line 689
    return v6

    .line 679
    :cond_4
    :goto_1
    const/16 v4, 0x12

    return v4

    .line 694
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 695
    const v4, 0xffff

    if-eq p1, v4, :cond_6

    const/16 v4, 0x104

    if-ne p1, v4, :cond_9

    .line 697
    :cond_6
    iget-object v4, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 698
    const/16 v4, 0x16

    return v4

    .line 699
    :cond_7
    iget-object v4, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 700
    const/16 v4, 0x18

    return v4

    .line 701
    :cond_8
    iget-object v4, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 702
    const/16 v4, 0x17

    return v4

    .line 706
    :cond_9
    const/16 v4, 0x10

    if-ne p1, v4, :cond_a

    .line 707
    return v5

    .line 711
    :cond_a
    const/16 v4, 0x24

    return v4

    .line 589
    .end local v0    # "phone":Lcom/android/internal/telephony/GsmCdmaPhone;
    .end local v1    # "serviceState":I
    .end local v2    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :sswitch_0
    const/16 v0, 0x5d

    return v0

    .line 586
    :sswitch_1
    const/16 v0, 0x5c

    return v0

    .line 559
    :sswitch_2
    const/16 v0, 0x53

    return v0

    .line 550
    :sswitch_3
    const/16 v0, 0x50

    return v0

    .line 547
    :sswitch_4
    const/16 v0, 0x4f

    return v0

    .line 538
    :sswitch_5
    const/16 v0, 0x4c

    return v0

    .line 535
    :sswitch_6
    const/16 v0, 0x4b

    return v0

    .line 526
    :sswitch_7
    const/16 v0, 0x49

    return v0

    .line 517
    :sswitch_8
    const/16 v0, 0x72

    return v0

    .line 502
    :sswitch_9
    const/16 v0, 0x6d

    return v0

    .line 499
    :sswitch_a
    const/16 v0, 0x60

    return v0

    .line 469
    :sswitch_b
    const/16 v0, 0x62

    return v0

    .line 466
    :sswitch_c
    const/16 v0, 0x67

    return v0

    .line 463
    :sswitch_d
    const/16 v0, 0x61

    return v0

    .line 613
    :sswitch_e
    const/16 v0, 0x19

    return v0

    .line 652
    :pswitch_0
    const/16 v0, 0x23

    return v0

    .line 649
    :pswitch_1
    const/16 v0, 0x22

    return v0

    .line 646
    :pswitch_2
    const/16 v0, 0x21

    return v0

    .line 643
    :pswitch_3
    const/16 v0, 0x20

    return v0

    .line 640
    :pswitch_4
    const/16 v0, 0x1f

    return v0

    .line 637
    :pswitch_5
    const/16 v0, 0x1e

    return v0

    .line 634
    :pswitch_6
    const/16 v0, 0x1d

    return v0

    .line 631
    :pswitch_7
    const/16 v0, 0x1c

    return v0

    .line 628
    :pswitch_8
    const/16 v0, 0x1b

    return v0

    .line 625
    :pswitch_9
    const/16 v0, 0x1a

    return v0

    .line 598
    :pswitch_a
    const/16 v0, 0x40

    return v0

    .line 595
    :pswitch_b
    const/16 v0, 0x3f

    return v0

    .line 622
    :pswitch_c
    const/16 v0, 0x30

    return v0

    .line 619
    :pswitch_d
    const/16 v0, 0x2f

    return v0

    .line 616
    :pswitch_e
    const/16 v0, 0x2e

    return v0

    .line 610
    :pswitch_f
    const/16 v0, 0x3a

    return v0

    .line 607
    :pswitch_10
    const/16 v0, 0x15

    return v0

    .line 604
    :pswitch_11
    const/16 v0, 0x14

    return v0

    .line 583
    :pswitch_12
    const/16 v0, 0x5b

    return v0

    .line 580
    :pswitch_13
    const/16 v0, 0x5a

    return v0

    .line 577
    :pswitch_14
    const/16 v0, 0x59

    return v0

    .line 574
    :pswitch_15
    const/16 v0, 0x58

    return v0

    .line 571
    :pswitch_16
    const/16 v0, 0x57

    return v0

    .line 568
    :pswitch_17
    const/16 v0, 0x56

    return v0

    .line 565
    :pswitch_18
    const/16 v0, 0x55

    return v0

    .line 562
    :pswitch_19
    const/16 v0, 0x54

    return v0

    .line 556
    :pswitch_1a
    const/16 v0, 0x52

    return v0

    .line 553
    :pswitch_1b
    const/16 v0, 0x51

    return v0

    .line 544
    :pswitch_1c
    const/16 v0, 0x4e

    return v0

    .line 541
    :pswitch_1d
    const/16 v0, 0x4d

    return v0

    .line 601
    :pswitch_1e
    const/16 v0, 0xf

    return v0

    .line 532
    :pswitch_1f
    const/16 v0, 0x4a

    return v0

    .line 529
    :pswitch_20
    const/16 v0, 0x66

    return v0

    .line 523
    :pswitch_21
    const/16 v0, 0x48

    return v0

    .line 520
    :pswitch_22
    const/16 v0, 0x47

    return v0

    .line 514
    :pswitch_23
    const/16 v0, 0x71

    return v0

    .line 511
    :pswitch_24
    const/16 v0, 0x70

    return v0

    .line 508
    :pswitch_25
    const/16 v0, 0x6f

    return v0

    .line 505
    :pswitch_26
    const/16 v0, 0x6e

    return v0

    .line 655
    :pswitch_27
    const/16 v0, 0x41

    return v0

    .line 496
    :pswitch_28
    const/16 v0, 0x6c

    return v0

    .line 493
    :pswitch_29
    const/16 v0, 0x6b

    return v0

    .line 490
    :pswitch_2a
    const/4 v0, 0x7

    return v0

    .line 487
    :pswitch_2b
    const/16 v0, 0x65

    return v0

    .line 592
    :pswitch_2c
    const/16 v0, 0x74

    return v0

    .line 484
    :pswitch_2d
    const/16 v0, 0x6a

    return v0

    .line 481
    :pswitch_2e
    const/16 v0, 0x69

    return v0

    .line 478
    :pswitch_2f
    const/16 v0, 0x68

    return v0

    .line 475
    :pswitch_30
    const/16 v0, 0x64

    return v0

    .line 658
    :pswitch_31
    const/16 v0, 0xd

    return v0

    .line 472
    :pswitch_32
    const/16 v0, 0x63

    return v0

    .line 460
    :pswitch_33
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x29
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x31
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x39
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x44
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x57
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x5f
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xf0
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xf3
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x145
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x3e8
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_e
        0x3 -> :sswitch_d
        0x6 -> :sswitch_c
        0x8 -> :sswitch_b
        0x22 -> :sswitch_a
        0x26 -> :sswitch_9
        0x2f -> :sswitch_8
        0x37 -> :sswitch_7
        0x3f -> :sswitch_6
        0x41 -> :sswitch_5
        0x4f -> :sswitch_4
        0x51 -> :sswitch_3
        0x5b -> :sswitch_2
        0x6f -> :sswitch_1
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method public dispose()V
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->clearPostDialListeners()V

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseAllWakeLocks()V

    .line 246
    return-void
.end method

.method fakeHoldBeforeDial()V
    .locals 2

    .line 866
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 871
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 873
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onStartedHolding()V

    .line 874
    return-void
.end method

.method protected finalize()V
    .locals 2

    .line 1006
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    const-string v0, "GsmCdmaConnection"

    const-string v1, "UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->clearPostDialListeners()V

    .line 1010
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    .line 1011
    return-void
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/GsmCdmaCall;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .line 346
    iget-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnectTime:J

    return-wide v0
.end method

.method getGsmCdmaIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 878
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    if-ltz v0, :cond_0

    .line 879
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 881
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "GsmCdma index not yet assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 353
    const-wide/16 v0, 0x0

    return-wide v0

    .line 355
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .line 1276
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberPresentation:I

    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .line 1306
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    .line 1285
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 4

    .line 972
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, "subStr":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 974
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 975
    .local v1, "wIndex":I
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 977
    .local v2, "pIndex":I
    const/4 v3, 0x0

    if-lez v1, :cond_1

    if-lt v1, v2, :cond_0

    if-gtz v2, :cond_1

    .line 978
    :cond_0
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 979
    :cond_1
    if-lez v2, :cond_2

    .line 980
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 983
    .end local v1    # "wIndex":I
    .end local v2    # "pIndex":I
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .line 361
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-eqz v0, :cond_0

    .line 362
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    return-object v0

    .line 364
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .line 1281
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    .line 1290
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mVendorCause:Ljava/lang/String;

    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 370
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 375
    return-void

    .line 373
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConnectionTimerReset()Z
    .locals 1

    .line 1327
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnTimerReset:Z

    return v0
.end method

.method public isMultiparty()Z
    .locals 1

    .line 1311
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v0

    return v0

    .line 1315
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .line 1295
    if-nez p1, :cond_0

    return-void

    .line 1297
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    .line 1299
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUUSInfo()Lcom/android/internal/telephony/UUSInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1301
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setUserData(Ljava/lang/Object;)V

    .line 1302
    return-void
.end method

.method onConnectedInOrOut()V
    .locals 3

    .line 890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnectTime:J

    .line 891
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnectTimeReal:J

    .line 892
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDuration:J

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 900
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsIncoming:Z

    if-nez v0, :cond_0

    .line 906
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processNextPostDialChar()V

    goto :goto_0

    .line 913
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    .line 915
    :cond_1
    :goto_0
    return-void
.end method

.method public onDisconnect(I)Z
    .locals 4
    .param p1, "cause"    # I

    .line 728
    const/4 v0, 0x0

    .line 730
    .local v0, "changed":Z
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    .line 732
    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v1, :cond_1

    .line 733
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->doDisconnect()V

    .line 735
    const-string v1, "GsmCdmaConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect: cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 738
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->notifyDisconnect(I)V

    .line 740
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v1, :cond_0

    .line 741
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->connectionDisconnected(Lcom/android/internal/telephony/GsmCdmaConnection;)Z

    move-result v0

    .line 744
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    .line 746
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->clearPostDialListeners()V

    .line 747
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    .line 748
    return v0
.end method

.method onHangupLocal()V
    .locals 1

    .line 442
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    .line 443
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mVendorCause:Ljava/lang/String;

    .line 445
    return-void
.end method

.method onLocalDisconnect()V
    .locals 1

    .line 755
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 756
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->doDisconnect()V

    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 763
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    .line 764
    return-void
.end method

.method onRemoteDisconnect(ILjava/lang/String;)V
    .locals 1
    .param p1, "causeCode"    # I
    .param p2, "vendorCause"    # Ljava/lang/String;

    .line 717
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    .line 718
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mVendorCause:Ljava/lang/String;

    .line 719
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->disconnectCauseFromCode(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    .line 720
    return-void
.end method

.method onStartedHolding()V
    .locals 2

    .line 928
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHoldingStartTime:J

    .line 929
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 395
    const-string v0, "GsmCdmaConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void

    .line 400
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processNextPostDialChar()V

    .line 403
    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 408
    const-string v0, "GsmCdmaConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void

    .line 413
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    .line 421
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNextPostDialChar:I

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processNextPostDialChar()V

    .line 428
    return-void
.end method

.method processNextPostDialChar()V
    .locals 5

    .line 1020
    const/4 v0, 0x0

    .line 1023
    .local v0, "c":C
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_0

    .line 1024
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    .line 1025
    return-void

    .line 1028
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    .line 1029
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNextPostDialChar:I

    if-gt v1, v2, :cond_1

    goto :goto_0

    .line 1040
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 1042
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNextPostDialChar:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1044
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processPostDialChar(C)Z

    move-result v1

    .line 1046
    .local v1, "isValid":Z
    if-nez v1, :cond_3

    .line 1048
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1050
    const-string v2, "GsmCdmaConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processNextPostDialChar: c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, " isn\'t valid!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    return-void

    .line 1030
    .end local v1    # "isValid":Z
    :cond_2
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 1033
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    .line 1036
    const/4 v0, 0x0

    .line 1055
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->notifyPostDialListenersNextChar(C)V

    .line 1058
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPostDialHandler()Landroid/os/Registrant;

    move-result-object v1

    .line 1062
    .local v1, "postDialHandler":Landroid/os/Registrant;
    if-eqz v1, :cond_4

    .line 1063
    invoke-virtual {v1}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v2

    move-object v3, v2

    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v2, :cond_4

    .line 1065
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 1066
    .local v2, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    .line 1067
    .local v4, "ar":Landroid/os/AsyncResult;
    iput-object p0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1068
    iput-object v2, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 1071
    iput v0, v3, Landroid/os/Message;->arg1:I

    .line 1074
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1076
    .end local v2    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :cond_4
    return-void
.end method

.method releaseWakeLock()V
    .locals 2

    .line 1162
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 1164
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1165
    const-string v1, "releaseWakeLock"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 1166
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1168
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1170
    :cond_1
    :goto_0
    return-void
.end method

.method resetConnectionTimer()V
    .locals 2

    .line 1319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnectTime:J

    .line 1320
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnectTimeReal:J

    .line 1321
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDuration:J

    .line 1322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnTimerReset:Z

    .line 1323
    const-string v0, "CdmaConnection time reseted"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 1324
    return-void
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 385
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->separate(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 390
    return-void

    .line 388
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 10
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .line 770
    const/4 v0, 0x0

    .line 771
    .local v0, "changed":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isConnectingInOrOut()Z

    move-result v1

    .line 772
    .local v1, "wasConnectingInOrOut":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    .line 774
    .local v2, "wasHolding":Z
    :goto_0
    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v3

    .line 776
    .local v3, "newParent":Lcom/android/internal/telephony/GsmCdmaCall;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parent= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", newParent= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 779
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v6, :cond_1

    .line 780
    const-string v6, "update: mOrigConnection is not null"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 781
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 782
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberConverted:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConvertedNumber:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 783
    invoke-static {v6, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 784
    :cond_2
    const-string v6, "update: phone # changed!"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 785
    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 786
    const/4 v0, 0x1

    .line 790
    :cond_3
    :goto_1
    iget v6, p1, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAudioQualityFromDC(I)I

    move-result v6

    .line 791
    .local v6, "newAudioQuality":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAudioQuality()I

    move-result v7

    if-eq v7, v6, :cond_5

    .line 793
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update: audioQuality # changed!:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    const/4 v8, 0x2

    if-ne v6, v8, :cond_4

    .line 795
    const-string v8, "high"

    goto :goto_2

    :cond_4
    const-string v8, "standard"

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 793
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->setAudioQuality(I)V

    .line 798
    const/4 v0, 0x1

    .line 802
    :cond_5
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    iget v8, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAudioCodec:I

    if-eq v7, v8, :cond_6

    .line 803
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    iput v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAudioCodec:I

    .line 804
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v8

    iget v9, p1, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeAudioCodecGsmCdma(II)V

    .line 808
    :cond_6
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 809
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 810
    const/4 v0, 0x1

    .line 811
    const-string v7, ""

    iput-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    goto :goto_3

    .line 813
    :cond_7
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 814
    const/4 v0, 0x1

    .line 815
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    .line 818
    :cond_8
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--dssds----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 819
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapNamePresentation:I

    .line 820
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberPresentation:I

    .line 822
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eq v3, v7, :cond_a

    .line 823
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v7, :cond_9

    .line 824
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 826
    :cond_9
    invoke-virtual {v3, p0, p1}, Lcom/android/internal/telephony/GsmCdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 827
    iput-object v3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 828
    const/4 v0, 0x1

    goto :goto_6

    .line 831
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v7, p0, p1}, Lcom/android/internal/telephony/GsmCdmaCall;->update(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v7

    .line 832
    .local v7, "parentStateChange":Z
    if-nez v0, :cond_c

    if-eqz v7, :cond_b

    goto :goto_4

    :cond_b
    move v8, v4

    goto :goto_5

    :cond_c
    :goto_4
    move v8, v5

    :goto_5
    move v0, v8

    .line 837
    .end local v7    # "parentStateChange":Z
    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update: parent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", hasNewParent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eq v3, v8, :cond_d

    move v4, v5

    nop

    :cond_d
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", wasConnectingInOrOut="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", wasHolding="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isConnectingInOrOut="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isConnectingInOrOut()Z

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", changed="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 837
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 846
    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isConnectingInOrOut()Z

    move-result v4

    if-nez v4, :cond_e

    .line 847
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    .line 850
    :cond_e
    if-eqz v0, :cond_f

    if-nez v2, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_f

    .line 852
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onStartedHolding()V

    .line 855
    :cond_f
    return v0
.end method

.method public updateParent(Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 1
    .param p1, "oldParent"    # Lcom/android/internal/telephony/GsmCdmaCall;
    .param p2, "newParent"    # Lcom/android/internal/telephony/GsmCdmaCall;

    .line 988
    if-eq p2, p1, :cond_1

    .line 989
    if-eqz p1, :cond_0

    .line 990
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 992
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p2, p0, v0}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 993
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 995
    :cond_1
    return-void
.end method
