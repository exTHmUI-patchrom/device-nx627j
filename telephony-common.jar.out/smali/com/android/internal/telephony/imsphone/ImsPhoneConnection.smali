.class public Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
.super Lcom/android/internal/telephony/Connection;
.source "ImsPhoneConnection.java"

# interfaces
.implements Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_DTMF_DELAY_DONE:I = 0x5

.field private static final EVENT_DTMF_DONE:I = 0x1

.field private static final EVENT_NEXT_POST_DIAL:I = 0x3

.field private static final EVENT_PAUSE_DONE:I = 0x2

.field private static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhoneConnection"

.field private static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field private static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field private mAudioCodec:I

.field private mConferenceConnectTime:J

.field private mDisconnectTime:J

.field private mDisconnected:Z

.field private mDtmfToneDelay:I

.field private mExtras:Landroid/os/Bundle;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerMessenger:Landroid/os/Messenger;

.field private mImsCall:Lcom/android/ims/ImsCall;

.field private mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

.field private mIsEmergency:Z

.field private mIsMergeInProcess:Z

.field private mIsRttEnabledForCall:Z

.field private mIsVideoEnabled:Z

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field private mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPreciseDisconnectCause:I

.field private mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

.field private mRttTextStream:Landroid/telecom/Connection$RttTextStream;

.field private mShouldIgnoreVideoStateChanges:Z

.field private mUusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p5, "isUnknown"    # Z

    .line 176
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    .line 69
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    .line 96
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 109
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPreciseDisconnectCause:I

    .line 114
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsVideoEnabled:Z

    .line 130
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAudioCodec:I

    .line 177
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    .line 178
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 180
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 181
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    .line 182
    new-instance v0, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandlerMessenger:Landroid/os/Messenger;

    .line 183
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 185
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    const-string v2, "oi"

    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 187
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    const-string v2, "cna"

    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 188
    nop

    .line 189
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    const-string v2, "oir"

    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v0

    .line 188
    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 190
    nop

    .line 191
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    const-string v2, "cnap"

    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v0

    .line 190
    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    .line 192
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    goto :goto_0

    .line 194
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 195
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    .line 198
    :goto_0
    xor-int/lit8 v0, p5, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCreateTime:J

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 205
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/ImsCall;)Z

    .line 207
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 209
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    .line 208
    :goto_1
    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/Phone;)V

    .line 213
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11200d4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAudioModeIsVoip(Z)V

    .line 217
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p5, "isEmergency"    # Z

    .line 222
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZLandroid/os/Bundle;)V

    .line 223
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZLandroid/os/Bundle;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p5, "isEmergency"    # Z
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 228
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    .line 69
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    .line 96
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 109
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPreciseDisconnectCause:I

    .line 114
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsVideoEnabled:Z

    .line 130
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAudioCodec:I

    .line 229
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    .line 230
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 231
    const/4 v2, 0x0

    .line 232
    .local v2, "isConferenceUri":Z
    const/4 v3, 0x0

    .line 234
    .local v3, "isSkipSchemaParsing":Z
    if-eqz p6, :cond_0

    .line 235
    const-string v4, "org.codeaurora.extra.DIAL_CONFERENCE_URI"

    invoke-virtual {p6, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 237
    const-string v4, "org.codeaurora.extra.SKIP_SCHEMA_PARSING"

    invoke-virtual {p6, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 241
    :cond_0
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 242
    new-instance v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    .line 244
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDialString:Ljava/lang/String;

    .line 246
    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    goto :goto_0

    .line 250
    :cond_1
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 251
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    goto :goto_1

    .line 247
    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 248
    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    .line 256
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 258
    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    .line 259
    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCreateTime:J

    .line 262
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 263
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 265
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    .line 267
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/Phone;)V

    .line 269
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x11200d4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAudioModeIsVoip(Z)V

    .line 273
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 57
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    return v0
.end method

.method private acquireWakeLock()V
    .locals 2

    .line 662
    const-string v0, "ImsPhoneConnection"

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 664
    return-void
.end method

.method private applyLocalCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I
    .locals 3
    .param p1, "localProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "capabilities"    # I

    .line 289
    const-string v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyLocalCallCapabilities - localProfile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I

    move-result p2

    .line 293
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsVideoEnabled:Z

    if-nez v1, :cond_0

    .line 294
    const-string v0, "ImsPhoneConnection"

    const-string v1, "applyLocalCallCapabilities - disabling video (overidden)"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return p2

    .line 297
    :cond_0
    iget v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 301
    :pswitch_0
    invoke-static {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p2

    .line 303
    goto :goto_0

    .line 305
    :cond_1
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I

    move-result p2

    .line 309
    :goto_0
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static applyRemoteCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I
    .locals 3
    .param p0, "remoteProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p1, "capabilities"    # I

    .line 313
    const-string v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyRemoteCallCapabilities - remoteProfile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I

    move-result p1

    .line 317
    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 321
    :pswitch_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p1

    .line 323
    goto :goto_0

    .line 325
    :cond_0
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I

    move-result p1

    .line 330
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 331
    const/16 v0, 0x40

    invoke-static {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p1

    .line 333
    :cond_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 7
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "newExtras"    # Landroid/os/Bundle;

    .line 1180
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1184
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1185
    return v1

    .line 1188
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1189
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1190
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1191
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1192
    .local v5, "newValue":Ljava/lang/Object;
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1193
    return v1

    .line 1196
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "newValue":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 1197
    :cond_3
    return v0

    .line 1181
    :cond_4
    :goto_1
    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0
.end method

.method private createRttTextHandler()V
    .locals 3

    .line 1116
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneConnection$gXYXXIQcibrbO2gQqP7d18avaBI;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneConnection$gXYXXIQcibrbO2gQqP7d18avaBI;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    .line 1123
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->initialize(Landroid/telecom/Connection$RttTextStream;)V

    .line 1124
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 656
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 657
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "ImsPhoneConnection"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 658
    return-void
.end method

.method static equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 285
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

    .line 280
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

.method private fetchDtmfToneDelay(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 679
    nop

    .line 680
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 681
    .local v0, "configMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 682
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    .line 683
    const-string v2, "ims_dtmf_tone_delay_int"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    .line 685
    :cond_0
    return-void
.end method

.method private getAudioQualityFromCallProfile(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallProfile;)I
    .locals 6
    .param p1, "localCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "remoteCallProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1212
    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-nez v1, :cond_0

    goto :goto_2

    .line 1217
    :cond_0
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_2

    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v0

    .line 1224
    .local v1, "isEvsCodecHighDef":Z
    :goto_1
    iget-object v2, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v2, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    iget-object v2, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v2, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/4 v5, 0x6

    if-eq v2, v5, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    iget v2, p2, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    if-nez v2, :cond_4

    move v3, v0

    nop

    :cond_4
    move v2, v3

    .line 1230
    .local v2, "isHighDef":Z
    if-eqz v2, :cond_5

    move v0, v4

    nop

    :cond_5
    return v0

    .line 1214
    .end local v1    # "isEvsCodecHighDef":Z
    .end local v2    # "isHighDef":Z
    :cond_6
    :goto_2
    return v0
.end method

.method public static synthetic lambda$createRttTextHandler$0(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 1118
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1119
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->sendRttMessage(Ljava/lang/String;)V

    .line 1122
    :cond_0
    return-void
.end method

.method private processNextPostDialChar()V
    .locals 5

    .line 578
    const/4 v0, 0x0

    .line 581
    .local v0, "c":C
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_0

    .line 583
    return-void

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    if-gt v1, v2, :cond_1

    goto :goto_0

    .line 594
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 596
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 598
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processPostDialChar(C)Z

    move-result v1

    .line 600
    .local v1, "isValid":Z
    if-nez v1, :cond_3

    .line 602
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 604
    const-string v2, "ImsPhoneConnection"

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

    .line 605
    return-void

    .line 587
    .end local v1    # "isValid":Z
    :cond_2
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 590
    const/4 v0, 0x0

    .line 609
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyPostDialListenersNextChar(C)V

    .line 612
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPostDialHandler()Landroid/os/Registrant;

    move-result-object v1

    .line 616
    .local v1, "postDialHandler":Landroid/os/Registrant;
    if-eqz v1, :cond_4

    .line 617
    invoke-virtual {v1}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v2

    move-object v3, v2

    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v2, :cond_4

    .line 619
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 620
    .local v2, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    .line 621
    .local v4, "ar":Landroid/os/AsyncResult;
    iput-object p0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 622
    iput-object v2, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 625
    iput v0, v3, Landroid/os/Message;->arg1:I

    .line 629
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 631
    .end local v2    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :cond_4
    return-void
.end method

.method private processPostDialChar(C)Z
    .locals 5
    .param p1, "c"    # C

    .line 541
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 543
    .local v0, "dtmfComplete":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandlerMessenger:Landroid/os/Messenger;

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 544
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendDtmf(CLandroid/os/Message;)V

    .line 545
    .end local v0    # "dtmfComplete":Landroid/os/Message;
    goto :goto_0

    :cond_0
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 560
    :cond_1
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_2

    .line 561
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 562
    :cond_2
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_3

    .line 563
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 568
    :goto_0
    return v1

    .line 565
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4
    .param p1, "s"    # Lcom/android/internal/telephony/Connection$PostDialState;

    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    const/4 v2, 0x4

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v0, :cond_0

    .line 642
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 643
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 644
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 645
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 648
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 650
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 651
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyPostDialListeners()V

    .line 652
    return-void
.end method

.method private updateVideoState(I)V
    .locals 1
    .param p1, "newVideoState"    # I

    .line 1026
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->onVideoStateChanged(I)V

    .line 1029
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    .line 1030
    return-void
.end method

.method private updateWifiStateFromExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1134
    const-string v0, "CallRadioTech"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "callRadioTech"

    .line 1135
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1137
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1138
    .local v0, "call":Lcom/android/ims/ImsCall;
    const/4 v1, 0x0

    .line 1139
    .local v1, "isWifi":Z
    if-eqz v0, :cond_1

    .line 1140
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v1

    .line 1144
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isWifi()Z

    move-result v2

    if-eq v2, v1, :cond_2

    .line 1145
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setWifi(Z)V

    .line 1148
    .end local v0    # "call":Lcom/android/ims/ImsCall;
    .end local v1    # "isWifi":Z
    :cond_2
    return-void
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .line 459
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 460
    return-void
.end method

.method public changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 734
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 735
    return-void
.end method

.method public changeToPausedState()V
    .locals 4

    .line 1380
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    .line 1381
    .local v0, "newVideoState":I
    const-string v1, "ImsPhoneConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsPhoneConnection: changeToPausedState - setting paused bit; newVideoState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1381
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateVideoState(I)V

    .line 1384
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 1385
    return-void
.end method

.method public changeToUnPausedState()V
    .locals 4

    .line 1388
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    .line 1389
    .local v0, "newVideoState":I
    const-string v1, "ImsPhoneConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsPhoneConnection: changeToUnPausedState - unsetting paused bit; newVideoState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1389
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateVideoState(I)V

    .line 1392
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 1393
    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->deflect(Ljava/lang/String;)V

    .line 399
    nop

    .line 403
    return-void

    .line 395
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no valid ims call to deflect"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cannot deflect call"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose()V
    .locals 0

    .line 276
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 573
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 574
    return-void
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object v0
.end method

.method public getConferenceConnectTime()J
    .locals 2

    .line 821
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    return-wide v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .line 348
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    return-wide v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .line 358
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 360
    const-wide/16 v0, 0x0

    return-wide v0

    .line 362
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getHoldingStartTime()J
    .locals 2

    .line 353
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    return-wide v0
.end method

.method public declared-synchronized getImsCall()Lcom/android/ims/ImsCall;
    .locals 1

    monitor-enter p0

    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    throw v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .line 689
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .line 699
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    .line 779
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPreciseDisconnectCause:I

    return v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .line 381
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-eqz v0, :cond_0

    .line 382
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    return-object v0

    .line 384
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMergeComplete()V
    .locals 2

    .line 1375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    .line 1376
    const-string v0, "android.telecom.event.MERGE_COMPLETE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1377
    return-void
.end method

.method public handleMergeStart()V
    .locals 2

    .line 1367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    .line 1368
    const-string v0, "android.telecom.event.MERGE_START"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1369
    return-void
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 407
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 412
    return-void

    .line 410
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasRttTextStream()Z
    .locals 1

    .line 1093
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized isConferenceHost()Z
    .locals 1

    monitor-enter p0

    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isConferenceHost()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    throw v0
.end method

.method protected isEmergency()Z
    .locals 1

    .line 1274
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    return v0
.end method

.method public isMemberOfPeerConference()Z
    .locals 1

    .line 722
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isConferenceHost()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public declared-synchronized isMultiparty()Z
    .locals 1

    monitor-enter p0

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    throw v0
.end method

.method public isRttEnabledForCall()Z
    .locals 1

    .line 1097
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    return v0
.end method

.method public onCallSessionPropertyChanged(I)V
    .locals 2
    .param p1, "property"    # I

    .line 1077
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1078
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.telecom.extra.EXTRA_CALL_PROPERTY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1079
    const-string v1, "android.telecom.event.EVENT_CALL_PROPERTY_CHANGED"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1080
    return-void
.end method

.method onConnectedInOrOut()V
    .locals 4

    .line 515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTime:J

    .line 516
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTimeReal:J

    .line 517
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDuration:J

    .line 520
    const-string v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectedInOrOut: connectTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    if-nez v0, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    .line 527
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 528
    return-void
.end method

.method public onDisconnect()Z
    .locals 5

    .line 481
    const/4 v0, 0x0

    .line 483
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-nez v1, :cond_3

    .line 486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    .line 487
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTimeReal:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDuration:J

    .line 488
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    .line 490
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 491
    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyDisconnect(I)V

    .line 493
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->connectionDisconnected(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z

    move-result v0

    .line 498
    .end local v0    # "changed":Z
    .local v1, "changed":Z
    :goto_0
    move v1, v0

    goto :goto_1

    .line 496
    .end local v1    # "changed":Z
    .restart local v0    # "changed":Z
    :cond_0
    const-string v1, "ImsPhoneConnection"

    const-string v2, "onDisconnect: no parent"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 498
    .end local v0    # "changed":Z
    .restart local v1    # "changed":Z
    :goto_1
    monitor-enter p0

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->tearDown()V

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->close()V

    .line 503
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 504
    monitor-exit p0

    .line 506
    move v0, v1

    goto :goto_2

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 506
    .end local v1    # "changed":Z
    .restart local v0    # "changed":Z
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 507
    return v0
.end method

.method public onDisconnect(I)Z
    .locals 3
    .param p1, "cause"    # I

    .line 473
    const-string v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect: cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 475
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 477
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    move-result v0

    return v0
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 5
    .param p1, "endpoint"    # Landroid/net/Uri;

    .line 794
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 795
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    .line 796
    return-void

    .line 799
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->removeParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    goto :goto_0

    .line 800
    :catch_0
    move-exception v1

    .line 802
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "ImsPhoneConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnectConferenceParticipant: no session in place. Failed to disconnect endpoint = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method onHangupLocal()V
    .locals 1

    .line 467
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 468
    return-void
.end method

.method public onReceiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "requestProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1288
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    if-eqz v0, :cond_1

    .line 1290
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v0

    .line 1291
    .local v0, "currentVideoState":I
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    .line 1299
    .local v1, "newVideoState":I
    xor-int v2, v0, v1

    .line 1300
    .local v2, "changedBits":I
    and-int/lit8 v2, v2, 0x3

    .line 1301
    if-nez v2, :cond_0

    .line 1303
    return-void

    .line 1307
    :cond_0
    and-int v3, v2, v0

    not-int v3, v3

    and-int/2addr v0, v3

    .line 1309
    and-int v3, v2, v1

    or-int/2addr v0, v3

    .line 1311
    const-string v3, "ImsPhoneConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceiveSessionModifyResponse : received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " while paused ; sending new videoState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1311
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    .line 1319
    .end local v0    # "currentVideoState":I
    .end local v1    # "newVideoState":I
    .end local v2    # "changedBits":I
    :cond_1
    return-void
.end method

.method public onRttMessageReceived(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 1061
    monitor-enter p0

    .line 1062
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-nez v0, :cond_1

    .line 1063
    const-string v0, "ImsPhoneConnection"

    const-string v1, "onRttMessageReceived: RTT text handler not available. Attempting to create one."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-nez v0, :cond_0

    .line 1066
    const-string v0, "ImsPhoneConnection"

    const-string v1, "onRttMessageReceived: Unable to process incoming message. No textstream available"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    monitor-exit p0

    return-void

    .line 1070
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createRttTextHandler()V

    .line 1072
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->sendToInCall(Ljava/lang/String;)V

    .line 1074
    return-void

    .line 1072
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method onStartedHolding()V
    .locals 2

    .line 532
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    .line 533
    return-void
.end method

.method public pauseVideo(I)V
    .locals 2
    .param p1, "source"    # I

    .line 1328
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-nez v0, :cond_0

    .line 1329
    return-void

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->pauseVideo(II)V

    .line 1333
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 422
    const-string v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void

    .line 427
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 429
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    .line 430
    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 435
    const-string v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void

    .line 440
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    .line 448
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    .line 450
    const-string v1, "ImsPhoneConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    .line 455
    return-void
.end method

.method releaseWakeLock()V
    .locals 3

    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 670
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    const-string v1, "ImsPhoneConnection"

    const-string v2, "releaseWakeLock"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 674
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 676
    :cond_1
    :goto_0
    return-void
.end method

.method public resumeVideo(I)V
    .locals 2
    .param p1, "source"    # I

    .line 1342
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-nez v0, :cond_0

    .line 1343
    return-void

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->resumeVideo(II)V

    .line 1347
    return-void
.end method

.method public sendRttModifyRequest(Landroid/telecom/Connection$RttTextStream;)V
    .locals 2
    .param p1, "textStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 1033
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1034
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    .line 1035
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->sendRttModifyRequest()V

    .line 1036
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setCurrentRttTextStream(Landroid/telecom/Connection$RttTextStream;)V

    .line 1038
    :cond_0
    return-void
.end method

.method public sendRttModifyResponse(Landroid/telecom/Connection$RttTextStream;)V
    .locals 4
    .param p1, "textStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 1047
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1048
    .local v0, "accept":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 1050
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_2

    .line 1051
    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall;->sendRttModifyResponse(Z)V

    .line 1052
    if-eqz v0, :cond_1

    .line 1053
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setCurrentRttTextStream(Landroid/telecom/Connection$RttTextStream;)V

    goto :goto_1

    .line 1055
    :cond_1
    const-string v2, "ImsPhoneConnection"

    const-string v3, "sendRttModifyResponse: foreground call has no connections"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_2
    :goto_1
    return-void
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 416
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConferenceConnectTime(J)V
    .locals 0
    .param p1, "conferenceConnectTime"    # J

    .line 814
    iput-wide p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    .line 815
    return-void
.end method

.method public setCurrentRttTextStream(Landroid/telecom/Connection$RttTextStream;)V
    .locals 2
    .param p1, "rttTextStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 1083
    monitor-enter p0

    .line 1084
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 1085
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    if-eqz v0, :cond_0

    .line 1086
    const-string v0, "ImsPhoneConnection"

    const-string v1, "setCurrentRttTextStream: Creating a text handler"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createRttTextHandler()V

    .line 1089
    :cond_0
    monitor-exit p0

    .line 1090
    return-void

    .line 1089
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDisconnectCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .line 367
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 368
    return-void
.end method

.method public declared-synchronized setImsCall(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    monitor-enter p0

    .line 730
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    monitor-exit p0

    return-void

    .line 729
    .end local p1    # "imsCall":Lcom/android/ims/ImsCall;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    throw p1
.end method

.method public setPreciseDisconnectCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .line 783
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPreciseDisconnectCause:I

    .line 784
    return-void
.end method

.method public setVideoEnabled(Z)V
    .locals 3
    .param p1, "isVideoEnabled"    # Z

    .line 1396
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsVideoEnabled:Z

    .line 1397
    const-string v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoEnabled: mIsVideoEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsVideoEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; updating local video availability."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    .line 1400
    return-void
.end method

.method public setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 1
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .line 1262
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    .line 1264
    instance-of v0, p1, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-eqz v0, :cond_0

    .line 1265
    move-object v0, p1

    check-cast v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    .line 1267
    :cond_0
    return-void
.end method

.method public startRttTextProcessing()V
    .locals 2

    .line 1101
    monitor-enter p0

    .line 1102
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-nez v0, :cond_0

    .line 1103
    const-string v0, "ImsPhoneConnection"

    const-string v1, "startRttTextProcessing: no RTT text stream. Ignoring."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    monitor-exit p0

    return-void

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-eqz v0, :cond_1

    .line 1107
    const-string v0, "ImsPhoneConnection"

    const-string v1, "startRttTextProcessing: RTT text handler already exists"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    monitor-exit p0

    return-void

    .line 1110
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createRttTextHandler()V

    .line 1111
    monitor-exit p0

    .line 1112
    return-void

    .line 1111
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1242
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ImsPhoneConnection objId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1244
    const-string v1, " telecomCallID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    const-string v1, "ImsPhoneConnection"

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    const-string v1, " ImsCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    monitor-enter p0

    .line 1250
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-nez v1, :cond_0

    .line 1251
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1253
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1255
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1256
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1255
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    .line 742
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_4

    .line 747
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isPendingHold()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    const-string v0, "ImsPhoneConnection"

    const-string v2, "update : state is ACTIVE, but call is pending hold, skipping"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return v1

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 753
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectedInOrOut()V

    .line 756
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v0, v2, :cond_5

    .line 761
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 762
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 763
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 765
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v0, :cond_5

    .line 766
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onStartedHolding()V

    .line 769
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->update(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    .line 770
    .local v0, "updateParent":Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateAddressDisplay(Lcom/android/ims/ImsCall;)Z

    move-result v2

    .line 771
    .local v2, "updateAddressDisplay":Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    move-result v3

    .line 772
    .local v3, "updateMediaCapabilities":Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/ImsCall;)Z

    move-result v4

    .line 774
    .local v4, "updateExtras":Z
    if-nez v0, :cond_7

    if-nez v2, :cond_7

    if-nez v3, :cond_7

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, 0x1

    :goto_2
    return v1
.end method

.method public updateAddressDisplay(Lcom/android/ims/ImsCall;)Z
    .locals 9
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 832
    if-nez p1, :cond_0

    .line 833
    const/4 v0, 0x0

    return v0

    .line 836
    :cond_0
    const/4 v0, 0x0

    .line 837
    .local v0, "changed":Z
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    .line 838
    .local v1, "callProfile":Landroid/telephony/ims/ImsCallProfile;
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 842
    const-string v2, "oi"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 843
    .local v2, "address":Ljava/lang/String;
    const-string v3, "cna"

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 844
    .local v3, "name":Ljava/lang/String;
    const-string v4, "oir"

    .line 845
    invoke-virtual {v1, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v4

    .line 844
    invoke-static {v4}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v4

    .line 846
    .local v4, "nump":I
    const-string v5, "cnap"

    .line 847
    invoke-virtual {v1, v5}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v5

    .line 846
    invoke-static {v5}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v5

    .line 849
    .local v5, "namep":I
    const-string v6, "ImsPhoneConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAddressDisplay: callId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " address = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "ImsPhoneConnection"

    .line 850
    invoke-static {v8, v2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "ImsPhoneConnection"

    .line 851
    invoke-static {v8, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " nump = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " namep = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 849
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    if-nez v6, :cond_5

    .line 862
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 863
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 864
    const/4 v0, 0x1

    .line 866
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 867
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 868
    const-string v6, ""

    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 869
    const/4 v0, 0x1

    goto :goto_0

    .line 871
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 872
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 873
    const/4 v0, 0x1

    .line 875
    :cond_3
    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    if-eq v6, v4, :cond_4

    .line 876
    iput v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 877
    const/4 v0, 0x1

    .line 879
    :cond_4
    iget v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    if-eq v6, v5, :cond_5

    .line 880
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    .line 881
    const/4 v0, 0x1

    .line 885
    .end local v2    # "address":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nump":I
    .end local v5    # "namep":I
    :cond_5
    return v0
.end method

.method updateExtras(Lcom/android/ims/ImsCall;)Z
    .locals 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 1158
    if-nez p1, :cond_0

    .line 1159
    const/4 v0, 0x0

    return v0

    .line 1162
    :cond_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 1163
    .local v0, "callProfile":Landroid/telephony/ims/ImsCallProfile;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1164
    .local v1, "extras":Landroid/os/Bundle;
    :goto_0
    if-nez v1, :cond_2

    .line 1165
    const-string v2, "ImsPhoneConnection"

    const-string v3, "Call profile extras are null."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 1169
    .local v2, "changed":Z
    if-eqz v2, :cond_3

    .line 1170
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateWifiStateFromExtras(Landroid/os/Bundle;)V

    .line 1172
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 1173
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1174
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConnectionExtras(Landroid/os/Bundle;)V

    .line 1176
    :cond_3
    return v2
.end method

.method public updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z
    .locals 8
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 896
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 897
    return v0

    .line 900
    :cond_0
    move v1, v0

    .line 904
    .local v1, "changed":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    .line 906
    .local v2, "negotiatedCallProfile":Landroid/telephony/ims/ImsCallProfile;
    if-eqz v2, :cond_5

    .line 907
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v3

    .line 908
    .local v3, "oldVideoState":I
    nop

    .line 909
    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result v4

    .line 911
    .local v4, "newVideoState":I
    if-eq v3, v4, :cond_3

    .line 918
    invoke-static {v3}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 919
    invoke-static {v4}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 923
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 926
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    if-nez v0, :cond_2

    .line 927
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateVideoState(I)V

    .line 928
    const/4 v0, 0x1

    .line 934
    .end local v1    # "changed":Z
    .local v0, "changed":Z
    move v1, v0

    goto :goto_0

    .line 930
    .end local v0    # "changed":Z
    .restart local v1    # "changed":Z
    :cond_2
    const-string v0, "ImsPhoneConnection"

    const-string v5, "updateMediaCapabilities - ignoring video state change due to paused state."

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :goto_0
    invoke-static {v3}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 935
    invoke-static {v4}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 939
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 943
    :cond_3
    iget-object v0, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-eqz v0, :cond_5

    .line 944
    iget-object v0, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    .line 946
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-nez v0, :cond_4

    .line 947
    const-string v0, "ImsPhoneConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMediaCapabilities -- turning RTT on, profile="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->startRttTextProcessing()V

    .line 950
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onRttInitiated()V

    .line 951
    const/4 v1, 0x1

    goto :goto_1

    .line 952
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-eqz v0, :cond_5

    .line 953
    const-string v0, "ImsPhoneConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMediaCapabilities -- turning RTT off, profile="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->tearDown()V

    .line 956
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    .line 957
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onRttTerminated()V

    .line 958
    const/4 v1, 0x1

    .line 965
    .end local v3    # "oldVideoState":I
    .end local v4    # "newVideoState":I
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConnectionCapabilities()I

    move-result v0

    .line 968
    .local v0, "capabilities":I
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isCarrierDowngradeOfVtCallSupported()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_6

    .line 969
    invoke-static {v0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result v3

    move v0, v3

    goto :goto_2

    .line 973
    :cond_6
    invoke-static {v0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I

    move-result v3

    move v0, v3

    .line 979
    :goto_2
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    .line 980
    .local v3, "localCallProfile":Landroid/telephony/ims/ImsCallProfile;
    const-string v4, "ImsPhoneConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update localCallProfile="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    if-eqz v3, :cond_7

    .line 982
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->applyLocalCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I

    move-result v4

    move v0, v4

    .line 986
    :cond_7
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    .line 987
    .local v4, "remoteCallProfile":Landroid/telephony/ims/ImsCallProfile;
    const-string v5, "ImsPhoneConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update remoteCallProfile="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    if-eqz v4, :cond_8

    .line 989
    invoke-static {v4, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->applyRemoteCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I

    move-result v5

    move v0, v5

    .line 991
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConnectionCapabilities()I

    move-result v5

    if-eq v5, v0, :cond_9

    .line 992
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConnectionCapabilities(I)V

    .line 993
    const/4 v1, 0x1

    .line 997
    :cond_9
    if-eqz v3, :cond_a

    iget-object v5, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v5, v5, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iget v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAudioCodec:I

    if-eq v5, v6, :cond_a

    .line 999
    iget-object v5, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v5, v5, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAudioCodec:I

    .line 1000
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeAudioCodecIms(ILandroid/telephony/ims/ImsCallSession;)V

    .line 1003
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isViLteDataMetered()Z

    move-result v5

    if-nez v5, :cond_b

    .line 1004
    const-string v5, "ImsPhoneConnection"

    const-string v6, "data is not metered"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1006
    :cond_b
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-eqz v5, :cond_c

    .line 1007
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    const/4 v6, 0x4

    .line 1008
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasCapabilities(I)Z

    move-result v6

    .line 1007
    invoke-virtual {v5, v6}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->setIsVideoEnabled(Z)V

    .line 1012
    :cond_c
    :goto_3
    nop

    .line 1013
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQualityFromCallProfile(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallProfile;)I

    move-result v5

    .line 1014
    .local v5, "newAudioQuality":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQuality()I

    move-result v6

    if-eq v6, v5, :cond_d

    .line 1015
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAudioQuality(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    const/4 v1, 0x1

    .line 1020
    .end local v0    # "capabilities":I
    .end local v2    # "negotiatedCallProfile":Landroid/telephony/ims/ImsCallProfile;
    .end local v3    # "localCallProfile":Landroid/telephony/ims/ImsCallProfile;
    .end local v4    # "remoteCallProfile":Landroid/telephony/ims/ImsCallProfile;
    .end local v5    # "newAudioQuality":I
    :cond_d
    goto :goto_4

    .line 1018
    :catch_0
    move-exception v0

    .line 1022
    :goto_4
    return v1
.end method

.method public wasVideoPausedFromSource(I)Z
    .locals 1
    .param p1, "source"    # I

    .line 1356
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-nez v0, :cond_0

    .line 1357
    const/4 v0, 0x0

    return v0

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->wasVideoPausedFromSource(I)Z

    move-result v0

    return v0
.end method
