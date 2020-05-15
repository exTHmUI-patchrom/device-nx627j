.class public Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "ImsPhoneCallTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsPullCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;
    }
.end annotation


# static fields
.field private static final ACTION_VOLTE_HAND_OVER:Ljava/lang/String; = "com.android.phone.intent.action.VOLTE_HAND_OVER"

.field private static final ACTION_VOLTE_HOLD:Ljava/lang/String; = "com.android.phone.intent.action.VOLTE_HOLD"

.field private static final ACTION_VOLTE_SUPP_SERVICE:Ljava/lang/String; = "com.android.phone.intent.action.VOLTE_SUPP_SERVICE"

.field private static final DBG:Z = true

.field private static final EVENT_CHECK_FOR_WIFI_HANDOVER:I = 0x19

.field private static final EVENT_DATA_ENABLED_CHANGED:I = 0x17

.field private static final EVENT_DIAL_PENDINGMO:I = 0x14

.field private static final EVENT_EXIT_ECBM_BEFORE_PENDINGMO:I = 0x15

.field private static final EVENT_HANGUP_PENDINGMO:I = 0x12

.field private static final EVENT_ON_FEATURE_CAPABILITY_CHANGED:I = 0x1a

.field private static final EVENT_REDIAL_WIFI_E911_CALL:I = 0x1c

.field private static final EVENT_REDIAL_WIFI_E911_TIMEOUT:I = 0x1d

.field private static final EVENT_RESUME_BACKGROUND:I = 0x13

.field private static final EVENT_SUPP_SERVICE_INDICATION:I = 0x1b

.field private static final EVENT_VT_DATA_USAGE_UPDATE:I = 0x16

.field private static final EXTRA_VOLTE_HOLD:Ljava/lang/String; = "volte_hold_extra"

.field private static final EXTRA_VOLTE_SUPP_SERVICE:Ljava/lang/String; = "volte_supp_service_extra"

.field private static final FORCE_VERBOSE_STATE_LOGGING:Z = false

.field private static final HANDOVER_TO_WIFI_TIMEOUT_MS:I = 0xea60

.field static final LOG_TAG:Ljava/lang/String; = "ImsPhoneCallTracker"

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field private static final NOTIFICATION_TYPE_MO:I = 0x0

.field private static final PERMISSION_VOLTE_HAND_OVER:Ljava/lang/String; = "com.android.phone.permission.VOLTE_HAND_OVER"

.field private static final PERMISSION_VOLTE_HOLD:Ljava/lang/String; = "com.android.phone.permission.VOLTE_HOLD"

.field private static final PERMISSION_VOLTE_SUPP_SERVICE:Ljava/lang/String; = "com.android.phone.permission.VOLTE_SUPP_SERVICE"

.field private static final PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

.field private static final TIMEOUT_HANGUP_PENDINGMO:I = 0x1f4

.field private static final TIMEOUT_REDIAL_WIFI_E911_MS:I = 0x2710

.field private static final VERBOSE_STATE_LOGGING:Z

.field static final VERBOSE_STATE_TAG:Ljava/lang/String; = "IPCTState"


# instance fields
.field private mAllowAddCallDuringVideoCall:Z

.field private mAllowEmergencyVideoCalls:Z

.field private mAllowHoldingVideoCall:Z

.field private mAlwaysPlayRemoteHoldTone:Z

.field private mAutoRetryFailedWifiEmergencyCall:Z

.field public mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mCallExpectedToResume:Lcom/android/ims/ImsCall;

.field private mCarrierConfigLoaded:Z

.field private mClirMode:I

.field private final mConfigCallback:Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;

.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDesiredMute:Z

.field private mDropVideoCallWhenAnsweringAudioCall:Z

.field public mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field public mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mHasPerformedStartOfCallHandover:Z

.field private mIgnoreDataEnabledChangedForVideoCalls:Z

.field private mIgnoreResetUtCapability:Z

.field private mImsCallListener:Lcom/android/ims/ImsCall$Listener;

.field private final mImsCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;

.field private mImsConfigListener:Lcom/android/ims/ImsConfigListener$Stub;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private final mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

.field private mImsReasonCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsRegistrationCallback:Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;

.field private mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

.field private mIsDataEnabled:Z

.field private mIsInEmergencyCall:Z

.field private mIsMonitoringConnectivity:Z

.field private mIsViLteDataMetered:Z

.field private mIsVoLTEOnHold:Z

.field private mLastDialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

.field private mLastDialString:Ljava/lang/String;

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private final mMmTelFeatureListener:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNotifyHandoverVideoFromLTEToWifi:Z

.field private mNotifyHandoverVideoFromWifiToLTE:Z

.field private mNotifyVtHandoverToWifiFail:Z

.field private mOnHoldToneId:I

.field private mOnHoldToneStarted:Z

.field private mPendingCallVideoState:I

.field private mPendingIntentExtras:Landroid/os/Bundle;

.field private mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

.field private mPendingUssd:Landroid/os/Message;

.field mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private mPhoneNumberUtilsProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;

.field private mPhoneStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field public mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

.field private mShouldUpdateImsConfigOnDisconnect:Z

.field private mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

.field private mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mSupportDowngradeVtToAudio:Z

.field private mSupportPauseVideo:Z

.field private mSwitchingFgAndBgCalls:Z

.field private mSyncHold:Ljava/lang/Object;

.field private mTreatDowngradedVideoCallsAsVideoCalls:Z

.field private mUssdSession:Lcom/android/ims/ImsCall;

.field private mUtInterface:Lcom/android/ims/ImsUtInterface;

.field private mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field private mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

.field private final mVtDataUsageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mVtDataUsageSnapshot:Landroid/net/NetworkStats;

.field private volatile mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

.field private pendingCallClirMode:I

.field private pendingCallInEcm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 143
    const-string v0, "IPCTState"

    .line 144
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->VERBOSE_STATE_LOGGING:Z

    .line 402
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    .line 404
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    const/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 406
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b1

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 408
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4b2

    const/16 v3, 0x67

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 410
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v3, 0x4b3

    const/16 v4, 0x6a

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 412
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x6b

    const/16 v5, 0x4b4

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 414
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x6c

    const/16 v5, 0x10

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 416
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x6f

    const/16 v5, 0x4b5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 418
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x70

    const/16 v5, 0x4b6

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 420
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x79

    const/16 v5, 0x4b7

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 422
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x7a

    const/16 v5, 0x4b8

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 424
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x7b

    const/16 v5, 0x4b9

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 426
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x7c

    const/16 v5, 0x4ba

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 428
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x83

    const/16 v5, 0x4bb

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 430
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x84

    const/16 v5, 0x4bc

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 432
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x8d

    const/16 v5, 0x4bd

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 434
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x8f

    const/16 v5, 0x4be

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 436
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x90

    const/16 v5, 0x4bf

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 438
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x91

    const/16 v5, 0x4c0

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 440
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x92

    const/16 v5, 0x4c1

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 442
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x93

    const/16 v5, 0x4c2

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 444
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x94

    const/16 v5, 0x4c3

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 446
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x95

    const/16 v5, 0x4c4

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 448
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0xc9

    const/16 v5, 0x4c5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 450
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0xca

    const/16 v5, 0x4c6

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 452
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0xcb

    const/16 v5, 0x4c7

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 454
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0xf1

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 456
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x514

    const/16 v5, 0x141

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 458
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x14b

    const/16 v6, 0x51e

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 460
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x14c

    const/16 v6, 0x51f

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 462
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x14d

    const/16 v6, 0x520

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 464
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x14e

    const/16 v6, 0x521

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 466
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x14f

    const/16 v6, 0x522

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 468
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x150

    const/16 v6, 0x523

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 470
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x151

    const/16 v6, 0x524

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 472
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x152

    const/16 v6, 0x525

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 474
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x153

    const/16 v6, 0x526

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 476
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x154

    const/16 v6, 0x527

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 478
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x155

    const/16 v6, 0x528

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 480
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x156

    const/16 v6, 0x529

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 482
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x15f

    const/16 v6, 0x532

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 484
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x160

    const/16 v6, 0x533

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 486
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x161

    const/16 v6, 0x534

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 488
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x162

    const/16 v6, 0x535

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 490
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x169

    const/16 v6, 0x53c

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 492
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x16a

    const/16 v6, 0x53d

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 494
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x16b

    const/16 v6, 0x53e

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 496
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x16c

    const/16 v6, 0x53f

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 498
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v5, 0x578

    const/16 v6, 0x191

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 500
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v6, 0x579

    const/16 v7, 0x192

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 502
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v7, 0x57a

    const/16 v8, 0x193

    invoke-virtual {v0, v8, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 504
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v8, 0x57b

    const/16 v9, 0x194

    invoke-virtual {v0, v9, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 506
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v9, 0x5dc

    const/16 v10, 0x1f5

    invoke-virtual {v0, v10, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 508
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v10, 0x5dd

    const/16 v11, 0x1f6

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 510
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v11, 0x5de

    const/16 v12, 0x1f7

    invoke-virtual {v0, v12, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 512
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v12, 0x5df

    const/16 v13, 0x1f8

    invoke-virtual {v0, v13, v12}, Landroid/util/SparseIntArray;->append(II)V

    .line 514
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v13, 0x5e0

    const/16 v14, 0x1f9

    invoke-virtual {v0, v14, v13}, Landroid/util/SparseIntArray;->append(II)V

    .line 516
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x5e1

    const/16 v15, 0x1fa

    invoke-virtual {v0, v15, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 518
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v15, 0x1fe

    const/16 v14, 0x5e6

    invoke-virtual {v0, v15, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 520
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x321

    const/16 v15, 0x708

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 522
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x322

    const/16 v15, 0x709

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 524
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x323

    const/16 v15, 0x70a

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 526
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x324

    const/16 v15, 0x70b

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 528
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x335

    const/16 v15, 0x70c

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 530
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x385

    const/16 v15, 0x76c

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 532
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x386

    const/16 v15, 0x76d

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 534
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x44c

    const/16 v15, 0x7d0

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 536
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x3f6

    const/16 v15, 0x834

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 538
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x3f7

    const/16 v15, 0x835

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 540
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x3f8

    const/16 v15, 0x836

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 542
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v14, 0x8fc

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 544
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x8fd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 546
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x8fe

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 548
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x960

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 550
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x9c4

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 552
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x9c5

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 554
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x9c6

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 556
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x9c7

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 558
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57c

    const/16 v2, 0x9c8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 560
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57d

    const/16 v2, 0x9c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 562
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57e

    const/16 v2, 0x9ca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 564
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57f

    const/16 v2, 0x9cb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 566
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf7

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 568
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf9

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 570
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xfa

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 572
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xfb

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 574
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xfc

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 576
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xfd

    const/16 v2, 0x5e1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 578
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e2

    const/16 v2, 0xfe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 580
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e3

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 582
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e4

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 584
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e5

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 586
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e6

    const/16 v2, 0x102

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 588
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e7

    const/16 v2, 0x103

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 590
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e8

    const/16 v2, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 592
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e9

    const/16 v2, 0x105

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 594
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5eb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 596
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf001

    const v2, 0xf001

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 598
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf002

    const v2, 0xf002

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 600
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf003

    const v2, 0xf003

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 602
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf004

    const v2, 0xf004

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 604
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf005

    const v2, 0xf005

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 606
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf006

    const v2, 0xf006

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 608
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf007

    const v2, 0xf007

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 610
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf008

    const v2, 0xf008

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 612
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf009

    const v2, 0xf009

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 614
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf00a

    const v2, 0xf00a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 616
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf00b

    const v2, 0xf00b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 618
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf00c

    const v2, 0xf00c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 620
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf00d

    const v2, 0xf00d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 622
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf00e

    const v2, 0xf00e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 624
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    const v1, 0xf00f

    const v2, 0xf00f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 626
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 8
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 714
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 146
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoaded:Z

    .line 152
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelFeatureListener:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    .line 237
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    .line 264
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    .line 298
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 299
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 301
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string v3, "RG"

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 302
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string v3, "FG"

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 304
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string v3, "BG"

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 306
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string v3, "HO"

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 310
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    .line 312
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    .line 313
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    .line 315
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 318
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    .line 319
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    .line 321
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    .line 322
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    .line 326
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    .line 327
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    .line 328
    iput v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    .line 330
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 335
    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 337
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    .line 338
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    .line 343
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    .line 344
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    .line 345
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    .line 346
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    .line 347
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIgnoreDataEnabledChangedForVideoCalls:Z

    .line 348
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    .line 349
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAlwaysPlayRemoteHoldTone:Z

    .line 350
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIgnoreResetUtCapability:Z

    .line 351
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAutoRetryFailedWifiEmergencyCall:Z

    .line 353
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialString:Ljava/lang/String;

    .line 354
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    .line 359
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    .line 365
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTreatDowngradedVideoCallsAsVideoCalls:Z

    .line 371
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDropVideoCallWhenAnsweringAudioCall:Z

    .line 377
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    .line 384
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    .line 391
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    .line 397
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportDowngradeVtToAudio:Z

    .line 634
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromWifiToLTE:Z

    .line 642
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromLTEToWifi:Z

    .line 650
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasPerformedStartOfCallHandover:Z

    .line 657
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    .line 666
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    .line 668
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsVoLTEOnHold:Z

    .line 690
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    .line 695
    sget-object v0, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$Zw03itjXT6-LrhiYuD-9nKFg2Wg;->INSTANCE:Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$Zw03itjXT6-LrhiYuD-9nKFg2Wg;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

    .line 703
    new-instance v0, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$j007jv8ZzpH3GXLLwqHDShCqh70;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$j007jv8ZzpH3GXLLwqHDShCqh70;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumberUtilsProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;

    .line 2290
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    .line 2999
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

    .line 3061
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsRegistrationCallback:Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;

    .line 3101
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;

    .line 3115
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsConfigListener:Lcom/android/ims/ImsConfigListener$Stub;

    .line 3132
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConfigCallback:Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;

    .line 715
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 717
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 719
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 720
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 721
    const-string v3, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 722
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 723
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cacheCarrierConfiguration(I)V

    .line 725
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    const/16 v4, 0x17

    invoke-virtual {v3, p0, v4, v2}, Lcom/android/internal/telephony/Phone;->registerForDataEnabledChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 728
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 729
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "telecom"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 730
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 731
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 730
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 733
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 734
    .local v3, "currentTime":J
    new-instance v5, Landroid/net/NetworkStats;

    invoke-direct {v5, v3, v4, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    .line 735
    new-instance v5, Landroid/net/NetworkStats;

    invoke-direct {v5, v3, v4, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    .line 737
    new-instance v1, Lcom/android/ims/ImsManager$Connector;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v6

    new-instance v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    invoke-direct {v1, v5, v6, v7}, Lcom/android/ims/ImsManager$Connector;-><init>(Landroid/content/Context;ILcom/android/ims/ImsManager$Connector$Listener;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

    .line 750
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

    invoke-virtual {v1}, Lcom/android/ims/ImsManager$Connector;->connect()V

    .line 751
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsManager;)Lcom/android/ims/ImsManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsManager;

    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # I

    .line 121
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cacheCarrierConfiguration(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->scheduleHandoverCheck()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->startListeningForCalls()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->stopListeningForCalls()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;
    .param p2, "x2"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "x3"    # I

    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerForConnectivityChanges()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasPerformedStartOfCallHandover:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasPerformedStartOfCallHandover:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;
    .param p2, "x2"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # I

    .line 121
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/telephony/ims/ImsReasonInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPreciseDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAutoRetryFailedWifiEmergencyCall:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialPendingMO()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsVoLTEOnHold:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsVoLTEOnHold:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Z

    .line 121
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendVoLTEHoldBroadcast(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendVoLTESuppServiceBroadcast(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchAfterConferenceSuccess()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromLTEToWifi:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterForConnectivityChanges()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromWifiToLTE:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->downgradeVideoCall(ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Landroid/os/Message;

    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;
    .param p2, "x2"    # Lcom/android/ims/ImsCall;

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->shouldDisconnectActiveCallOnAnswer(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "x2"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method private declared-synchronized addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    monitor-enter p0

    .line 1965
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1966
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1967
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    .line 1968
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallStateChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1970
    :cond_0
    monitor-exit p0

    return-void

    .line 1964
    .end local p1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    throw p1
.end method

.method private addRttAttributeIfRequired(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "mediaProfile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 4207
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4208
    return-object p2

    .line 4211
    :cond_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 4212
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 4213
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttVtCallAllowed(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: addRttAttributeIfRequired = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 4215
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4214
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4218
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 4220
    :cond_1
    return-object p2
.end method

.method private cacheCarrierConfiguration(I)V
    .locals 4
    .param p1, "subId"    # I

    .line 1128
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1129
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1130
    .local v0, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1131
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1138
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1139
    .local v2, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v2, :cond_1

    .line 1140
    const-string v3, "cacheCarrierConfiguration: Empty carrier config."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1141
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoaded:Z

    .line 1142
    return-void

    .line 1144
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoaded:Z

    .line 1146
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updateCarrierConfigCache(Landroid/os/PersistableBundle;)V

    .line 1147
    return-void

    .line 1132
    .end local v2    # "carrierConfig":Landroid/os/PersistableBundle;
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheCarrierConfiguration: No carrier config service found or not active subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1134
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoaded:Z

    .line 1135
    return-void
.end method

.method private canAddVideoCallDuringImsAudioCall(I)Z
    .locals 5
    .param p1, "videoState"    # I

    .line 1551
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1552
    return v1

    .line 1555
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1556
    .local v0, "call":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_1

    .line 1557
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1560
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1561
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    .line 1562
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v4

    .line 1566
    .local v2, "isImsAudioCallActiveOrHolding":Z
    :goto_0
    if-eqz v2, :cond_5

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v4

    nop

    :cond_5
    :goto_1
    return v1
.end method

.method private cleanseInstantLetteringMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "callSubject"    # Ljava/lang/String;

    .line 3628
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3629
    return-object p1

    .line 3633
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3634
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 3636
    .local v0, "configMgr":Landroid/telephony/CarrierConfigManager;
    if-nez v0, :cond_1

    .line 3637
    return-object p1

    .line 3640
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 3642
    .local v1, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v1, :cond_2

    .line 3643
    return-object p1

    .line 3647
    :cond_2
    const-string v2, "carrier_instant_lettering_invalid_chars_string"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3649
    .local v2, "invalidCharacters":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3650
    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3654
    :cond_3
    const-string v3, "carrier_instant_lettering_escaped_chars_string"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3656
    .local v3, "escapedCharacters":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3657
    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->escapeChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3659
    :cond_4
    return-object p1
.end method

.method private dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V
    .locals 17
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "clirMode"    # I
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1238
    move-object/from16 v3, p4

    if-nez v2, :cond_0

    .line 1239
    return-void

    .line 1242
    :cond_0
    const/4 v0, 0x0

    .line 1243
    .local v0, "isConferenceUri":Z
    const/4 v4, 0x0

    .line 1245
    .local v4, "isSkipSchemaParsing":Z
    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 1246
    const-string v6, "org.codeaurora.extra.DIAL_CONFERENCE_URI"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1248
    const-string v6, "org.codeaurora.extra.SKIP_SCHEMA_PARSING"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1253
    .end local v0    # "isConferenceUri":Z
    .local v4, "isConferenceUri":Z
    .local v6, "isSkipSchemaParsing":Z
    :cond_1
    move v6, v4

    move v4, v0

    const-wide/16 v7, 0x1f4

    const/16 v9, 0x12

    if-nez v4, :cond_3

    if-nez v6, :cond_3

    .line 1254
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1255
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v10, 0x4e

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 1257
    :cond_2
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 1258
    invoke-virtual {v1, v9, v7, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1259
    return-void

    .line 1263
    :cond_3
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    .line 1264
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumberUtilsProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_4

    .line 1265
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    move v0, v10

    :goto_0
    move v11, v0

    .line 1266
    .local v11, "serviceType":I
    invoke-static/range {p3 .. p3}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v12

    .line 1268
    .local v12, "callType":I
    move/from16 v13, p3

    invoke-virtual {v2, v13}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    .line 1271
    :try_start_0
    new-array v0, v10, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v0, v5

    .line 1272
    .local v0, "callees":[Ljava/lang/String;
    iget-object v5, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v5, v11, v12}, Lcom/android/ims/ImsManager;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    .line 1273
    .local v5, "profile":Landroid/telephony/ims/ImsCallProfile;
    const-string v14, "oir"
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v15, p2

    :try_start_1
    invoke-virtual {v5, v14, v15}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1274
    const-string v14, "isConferenceUri"

    invoke-virtual {v5, v14, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1279
    if-eqz v3, :cond_8

    .line 1280
    const-string v14, "android.telecom.extra.CALL_SUBJECT"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1281
    const-string v14, "DisplayText"

    const-string v7, "android.telecom.extra.CALL_SUBJECT"

    .line 1282
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cleanseInstantLetteringMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1281
    invoke-virtual {v3, v14, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasRttTextStream()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1288
    iget-object v7, v5, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v10, v7, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 1291
    :cond_6
    const-string v7, "CallPull"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1292
    iget-object v7, v5, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v8, "CallPull"

    const-string v14, "CallPull"

    .line 1293
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 1292
    invoke-virtual {v7, v8, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1294
    const-string v7, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1296
    .local v7, "dialogId":I
    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setIsPulledCall(Z)V

    .line 1297
    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPulledDialogId(I)V

    .line 1301
    .end local v7    # "dialogId":I
    :cond_7
    iget-object v7, v5, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v8, "OemCallExtras"

    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1309
    :cond_8
    invoke-direct {v1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setRttModeBasedOnOperator(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v7

    move-object v5, v7

    .line 1310
    iget-object v7, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v8, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v7, v5, v0, v8}, Lcom/android/ims/ImsManager;->makeCall(Landroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v7

    .line 1311
    .local v7, "imsCall":Lcom/android/ims/ImsCall;
    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setImsCall(Lcom/android/ims/ImsCall;)V

    .line 1313
    iget-object v8, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v10, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v10

    .line 1314
    invoke-virtual {v7}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v14

    .line 1313
    invoke-virtual {v8, v10, v14}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallStart(ILandroid/telephony/ims/ImsCallSession;)V

    .line 1316
    invoke-direct {v1, v2, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    .line 1317
    iget-boolean v8, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAllowAddCallDuringVideoCall(Z)V

    .line 1318
    iget-boolean v8, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAllowHoldingVideoCall(Z)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "callees":[Ljava/lang/String;
    .end local v5    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .end local v7    # "imsCall":Lcom/android/ims/ImsCall;
    goto :goto_3

    .line 1324
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1319
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1324
    :catch_2
    move-exception v0

    move/from16 v15, p2

    :goto_1
    goto :goto_4

    .line 1319
    :catch_3
    move-exception v0

    move/from16 v15, p2

    .line 1320
    .local v0, "e":Lcom/android/ims/ImsException;
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dialInternal : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1321
    const/16 v5, 0x24

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 1322
    const-wide/16 v7, 0x1f4

    invoke-virtual {v1, v9, v7, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1323
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->retryGetImsService()V

    .line 1325
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_3
    nop

    .line 1326
    :goto_4
    return-void
.end method

.method private dialPendingMO()V
    .locals 3

    .line 2278
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isPhoneInEcbMode()Z

    move-result v0

    .line 2279
    .local v0, "isPhoneInEcmMode":Z
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v1

    .line 2280
    .local v1, "isEmergencyNumber":Z
    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2283
    :cond_0
    const/16 v2, 0x15

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 2281
    :cond_1
    :goto_0
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    .line 2285
    :goto_1
    return-void
.end method

.method private downgradeVideoCall(ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 4
    .param p1, "reasonCode"    # I
    .param p2, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3961
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 3962
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_2

    .line 3963
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    if-nez v1, :cond_0

    .line 3967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downgradeVideoCall :: callId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Downgrade to audio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3971
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->modifyVideoCall(Lcom/android/ims/ImsCall;I)V

    goto :goto_0

    .line 3972
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x57f

    if-eq p1, v1, :cond_1

    .line 3975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downgradeVideoCall :: callId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Pause audio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3977
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    .line 3978
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->pauseVideo(I)V

    goto :goto_0

    .line 3980
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downgradeVideoCall :: callId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Disconnect call."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3984
    const/16 v1, 0x1f5

    :try_start_0
    invoke-virtual {v0, v1, p1}, Lcom/android/ims/ImsCall;->terminate(II)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3987
    goto :goto_0

    .line 3985
    :catch_0
    move-exception v1

    .line 3986
    .local v1, "ie":Lcom/android/ims/ImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t terminate call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 3990
    .end local v1    # "ie":Lcom/android/ims/ImsException;
    :cond_2
    :goto_0
    return-void
.end method

.method private dumpState()V
    .locals 4

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone State:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ringing call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1653
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1654
    .local v0, "l":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1655
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1654
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1658
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Foreground call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1660
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1661
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "s":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1662
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1661
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1665
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1667
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1668
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "s":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 1669
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1668
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1672
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_2
    return-void
.end method

.method private escapeChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "toEscape"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .line 3671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3672
    .local v0, "escaped":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-char v4, v1, v3

    .line 3673
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3674
    const-string v5, "\\"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3676
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3672
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3679
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    monitor-enter p0

    .line 1936
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1937
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 1938
    monitor-exit p0

    return-object v1

    .line 1940
    .end local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_0
    goto :goto_0

    .line 1941
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1935
    .end local p1    # "imsCall":Lcom/android/ims/ImsCall;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    throw p1
.end method

.method private getImsManagerIsNullException()Lcom/android/ims/ImsException;
    .locals 3

    .line 3712
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "no ims manager"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private getPackageUid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 781
    const/4 v0, -0x1

    if-nez p2, :cond_0

    .line 782
    return v0

    .line 787
    :cond_0
    nop

    .line 789
    .local v0, "uid":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 792
    goto :goto_0

    .line 790
    :catch_0
    move-exception v1

    .line 791
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find package uid. pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 793
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return v0
.end method

.method private getPreciseDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;)I
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2262
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->PRECISE_CAUSE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeRemapReasonCode(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result v1

    const v2, 0xffff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private handleDataEnabledChange(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "reasonCode"    # I

    .line 3923
    if-nez p1, :cond_1

    .line 3927
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3928
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    .line 3929
    .local v2, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3930
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDataEnabledChange - downgrading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3931
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->downgradeVideoCall(ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3933
    .end local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v2    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_0
    goto :goto_0

    .line 3934
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    if-eqz v0, :cond_4

    .line 3936
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3939
    .restart local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDataEnabledChange - resuming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3940
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3941
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->wasVideoPausedFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3944
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->resumeVideo(I)V

    .line 3946
    .end local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_2
    goto :goto_1

    .line 3947
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    .line 3949
    :cond_4
    return-void
.end method

.method private handleEcmTimer(I)V
    .locals 2
    .param p1, "action"    # I

    .line 1224
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/EcbmHandler;->handleTimerInEmergencyCallbackMode(I)V

    .line 1225
    packed-switch p1, :pswitch_data_0

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEcmTimer, unsupported action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1227
    :pswitch_0
    goto :goto_0

    .line 1229
    :pswitch_1
    nop

    .line 1233
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleFeatureCapabilityChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 8
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 4100
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v0

    .line 4104
    .local v0, "tmpIsVideoCallEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4105
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "handleFeatureCapabilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4107
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4108
    new-instance v2, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v2, p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 4110
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v2

    .line 4111
    .local v2, "isVideoEnabled":Z
    if-eq v0, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4113
    .local v3, "isVideoEnabledStatechanged":Z
    :goto_0
    const-string v4, " isVideoEnabledStateChanged="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4117
    if-eqz v3, :cond_1

    .line 4118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleFeatureCapabilityChanged - notifyForVideoCapabilityChanged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4120
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyForVideoCapabilityChanged(Z)V

    .line 4123
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleFeatureCapabilityChanged: isVolteEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVolteEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isVideoCallEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4127
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isVowifiEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4128
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isUtEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4129
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isUtEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4126
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4132
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onFeatureCapabilityChanged()V

    .line 4134
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCapabilities(IILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 4136
    return-void
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .line 1642
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pollCallsWhenSafe()V

    .line 1643
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .line 1593
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 1594
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 1595
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 1596
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 1597
    return-void
.end method

.method private isPhoneInEcbMode()Z
    .locals 1

    .line 2270
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/EcbmHandler;->isInEcm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWifiConnected()Z
    .locals 5

    .line 4018
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 4019
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4020
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4021
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 4022
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4023
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v4

    nop

    :cond_0
    return v1

    .line 4026
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    return v1
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 696
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$new$1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)Z
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 704
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private maybeNotifyDataDisabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "reasonCode"    # I

    .line 3888
    if-nez p1, :cond_2

    .line 3892
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3893
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    .line 3894
    .local v2, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3895
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasCapabilities(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3901
    const/16 v3, 0x57e

    const/4 v4, 0x0

    if-ne p2, v3, :cond_0

    .line 3902
    const-string v3, "android.telephony.event.EVENT_DOWNGRADE_DATA_DISABLED"

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 3904
    :cond_0
    const/16 v3, 0x57d

    if-ne p2, v3, :cond_1

    .line 3905
    const-string v3, "android.telephony.event.EVENT_DOWNGRADE_DATA_LIMIT_REACHED"

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3910
    .end local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v2    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_1
    :goto_1
    goto :goto_0

    .line 3912
    :cond_2
    return-void
.end method

.method private maybeSetVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 2028
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v0

    .line 2029
    .local v0, "connVideoProvider":Landroid/telecom/Connection$VideoProvider;
    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2034
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2037
    goto :goto_0

    .line 2035
    :catch_0
    move-exception v1

    .line 2036
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeSetVideoCallProvider: exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 2038
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2030
    :cond_1
    :goto_1
    return-void
.end method

.method private modifyVideoCall(Lcom/android/ims/ImsCall;I)V
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "newVideoState"    # I

    .line 3819
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 3820
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    .line 3821
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v1

    .line 3822
    .local v1, "oldVideoState":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3823
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v2

    new-instance v3, Landroid/telecom/VideoProfile;

    invoke-direct {v3, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    new-instance v4, Landroid/telecom/VideoProfile;

    invoke-direct {v4, p2}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 3827
    .end local v1    # "oldVideoState":I
    :cond_0
    return-void
.end method

.method private notifyPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/internal/telephony/PhoneConstants$State;
    .param p2, "newState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .line 3808
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;

    .line 3809
    .local v1, "listener":Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;->onPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 3810
    .end local v1    # "listener":Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;
    goto :goto_0

    .line 3811
    :cond_0
    return-void
.end method

.method private onDataEnabledChanged(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .line 3841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataEnabledChanged: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3843
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    .line 3845
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    if-nez v0, :cond_1

    .line 3846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "enabled"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - carrier policy indicates that data is not metered for ViLTE calls."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3848
    return-void

    .line 3853
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3854
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    .line 3855
    .local v3, "imsCall":Lcom/android/ims/ImsCall;
    if-nez p1, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    nop

    .line 3856
    .local v2, "isVideoEnabled":Z
    :cond_3
    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoEnabled(Z)V

    .line 3857
    .end local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v2    # "isVideoEnabled":Z
    .end local v3    # "imsCall":Lcom/android/ims/ImsCall;
    goto :goto_1

    .line 3860
    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 3861
    const/16 v0, 0x57d

    .local v0, "reasonCode":I
    :goto_3
    goto :goto_4

    .line 3862
    .end local v0    # "reasonCode":I
    :cond_5
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 3863
    const/16 v0, 0x57e

    goto :goto_3

    .line 3866
    :cond_6
    const/16 v0, 0x57e

    .line 3871
    .restart local v0    # "reasonCode":I
    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeNotifyDataDisabled(ZI)V

    .line 3873
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleDataEnabledChange(ZI)V

    .line 3877
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    if-nez v1, :cond_7

    if-eqz p2, :cond_7

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoaded:Z

    if-eqz v1, :cond_7

    .line 3881
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v1, :cond_7

    .line 3882
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Z)V

    .line 3885
    :cond_7
    return-void
.end method

.method private processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "cause"    # I

    .line 1973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCallStateChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1978
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    .line 1979
    return-void
.end method

.method private processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V
    .locals 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "cause"    # I
    .param p4, "ignoreState"    # Z

    .line 1984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCallStateChange state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ignoreState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1988
    if-nez p1, :cond_0

    return-void

    .line 1990
    :cond_0
    const/4 v0, 0x0

    .line 1991
    .local v0, "changed":Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 1993
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-nez v1, :cond_1

    .line 1995
    return-void

    .line 2003
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    .line 2004
    if-eqz p4, :cond_2

    .line 2005
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateAddressDisplay(Lcom/android/ims/ImsCall;)Z

    .line 2006
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/ImsCall;)Z

    .line 2008
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeSetVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    .line 2009
    return-void

    .line 2012
    :cond_2
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    .line 2013
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v2, :cond_5

    .line 2014
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .line 2016
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 2017
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 2020
    :cond_5
    if-eqz v0, :cond_7

    .line 2021
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v2, v3, :cond_6

    return-void

    .line 2022
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 2023
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 2025
    :cond_7
    return-void
.end method

.method private registerForConnectivityChanges()V
    .locals 6

    .line 4034
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4037
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 4038
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4039
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 4040
    const-string v1, "ImsPhoneCallTracker"

    const-string v2, "registerForConnectivityChanges"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4041
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 4042
    .local v1, "capabilities":Landroid/net/NetworkCapabilities;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 4043
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 4044
    .local v3, "builder":Landroid/net/NetworkRequest$Builder;
    invoke-virtual {v3, v1}, Landroid/net/NetworkRequest$Builder;->setCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest$Builder;

    .line 4045
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v4, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 4046
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    .line 4048
    .end local v1    # "capabilities":Landroid/net/NetworkCapabilities;
    .end local v3    # "builder":Landroid/net/NetworkRequest$Builder;
    :cond_1
    return-void

    .line 4035
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    monitor-enter p0

    .line 1945
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1947
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    if-eqz v0, :cond_2

    .line 1948
    const/4 v0, 0x0

    .line 1950
    .local v0, "isEmergencyCallInList":Z
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1951
    .local v2, "imsPhoneConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1952
    const/4 v0, 0x1

    .line 1953
    goto :goto_1

    .line 1955
    .end local v2    # "imsPhoneConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_0
    goto :goto_0

    .line 1957
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 1958
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    .line 1959
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallStateChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1962
    .end local v0    # "isEmergencyCallInList":Z
    :cond_2
    monitor-exit p0

    return-void

    .line 1944
    .end local p1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    throw p1
.end method

.method private resetImsCapabilities()V
    .locals 3

    .line 3993
    const-string v0, "Resetting Capabilities..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3994
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v0

    .line 3996
    .local v0, "tmpIsVideoCallEnabled":Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIgnoreResetUtCapability:Z

    if-eqz v1, :cond_0

    .line 3999
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 4001
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 4003
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    goto :goto_0

    .line 4006
    :cond_0
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 4008
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v1

    .line 4009
    .local v1, "isVideoEnabled":Z
    if-eq v0, v1, :cond_1

    .line 4010
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyForVideoCapabilityChanged(Z)V

    .line 4012
    :cond_1
    return-void
.end method

.method private retryGetImsService()V
    .locals 1

    .line 3587
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3588
    return-void

    .line 3591
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager$Connector;->connect()V

    .line 3592
    return-void
.end method

.method private scheduleHandoverCheck()V
    .locals 5

    .line 4073
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 4074
    .local v0, "fgCall":Lcom/android/ims/ImsCall;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 4075
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 4076
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4080
    :cond_0
    const/16 v2, 0x19

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4081
    const-string v3, "ImsPhoneCallTracker"

    const-string v4, "scheduleHandoverCheck: schedule"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4082
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4085
    :cond_1
    return-void

    .line 4077
    :cond_2
    :goto_0
    return-void
.end method

.method private sendVoLTEHandoverBroadcast()V
    .locals 3

    .line 4232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4233
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone.intent.action.VOLTE_HAND_OVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4234
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4235
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.phone.permission.VOLTE_HAND_OVER"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4236
    return-void
.end method

.method private sendVoLTEHoldBroadcast(Z)V
    .locals 3
    .param p1, "hold"    # Z

    .line 4224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4225
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone.intent.action.VOLTE_HOLD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4226
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4227
    const-string v1, "volte_hold_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4228
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.phone.permission.VOLTE_HOLD"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4229
    return-void
.end method

.method private sendVoLTESuppServiceBroadcast(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 3
    .param p1, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 4239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4240
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone.intent.action.VOLTE_SUPP_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4241
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4242
    const-string v1, "volte_supp_service_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4243
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.phone.permission.VOLTE_SUPP_SERVICE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4244
    return-void
.end method

.method private setRttModeBasedOnOperator(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 4186
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttOn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4190
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getRttOperatingMode(Landroid/content/Context;)I

    move-result v0

    .line 4192
    .local v0, "mode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: setRttModeBasedOnOperator mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4194
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttSupportedOnVtCalls(ILandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4195
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4196
    return-object p1

    .line 4199
    :cond_1
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 4200
    return-object p1

    .line 4187
    .end local v0    # "mode":I
    :cond_2
    :goto_0
    return-object p1
.end method

.method private setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3596
    nop

    .line 3597
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    .line 3598
    .local v0, "imsVideoCallProvider":Lcom/android/ims/internal/IImsVideoCallProvider;
    if-eqz v0, :cond_1

    .line 3600
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 3603
    .local v1, "useVideoPauseWorkaround":Z
    new-instance v2, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-direct {v2, v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;-><init>(Lcom/android/ims/internal/IImsVideoCallProvider;)V

    .line 3605
    .local v2, "imsVideoCallProviderWrapper":Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
    if-eqz v1, :cond_0

    .line 3606
    invoke-virtual {v2, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->setUseVideoPauseWorkaround(Z)V

    .line 3608
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    .line 3609
    const/16 v3, 0x16

    .line 3610
    invoke-virtual {v2, p0, v3, p2}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->registerForDataUsageUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3611
    invoke-virtual {v2, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->addImsVideoProviderCallback(Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;)V

    .line 3613
    .end local v1    # "useVideoPauseWorkaround":Z
    .end local v2    # "imsVideoCallProviderWrapper":Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
    :cond_1
    return-void
.end method

.method private shouldDisconnectActiveCallOnAnswer(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z
    .locals 8
    .param p1, "activeCall"    # Lcom/android/ims/ImsCall;
    .param p2, "incomingCall"    # Lcom/android/ims/ImsCall;

    .line 3747
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 3751
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDropVideoCallWhenAnsweringAudioCall:Z

    if-nez v1, :cond_1

    .line 3752
    return v0

    .line 3755
    :cond_1
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTreatDowngradedVideoCallsAsVideoCalls:Z

    if-eqz v1, :cond_2

    .line 3756
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->wasVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    .line 3757
    .local v1, "isActiveCallVideo":Z
    :goto_1
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v3

    .line 3758
    .local v3, "isActiveCallOnWifi":Z
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v4}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    .line 3759
    invoke-virtual {v4}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v0

    .line 3760
    .local v4, "isVoWifiEnabled":Z
    :goto_2
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v5

    xor-int/2addr v5, v2

    .line 3761
    .local v5, "isIncomingCallAudio":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldDisconnectActiveCallOnAnswer : isActiveCallVideo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isActiveCallOnWifi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isIncomingCallAudio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isVowifiEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3765
    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    if-nez v4, :cond_5

    move v0, v2

    nop

    :cond_5
    return v0

    .line 3748
    .end local v1    # "isActiveCallVideo":Z
    .end local v3    # "isActiveCallOnWifi":Z
    .end local v4    # "isVoWifiEnabled":Z
    .end local v5    # "isIncomingCallAudio":Z
    :cond_6
    :goto_3
    return v0
.end method

.method private shouldDisconnectActiveCallOnDial(Z)Z
    .locals 4
    .param p1, "isEmergencyNumber"    # Z

    .line 3716
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3717
    return v1

    .line 3720
    :cond_0
    const/4 v0, 0x0

    .line 3721
    .local v0, "isActiveVideoCall":Z
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 3722
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    .line 3723
    .local v2, "activeImsCall":Lcom/android/ims/ImsCall;
    if-eqz v2, :cond_1

    .line 3724
    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v0

    .line 3728
    .end local v2    # "activeImsCall":Lcom/android/ims/ImsCall;
    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method private shouldNumberBePlacedOnIms(ZLjava/lang/String;)Z
    .locals 6
    .param p1, "isEmergency"    # Z
    .param p2, "number"    # Ljava/lang/String;

    .line 1093
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v1, :cond_0

    .line 1094
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    aput-object p2, v3, v0

    invoke-virtual {v1, p1, v3}, Lcom/android/ims/ImsManager;->shouldProcessCall(Z[Ljava/lang/String;)I

    move-result v1

    .line 1096
    .local v1, "processCallResult":I
    const-string v3, "ImsPhoneCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldProcessCall: number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ImsPhoneCallTracker"

    invoke-static {v5, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    nop

    .line 1105
    nop

    .line 1104
    nop

    .line 1106
    packed-switch v1, :pswitch_data_0

    .line 1116
    const-string v2, "ImsPhoneCallTracker"

    const-string v3, "shouldProcessCall returned unknown result."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    return v0

    .line 1112
    :pswitch_0
    const-string v2, "ImsPhoneCallTracker"

    const-string v3, "shouldProcessCall: place over CSFB instead."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    return v0

    .line 1109
    :pswitch_1
    return v2

    .line 1099
    .end local v1    # "processCallResult":I
    :cond_0
    :try_start_1
    const-string v1, "ImsPhoneCallTracker"

    const-string v2, "ImsManager unavailable, shouldProcessCall returning false."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1100
    return v0

    .line 1102
    :catch_0
    move-exception v1

    .line 1103
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "ImsPhoneCallTracker"

    const-string v3, "ImsService unavailable, shouldProcessCall returning false."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startListeningForCalls()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 797
    const-string v0, "startListeningForCalls"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelFeatureListener:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->open(Landroid/telephony/ims/feature/MmTelFeature$Listener;)V

    .line 799
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsRegistrationCallback:Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V

    .line 800
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->addCapabilitiesCallback(Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;)V

    .line 802
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsConfigListener:Lcom/android/ims/ImsConfigListener$Stub;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->setConfigListener(Lcom/android/ims/ImsConfigListener;)V

    .line 804
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConfigCallback:Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsConfig;->addConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;)V

    .line 807
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v0

    .line 808
    .local v0, "ecbmHandler":Lcom/android/internal/telephony/EcbmHandler;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 809
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/EcbmHandler;->getImsEcbmStateListener(I)Lcom/android/ims/ImsEcbmStateListener;

    move-result-object v2

    .line 808
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsEcbm;->setEcbmStateListener(Lcom/android/ims/ImsEcbmStateListener;)V

    .line 810
    invoke-virtual {v0}, Lcom/android/internal/telephony/EcbmHandler;->isInEcm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 813
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/EcbmHandler;->exitEmergencyCallbackMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    goto :goto_0

    .line 814
    :catch_0
    move-exception v1

    .line 815
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 818
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 819
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_tty_mode"

    const/4 v3, 0x0

    .line 818
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 822
    .local v1, "mPreferredTtyMode":I
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/ims/ImsManager;->setUiTTYMode(Landroid/content/Context;ILandroid/os/Message;)V

    .line 824
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getMultiEndpointInterface()Lcom/android/ims/ImsMultiEndpoint;

    move-result-object v2

    .line 825
    .local v2, "multiEndpoint":Lcom/android/ims/ImsMultiEndpoint;
    if-eqz v2, :cond_1

    .line 826
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 827
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->getExternalCallStateListener()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    move-result-object v3

    .line 826
    invoke-virtual {v2, v3}, Lcom/android/ims/ImsMultiEndpoint;->setExternalCallStateListener(Lcom/android/ims/ImsExternalCallStateListener;)V

    .line 831
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    .line 832
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    if-eqz v3, :cond_2

    .line 833
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    const/16 v5, 0x1b

    invoke-interface {v3, p0, v5, v4}, Lcom/android/ims/ImsUtInterface;->registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 837
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoaded:Z

    if-eqz v3, :cond_3

    .line 838
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Z)V

    .line 840
    :cond_3
    return-void
.end method

.method private stopListeningForCalls()V
    .locals 3

    .line 843
    const-string v0, "stopListeningForCalls"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 844
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->resetImsCapabilities()V

    .line 846
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 848
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConfigCallback:Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsConfig;->removeConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    goto :goto_0

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v1, "ImsPhoneCallTracker"

    const-string v2, "stopListeningForCalls: unable to remove config callback."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->close()V

    .line 854
    :cond_0
    return-void
.end method

.method private switchAfterConferenceSuccess()V
    .locals 2

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchAfterConferenceSuccess fg ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1408
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1407
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1410
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 1411
    const-string v0, "switchAfterConferenceSuccess"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1412
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1414
    :cond_0
    return-void
.end method

.method private transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 3189
    iget-object v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3190
    iget-object v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3191
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    iput-object v2, v1, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    .line 3192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection state before handover is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3193
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    goto :goto_0

    .line 3195
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3196
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    goto :goto_1

    .line 3198
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3200
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 3201
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3202
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->close()V

    .line 3204
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3205
    .restart local v1    # "c":Lcom/android/internal/telephony/Connection;
    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 3206
    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 3207
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    goto :goto_2

    .line 3209
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call is alive and state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3211
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 3213
    :cond_4
    iget-object v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3214
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 3215
    return-void
.end method

.method private unregisterForConnectivityChanges()V
    .locals 3

    .line 4055
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4058
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 4059
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4060
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 4061
    const-string v1, "ImsPhoneCallTracker"

    const-string v2, "unregisterForConnectivityChanges"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4062
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 4063
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    .line 4065
    :cond_1
    return-void

    .line 4056
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_2
    :goto_0
    return-void
.end method

.method private updatePhoneState()V
    .locals 5

    .line 1601
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1603
    .local v0, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1605
    .local v1, "isPendingMOIdle":Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1606
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_3

    .line 1607
    :cond_2
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 1611
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_3

    .line 1609
    :cond_4
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1614
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_5

    .line 1615
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_4

    .line 1617
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_6

    .line 1618
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1623
    :cond_6
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhoneState pendingMo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-nez v3, :cond_7

    const-string v3, "null"

    goto :goto_5

    .line 1624
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fg= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1625
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), bg= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1626
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1623
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhoneState oldState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", newState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1630
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v0, :cond_8

    .line 1631
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPhoneStateChanged()V

    .line 1632
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1633
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->notifyPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1635
    :cond_8
    return-void
.end method

.method private updateVtDataUsage(Lcom/android/ims/ImsCall;J)V
    .locals 49
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "dataUsage"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3395
    const-wide/16 v2, 0x0

    .line 3396
    .local v2, "oldUsage":J
    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    iget v5, v1, Lcom/android/ims/ImsCall;->uniqueId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3397
    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    iget v5, v1, Lcom/android/ims/ImsCall;->uniqueId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3400
    :cond_0
    sub-long v6, p2, v2

    .line 3401
    .local v6, "delta":J
    iget-object v8, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    iget v9, v1, Lcom/android/ims/ImsCall;->uniqueId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3403
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateVtDataUsage: call="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", delta="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 3406
    .local v8, "currentTime":J
    iget-object v10, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v17

    .line 3409
    .local v17, "isRoaming":I
    new-instance v10, Landroid/net/NetworkStats;

    const/4 v15, 0x1

    invoke-direct {v10, v8, v9, v15}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 3410
    .local v10, "vtDataUsageSnapshot":Landroid/net/NetworkStats;
    iget-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v10, v11}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 3414
    new-instance v14, Landroid/net/NetworkStats$Entry;

    const-string v12, "vt_data0"

    const/4 v13, -0x1

    const/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    const-wide/16 v29, 0x2

    div-long v21, v6, v29

    const-wide/16 v23, 0x0

    div-long v25, v6, v29

    const-wide/16 v27, 0x0

    const-wide/16 v31, 0x0

    move-object v11, v14

    move-object/from16 v33, v14

    move/from16 v14, v16

    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v18, v20

    move-wide/from16 v19, v21

    move-wide/from16 v21, v23

    move-wide/from16 v23, v25

    move-wide/from16 v25, v27

    move-wide/from16 v27, v31

    invoke-direct/range {v11 .. v28}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object/from16 v11, v33

    invoke-virtual {v10, v11}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 3418
    iput-object v10, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    .line 3422
    new-instance v11, Landroid/net/NetworkStats;

    const/4 v12, 0x1

    invoke-direct {v11, v8, v9, v12}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 3423
    .local v11, "vtDataUsageUidSnapshot":Landroid/net/NetworkStats;
    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v11, v12}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 3428
    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    if-ne v12, v13, :cond_1

    .line 3429
    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3430
    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "telecom"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telecom/TelecomManager;

    .line 3431
    .local v12, "telecomManager":Landroid/telecom/TelecomManager;
    iget-object v13, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v14, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3432
    invoke-virtual {v14}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v12}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    .line 3431
    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3437
    .end local v12    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1
    new-instance v12, Landroid/net/NetworkStats$Entry;

    const-string v32, "vt_data0"

    iget-object v13, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3438
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v33

    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x1

    const/16 v38, 0x1

    div-long v39, v6, v29

    const-wide/16 v41, 0x0

    div-long v43, v6, v29

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    move-object/from16 v31, v12

    move/from16 v37, v17

    invoke-direct/range {v31 .. v48}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 3437
    invoke-virtual {v11, v12}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 3441
    iput-object v11, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    .line 3442
    return-void
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 7
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1336
    const-string v0, "acceptCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1338
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1339
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1340
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot accept call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1343
    :cond_1
    :goto_0
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 1344
    .local v0, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1345
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1346
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    .line 1348
    const/4 v1, 0x0

    .line 1349
    .local v1, "answeringWillDisconnect":Z
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    .line 1350
    .local v2, "activeCall":Lcom/android/ims/ImsCall;
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    .line 1351
    .local v3, "ringingCall":Lcom/android/ims/ImsCall;
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hasConnections()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hasConnections()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1352
    nop

    .line 1353
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->shouldDisconnectActiveCallOnAnswer(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z

    move-result v1

    .line 1357
    :cond_2
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 1359
    if-eqz v1, :cond_3

    .line 1361
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V

    .line 1363
    :try_start_0
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addRttAttributeIfRequired(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v4

    move-object v0, v4

    .line 1364
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/android/ims/ImsCall;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    goto :goto_1

    .line 1366
    :catch_0
    move-exception v4

    .line 1367
    .local v4, "e":Lcom/android/ims/ImsException;
    new-instance v5, Lcom/android/internal/telephony/CallStateException;

    const-string v6, "cannot accept call"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1370
    .end local v4    # "e":Lcom/android/ims/ImsException;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 1372
    .end local v1    # "answeringWillDisconnect":Z
    .end local v2    # "activeCall":Lcom/android/ims/ImsCall;
    .end local v3    # "ringingCall":Lcom/android/ims/ImsCall;
    :goto_1
    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1373
    const-string v1, "acceptCall: incoming..."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    .line 1377
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 1378
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_5

    .line 1379
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addRttAttributeIfRequired(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    move-object v0, v2

    .line 1380
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/ims/ImsCall;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1382
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    .line 1389
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    nop

    .line 1393
    :goto_2
    return-void

    .line 1385
    .restart local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_5
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "no valid ims call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1387
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :catch_1
    move-exception v1

    .line 1388
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot accept call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1391
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :cond_6
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "phone not ringing"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addParticipant(Ljava/lang/String;)V
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1072
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-eqz v0, :cond_2

    .line 1073
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1074
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    .line 1075
    const-string v1, "addParticipant : No foreground ims call"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1077
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    .line 1078
    .local v1, "imsCallSession":Landroid/telephony/ims/ImsCallSession;
    if-eqz v1, :cond_1

    .line 1079
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1080
    .local v2, "callees":[Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->inviteParticipants([Ljava/lang/String;)V

    .line 1081
    .end local v2    # "callees":[Ljava/lang/String;
    goto :goto_0

    .line 1082
    :cond_1
    const-string v2, "addParticipant : ImsCallSession does not exist"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1085
    .end local v0    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v1    # "imsCallSession":Landroid/telephony/ims/ImsCallSession;
    :goto_0
    goto :goto_1

    .line 1086
    :cond_2
    const-string v0, "addParticipant : Foreground call does not exist"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1088
    :goto_1
    return-void
.end method

.method public addReasonCodeRemapping(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "fromCode"    # Ljava/lang/Integer;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "toCode"    # Ljava/lang/Integer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2049
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    return-void
.end method

.method callEndCleanupHandOverCallIfAny()V
    .locals 2

    .line 1841
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callEndCleanupHandOverCallIfAny, mHandoverCall.mConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1844
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1845
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1846
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1848
    :cond_0
    return-void
.end method

.method public canConference()Z
    .locals 2

    .line 1544
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1545
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1546
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1547
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1544
    :goto_0
    return v0
.end method

.method public canDial()Z
    .locals 2

    .line 1571
    const-string v0, "ro.telephony.disable-call"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1574
    .local v0, "disableCall":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1575
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRinging()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    .line 1576
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1577
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1578
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1580
    .local v1, "ret":Z
    :goto_0
    return v1
.end method

.method public canTransfer()Z
    .locals 2

    .line 1585
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1586
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1585
    :goto_0
    return v0
.end method

.method public cancelUSSD()V
    .locals 2

    .line 1926
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_0

    return-void

    .line 1929
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->terminate(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1931
    goto :goto_0

    .line 1930
    :catch_0
    move-exception v0

    .line 1933
    :goto_0
    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    .line 1534
    const-string v0, "clearDisconnected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1536
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->internalClearDisconnected()V

    .line 1538
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 1539
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 1540
    return-void
.end method

.method public conference()V
    .locals 15

    .line 1466
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1467
    .local v0, "fgImsCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    .line 1468
    const-string v1, "conference no foreground ims call"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1469
    return-void

    .line 1472
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 1473
    .local v1, "bgImsCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_1

    .line 1474
    const-string v2, "conference no background ims call"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1475
    return-void

    .line 1478
    :cond_1
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1479
    const-string v2, "conference: skip; foreground call already in process of merging."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1480
    return-void

    .line 1483
    :cond_2
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1484
    const-string v2, "conference: skip; background call already in process of merging."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1485
    return-void

    .line 1490
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    move-result-wide v2

    .line 1491
    .local v2, "foregroundConnectTime":J
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    move-result-wide v4

    .line 1493
    .local v4, "backgroundConnectTime":J
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_4

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    .line 1494
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1495
    invoke-virtual {v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    move-result-wide v8

    .line 1494
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1496
    .local v6, "conferenceConnectTime":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "conference - using connect time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1497
    .end local v6    # "conferenceConnectTime":J
    :cond_4
    cmp-long v6, v2, v6

    if-lez v6, :cond_5

    .line 1498
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "conference - bg call connect time is 0; using fg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1499
    move-wide v6, v2

    .restart local v6    # "conferenceConnectTime":J
    goto :goto_0

    .line 1501
    .end local v6    # "conferenceConnectTime":J
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "conference - fg call connect time is 0; using bg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1502
    move-wide v6, v4

    .line 1505
    .restart local v6    # "conferenceConnectTime":J
    :goto_0
    const-string v8, ""

    .line 1506
    .local v8, "foregroundId":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v9

    .line 1507
    .local v9, "foregroundConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v9, :cond_6

    .line 1508
    invoke-virtual {v9, v6, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConferenceConnectTime(J)V

    .line 1509
    invoke-virtual {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->handleMergeStart()V

    .line 1510
    invoke-virtual {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v8

    .line 1512
    :cond_6
    const-string v10, ""

    .line 1513
    .local v10, "backgroundId":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v11

    .line 1514
    .local v11, "backgroundConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v11, :cond_7

    .line 1515
    invoke-virtual {v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->handleMergeStart()V

    .line 1516
    invoke-virtual {v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v10

    .line 1518
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "conference: fgCallId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", bgCallId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1521
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->merge(Lcom/android/ims/ImsCall;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1524
    goto :goto_1

    .line 1522
    :catch_0
    move-exception v12

    .line 1523
    .local v12, "e":Lcom/android/ims/ImsException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "conference "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1525
    .end local v12    # "e":Lcom/android/ims/ImsException;
    :goto_1
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 916
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;-><init>()V

    .line 917
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 918
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setVideoState(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 919
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getClirMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v0

    .line 920
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v0

    .line 921
    .local v0, "dialArgs":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;
    .locals 22
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    monitor-enter p0

    .line 926
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isPhoneInEcbMode()Z

    move-result v0

    move v11, v0

    .line 927
    .local v11, "isPhoneInEcmMode":Z
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumberUtilsProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;

    invoke-interface {v0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    move v12, v0

    .line 929
    .local v12, "isEmergencyNumber":Z
    invoke-direct {v8, v12, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->shouldNumberBePlacedOnIms(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 935
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isModemEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    move v13, v0

    .line 938
    .local v13, "isModemEmergencyNumber":Z
    iget v0, v10, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->clirMode:I

    .line 939
    .local v0, "clirMode":I
    iget v1, v10, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->videoState:I

    .line 941
    .local v1, "videoState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dial clirMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 942
    if-eqz v12, :cond_0

    .line 943
    const/4 v0, 0x2

    .line 944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dial emergency call, set clirModIe="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 948
    :cond_0
    move v14, v0

    .end local v0    # "clirMode":I
    .local v14, "clirMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    .line 950
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_d

    .line 954
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canDial()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {v8, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canAddVideoCallDuringImsAudioCall(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 958
    const/4 v0, 0x1

    if-eqz v11, :cond_1

    if-eqz v12, :cond_1

    .line 959
    invoke-direct {v8, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleEcmTimer(I)V

    .line 964
    :cond_1
    if-eqz v12, :cond_2

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    if-nez v2, :cond_2

    .line 966
    const-string v2, "dial: carrier does not support video emergency calls; downgrade to audio-only"

    invoke-virtual {v8, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 967
    const/4 v1, 0x0

    .line 970
    .end local v1    # "videoState":I
    .local v15, "videoState":I
    :cond_2
    move v15, v1

    const/4 v1, 0x0

    .line 971
    .local v1, "holdBeforeDial":Z
    const/4 v2, 0x0

    .line 976
    .local v2, "hangupBeforeDial":Z
    iget-object v3, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_5

    .line 977
    iget-object v3, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_4

    .line 982
    const/4 v1, 0x1

    .line 984
    iput v15, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 985
    iget-object v3, v10, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->intentExtras:Landroid/os/Bundle;

    iput-object v3, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    .line 987
    invoke-direct {v8, v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->shouldDisconnectActiveCallOnDial(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 988
    const/4 v1, 0x0

    .line 989
    const/4 v2, 0x1

    .line 992
    const-string v3, "dial, hangingup active call"

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 993
    iget-object v3, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V

    goto :goto_0

    .line 995
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_0

    .line 979
    :cond_4
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot dial in current state"

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 999
    :cond_5
    :goto_0
    move/from16 v16, v2

    .end local v2    # "hangupBeforeDial":Z
    .local v16, "hangupBeforeDial":Z
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 1000
    .local v2, "fgState":Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 1002
    .local v3, "bgState":Lcom/android/internal/telephony/Call$State;
    iput v14, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    .line 1004
    iget-object v7, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1005
    if-eqz v1, :cond_7

    .line 1006
    :try_start_1
    iget-object v4, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    move-object v2, v4

    .line 1007
    iget-object v4, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    move-object v3, v4

    .line 1010
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v4, :cond_6

    .line 1015
    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_7

    .line 1016
    const/4 v1, 0x0

    goto :goto_1

    .line 1011
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "cannot dial in current state"

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1030
    :catchall_0
    move-exception v0

    move-object/from16 v21, v7

    goto/16 :goto_5

    .line 1020
    .end local v1    # "holdBeforeDial":Z
    .end local v2    # "fgState":Lcom/android/internal/telephony/Call$State;
    .end local v3    # "bgState":Lcom/android/internal/telephony/Call$State;
    .local v17, "holdBeforeDial":Z
    .local v18, "fgState":Lcom/android/internal/telephony/Call$State;
    .local v19, "bgState":Lcom/android/internal/telephony/Call$State;
    :cond_7
    :goto_1
    move/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    :try_start_2
    iput-object v9, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialString:Ljava/lang/String;

    .line 1021
    iput-object v10, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    .line 1022
    new-instance v6, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v2, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1023
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v4, v10, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->intentExtras:Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, v6

    move-object/from16 v20, v4

    move-object v4, v8

    move-object v0, v6

    move v6, v12

    move-object/from16 v21, v7

    move-object/from16 v7, v20

    :try_start_3
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZLandroid/os/Bundle;)V

    iput-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1025
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    .line 1026
    iget-object v0, v10, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->rttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-eqz v0, :cond_8

    .line 1027
    const-string v0, "dial: setting RTT stream on mPendingMO"

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1028
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v1, v10, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->rttTextStream:Landroid/telecom/Connection$RttTextStream;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setCurrentRttTextStream(Landroid/telecom/Connection$RttTextStream;)V

    .line 1030
    :cond_8
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1031
    :try_start_4
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-direct {v8, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1033
    if-nez v17, :cond_b

    if-nez v16, :cond_b

    .line 1038
    if-eqz v11, :cond_a

    if-eqz v11, :cond_9

    if-eqz v12, :cond_9

    if-eqz v13, :cond_9

    goto :goto_2

    .line 1043
    :cond_9
    :try_start_5
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/EcbmHandler;->exitEmergencyCallbackMode()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1047
    nop

    .line 1048
    :try_start_6
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/internal/telephony/EcbmHandler;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1050
    iput v14, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    .line 1051
    iput v15, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 1052
    iget-object v0, v10, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->intentExtras:Landroid/os/Bundle;

    iput-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    .line 1053
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    goto :goto_3

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1046
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "service not available"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1040
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_2
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v1, v10, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-direct {v8, v0, v14, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V

    .line 1057
    :cond_b
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 1058
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 1060
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    monitor-exit p0

    return-object v0

    .line 1030
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v21, v7

    .end local v17    # "holdBeforeDial":Z
    .end local v18    # "fgState":Lcom/android/internal/telephony/Call$State;
    .end local v19    # "bgState":Lcom/android/internal/telephony/Call$State;
    .restart local v1    # "holdBeforeDial":Z
    .restart local v2    # "fgState":Lcom/android/internal/telephony/Call$State;
    .restart local v3    # "bgState":Lcom/android/internal/telephony/Call$State;
    :goto_4
    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    :goto_5
    :try_start_7
    monitor-exit v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v0

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 955
    .end local v2    # "fgState":Lcom/android/internal/telephony/Call$State;
    .end local v3    # "bgState":Lcom/android/internal/telephony/Call$State;
    .end local v15    # "videoState":I
    .end local v16    # "hangupBeforeDial":Z
    .local v1, "videoState":I
    :cond_c
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cannot dial in current state"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_d
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "service not available"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 930
    .end local v1    # "videoState":I
    .end local v13    # "isModemEmergencyNumber":Z
    .end local v14    # "clirMode":I
    :cond_e
    const-string v0, "ImsPhoneCallTracker"

    const-string v1, "dial: shouldNumberBePlacedOnIms = false"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cs_fallback"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 925
    .end local v11    # "isPhoneInEcmMode":Z
    .end local v12    # "isEmergencyNumber":Z
    .end local p1    # "dialString":Ljava/lang/String;
    .end local p2    # "dialArgs":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
    :catchall_4
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    throw v0
.end method

.method public dispose()V
    .locals 2

    .line 857
    const-string v0, "dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 859
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 861
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 863
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {v0, p0}, Lcom/android/ims/ImsUtInterface;->unregisterForSuppServiceIndication(Landroid/os/Handler;)V

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDataEnabledChanged(Landroid/os/Handler;)V

    .line 869
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager$Connector;->disconnect()V

    .line 870
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3482
    const-string v0, "ImsPhoneCallTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3483
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVoiceCallEndedRegistrants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVoiceCallStartedRegistrants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRingingCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mForegroundCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mBackgroundCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHandoverCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingMO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDesiredMute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMmTelCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDefaultDialerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVtDataUsageSnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVtDataUsageUidSnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3500
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3501
    const-string v0, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3504
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 3505
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3509
    :cond_0
    goto :goto_0

    .line 3507
    :catch_0
    move-exception v0

    .line 3508
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3511
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3512
    const-string v0, "mConnections:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3513
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3513
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3517
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 0

    .line 1530
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 874
    const-string v0, "ImsPhoneCallTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method public getClirMode()I
    .locals 4

    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 905
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 904
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 906
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clir_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 909
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    const-string v0, "dial; could not get default CLIR mode."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 910
    return v1
.end method

.method public getDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/Call$State;)I
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "callState"    # Lcom/android/internal/telephony/Call$State;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2106
    const/16 v0, 0x24

    .line 2108
    .local v0, "cause":I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeRemapReasonCode(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result v1

    .line 2109
    .local v1, "code":I
    const/16 v2, 0xc

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    .line 2240
    :sswitch_0
    const/16 v2, 0x19

    return v2

    .line 2111
    :sswitch_1
    const/16 v2, 0x75

    return v2

    .line 2207
    :sswitch_2
    const/16 v2, 0x3c

    return v2

    .line 2243
    :sswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 2244
    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2245
    const/16 v2, 0x16

    return v2

    .line 2246
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 2247
    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2248
    const/16 v2, 0x18

    return v2

    .line 2249
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 2250
    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2251
    const/16 v2, 0x17

    return v2

    .line 2204
    :sswitch_4
    const/16 v2, 0x3b

    return v2

    .line 2198
    :sswitch_5
    const/16 v2, 0x36

    return v2

    .line 2201
    :sswitch_6
    const/16 v2, 0x37

    return v2

    .line 2195
    :sswitch_7
    const/16 v2, 0x35

    return v2

    .line 2192
    :sswitch_8
    const/16 v2, 0x33

    return v2

    .line 2189
    :sswitch_9
    const/16 v2, 0x34

    return v2

    .line 2120
    :sswitch_a
    const/4 v2, 0x3

    return v2

    .line 2213
    :sswitch_b
    const/16 v2, 0x40

    return v2

    .line 2210
    :sswitch_c
    const/16 v2, 0x3f

    return v2

    .line 2133
    :sswitch_d
    const/4 v2, 0x2

    return v2

    .line 2146
    :sswitch_e
    const/16 v2, 0x9

    return v2

    .line 2117
    :sswitch_f
    const/4 v2, 0x4

    return v2

    .line 2114
    :sswitch_10
    const/16 v2, 0x8

    return v2

    .line 2149
    :sswitch_11
    const/4 v2, 0x7

    return v2

    .line 2136
    :sswitch_12
    return v2

    .line 2142
    :sswitch_13
    return v2

    .line 2237
    :sswitch_14
    const/16 v2, 0x44

    return v2

    .line 2234
    :sswitch_15
    const/16 v2, 0x43

    return v2

    .line 2231
    :sswitch_16
    const/16 v2, 0x46

    return v2

    .line 2228
    :sswitch_17
    const/16 v2, 0x45

    return v2

    .line 2225
    :sswitch_18
    const/16 v2, 0x42

    return v2

    .line 2222
    :sswitch_19
    const/16 v2, 0x30

    return v2

    .line 2219
    :sswitch_1a
    const/16 v2, 0x2f

    return v2

    .line 2216
    :sswitch_1b
    const/16 v2, 0x2e

    return v2

    .line 2186
    :sswitch_1c
    const/16 v2, 0x3a

    return v2

    .line 2183
    :sswitch_1d
    const/16 v2, 0x15

    return v2

    .line 2180
    :sswitch_1e
    const/16 v2, 0x14

    return v2

    .line 2165
    :sswitch_1f
    const/16 v2, 0xd

    return v2

    .line 2129
    :sswitch_20
    const/16 v2, 0x10

    return v2

    .line 2172
    :sswitch_21
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v2, :cond_2

    .line 2173
    const/16 v2, 0x3e

    return v2

    .line 2175
    :cond_2
    const/16 v2, 0x3d

    return v2

    .line 2168
    :sswitch_22
    const/16 v2, 0x11

    return v2

    .line 2123
    :sswitch_23
    const/16 v2, 0x2d

    return v2

    .line 2159
    :sswitch_24
    const/16 v2, 0x12

    return v2

    .line 2258
    :cond_3
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x6a -> :sswitch_24
        0x6c -> :sswitch_23
        0x6f -> :sswitch_22
        0x70 -> :sswitch_21
        0x79 -> :sswitch_24
        0x7a -> :sswitch_24
        0x7b -> :sswitch_24
        0x7c -> :sswitch_24
        0x83 -> :sswitch_24
        0x84 -> :sswitch_24
        0x8f -> :sswitch_20
        0x90 -> :sswitch_24
        0xc9 -> :sswitch_1f
        0xca -> :sswitch_1f
        0xcb -> :sswitch_1f
        0xf0 -> :sswitch_1e
        0xf1 -> :sswitch_1d
        0xf3 -> :sswitch_1c
        0xf4 -> :sswitch_1b
        0xf5 -> :sswitch_1a
        0xf6 -> :sswitch_19
        0xf7 -> :sswitch_18
        0xf8 -> :sswitch_17
        0xf9 -> :sswitch_16
        0xfa -> :sswitch_15
        0xfb -> :sswitch_14
        0x141 -> :sswitch_13
        0x14b -> :sswitch_13
        0x14c -> :sswitch_12
        0x14d -> :sswitch_11
        0x14f -> :sswitch_1f
        0x151 -> :sswitch_10
        0x152 -> :sswitch_f
        0x154 -> :sswitch_13
        0x155 -> :sswitch_10
        0x160 -> :sswitch_e
        0x162 -> :sswitch_e
        0x169 -> :sswitch_d
        0x16a -> :sswitch_13
        0x16b -> :sswitch_c
        0x16c -> :sswitch_b
        0x1f5 -> :sswitch_a
        0x1f9 -> :sswitch_21
        0x1fe -> :sswitch_d
        0x3f6 -> :sswitch_9
        0x3f8 -> :sswitch_8
        0x57b -> :sswitch_7
        0x57c -> :sswitch_20
        0x57d -> :sswitch_6
        0x57e -> :sswitch_5
        0x57f -> :sswitch_4
        0x5de -> :sswitch_3
        0x5e8 -> :sswitch_2
        0x5ea -> :sswitch_1
        0x5eb -> :sswitch_0
    .end sparse-switch
.end method

.method public getEcbmInterface()Lcom/android/ims/ImsEcbm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3525
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 3529
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    move-result-object v0

    .line 3530
    .local v0, "ecbm":Lcom/android/ims/ImsEcbm;
    return-object v0

    .line 3526
    .end local v0    # "ecbm":Lcom/android/ims/ImsEcbm;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object v0

    throw v0
.end method

.method public getImsRegistrationTech()I
    .locals 1

    .line 3579
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 3580
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getRegistrationTech()I

    move-result v0

    return v0

    .line 3582
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method getMultiEndpointInterface()Lcom/android/ims/ImsMultiEndpoint;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3535
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_1

    .line 3540
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getMultiEndpointInterface()Lcom/android/ims/ImsMultiEndpoint;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3541
    :catch_0
    move-exception v0

    .line 3542
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getCode()I

    move-result v1

    const/16 v2, 0x386

    if-ne v1, v2, :cond_0

    .line 3543
    const/4 v1, 0x0

    return-object v1

    .line 3545
    :cond_0
    throw v0

    .line 3536
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object v0

    throw v0
.end method

.method public getMute()Z
    .locals 1

    .line 1717
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    return v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .line 3575
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getSwitchingFgAndBgCallsValue()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2089
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    return v0
.end method

.method public getUtInterface()Lcom/android/ims/ImsUtInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3180
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 3184
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getSupplementaryServiceConfiguration()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 3185
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    return-object v0

    .line 3181
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object v0

    throw v0
.end method

.method public getVtDataUsage(Z)Landroid/net/NetworkStats;
    .locals 3
    .param p1, "perUidStats"    # Z

    .line 3779
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_1

    .line 3780
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3781
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v2

    .line 3782
    .local v2, "videoProvider":Landroid/telecom/Connection$VideoProvider;
    if-eqz v2, :cond_0

    .line 3783
    invoke-virtual {v2}, Landroid/telecom/Connection$VideoProvider;->onRequestConnectionDataUsage()V

    .line 3785
    .end local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v2    # "videoProvider":Landroid/telecom/Connection$VideoProvider;
    :cond_0
    goto :goto_0

    .line 3788
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    :goto_1
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 3241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3243
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 3378
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 3379
    .local v0, "callInfo":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    .line 3380
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 3381
    const/16 v1, 0x1c

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeMessages(I)V

    .line 3382
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/ImsCall;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3383
    goto/16 :goto_1

    .line 3357
    .end local v0    # "callInfo":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;>;"
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 3359
    .restart local v0    # "callInfo":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;>;"
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeMessages(I)V

    .line 3360
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    .line 3361
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 3362
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/ImsCall;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 3363
    .local v1, "oldConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-nez v1, :cond_0

    .line 3364
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/ims/ImsCall;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3366
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3367
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3369
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3370
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 3371
    .local v2, "newConnection":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3374
    .end local v2    # "newConnection":Lcom/android/internal/telephony/Connection;
    goto/16 :goto_1

    .line 3372
    :catch_0
    move-exception v2

    .line 3373
    .local v2, "e":Lcom/android/internal/telephony/CallStateException;
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/ims/ImsCall;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3375
    .end local v2    # "e":Lcom/android/internal/telephony/CallStateException;
    goto/16 :goto_1

    .line 3346
    .end local v0    # "callInfo":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;>;"
    .end local v1    # "oldConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3347
    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 3349
    .local v2, "mmiCode":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :try_start_1
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->setIsSsInfo(Z)V

    .line 3350
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processImsSsData(Landroid/os/AsyncResult;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3353
    goto/16 :goto_1

    .line 3351
    :catch_1
    move-exception v1

    .line 3352
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v3, "ImsPhoneCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in parsing SS Data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    .end local v1    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_1

    .line 3336
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "mmiCode":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3338
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 3339
    .local v1, "capabilities":Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleFeatureCapabilityChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3341
    .end local v1    # "capabilities":Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3342
    nop

    .line 3343
    goto/16 :goto_1

    .line 3341
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 3312
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_6

    .line 3313
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsCall;

    .line 3314
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 3315
    const-string v1, "ImsPhoneCallTracker"

    const-string v2, "handoverCheck: no longer FG; check skipped."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterForConnectivityChanges()V

    .line 3318
    return-void

    .line 3320
    :cond_1
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3322
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 3323
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v1, :cond_2

    .line 3324
    const-string v2, "ImsPhoneCallTracker"

    const-string v3, "handoverCheck: handover failed."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onHandoverToWifiFailed()V

    .line 3328
    :cond_2
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3329
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v2

    if-nez v2, :cond_3

    .line 3330
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerForConnectivityChanges()V

    .line 3333
    .end local v0    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_3
    goto/16 :goto_1

    .line 3305
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3306
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Landroid/util/Pair;

    if-eqz v1, :cond_6

    .line 3307
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 3308
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->onDataEnabledChanged(ZI)V

    .line 3309
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    goto/16 :goto_1

    .line 3296
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3297
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/ImsCall;

    .line 3298
    .local v1, "call":Lcom/android/ims/ImsCall;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3299
    .local v2, "usage":Ljava/lang/Long;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VT data usage update. usage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", imsCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3300
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    .line 3301
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updateVtDataUsage(Lcom/android/ims/ImsCall;J)V

    goto/16 :goto_1

    .line 3269
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "call":Lcom/android/ims/ImsCall;
    .end local v2    # "usage":Ljava/lang/Long;
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v0, :cond_6

    .line 3272
    :try_start_3
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/EcbmHandler;->exitEmergencyCallbackMode()V

    .line 3273
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v0

    const/16 v3, 0xe

    invoke-virtual {v0, p0, v3, v2}, Lcom/android/internal/telephony/EcbmHandler;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3275
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    .line 3276
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 3277
    :catch_2
    move-exception v0

    .line 3278
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3279
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 3280
    const/16 v1, 0x12

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 3281
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 3264
    :pswitch_9
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V

    .line 3265
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    .line 3266
    goto :goto_1

    .line 3256
    :pswitch_a
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->resumeWaitingOrHolding()V
    :try_end_4
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3261
    goto :goto_1

    .line 3257
    :catch_3
    move-exception v0

    .line 3259
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage EVENT_RESUME_BACKGROUND exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 3262
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    goto :goto_1

    .line 3245
    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v0, :cond_4

    .line 3246
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    .line 3247
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3248
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3250
    :cond_4
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    .line 3251
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 3252
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 3253
    goto :goto_1

    .line 3287
    :pswitch_c
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    if-eqz v0, :cond_5

    .line 3288
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V

    .line 3290
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    .line 3291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    .line 3293
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/EcbmHandler;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 3294
    nop

    .line 3386
    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3521
    return-void
.end method

.method public hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 6
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1779
    const-string v0, "hangup call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1781
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 1785
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1786
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    const/4 v1, 0x0

    .line 1788
    .local v1, "rejectCall":Z
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v2, :cond_0

    .line 1789
    const-string v2, "(ringing) hangup incoming"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1790
    const/4 v1, 0x1

    goto :goto_0

    .line 1791
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v2, :cond_2

    .line 1792
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isDialingOrAlerting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1794
    const-string v2, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1798
    :cond_1
    const-string v2, "(foregnd) hangup foreground"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1802
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v2, :cond_6

    .line 1804
    const-string v2, "(backgnd) hangup waiting or background"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1811
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->onHangupLocal()V

    .line 1814
    if-eqz v0, :cond_4

    .line 1815
    if-eqz v1, :cond_3

    .line 1816
    const/16 v2, 0x1f8

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall;->reject(I)V

    .line 1817
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    goto :goto_1

    .line 1820
    :cond_3
    const/16 v2, 0x1f5

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall;->terminate(I)V

    .line 1821
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    goto :goto_1

    .line 1824
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v2, :cond_5

    .line 1826
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    .line 1827
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    .line 1828
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 1829
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1830
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 1831
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeMessages(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1835
    :cond_5
    :goto_1
    nop

    .line 1837
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 1838
    return-void

    .line 1833
    :catch_0
    move-exception v2

    .line 1834
    .local v2, "e":Lcom/android/ims/ImsException;
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v2}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1807
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :cond_6
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsPhoneCall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "does not belong to ImsPhoneCallTracker "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1782
    .end local v0    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v1    # "rejectCall":Z
    :cond_7
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1766
    const-string v0, "hangup connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getOwner()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1773
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1774
    return-void

    .line 1769
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsPhoneConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "does not belong to ImsPhoneCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCarrierDowngradeOfVtCallSupported()Z
    .locals 1

    .line 4091
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportDowngradeVtToAudio:Z

    return v0
.end method

.method isImsServiceReady()Z
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v0, :cond_0

    .line 1065
    const/4 v0, 0x0

    return v0

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isServiceReady()Z

    move-result v0

    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .line 3552
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    return v0
.end method

.method public isUtEnabled()Z
    .locals 2

    .line 3616
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    return v0
.end method

.method public isViLteDataMetered()Z
    .locals 1

    .line 3830
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    return v0
.end method

.method public isVideoCallEnabled()Z
    .locals 2

    .line 3570
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    return v0
.end method

.method public isVolteEnabled()Z
    .locals 4

    .line 3556
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3558
    .local v0, "isRadioTechLte":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v3, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method public isVowifiEnabled()Z
    .locals 4

    .line 3563
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3565
    .local v0, "isRadioTechIwlan":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v3, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 3446
    const-string v0, "ImsPhoneCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    return-void
.end method

.method logState()V
    .locals 3

    .line 3459
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->VERBOSE_STATE_LOGGING:Z

    if-nez v0, :cond_0

    .line 3460
    return-void

    .line 3463
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3464
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Current IMS PhoneCall State:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3465
    const-string v1, " Foreground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3466
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3467
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3468
    const-string v1, " Background: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3469
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3470
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3471
    const-string v1, " Ringing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3472
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3473
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3474
    const-string v1, " Handover: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3475
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3476
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3477
    const-string v1, "ImsPhoneCallTracker"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 3450
    const-string v0, "ImsPhoneCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    return-void
.end method

.method public maybeRemapReasonCode(Landroid/telephony/ims/ImsReasonInfo;)I
    .locals 7
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2063
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    .line 2065
    .local v0, "code":I
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v1

    .line 2067
    .local v1, "extraMessage":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2068
    .local v2, "toCheck":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2069
    .local v3, "wildcardToCheck":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2070
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2072
    .local v4, "toCode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maybeRemapReasonCode : fromCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ; message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ; toCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2072
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2074
    return v4

    .line 2075
    .end local v4    # "toCode":I
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2078
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2080
    .restart local v4    # "toCode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maybeRemapReasonCode : fromCode(wildcard) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ; message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ; toCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2080
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2082
    return v4

    .line 2084
    .end local v4    # "toCode":I
    :cond_2
    return v0
.end method

.method notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/Call$SrvccState;

    .line 3219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySrvccState state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3221
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 3223
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne v0, v1, :cond_0

    .line 3224
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 3225
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 3226
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 3228
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    .line 3229
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendVoLTEHandoverBroadcast()V

    .line 3233
    :cond_0
    return-void
.end method

.method public onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4140
    const-string v0, "onCallHoldReceived"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4142
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 4143
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 4144
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    if-nez v2, :cond_2

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isLocalTone(Lcom/android/ims/ImsCall;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAlwaysPlayRemoteHoldTone:Z

    if-eqz v2, :cond_2

    .line 4146
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    .line 4148
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsVoLTEOnHold:Z

    if-nez v2, :cond_1

    .line 4149
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendVoLTEHoldBroadcast(Z)V

    .line 4150
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsVoLTEOnHold:Z

    .line 4153
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->startOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    .line 4154
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    .line 4155
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    .line 4157
    :cond_2
    const-string v2, "android.telecom.event.CALL_REMOTELY_HELD"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4159
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 4161
    .local v2, "useVideoPauseWorkaround":Z
    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    if-eqz v3, :cond_3

    .line 4162
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4168
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->changeToPausedState()V

    .line 4172
    .end local v2    # "useVideoPauseWorkaround":Z
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 4173
    .local v2, "supp":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iput v1, v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 4174
    const/4 v1, 0x2

    iput v1, v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 4175
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    .line 4176
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallHoldReceived(ILandroid/telephony/ims/ImsCallSession;)V

    .line 4177
    return-void
.end method

.method public pullExternalCall(Ljava/lang/String;II)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "dialogId"    # I

    .line 3700
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3701
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "CallPull"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3702
    const-string v1, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3704
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 3705
    .local v1, "connection":Lcom/android/internal/telephony/Connection;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3708
    .end local v1    # "connection":Lcom/android/internal/telephony/Connection;
    goto :goto_0

    .line 3706
    :catch_0
    move-exception v1

    .line 3707
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pullExternalCall failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 3709
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :goto_0
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 893
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 894
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 895
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 882
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 883
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 884
    return-void
.end method

.method public registerPhoneStateListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;

    .line 3792
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3793
    return-void
.end method

.method public rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1396
    const-string v0, "rejectCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1398
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1403
    return-void

    .line 1401
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method resumeWaitingOrHolding()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1852
    const-string v0, "resumeWaitingOrHolding"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1855
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_1

    .line 1858
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1859
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    .line 1860
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->resume()V

    .line 1861
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    .line 1864
    .end local v0    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_3

    .line 1866
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1867
    .restart local v0    # "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_2

    .line 1868
    new-instance v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 1870
    .local v1, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addRttAttributeIfRequired(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    move-object v1, v2

    .line 1872
    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 1873
    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v2

    .line 1872
    invoke-virtual {v0, v2, v1}, Lcom/android/ims/ImsCall;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1875
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    .line 1878
    .end local v0    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v1    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_2
    goto :goto_0

    .line 1883
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1884
    .restart local v0    # "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_4

    .line 1885
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->resume()V

    .line 1886
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1892
    .end local v0    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_4
    :goto_0
    nop

    .line 1893
    return-void

    .line 1890
    :catch_0
    move-exception v0

    .line 1891
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3158
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 3160
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    .line 3161
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .local v1, "callState":Lcom/android/internal/telephony/Call$State;
    goto :goto_0

    .line 3167
    .end local v1    # "callState":Lcom/android/internal/telephony/Call$State;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    .line 3169
    .restart local v1    # "callState":Lcom/android/internal/telephony/Call$State;
    :goto_0
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/Call$State;)I

    move-result v2

    .line 3171
    .local v2, "cause":I
    if-eqz v0, :cond_1

    .line 3172
    nop

    .line 3173
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPreciseDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result v3

    .line 3172
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPreciseDisconnectCause(I)V

    .line 3176
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, p1, v3, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 3177
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1731
    const-string v0, "sendDtmf"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1733
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1734
    .local v0, "imscall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    .line 1735
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall;->sendDtmf(CLandroid/os/Message;)V

    .line 1737
    :cond_0
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1896
    const-string v0, "sendUSSD"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1899
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    .line 1900
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->sendUssd(Ljava/lang/String;)V

    .line 1901
    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1902
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1903
    return-void

    .line 1906
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v0, :cond_1

    .line 1907
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 1908
    return-void

    .line 1911
    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1912
    .local v1, "callees":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcom/android/ims/ImsManager;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 1914
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    const-string v2, "dialstring"

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1917
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/ims/ImsManager;->makeCall(Landroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1922
    .end local v0    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .end local v1    # "callees":[Ljava/lang/String;
    goto :goto_0

    .line 1918
    :catch_0
    move-exception v0

    .line 1919
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUSSD : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1920
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 1921
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->retryGetImsService()V

    .line 1923
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public setAlwaysPlayRemoteHoldTone(Z)V
    .locals 0
    .param p1, "shouldPlayRemoteHoldTone"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4181
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAlwaysPlayRemoteHoldTone:Z

    .line 4182
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 0
    .param p1, "isDataEnabled"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4096
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    .line 4097
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .line 1712
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    .line 1713
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->setMute(Z)V

    .line 1714
    return-void
.end method

.method public setPhoneNumberUtilsProxy(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;)V
    .locals 0
    .param p1, "phoneNumberUtilsProxy"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 769
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumberUtilsProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;

    .line 770
    return-void
.end method

.method public setRetryTimeout(Lcom/android/ims/ImsManager$Connector$RetryTimeout;)V
    .locals 1
    .param p1, "retryTimeout"    # Lcom/android/ims/ImsManager$Connector$RetryTimeout;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

    iput-object p1, v0, Lcom/android/ims/ImsManager$Connector;->mRetryTimeout:Lcom/android/ims/ImsManager$Connector$RetryTimeout;

    .line 778
    return-void
.end method

.method public setSharedPreferenceProxy(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;)V
    .locals 0
    .param p1, "sharedPreferenceProxy"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 760
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

    .line 761
    return-void
.end method

.method public setSwitchingFgAndBgCallsValue(Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2094
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    .line 2095
    return-void
.end method

.method public setTtyMode(I)V
    .locals 3
    .param p1, "ttyMode"    # I

    .line 1679
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v0, :cond_0

    .line 1680
    const-string v0, "ImsPhoneCallTracker"

    const-string v1, "ImsManager is null when setting TTY mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    return-void

    .line 1685
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setTtyMode(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1689
    goto :goto_0

    .line 1686
    :catch_0
    move-exception v0

    .line 1687
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTtyMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1688
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->retryGetImsService()V

    .line 1690
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 3
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 1697
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v0, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 1699
    return-void

    .line 1703
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/ims/ImsManager;->setUiTTYMode(Landroid/content/Context;ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1708
    goto :goto_0

    .line 1704
    :catch_0
    move-exception v0

    .line 1705
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUITTYMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1706
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 1707
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->retryGetImsService()V

    .line 1709
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .line 1741
    const-string v0, "startDtmf"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1743
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1744
    .local v0, "imscall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    .line 1745
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->startDtmf(C)V

    goto :goto_0

    .line 1747
    :cond_0
    const-string v1, "startDtmf : no foreground call"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1749
    :goto_0
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .line 1753
    const-string v0, "stopDtmf"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1755
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1756
    .local v0, "imscall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    .line 1757
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->stopDtmf()V

    goto :goto_0

    .line 1759
    :cond_0
    const-string v1, "stopDtmf : no foreground call"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1761
    :goto_0
    return-void
.end method

.method public switchWaitingOrHoldingAndActive()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1417
    const-string v0, "switchWaitingOrHoldingAndActive"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1419
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_6

    .line 1423
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_4

    .line 1424
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1425
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_3

    .line 1431
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1433
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1435
    .local v1, "switchingWithWaitingCall":Z
    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    .line 1436
    if-eqz v1, :cond_1

    .line 1437
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    goto :goto_1

    .line 1439
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    .line 1441
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1446
    :try_start_0
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->hold()V

    .line 1447
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    .line 1451
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/ImsCall;

    if-nez v3, :cond_2

    .line 1452
    const-string v3, "mCallExpectedToResume is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1453
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1458
    :cond_2
    nop

    .line 1459
    .end local v0    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v1    # "switchingWithWaitingCall":Z
    goto :goto_2

    .line 1455
    .restart local v0    # "imsCall":Lcom/android/ims/ImsCall;
    .restart local v1    # "switchingWithWaitingCall":Z
    :catch_0
    move-exception v2

    .line 1456
    .local v2, "e":Lcom/android/ims/ImsException;
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1457
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v2}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1426
    .end local v1    # "switchingWithWaitingCall":Z
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :cond_3
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "no ims call"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1459
    .end local v0    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_5

    .line 1460
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->resumeWaitingOrHolding()V

    .line 1462
    :cond_5
    :goto_2
    return-void

    .line 1420
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 900
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 888
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 889
    return-void
.end method

.method public unregisterPhoneStateListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;

    .line 3796
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3797
    return-void
.end method

.method public updateCarrierConfigCache(Landroid/os/PersistableBundle;)V
    .locals 11
    .param p1, "carrierConfig"    # Landroid/os/PersistableBundle;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1156
    const-string v0, "allow_emergency_video_calls_bool"

    .line 1157
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    .line 1158
    const-string v0, "treat_downgraded_video_calls_as_video_calls_bool"

    .line 1159
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTreatDowngradedVideoCallsAsVideoCalls:Z

    .line 1161
    const-string v0, "drop_video_call_when_answering_audio_call_bool"

    .line 1162
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDropVideoCallWhenAnsweringAudioCall:Z

    .line 1164
    const-string v0, "allow_add_call_during_video_call"

    .line 1165
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    .line 1167
    const-string v0, "allow_holding_video_call"

    .line 1168
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    .line 1170
    const-string v0, "notify_vt_handover_to_wifi_failure_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    .line 1172
    const-string v0, "support_downgrade_vt_to_audio_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportDowngradeVtToAudio:Z

    .line 1174
    const-string v0, "notify_handover_video_from_wifi_to_lte_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromWifiToLTE:Z

    .line 1176
    const-string v0, "notify_handover_video_from_lte_to_wifi_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromLTEToWifi:Z

    .line 1178
    const-string v0, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIgnoreDataEnabledChangedForVideoCalls:Z

    .line 1180
    const-string v0, "vilte_data_is_metered_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    .line 1182
    const-string v0, "support_pause_ims_video_calls_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    .line 1184
    const-string v0, "always_play_remote_hold_tone_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAlwaysPlayRemoteHoldTone:Z

    .line 1186
    const-string v0, "ignore_reset_ut_capability_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIgnoreResetUtCapability:Z

    .line 1188
    const-string v0, "auto_retry_failed_wifi_emergency_call"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAutoRetryFailedWifiEmergencyCall:Z

    .line 1191
    const-string v0, "ims_reasoninfo_mapping_string_array"

    .line 1192
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1193
    .local v0, "mappings":[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 1194
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 1195
    .local v4, "mapping":Ljava/lang/String;
    const-string v5, "|"

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1196
    .local v5, "values":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 1197
    goto :goto_3

    .line 1202
    :cond_0
    :try_start_0
    aget-object v6, v5, v2

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1203
    const/4 v6, 0x0

    .local v6, "fromCode":Ljava/lang/Integer;
    goto :goto_1

    .line 1205
    .end local v6    # "fromCode":Ljava/lang/Integer;
    :cond_1
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1207
    .restart local v6    # "fromCode":Ljava/lang/Integer;
    :goto_1
    const/4 v7, 0x1

    aget-object v7, v5, v7

    .line 1208
    .local v7, "message":Ljava/lang/String;
    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1210
    .local v8, "toCode":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v6, v7, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addReasonCodeRemapping(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1211
    nop

    .line 1212
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loaded ImsReasonInfo mapping : fromCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    const-string v9, "any"

    goto :goto_2

    .line 1213
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " ; message = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ; toCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1211
    :goto_2
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    .end local v6    # "fromCode":Ljava/lang/Integer;
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "toCode":I
    goto :goto_3

    .line 1214
    :catch_0
    move-exception v6

    .line 1215
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid ImsReasonInfo mapping found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1194
    .end local v4    # "mapping":Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1219
    :cond_3
    const-string v1, "No carrier ImsReasonInfo mappings defined."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1221
    :cond_4
    return-void
.end method
