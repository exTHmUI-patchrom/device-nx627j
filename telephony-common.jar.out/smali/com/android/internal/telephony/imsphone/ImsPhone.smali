.class public Lcom/android/internal/telephony/imsphone/ImsPhone;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneBase;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;,
        Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
    }
.end annotation


# static fields
.field private static final ACTION_IMS_NETWORK_STATE:Ljava/lang/String; = "com.android.phone.intent.action.IMS_NETWORK_STATE"

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field protected static final EVENT_DATA_ATTACHED:I = 0x7d

.field private static final EVENT_DEFAULT_PHONE_DATA_STATE_CHANGED:I = 0x34

.field private static final EVENT_GET_CALL_BARRING_DONE:I = 0x2f

.field private static final EVENT_GET_CALL_WAITING_DONE:I = 0x31

.field private static final EVENT_GET_CLIR_DONE:I = 0x33

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x35

.field private static final EVENT_SET_CALL_BARRING_DONE:I = 0x2e

.field private static final EVENT_SET_CALL_WAITING_DONE:I = 0x30

.field private static final EVENT_SET_CLIR_DONE:I = 0x32

.field private static final EVENT_VOICE_CALL_ENDED:I = 0x36

.field private static final EXTRA_IS_LTE:Ljava/lang/String; = "is_lte"

.field private static final IMS_CALL_ALIVE:Ljava/lang/String; = "ims_call_alive_"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhone"

.field private static final PERMISSION_IMS_NETWORK_STATE:Ljava/lang/String; = "com.android.phone.permission.IMS_NETWORK_STATE"

.field private static final VDBG:Z = false


# instance fields
.field mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field private mCurrentSubscriberUris:[Landroid/net/Uri;

.field mDefaultPhone:Lcom/android/internal/telephony/Phone;

.field mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

.field private mImsRegistered:Z

.field private mLastDialString:Ljava/lang/String;

.field private mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field private mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mRoaming:Z

.field private mRttReceiver:Landroid/content/BroadcastReceiver;

.field private mSS:Landroid/telephony/ServiceState;

.field private final mSilentRedialRegistrants:Landroid/os/RegistrantList;

.field private mSsnRegistrants:Landroid/os/RegistrantList;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;Z)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "defaultPhone"    # Lcom/android/internal/telephony/Phone;
    .param p4, "unitTestMode"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 259
    const-string v0, "ImsPhone"

    invoke-direct {p0, v0, p1, p2, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    .line 212
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    .line 216
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRoaming:Z

    .line 219
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 1656
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 1860
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$2;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRttReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 266
    nop

    .line 267
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeImsExternalCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    .line 268
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 269
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerPhoneStateListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;)V

    .line 270
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->setCallPuller(Lcom/android/internal/telephony/imsphone/ImsPullCall;)V

    .line 272
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 274
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    .line 276
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 277
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "ImsPhone"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 278
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/16 v4, 0x34

    .line 282
    invoke-virtual {v0, p0, v4, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/16 v4, 0x7d

    invoke-virtual {v0, p0, v4, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x50

    invoke-interface {v0, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v4, 0x4e

    invoke-virtual {v0, p0, v4, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v4, 0x36

    invoke-virtual {v0, p0, v4, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 298
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x35

    invoke-virtual {v0, p0, v3, v2}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 307
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 308
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "org.codeaurora.intent.action.send.rtt.text"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v2, "org.codeaurora.intent.action.send.rtt.operation"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRttReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/imsphone/ImsPhone;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhone;
    .param p1, "x1"    # I

    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->checkIfModifyRequestOrResponse(I)V

    return-void
.end method

.method private canSendRttModifyRequest()Z
    .locals 3

    .line 1990
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1991
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    .line 1992
    const-string v1, "ImsPhone"

    const-string v2, "RTT: imsCall null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    const/4 v1, 0x0

    return v1

    .line 1996
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private checkIfModifyRequestOrResponse(I)V
    .locals 3
    .param p1, "data"    # I

    .line 1953
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isFgCallActive()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1957
    :cond_1
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: checkIfModifyRequestOrResponse data =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1965
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->packRttModifyRequestToProfile(I)V

    .line 1966
    goto :goto_0

    .line 1969
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendRttModifyResponse(I)V

    goto :goto_0

    .line 1961
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->packRttModifyRequestToProfile(I)V

    .line 1962
    nop

    .line 1972
    :goto_0
    return-void

    .line 1954
    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;
    .locals 10
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .param p3, "wrappedCallback"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, "isConferenceUri":Z
    const/4 v1, 0x0

    .line 701
    .local v1, "isSkipSchemaParsing":Z
    iget-object v2, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 702
    iget-object v2, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    const-string v3, "org.codeaurora.extra.DIAL_CONFERENCE_URI"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 704
    iget-object v2, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    const-string v3, "org.codeaurora.extra.SKIP_SCHEMA_PARSING"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 707
    :cond_0
    move-object v2, p1

    .line 709
    .local v2, "newDialString":Ljava/lang/String;
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 710
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 714
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 715
    return-object v4

    .line 720
    :cond_2
    instance-of v3, p2, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    if-nez v3, :cond_3

    .line 721
    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v3

    .local v3, "imsDialArgsBuilder":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    goto :goto_0

    .line 723
    .end local v3    # "imsDialArgsBuilder":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    :cond_3
    move-object v3, p2

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v3

    .line 725
    .restart local v3    # "imsDialArgsBuilder":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getClirMode()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 727
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 728
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    return-object v4

    .line 732
    :cond_4
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 733
    .local v5, "networkPortion":Ljava/lang/String;
    nop

    .line 734
    invoke-static {v5, p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object v6

    .line 735
    .local v6, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialInternal: dialing w/ mmi \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\'..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 737
    if-nez v6, :cond_5

    .line 738
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v7

    invoke-virtual {v4, p1, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    return-object v4

    .line 739
    :cond_5
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isTemporaryModeCLIR()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 740
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getCLIRMode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 741
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getDialingNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    return-object v4

    .line 742
    :cond_6
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isSupportedOverImsPhone()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 751
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v4, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 755
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processCode()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    goto :goto_1

    .line 756
    :catch_0
    move-exception v7

    .line 757
    .local v7, "cse":Lcom/android/internal/telephony/CallStateException;
    const-string v8, "cs_fallback"

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 766
    .end local v7    # "cse":Lcom/android/internal/telephony/CallStateException;
    :goto_1
    return-object v4

    .line 758
    .restart local v7    # "cse":Lcom/android/internal/telephony/CallStateException;
    :cond_7
    const-string v4, "dialInternal: fallback to GSM required."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logi(Ljava/lang/String;)V

    .line 761
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 762
    throw v7

    .line 748
    .end local v7    # "cse":Lcom/android/internal/telephony/CallStateException;
    :cond_8
    const-string v4, "dialInternal: USSD not supported by IMS; fallback to CS."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logi(Ljava/lang/String;)V

    .line 749
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v7, "cs_fallback"

    invoke-direct {v4, v7}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getActionFromCFAction(I)I
    .locals 1
    .param p1, "action"    # I

    .line 895
    packed-switch p1, :pswitch_data_0

    .line 904
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 898
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 899
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 897
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 896
    :pswitch_4
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getCBTypeFromFacility(Ljava/lang/String;)I
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;

    .line 1044
    const-string v0, "AO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    const/4 v0, 0x2

    return v0

    .line 1046
    :cond_0
    const-string v0, "OI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1047
    const/4 v0, 0x3

    return v0

    .line 1048
    :cond_1
    const-string v0, "OX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1049
    const/4 v0, 0x4

    return v0

    .line 1050
    :cond_2
    const-string v0, "AI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1051
    const/4 v0, 0x1

    return v0

    .line 1052
    :cond_3
    const-string v0, "IR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1053
    const/4 v0, 0x5

    return v0

    .line 1054
    :cond_4
    const-string v0, "AB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1055
    const/4 v0, 0x7

    return v0

    .line 1056
    :cond_5
    const-string v0, "AG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1057
    const/16 v0, 0x8

    return v0

    .line 1058
    :cond_6
    const-string v0, "AC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1059
    const/16 v0, 0x9

    return v0

    .line 1062
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method private getCFReasonFromCondition(I)I
    .locals 1
    .param p1, "condition"    # I

    .line 880
    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    .line 891
    return v0

    .line 886
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 885
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 884
    :pswitch_2
    return v0

    .line 883
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 882
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 881
    :pswitch_5
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCallForwardInfo(Landroid/telephony/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 3
    .param p1, "info"    # Landroid/telephony/ims/ImsCallForwardInfo;

    .line 1355
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1356
    .local v0, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallForwardInfo;->getStatus()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1357
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallForwardInfo;->getCondition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCFReasonFromCondition(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1358
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallForwardInfo;->getToA()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1359
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1360
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallForwardInfo;->getTimeSeconds()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1366
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    .line 1367
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallForwardInfo;->getServiceClass()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    goto :goto_0

    .line 1369
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1371
    :goto_0
    return-object v0
.end method

.method private getCommandException(ILjava/lang/String;)Lcom/android/internal/telephony/CommandException;
    .locals 2
    .param p1, "code"    # I
    .param p2, "errorString"    # Ljava/lang/String;

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommandException code= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorString= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1161
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 1163
    .local v0, "error":Lcom/android/internal/telephony/CommandException$Error;
    const/16 v1, 0xf1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1186
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL_VIDEO:Lcom/android/internal/telephony/CommandException$Error;

    .line 1187
    goto :goto_0

    .line 1183
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    .line 1184
    goto :goto_0

    .line 1180
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    .line 1181
    goto :goto_0

    .line 1177
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    .line 1178
    goto :goto_0

    .line 1168
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    .line 1169
    goto :goto_0

    .line 1171
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    .line 1172
    goto :goto_0

    .line 1165
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1166
    goto :goto_0

    .line 1174
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 1175
    nop

    .line 1192
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v1, v0, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x335
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1196
    const/4 v0, 0x0

    .line 1198
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    instance-of v1, p1, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_0

    .line 1199
    move-object v1, p1

    check-cast v1, Lcom/android/ims/ImsException;

    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(ILjava/lang/String;)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    goto :goto_0

    .line 1201
    :cond_0
    const-string v1, "getCommandException generic failure"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1202
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v0, v1

    .line 1204
    :goto_0
    return-object v0
.end method

.method private getConditionFromCFReason(I)I
    .locals 1
    .param p1, "reason"    # I

    .line 865
    packed-switch p1, :pswitch_data_0

    .line 876
    const/4 v0, -0x1

    return v0

    .line 871
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 870
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 869
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 868
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 867
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 866
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCurrentRoaming()Z
    .locals 2

    .line 1855
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 1856
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1857
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    return v1
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .line 458
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 459
    const/4 v0, 0x0

    return v0

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_1

    .line 463
    const-string v0, "MmiCode 0: rejectCall"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "ImsPhone"

    const-string v3, "reject failed"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    sget-object v2, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->REJECT:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 469
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :goto_0
    goto :goto_1

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_2

    .line 471
    const-string v0, "MmiCode 0: hangupWaitingOrBackground"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 473
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 476
    goto :goto_1

    .line 474
    :catch_1
    move-exception v0

    .line 475
    .restart local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "ImsPhone"

    const-string v3, "hangup failed"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :goto_1
    return v1
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;

    .line 552
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 554
    .local v0, "len":I
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 555
    const/4 v1, 0x0

    return v1

    .line 558
    :cond_0
    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 559
    const-string v1, "separate not supported"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 560
    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_1

    .line 563
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    .line 564
    const-string v3, "MmiCode 2: accept ringing call"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 565
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->acceptCall(I)V

    goto :goto_0

    .line 567
    :cond_2
    const-string v1, "MmiCode 2: switchWaitingOrHoldingAndActive"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :goto_0
    goto :goto_1

    .line 570
    :catch_0
    move-exception v1

    .line 571
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v3, "ImsPhone"

    const-string v4, "switch failed"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 576
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :goto_1
    return v2
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dialString"    # Ljava/lang/String;

    .line 522
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 524
    .local v0, "len":I
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 525
    const/4 v1, 0x0

    return v1

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    .line 531
    .local v1, "call":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 532
    :try_start_0
    const-string v3, "not support 1X SEND"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 533
    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_0

    .line 543
    :catch_0
    move-exception v3

    goto :goto_1

    .line 535
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    .line 536
    const-string v3, "MmiCode 1: hangup foreground"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 537
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    goto :goto_0

    .line 539
    :cond_2
    const-string v3, "MmiCode 1: switchWaitingOrHoldingAndActive"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 540
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    goto :goto_2

    .line 543
    :goto_1
    nop

    .line 544
    .local v3, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "ImsPhone"

    const-string v5, "hangup failed"

    invoke-static {v4, v5, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    sget-object v4, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 548
    .end local v3    # "e":Lcom/android/internal/telephony/CallStateException;
    :goto_2
    return v2
.end method

.method private handleCbQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I
    .locals 4
    .param p1, "infos"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 1413
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1414
    .local v1, "cbInfos":[I
    const/4 v2, 0x0

    aput v2, v1, v2

    .line 1416
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 1417
    aput v0, v1, v2

    .line 1420
    :cond_0
    return-object v1
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;

    .line 604
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 605
    const/4 v0, 0x0

    return v0

    .line 608
    :cond_0
    const-string v0, "MmiCode 5: CCBS not supported!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logi(Ljava/lang/String;)V

    .line 610
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 611
    return v1
.end method

.method private handleCwQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I
    .locals 4
    .param p1, "infos"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 1424
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1425
    .local v0, "cwInfos":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 1427
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1428
    aput v3, v0, v1

    .line 1429
    aput v3, v0, v3

    .line 1432
    :cond_0
    return-object v0
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .line 592
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 594
    .local v0, "len":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 595
    const/4 v1, 0x0

    return v1

    .line 598
    :cond_0
    const-string v2, "MmiCode 4: not support explicit call transfer"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 599
    sget-object v2, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 600
    return v1
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;

    .line 581
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 582
    const/4 v0, 0x0

    return v0

    .line 585
    :cond_0
    const-string v0, "MmiCode 3: merge calls"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->conference()V

    .line 587
    return v1
.end method

.method private isCfEnable(I)Z
    .locals 2
    .param p1, "action"    # I

    .line 861
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method private isInFullRttMode()Z
    .locals 4

    .line 2014
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getRttOperatingMode(Landroid/content/Context;)I

    move-result v0

    .line 2015
    .local v0, "mode":I
    const-string v1, "ImsPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTT: isInFullRttMode mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I

    .line 849
    packed-switch p1, :pswitch_data_0

    .line 856
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 854
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I

    .line 835
    packed-switch p1, :pswitch_data_0

    .line 844
    const/4 v0, 0x0

    return v0

    .line 842
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2092
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2096
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2084
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2088
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    return-void
.end method

.method private mapRequestToResponse(I)Z
    .locals 1
    .param p1, "response"    # I

    .line 2000
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2006
    return v0

    .line 2004
    :pswitch_0
    return v0

    .line 2002
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .line 1209
    const-string v0, "onNetworkInitiatedUssd"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1212
    return-void
.end method

.method private packRttModifyRequestToProfile(I)V
    .locals 4
    .param p1, "data"    # I

    .line 1975
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->canSendRttModifyRequest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1976
    const-string v0, "ImsPhone"

    const-string v1, "RTT: cannot send rtt modify request"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    return-void

    .line 1980
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 1981
    .local v0, "fromProfile":Landroid/telephony/ims/ImsCallProfile;
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    iget v2, v0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    iget v3, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 1983
    .local v1, "toProfile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v2, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v2, p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 1985
    const-string v2, "ImsPhone"

    const-string v3, "RTT: packRttModifyRequestToProfile"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1987
    return-void
.end method

.method private processWfcDisconnectForNotification(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 27
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    move-object/from16 v0, p0

    .line 1720
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    const-string v3, "carrier_config"

    .line 1721
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 1722
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v2, :cond_0

    .line 1723
    const-string v3, "processDisconnectReason: CarrierConfigManager is not ready"

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    .line 1724
    return-void

    .line 1726
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 1727
    .local v3, "pb":Landroid/os/PersistableBundle;
    if-nez v3, :cond_1

    .line 1728
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processDisconnectReason: no config for subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    .line 1729
    return-void

    .line 1731
    :cond_1
    const-string v4, "wfc_operator_error_codes_string_array"

    .line 1732
    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1734
    .local v4, "wfcOperatorErrorCodes":[Ljava/lang/String;
    if-nez v4, :cond_2

    .line 1736
    return-void

    .line 1739
    :cond_2
    iget-object v5, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    .line 1740
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107007d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1742
    .local v5, "wfcOperatorErrorAlertMessages":[Ljava/lang/String;
    iget-object v6, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    .line 1743
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107007e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1746
    .local v6, "wfcOperatorErrorNotificationMessages":[Ljava/lang/String;
    const/4 v7, 0x0

    move v8, v7

    .local v8, "i":I
    :goto_0
    array-length v9, v4

    if-ge v8, v9, :cond_a

    .line 1747
    aget-object v9, v4, v8

    const-string v10, "\\|"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1748
    .local v9, "codes":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x2

    if-eq v10, v11, :cond_3

    .line 1749
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid carrier config: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v4, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    .line 1750
    nop

    .line 1746
    .end local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v3    # "pb":Landroid/os/PersistableBundle;
    .end local v9    # "codes":[Ljava/lang/String;
    .local v17, "configManager":Landroid/telephony/CarrierConfigManager;
    .local v18, "pb":Landroid/os/PersistableBundle;
    :goto_1
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v16, v7

    goto/16 :goto_4

    .line 1754
    .end local v17    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v18    # "pb":Landroid/os/PersistableBundle;
    .restart local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    .restart local v3    # "pb":Landroid/os/PersistableBundle;
    .restart local v9    # "codes":[Ljava/lang/String;
    :cond_3
    iget-object v10, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    aget-object v11, v9, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1756
    goto :goto_1

    .line 1762
    :cond_4
    aget-object v10, v9, v7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 1763
    .local v10, "codeStringLength":I
    aget-object v11, v9, v7

    add-int/lit8 v12, v10, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 1764
    .local v11, "lastChar":C
    invoke-static {v11}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1765
    iget-object v12, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v10, :cond_5

    .line 1766
    iget-object v12, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 1767
    .local v12, "nextChar":C
    invoke-static {v12}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1768
    goto :goto_1

    .line 1773
    .end local v12    # "nextChar":C
    :cond_5
    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    const v13, 0x10406b0

    invoke-virtual {v12, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 1776
    .local v12, "title":Ljava/lang/CharSequence;
    const/4 v13, 0x1

    aget-object v14, v9, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1777
    .local v14, "idx":I
    if-ltz v14, :cond_9

    array-length v15, v5

    if-ge v14, v15, :cond_9

    array-length v15, v6

    if-lt v14, v15, :cond_6

    .line 1780
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v16, v7

    goto/16 :goto_3

    .line 1783
    :cond_6
    iget-object v15, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1784
    .local v15, "messageAlert":Ljava/lang/String;
    iget-object v7, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1785
    .local v7, "messageNotification":Ljava/lang/String;
    aget-object v13, v5, v14

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    .line 1786
    aget-object v13, v5, v14

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .end local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v3    # "pb":Landroid/os/PersistableBundle;
    .restart local v17    # "configManager":Landroid/telephony/CarrierConfigManager;
    .restart local v18    # "pb":Landroid/os/PersistableBundle;
    iget-object v2, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v2, v3, v16

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    .line 1790
    .end local v17    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v18    # "pb":Landroid/os/PersistableBundle;
    .restart local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    .restart local v3    # "pb":Landroid/os/PersistableBundle;
    :cond_7
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .end local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v3    # "pb":Landroid/os/PersistableBundle;
    .restart local v17    # "configManager":Landroid/telephony/CarrierConfigManager;
    .restart local v18    # "pb":Landroid/os/PersistableBundle;
    :goto_2
    aget-object v2, v6, v14

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1791
    aget-object v2, v6, v14

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v13, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v13, v3, v16

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1798
    :cond_8
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.ims.REGISTRATION_ERROR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1799
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "alertTitle"

    invoke-virtual {v2, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1800
    const-string v3, "alertMessage"

    invoke-virtual {v2, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1801
    const-string v3, "notificationMessage"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1802
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    const/16 v21, 0x0

    iget-object v13, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v3

    move-object/from16 v20, v2

    move-object/from16 v22, v13

    invoke-virtual/range {v19 .. v26}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1807
    goto :goto_5

    .line 1780
    .end local v7    # "messageNotification":Ljava/lang/String;
    .end local v15    # "messageAlert":Ljava/lang/String;
    .end local v17    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v18    # "pb":Landroid/os/PersistableBundle;
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    .restart local v3    # "pb":Landroid/os/PersistableBundle;
    :cond_9
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v16, v7

    .end local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v3    # "pb":Landroid/os/PersistableBundle;
    .restart local v17    # "configManager":Landroid/telephony/CarrierConfigManager;
    .restart local v18    # "pb":Landroid/os/PersistableBundle;
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v4, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    .line 1781
    nop

    .line 1746
    .end local v9    # "codes":[Ljava/lang/String;
    .end local v10    # "codeStringLength":I
    .end local v11    # "lastChar":C
    .end local v12    # "title":Ljava/lang/CharSequence;
    .end local v14    # "idx":I
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    goto/16 :goto_0

    .line 1809
    .end local v8    # "i":I
    .end local v17    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v18    # "pb":Landroid/os/PersistableBundle;
    .restart local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    .restart local v3    # "pb":Landroid/os/PersistableBundle;
    :cond_a
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .end local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v3    # "pb":Landroid/os/PersistableBundle;
    .restart local v17    # "configManager":Landroid/telephony/CarrierConfigManager;
    .restart local v18    # "pb":Landroid/os/PersistableBundle;
    :goto_5
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 1142
    const-string v0, "sendErrorResponse"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1143
    if-eqz p1, :cond_0

    .line 1144
    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1146
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1148
    :cond_0
    return-void
.end method

.method private sendImsNetworkStateBroadcast(Z)V
    .locals 3
    .param p1, "isLte"    # Z

    .line 1597
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1598
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone.intent.action.IMS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1599
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1600
    const-string v1, "is_lte"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1601
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    const-string v2, "com.android.phone.permission.IMS_NETWORK_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1602
    return-void
.end method

.method private sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "e"    # Ljava/lang/Throwable;

    .line 1437
    if-eqz p1, :cond_1

    .line 1438
    const/4 v0, 0x0

    .line 1439
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    if-eqz p3, :cond_0

    .line 1440
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1442
    :cond_0
    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1443
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1445
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_1
    return-void
.end method

.method private sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "ussdRequest"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "returnCode"    # I
    .param p4, "wrappedCallback"    # Landroid/os/ResultReceiver;

    .line 484
    new-instance v0, Landroid/telephony/UssdResponse;

    invoke-direct {v0, p1, p2}, Landroid/telephony/UssdResponse;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 485
    .local v0, "response":Landroid/telephony/UssdResponse;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 486
    .local v1, "returnData":Landroid/os/Bundle;
    const-string v2, "USSD_RESPONSE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 487
    invoke-virtual {p4, p3, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 489
    return-void
.end method

.method private updateDataServiceState()V
    .locals 3

    .line 1448
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 1449
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1451
    .local v0, "ss":Landroid/telephony/ServiceState;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 1452
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 1453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataServiceState: defSs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " imsSs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1455
    .end local v0    # "ss":Landroid/telephony/ServiceState;
    :cond_0
    return-void
.end method

.method private updateRoamingState(Z)V
    .locals 3
    .param p1, "newRoaming"    # Z

    .line 1842
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 1843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRoamingState now: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1844
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRoaming:Z

    .line 1845
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1846
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 1847
    .end local v0    # "imsManager":Lcom/android/ims/ImsManager;
    goto :goto_0

    .line 1848
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRoamingState postponed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1849
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v1, 0x36

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1852
    :goto_0
    return-void
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 1
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->acceptCall(I)V

    .line 390
    return-void
.end method

.method public bridge synthetic activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->activateCellBroadcastSms(ILandroid/os/Message;)V

    return-void
.end method

.method public addParticipant(Ljava/lang/String;)V
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addParticipant(Ljava/lang/String;)V

    .line 773
    return-void
.end method

.method public callEndCleanupHandOverCallIfAny()V
    .locals 1

    .line 1653
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->callEndCleanupHandOverCallIfAny()V

    .line 1654
    return-void
.end method

.method public canConference()Z
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canConference()Z

    move-result v0

    return v0
.end method

.method public canDial()Z
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public cancelUSSD()V
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cancelUSSD()V

    .line 1139
    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    .line 421
    return-void
.end method

.method public conference()V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->conference()V

    .line 416
    return-void
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 693
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic disableDataConnectivity()Z
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic disableLocationUpdates()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->disableLocationUpdates()V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 316
    const-string v0, "dispose"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->tearDown()V

    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterPhoneStateListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;)V

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dispose()V

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 331
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRttReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 340
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2065
    const-string v0, "ImsPhone extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2066
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2067
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2069
    const-string v0, "ImsPhone:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDefaultPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingMMIs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPostDialHandler = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPostDialHandler:Landroid/os/Registrant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWakeLock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsPhoneInEcmState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/EcbmHandler;->isInEcm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSilentRedialRegistrants = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mImsRegistered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRoaming = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSsnRegistrants = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2080
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2081
    return-void
.end method

.method public bridge synthetic enableDataConnectivity()Z
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic enableLocationUpdates()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->enableLocationUpdates()V

    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->explicitCallTransfer()V

    .line 431
    return-void
.end method

.method public bridge synthetic getAllCellInfo(Landroid/os/WorkSource;)Ljava/util/List;
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getAllCellInfo(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAvailableNetworks(Landroid/os/Message;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object v0
.end method

.method public getCallBarring(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 1066
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;I)V

    .line 1067
    return-void
.end method

.method public getCallBarring(Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;
    .param p3, "serviceClass"    # I

    .line 1070
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 1071
    return-void
.end method

.method public getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;
    .param p4, "serviceClass"    # I

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallBarring facility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1078
    const/16 v0, 0x2f

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1081
    .local v0, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 1083
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2, v0, p4}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_0

    .line 1084
    :catch_0
    move-exception v1

    .line 1085
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p3, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 1087
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public bridge synthetic getCallForwardingIndicator()Z
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(IILandroid/os/Message;)V
    .locals 4
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "commandInterfaceServiceClass"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 947
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallForwardingOption reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "serviceclass ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    const-string v0, "ImsPhone"

    const-string v1, "requesting call forwarding query."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 955
    .local v0, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 956
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getConditionFromCFReason(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p2, v0}, Lcom/android/ims/ImsUtInterface;->queryCallForward(ILjava/lang/String;ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_0

    .line 958
    :catch_0
    move-exception v1

    .line 959
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p3, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 961
    .end local v0    # "resp":Landroid/os/Message;
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 962
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    .line 964
    :cond_1
    :goto_1
    return-void
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 940
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(IILandroid/os/Message;)V

    .line 942
    return-void
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 1013
    const-string v0, "getCallWaiting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1015
    const/16 v0, 0x31

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1018
    .local v0, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 1019
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v1, v0}, Lcom/android/ims/ImsUtInterface;->queryCallWaiting(Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_0

    .line 1020
    :catch_0
    move-exception v1

    .line 1021
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 1023
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public bridge synthetic getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getCellLocation(Landroid/os/WorkSource;)Landroid/telephony/CellLocation;
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCellLocation(Landroid/os/WorkSource;)Landroid/telephony/CellLocation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCurrentDataConnectionList()Ljava/util/List;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSubscriberUris()[Landroid/net/Uri;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCurrentSubscriberUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public bridge synthetic getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDataRoamingEnabled()Z
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 1636
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceSvn()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEsn()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object v0
.end method

.method public bridge synthetic getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGroupIdLevel2()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandoverConnection()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .line 1286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1288
    .local v0, "connList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1290
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1292
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1293
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1294
    return-object v0

    .line 1296
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .line 1351
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccRecordsLoaded()Z
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImei()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsRegistrationTech()I
    .locals 1

    .line 1631
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1Number()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMeid()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessageWaitingIndicator()Z
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 909
    const-string v0, "getCLIR"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 911
    const/16 v0, 0x33

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 914
    .local v0, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 915
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v1, v0}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_0

    .line 916
    :catch_0
    move-exception v1

    .line 917
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 919
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;",
            ">;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 1347
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPhoneType()I
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public bridge synthetic getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public getSubId()I
    .locals 1

    .line 1342
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSubscriberId()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVtDataUsage(Z)Landroid/net/NetworkStats;
    .locals 1
    .param p1, "perUidStats"    # Z

    .line 1838
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getVtDataUsage(Z)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1833
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public handleCfQueryResult([Landroid/telephony/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;
    .locals 8
    .param p1, "infos"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 1379
    const/4 v0, 0x0

    .line 1381
    .local v0, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    .line 1382
    array-length v1, p1

    new-array v0, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1385
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 1386
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    array-length v4, p1

    if-nez v4, :cond_1

    goto :goto_4

    .line 1393
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, p1

    .local v5, "s":I
    :goto_0
    if-ge v4, v5, :cond_7

    .line 1394
    aget-object v6, p1, v4

    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getCondition()I

    move-result v6

    if-nez v6, :cond_5

    .line 1396
    aget-object v6, p1, v4

    iget v6, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    const/16 v7, 0x50

    if-ne v6, v7, :cond_3

    .line 1398
    aget-object v6, p1, v4

    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getStatus()I

    move-result v6

    if-ne v6, v3, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVideoCallForwardingPreference(Z)V

    .line 1399
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyCallForwardingIndicator()V

    goto :goto_3

    .line 1400
    :cond_3
    if-eqz v1, :cond_5

    .line 1401
    aget-object v6, p1, v4

    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getStatus()I

    move-result v6

    if-ne v6, v3, :cond_4

    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    aget-object v7, p1, v4

    .line 1402
    invoke-virtual {v7}, Landroid/telephony/ims/ImsCallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 1401
    invoke-virtual {p0, v1, v3, v6, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 1405
    :cond_5
    :goto_3
    aget-object v6, p1, v4

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardInfo(Landroid/telephony/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v6

    aput-object v6, v0, v4

    .line 1393
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1387
    .end local v4    # "i":I
    .end local v5    # "s":I
    :cond_6
    :goto_4
    if-eqz v1, :cond_7

    .line 1390
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 1409
    :cond_7
    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;

    .line 623
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInCall()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 624
    return v1

    .line 627
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    return v1

    .line 631
    :cond_1
    const/4 v0, 0x0

    .line 632
    .local v0, "result":Z
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 633
    .local v1, "ch":C
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 652
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v0

    .line 653
    goto :goto_0

    .line 649
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v0

    .line 650
    goto :goto_0

    .line 646
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v0

    .line 647
    goto :goto_0

    .line 643
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v0

    .line 644
    goto :goto_0

    .line 639
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v0

    .line 641
    goto :goto_0

    .line 635
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v0

    .line 637
    nop

    .line 658
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1459
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1461
    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1462
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    const/16 v3, 0x4e

    if-eq v1, v3, :cond_d

    const/16 v3, 0x7d

    if-eq v1, v3, :cond_e

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 1590
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_5

    .line 1465
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    .line 1466
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 1467
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1468
    .local v1, "responseArray":[I
    aget v3, v1, v4

    if-ne v3, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    .line 1470
    .end local v1    # "responseArray":[I
    :cond_1
    const-string v1, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phoneId:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mImsRegistered:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateImsIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1472
    const-string v1, "ImsPhone"

    const-string v3, "LTE display ims icon"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendImsNetworkStateBroadcast(Z)V

    goto/16 :goto_5

    .line 1475
    :cond_2
    const-string v1, "ImsPhone"

    const-string v2, "no LTE not display ims icon"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendImsNetworkStateBroadcast(Z)V

    .line 1478
    goto/16 :goto_5

    .line 1480
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x51

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    .line 1481
    goto/16 :goto_5

    .line 1487
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ims_call_alive_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1487
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1489
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateImsIcon()Z

    .line 1490
    goto/16 :goto_5

    .line 1565
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    .line 1566
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ServiceState;

    .line 1570
    .local v1, "newServiceState":Landroid/telephony/ServiceState;
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRoaming:Z

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eq v2, v3, :cond_f

    .line 1571
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1572
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_f

    .line 1573
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Roaming state changed- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRoaming:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateRoamingState(Z)V

    goto/16 :goto_5

    .line 1559
    .end local v1    # "newServiceState":Landroid/telephony/ServiceState;
    :pswitch_4
    const-string v1, "EVENT_DEFAULT_PHONE_DATA_STATE_CHANGED"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1560
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    .line 1561
    goto/16 :goto_5

    .line 1540
    :pswitch_5
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1541
    .local v1, "ssInfo":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 1542
    .local v2, "clirInfo":[I
    if-eqz v1, :cond_4

    .line 1543
    const-string v3, "queryClir"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 1545
    :cond_4
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1546
    goto/16 :goto_5

    .line 1549
    .end local v1    # "ssInfo":Landroid/os/Bundle;
    .end local v2    # "clirInfo":[I
    :pswitch_6
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_7

    .line 1550
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->saveClirSetting(I)V

    goto :goto_2

    .line 1528
    :pswitch_7
    const/4 v1, 0x0

    .line 1529
    .local v1, "ssInfos":[I
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_6

    .line 1530
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_5

    .line 1531
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCbQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I

    move-result-object v1

    goto :goto_1

    .line 1532
    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x31

    if-ne v2, v3, :cond_6

    .line 1533
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCwQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I

    move-result-object v1

    .line 1536
    :cond_6
    :goto_1
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v2, v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1537
    goto/16 :goto_5

    .line 1555
    .end local v1    # "ssInfos":[I
    :cond_7
    :goto_2
    :pswitch_8
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1556
    goto/16 :goto_5

    .line 1519
    :pswitch_9
    const/4 v1, 0x0

    .line 1520
    .local v1, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_8

    .line 1521
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCfQueryResult([Landroid/telephony/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v1

    .line 1523
    :cond_8
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v2, v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1524
    goto/16 :goto_5

    .line 1505
    .end local v1    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    :pswitch_a
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 1506
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;

    .line 1507
    .local v5, "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    iget-boolean v6, v5, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mIsCfu:Z

    if-eqz v6, :cond_c

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_c

    .line 1508
    iget v6, v5, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mServiceClass:I

    const/16 v7, 0x50

    if-ne v6, v7, :cond_a

    .line 1509
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v2, :cond_9

    goto :goto_3

    :cond_9
    move v2, v4

    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVideoCallForwardingPreference(Z)V

    .line 1510
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyCallForwardingIndicator()V

    goto :goto_4

    .line 1511
    :cond_a
    if-eqz v1, :cond_c

    iget v6, v5, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mServiceClass:I

    if-ne v6, v2, :cond_c

    .line 1512
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v2, :cond_b

    move v4, v2

    nop

    :cond_b
    iget-object v6, v5, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mSetCfNumber:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v4, v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 1515
    :cond_c
    :goto_4
    iget-object v2, v5, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mOnComplete:Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1516
    goto :goto_5

    .line 1483
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v5    # "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    :cond_d
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ims_call_alive_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1483
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1485
    goto :goto_5

    .line 1493
    :cond_e
    const/4 v1, 0x0

    .line 1494
    .local v1, "im":Lcom/android/ims/ImsManager;
    sget-boolean v2, Lcom/android/internal/telephony/imsphone/ImsPhone;->NUBIA_DUAL_VOLTE_ENABLE:Z

    if-nez v2, :cond_f

    .line 1495
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    .line 1496
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 1495
    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1497
    if-eqz v1, :cond_f

    .line 1498
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    .line 1499
    invoke-static {v3}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v3

    .line 1498
    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V

    .line 1593
    .end local v1    # "im":Lcom/android/ims/ImsManager;
    :cond_f
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x50
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic handlePinMmi(Ljava/lang/String;)Z
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->handlePinMmi(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public handleUssdRequest(Ljava/lang/String;Landroid/os/ResultReceiver;)Z
    .locals 7
    .param p1, "ussdRequest"    # Ljava/lang/String;
    .param p2, "wrappedCallback"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-lez v0, :cond_0

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUssdRequest: queue full: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ImsPhone"

    invoke-static {v4, p1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logi(Ljava/lang/String;)V

    .line 497
    invoke-direct {p0, p1, v3, v2, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    .line 499
    return v1

    .line 502
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ImsPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not execute USSD "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-direct {p0, p1, v3, v2, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    .line 515
    const/4 v1, 0x0

    return v1

    .line 503
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 504
    .local v0, "cse":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "cs_fallback"

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 507
    const-string v4, "ImsPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not execute USSD "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-direct {p0, p1, v3, v2, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    .line 516
    .end local v0    # "cse":Lcom/android/internal/telephony/CallStateException;
    :goto_0
    nop

    .line 517
    return v1

    .line 505
    .restart local v0    # "cse":Lcom/android/internal/telephony/CallStateException;
    :cond_1
    throw v0
.end method

.method initiateSilentRedial()V
    .locals 3

    .line 1307
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mLastDialString:Ljava/lang/String;

    .line 1308
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1309
    .local v1, "ar":Landroid/os/AsyncResult;
    nop

    .line 1310
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1312
    return-void
.end method

.method public bridge synthetic isDataAllowed()Z
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->isDataAllowed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDataEnabled()Z
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->isDataEnabled()Z

    move-result v0

    return v0
.end method

.method public isFgCallActive()Z
    .locals 2

    .line 2056
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2057
    const-string v0, "ImsPhone"

    const-string v1, "RTT: isFgCallActive fg call not active"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    const/4 v0, 0x0

    return v0

    .line 2060
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isImsAvailable()Z
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isImsServiceReady()Z

    move-result v0

    return v0
.end method

.method public isImsRegistered()Z
    .locals 1

    .line 1641
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    return v0
.end method

.method isInCall()Z
    .locals 4

    .line 662
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 663
    .local v0, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 664
    .local v1, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 666
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 667
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 668
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 666
    :goto_1
    return v3
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .line 1607
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isInEmergencyCall()Z

    move-result v0

    return v0
.end method

.method public isRttOn()Z
    .locals 3

    .line 2046
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2047
    const-string v0, "ImsPhone"

    const-string v1, "RTT: RTT is off"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    const/4 v0, 0x0

    return v0

    .line 2050
    :cond_0
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: Rtt on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    const/4 v0, 0x1

    return v0
.end method

.method public isRttSupported()Z
    .locals 4

    .line 2035
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttSupported(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2036
    const-string v0, "ImsPhone"

    const-string v1, "RTT: RTT is not supported"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    const/4 v0, 0x0

    return v0

    .line 2039
    :cond_0
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: rtt supported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    .line 2040
    invoke-static {v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttSupported(ILandroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Rtt mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    .line 2041
    invoke-static {v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getRttOperatingMode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2039
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    const/4 v0, 0x1

    return v0
.end method

.method public isRttVtCallAllowed(Lcom/android/ims/ImsCall;)Z
    .locals 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 2024
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getRttOperatingMode(Landroid/content/Context;)I

    move-result v0

    .line 2025
    .local v0, "mode":I
    const-string v1, "ImsPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTT: isRttVtCallAllowed mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    .line 2028
    invoke-static {v1, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttSupportedOnVtCalls(ILandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2029
    const/4 v1, 0x0

    return v1

    .line 2031
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic isUserDataEnabled()Z
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->isUserDataEnabled()Z

    move-result v0

    return v0
.end method

.method public isUtEnabled()Z
    .locals 1

    .line 1813
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isUtEnabled()Z

    move-result v0

    return v0
.end method

.method public isVideoEnabled()Z
    .locals 1

    .line 1626
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v0

    return v0
.end method

.method public isVolteEnabled()Z
    .locals 1

    .line 1616
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVolteEnabled()Z

    move-result v0

    return v0
.end method

.method public isWifiCallingEnabled()Z
    .locals 1

    .line 1621
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic migrateFrom(Lcom/android/internal/telephony/Phone;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->migrateFrom(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public bridge synthetic needsOtaServiceProvisioning()Z
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    .line 1828
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyCallForwardingIndicator()V

    .line 1829
    return-void
.end method

.method public bridge synthetic notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public notifyForVideoCapabilityChanged(Z)V
    .locals 1
    .param p1, "isVideoCapable"    # Z

    .line 682
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsVideoCapable:Z

    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyForVideoCapabilityChanged(Z)V

    .line 684
    return-void
.end method

.method public notifyIncomingRing()V
    .locals 2

    .line 804
    const-string v0, "notifyIncomingRing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 805
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 806
    .local v0, "ar":Landroid/os/AsyncResult;
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendMessage(Landroid/os/Message;)Z

    .line 807
    return-void
.end method

.method public notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 674
    return-void
.end method

.method public bridge synthetic notifyPhoneStateChanged()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyPhoneStateChanged()V

    return-void
.end method

.method public bridge synthetic notifyPreciseCallStateChanged()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyPreciseCallStateChanged()V

    return-void
.end method

.method public notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/Call$SrvccState;

    .line 1302
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V

    .line 1303
    return-void
.end method

.method public bridge synthetic notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    return-void
.end method

.method public notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V
    .locals 2
    .param p1, "suppSvc"    # Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySuppSvcNotification: suppSvc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 617
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 618
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 619
    return-void
.end method

.method notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyUnknownConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 678
    return-void
.end method

.method public onFeatureCapabilityChanged()V
    .locals 1

    .line 1611
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->onImsCapabilityChanged()V

    .line 1612
    return-void
.end method

.method onIncomingUSSD(ILjava/lang/String;)V
    .locals 6
    .param p1, "ussdMode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingUSSD ussdMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1221
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1224
    .local v2, "isUssdRequest":Z
    :goto_0
    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    move v0, v1

    nop

    .line 1228
    .local v0, "isUssdError":Z
    :cond_1
    const/4 v1, 0x0

    .line 1229
    .local v1, "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "s":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 1230
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPendingUSSD()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1231
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .line 1232
    goto :goto_2

    .line 1229
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1236
    .end local v3    # "i":I
    .end local v4    # "s":I
    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 1238
    if-eqz v0, :cond_4

    .line 1239
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinishedError()V

    goto :goto_3

    .line 1241
    :cond_4
    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_3

    .line 1243
    :cond_5
    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    .line 1250
    invoke-static {p2, v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object v3

    .line 1253
    .local v3, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1255
    .end local v3    # "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_6
    :goto_3
    return-void
.end method

.method public onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V
    .locals 4
    .param p1, "mmi"    # Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMMIDone: mmi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1269
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isUssdRequest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isSsInfo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1270
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getUssdCallbackReceiver()Landroid/os/ResultReceiver;

    move-result-object v0

    .line 1271
    .local v0, "receiverCallback":Landroid/os/ResultReceiver;
    if-eqz v0, :cond_2

    .line 1272
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v1, v2, :cond_1

    .line 1273
    const/16 v1, 0x64

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 1274
    .local v1, "returnCode":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getDialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    .line 1276
    .end local v1    # "returnCode":I
    goto :goto_1

    .line 1277
    :cond_2
    const-string v1, "onMMIDone: notifyRegistrants"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logv(Ljava/lang/String;)V

    .line 1278
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1282
    .end local v0    # "receiverCallback":Landroid/os/ResultReceiver;
    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onTtyModeReceived(I)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->onTtyModeReceived(I)V

    return-void
.end method

.method public processDisconnectReason(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1708
    iget v0, p1, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1711
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1712
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->processWfcDisconnectForNotification(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1715
    :cond_0
    return-void
.end method

.method public bridge synthetic registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1316
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1317
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1326
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1327
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 1330
    :cond_0
    return-void
.end method

.method public bridge synthetic registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->rejectCall()V

    .line 396
    return-void
.end method

.method public bridge synthetic selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V

    return-void
.end method

.method public sendDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .line 778
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmf called with invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendDtmf(CLandroid/os/Message;)V

    .line 785
    :cond_1
    :goto_0
    return-void
.end method

.method public sendEmergencyCallStateChange(Z)V
    .locals 1
    .param p1, "callActive"    # Z

    .line 1818
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->sendEmergencyCallStateChange(Z)V

    .line 1819
    return-void
.end method

.method public sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "e"    # Ljava/lang/Throwable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1152
    const-string v0, "sendErrorResponse"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1153
    if-eqz p1, :cond_0

    .line 1154
    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1155
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1157
    :cond_0
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 1885
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1886
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    .line 1887
    const-string v1, "ImsPhone"

    const-string v2, "RTT: imsCall null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    return-void

    .line 1891
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isRttCall()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isFgCallActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1896
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1897
    const-string v1, "ImsPhone"

    const-string v2, "RTT: Text null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    return-void

    .line 1901
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttVtCallAllowed(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1902
    const-string v1, "ImsPhone"

    const-string v2, "RTT: InCorrect mode"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    return-void

    .line 1906
    :cond_3
    const-string v1, "ImsPhone"

    const-string v2, "RTT: sendRttMessage"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->sendRttMessage(Ljava/lang/String;)V

    .line 1908
    return-void

    .line 1892
    :cond_4
    :goto_0
    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "to"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1916
    const-string v0, "ImsPhone"

    const-string v1, "RTT: sendRttModifyRequest"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1918
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    .line 1919
    const-string v1, "ImsPhone"

    const-string v2, "RTT: imsCall null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    return-void

    .line 1924
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1927
    goto :goto_0

    .line 1925
    :catch_0
    move-exception v1

    .line 1926
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RTT: sendRttModifyRequest exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public sendRttModifyResponse(I)V
    .locals 3
    .param p1, "response"    # I

    .line 1936
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1937
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    .line 1938
    const-string v1, "ImsPhone"

    const-string v2, "RTT: imsCall null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    return-void

    .line 1942
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttVtCallAllowed(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1943
    const-string v1, "ImsPhone"

    const-string v2, "RTT: Not allowed for VT"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    return-void

    .line 1947
    :cond_1
    const-string v1, "ImsPhone"

    const-string v2, "RTT: sendRttModifyResponse"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->mapRequestToResponse(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->sendRttModifyResponse(Z)V

    .line 1949
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1133
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    .line 1134
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .line 1125
    const-string v0, "sendUssdResponse"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1126
    invoke-static {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object v0

    .line 1127
    .local v0, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1129
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 1130
    return-void
.end method

.method public setBroadcastEmergencyCallStateChanges(Z)V
    .locals 1
    .param p1, "broadcast"    # Z

    .line 1823
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->setBroadcastEmergencyCallStateChanges(Z)V

    .line 1824
    return-void
.end method

.method public setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 1091
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    .line 1093
    return-void
.end method

.method public setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .param p5, "serviceClass"    # I

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallBarring facility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1103
    const/16 v0, 0x2e

    invoke-virtual {p0, v0, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1106
    .local v0, "resp":Landroid/os/Message;
    if-eqz p2, :cond_0

    .line 1107
    const/4 v1, 0x1

    .line 1110
    .local v3, "action":I
    :goto_0
    move v3, v1

    goto :goto_1

    .end local v3    # "action":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1114
    .restart local v3    # "action":I
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 1116
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x0

    move-object v4, v0

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_2

    .line 1118
    :catch_0
    move-exception v1

    .line 1119
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p4, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 1121
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_2
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 15
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timerSeconds"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v10, p4

    .line 984
    move-object/from16 v11, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallForwardingOption action="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " serviceClass="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 987
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;

    invoke-static {v2, v10}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isVoiceUnconditionalForwarding(II)Z

    move-result v3

    move-object/from16 v13, p3

    invoke-direct {v0, v13, v3, v11, v10}, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;-><init>(Ljava/lang/String;ZLandroid/os/Message;I)V

    move-object v14, v0

    .line 992
    .local v14, "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    const/16 v0, 0xc

    .line 993
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isCfEnable(I)Z

    move-result v3

    const/4 v4, 0x0

    .line 992
    invoke-virtual {v1, v0, v3, v4, v14}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 996
    .local v9, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v3

    .line 997
    .local v3, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getActionFromCFAction(I)I

    move-result v4

    .line 998
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getConditionFromCFReason(I)I

    move-result v5

    .line 997
    move-object v6, v13

    move v7, v10

    move/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Lcom/android/ims/ImsUtInterface;->updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    .end local v3    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_0

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v11, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 1006
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v9    # "resp":Landroid/os/Message;
    .end local v14    # "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    :goto_0
    goto :goto_1

    :cond_0
    move-object/from16 v13, p3

    if-eqz v11, :cond_1

    .line 1007
    invoke-direct {v1, v11}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    .line 1009
    :cond_1
    :goto_1
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .line 972
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 974
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallWaiting enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1033
    const/16 v0, 0x30

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1036
    .local v0, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 1037
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v1, p1, p2, v0}, Lcom/android/ims/ImsUtInterface;->updateCallWaiting(ZILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_0

    .line 1038
    :catch_0
    move-exception v1

    .line 1039
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p3, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 1041
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 1027
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZILandroid/os/Message;)V

    .line 1028
    return-void
.end method

.method public bridge synthetic setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    return-void
.end method

.method protected setCurrentSubscriberUris([Landroid/net/Uri;)V
    .locals 0
    .param p1, "currentSubscriberUris"    # [Landroid/net/Uri;

    .line 225
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCurrentSubscriberUris:[Landroid/net/Uri;

    .line 226
    return-void
.end method

.method public bridge synthetic setDataRoamingEnabled(Z)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method public setImsRegistered(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 1645
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    .line 1647
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateImsIcon()Z

    .line 1649
    return-void
.end method

.method public bridge synthetic setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 0

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .line 811
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    .line 812
    return-void
.end method

.method public bridge synthetic setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 2
    .param p1, "clirMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCLIR action= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 928
    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 930
    .local v0, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 931
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v1, p1, v0}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_0

    .line 932
    :catch_0
    move-exception v1

    .line 933
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 935
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 689
    return-void
.end method

.method public setServiceState(I)V
    .locals 2
    .param p1, "state"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 349
    const/4 v0, 0x0

    .line 351
    .local v0, "isVoiceRegStateChanged":Z
    monitor-enter p0

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, p1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 354
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    .line 357
    if-eqz v0, :cond_1

    .line 358
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->onImsServiceStateChanged()V

    .line 362
    :cond_1
    return-void

    .line 354
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "ttyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setTtyMode(I)V

    .line 817
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setUiTTYMode(ILandroid/os/Message;)V

    .line 822
    return-void
.end method

.method public bridge synthetic setUserDataEnabled(Z)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setUserDataEnabled(Z)V

    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "number"    # Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 371
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 374
    :cond_0
    return-void
.end method

.method public bridge synthetic setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .line 790
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    const/16 v0, 0x44

    if-le p1, v0, :cond_1

    .line 791
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDtmf called with invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->startDtmf(C)V

    .line 795
    :goto_0
    return-void
.end method

.method public bridge synthetic startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic startOnHoldTone(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->startOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public bridge synthetic startRingbackTone()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->startRingbackTone()V

    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->stopDtmf()V

    .line 801
    return-void
.end method

.method public bridge synthetic stopNetworkScan(Landroid/os/Message;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->stopNetworkScan(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic stopRingbackTone()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->stopRingbackTone()V

    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 402
    return-void
.end method

.method public bridge synthetic unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForOnHoldTone(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSilentRedial(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1321
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1322
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 1334
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1335
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 1338
    :cond_0
    return-void
.end method

.method public bridge synthetic unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForTtyModeReceived(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic updateServiceLocation()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->updateServiceLocation()V

    return-void
.end method
