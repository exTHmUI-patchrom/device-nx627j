.class public Lcom/android/internal/telephony/ServiceStateTracker;
.super Landroid/os/Handler;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;,
        Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    }
.end annotation


# static fields
.field private static final ACTION_RADIO_OFF:Ljava/lang/String; = "android.intent.action.ACTION_RADIO_OFF"

.field public static final CS_DISABLED:I = 0x3ec

.field public static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field public static final CS_ENABLED:I = 0x3eb

.field public static final CS_NORMAL_ENABLED:I = 0x3ed

.field public static final CS_NOTIFICATION:I = 0x3e7

.field public static final CS_REJECT_CAUSE_ENABLED:I = 0x7d1

.field public static final CS_REJECT_CAUSE_NOTIFICATION:I = 0x6f

.field static final DBG:Z = true

.field public static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field public static final DEFAULT_MNC:Ljava/lang/String; = "00"

.field protected static final EVENT_ALL_DATA_DISCONNECTED:I = 0x31

.field protected static final EVENT_CDMA_PRL_VERSION_CHANGED:I = 0x28

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x27

.field protected static final EVENT_CHANGE_IMS_STATE:I = 0x2d

.field protected static final EVENT_CHECK_REPORT_GPRS:I = 0x16

.field protected static final EVENT_ERI_FILE_LOADED:I = 0x24

.field protected static final EVENT_GET_CELL_INFO_LIST:I = 0x2b

.field protected static final EVENT_GET_LOC_DONE:I = 0xf

.field protected static final EVENT_GET_PREFERRED_NETWORK_TYPE:I = 0x13

.field protected static final EVENT_GET_SIGNAL_STRENGTH:I = 0x3

.field public static final EVENT_ICC_CHANGED:I = 0x2a

.field protected static final EVENT_IMS_CAPABILITY_CHANGED:I = 0x30

.field protected static final EVENT_IMS_SERVICE_STATE_CHANGED:I = 0x35

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0x2e

.field protected static final EVENT_IMS_STATE_DONE:I = 0x2f

.field protected static final EVENT_LOCATION_UPDATES_ENABLED:I = 0x12

.field protected static final EVENT_NETWORK_STATE_CHANGED:I = 0x2

.field protected static final EVENT_NITZ_TIME:I = 0xb

.field protected static final EVENT_NV_READY:I = 0x23

.field protected static final EVENT_OTA_PROVISION_STATUS_CHANGE:I = 0x25

.field protected static final EVENT_PHONE_TYPE_SWITCHED:I = 0x32

.field protected static final EVENT_PHYSICAL_CHANNEL_CONFIG:I = 0x37

.field protected static final EVENT_POLL_SIGNAL_STRENGTH:I = 0xa

.field protected static final EVENT_POLL_STATE_CDMA_SUBSCRIPTION:I = 0x22

.field protected static final EVENT_POLL_STATE_GPRS:I = 0x5

.field protected static final EVENT_POLL_STATE_NETWORK_SELECTION_MODE:I = 0xe

.field protected static final EVENT_POLL_STATE_OPERATOR:I = 0x6

.field protected static final EVENT_POLL_STATE_REGISTRATION:I = 0x4

.field protected static final EVENT_RADIO_ON:I = 0x29

.field protected static final EVENT_RADIO_POWER_FROM_CARRIER:I = 0x33

.field protected static final EVENT_RADIO_POWER_OFF_DONE:I = 0x36

.field protected static final EVENT_RADIO_STATE_CHANGED:I = 0x1

.field protected static final EVENT_RESET_PREFERRED_NETWORK_TYPE:I = 0x15

.field protected static final EVENT_RESTRICTED_STATE_CHANGED:I = 0x17

.field protected static final EVENT_RUIM_READY:I = 0x1a

.field protected static final EVENT_RUIM_RECORDS_LOADED:I = 0x1b

.field protected static final EVENT_SET_PREFERRED_NETWORK_TYPE:I = 0x14

.field protected static final EVENT_SET_RADIO_POWER_OFF:I = 0x26

.field protected static final EVENT_SIGNAL_STRENGTH_UPDATE:I = 0xc

.field protected static final EVENT_SIM_READY:I = 0x11

.field protected static final EVENT_SIM_RECORDS_LOADED:I = 0x10

.field protected static final EVENT_UNSOL_CELL_INFO_LIST:I = 0x2c

.field private static final INVALID_LTE_EARFCN:I = -0x1

.field public static final INVALID_MCC:Ljava/lang/String; = "000"

.field private static final LAST_CELL_INFO_LIST_MAX_AGE_MS:J = 0x7d0L

.field static final LOG_TAG:Ljava/lang/String; = "SST"

.field private static final MS_PER_HOUR:I = 0x36ee80

.field private static final POLL_PERIOD_MILLIS:I = 0x4e20

.field private static final PROP_FORCE_ROAMING:Ljava/lang/String; = "telephony.test.forceRoaming"

.field public static final PS_DISABLED:I = 0x3ea

.field public static final PS_ENABLED:I = 0x3e9

.field public static final PS_NOTIFICATION:I = 0x378

.field protected static final REGISTRATION_DENIED_AUTH:Ljava/lang/String; = "Authentication Failure"

.field protected static final REGISTRATION_DENIED_GEN:Ljava/lang/String; = "General"

.field public static final UNACTIVATED_MIN2_VALUE:Ljava/lang/String; = "000000"

.field public static final UNACTIVATED_MIN_VALUE:Ljava/lang/String; = "1111110111"

.field private static final VDBG:Z = false

.field private static final WECHAT_PKG:Ljava/lang/String; = "com.tencent.mm"


# instance fields
.field private mAlarmSwitch:Z

.field private final mAttachLog:Landroid/util/LocalLog;

.field protected mAttachedRegistrants:Landroid/os/RegistrantList;

.field private mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

.field private mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field public mCellLoc:Landroid/telephony/CellLocation;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final mCr:Landroid/content/ContentResolver;

.field private mCurDataSpn:Ljava/lang/String;

.field private mCurPlmn:Ljava/lang/String;

.field private mCurShowPlmn:Z

.field private mCurShowSpn:Z

.field private mCurSpn:Ljava/lang/String;

.field private mCurrentCarrier:Ljava/lang/String;

.field private mCurrentOtaspMode:I

.field private mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

.field private mDataRoaming:Z

.field private mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

.field private mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

.field private mDefaultRoamingIndicator:I

.field private mDesiredPowerState:Z

.field protected mDetachedRegistrants:Landroid/os/RegistrantList;

.field private mDeviceShuttingDown:Z

.field private mDontPollSignalStrength:Z

.field private mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmergencyOnly:Z

.field private mGsmRoaming:Z

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

.field private mHomeNetworkId:[I

.field private mHomeSystemId:[I

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mImsRegistered:Z

.field private mImsRegistrationOnOff:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsEriTextLoaded:Z

.field private mIsInPrl:Z

.field private mIsMinInfoReady:Z

.field private mIsSimReady:Z

.field private mIsSubscriptionFromRuim:Z

.field private mLastCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCellInfoListTime:J

.field private mLastPhysicalChannelConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSignalStrength:Landroid/telephony/SignalStrength;

.field protected mLocaleChanged:Z

.field private final mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

.field private mLocationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLteRsrpBoost:I

.field private final mLteRsrpBoostLock:Ljava/lang/Object;

.field private mMaxDataCalls:I

.field private mMdn:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field protected mNBSSTNotifyDelay:Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;

.field private mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

.field private mNetworkDetachedRegistrants:Landroid/os/RegistrantList;

.field private mNewCellLoc:Landroid/telephony/CellLocation;

.field private mNewMaxDataCalls:I

.field private mNewReasonDataDenied:I

.field private mNewRejectCode:I

.field protected mNewSS:Landroid/telephony/ServiceState;

.field private final mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

.field private mNotification:Landroid/app/Notification;

.field private final mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

.field private mPendingRadioPowerOffAfterDataOff:Z

.field private mPendingRadioPowerOffAfterDataOffTag:I

.field protected final mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field private final mPhoneTypeLog:Landroid/util/LocalLog;

.field public mPollingContext:[I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPowerOffDelayNeed:Z

.field private mPreferredNetworkType:I

.field private mPrevSubId:I

.field private mPrlVersion:Ljava/lang/String;

.field private mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

.field private mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

.field private mRadioDisabledByCarrier:Z

.field private mRadioOffIntent:Landroid/app/PendingIntent;

.field private final mRadioPowerLog:Landroid/util/LocalLog;

.field private final mRatLog:Landroid/util/LocalLog;

.field private final mRatRatcheter:Lcom/android/internal/telephony/RatRatcheter;

.field private mReasonDataDenied:I

.field private final mRegStateManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/NetworkRegistrationManager;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrationDeniedReason:Ljava/lang/String;

.field private mRegistrationState:I

.field private mRejectCode:I

.field private mReportedGprsNoReg:Z

.field public mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

.field private mRoamingIndicator:I

.field private final mRoamingLog:Landroid/util/LocalLog;

.field public mSS:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSpnUpdatePending:Z

.field private mStartedGprsRegCheck:Z

.field public mSubId:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

.field private mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mVoiceCapable:Z

.field private mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

.field private mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

.field private mWantContinuousLocationUpdates:Z

.field private mWantSingleLocationUpdate:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 11
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 504
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 130
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 131
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 144
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 149
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 150
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    .line 171
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    .line 173
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 174
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 175
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 176
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 177
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    .line 178
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    .line 179
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    .line 180
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    .line 181
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Landroid/os/RegistrantList;

    .line 182
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    .line 183
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    .line 186
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 187
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 254
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 255
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    .line 257
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    .line 258
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 260
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    .line 261
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    .line 263
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    .line 264
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 265
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    .line 266
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 267
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    .line 268
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    .line 269
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    .line 271
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    .line 273
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    .line 277
    new-instance v4, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$1;)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    .line 286
    new-instance v4, Landroid/util/LocalLog;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingLog:Landroid/util/LocalLog;

    .line 287
    new-instance v4, Landroid/util/LocalLog;

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachLog:Landroid/util/LocalLog;

    .line 288
    new-instance v4, Landroid/util/LocalLog;

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneTypeLog:Landroid/util/LocalLog;

    .line 289
    new-instance v4, Landroid/util/LocalLog;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatLog:Landroid/util/LocalLog;

    .line 290
    new-instance v4, Landroid/util/LocalLog;

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerLog:Landroid/util/LocalLog;

    .line 376
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    .line 377
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    .line 378
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    .line 379
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    .line 392
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    .line 397
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    .line 401
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    .line 427
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSimReady:Z

    .line 429
    new-instance v4, Lcom/android/internal/telephony/ServiceStateTracker$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/ServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 466
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    .line 473
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    .line 474
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    .line 476
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    .line 477
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    .line 480
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 481
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsEriTextLoaded:Z

    .line 482
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 486
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    .line 489
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    .line 492
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    .line 497
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    .line 499
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoost:I

    .line 501
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoostLock:Ljava/lang/Object;

    .line 719
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 505
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeNitzStateMachine(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/NitzStateMachine;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    .line 506
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 507
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 509
    new-instance v3, Lcom/android/internal/telephony/RatRatcheter;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/RatRatcheter;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatRatcheter:Lcom/android/internal/telephony/RatRatcheter;

    .line 510
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11200d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    .line 512
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 514
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v4, 0x2a

    invoke-virtual {v3, p0, v4, v0}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 515
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xc

    invoke-interface {v3, p0, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 516
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x2c

    invoke-interface {v3, p0, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 517
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x37

    invoke-interface {v3, p0, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForPhysicalChannelConfiguration(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 519
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 520
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 521
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    .line 522
    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 523
    new-instance v3, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v3}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 525
    new-instance v3, Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-direct {v3}, Lcom/android/internal/telephony/dataconnection/TransportManager;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    .line 527
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 528
    .local v4, "transportType":I
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-direct {v6, v4, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;-><init>(ILcom/android/internal/telephony/Phone;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 530
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v6, 0x2

    invoke-virtual {v5, p0, v6, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->registerForNetworkRegistrationStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 532
    .end local v4    # "transportType":I
    goto :goto_0

    .line 536
    :cond_0
    new-instance v3, Landroid/os/HandlerThread;

    const-class v4, Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 537
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 538
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 539
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    .line 538
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeLocaleTracker(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)Lcom/android/internal/telephony/LocaleTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    .line 541
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x2e

    invoke-interface {v3, p0, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 542
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 543
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb

    invoke-interface {v3, p0, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 545
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 547
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 548
    .local v3, "airplaneMode":I
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v5, "enable_cellular_on_boot"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 550
    .local v4, "enableCellularOnBoot":I
    if-lez v4, :cond_1

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 551
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerLog:Landroid/util/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init : airplane mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " enableCellularOnBoot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 555
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 556
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v5

    const/4 v6, 0x1

    const/16 v8, 0x33

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/CarrierActionAgent;->registerForCarrierAction(ILandroid/os/Handler;ILjava/lang/Object;Z)V

    .line 560
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 561
    .local v1, "context":Landroid/content/Context;
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 562
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 564
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    move-object v5, v6

    .line 565
    const-string v6, "android.intent.action.ACTION_RADIO_OFF"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 567
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    move-object v5, v6

    .line 568
    const-string v6, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 569
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 572
    new-instance v6, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    iput-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNBSSTNotifyDelay:Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;

    .line 574
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyOtaspChanged(I)V

    .line 576
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x17

    invoke-interface {v2, p0, v6, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 577
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneType()V

    .line 579
    new-instance v2, Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {v2, p1, p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/ServiceStateTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 581
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/16 v6, 0x65

    invoke-virtual {p0, v2, v6, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 583
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/16 v6, 0x66

    invoke-virtual {p0, v2, v6, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 585
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/16 v6, 0x67

    invoke-virtual {p0, v2, v6, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 587
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/16 v6, 0x68

    invoke-virtual {p0, v2, v6, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 589
    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ServiceStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p1, "x1"    # I

    .line 121
    iput p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/ServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/ServiceStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p1, "x1"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/ServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/ServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onCarrierConfigChanged()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/ServiceStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p1, "x1"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    return p1
.end method

.method private cancelAllNotifications()V
    .locals 3

    .line 3686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAllNotifications: mPrevSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3687
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3688
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3689
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3690
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x378

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 3691
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e7

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 3692
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 3694
    :cond_0
    return-void
.end method

.method private containsEarfcnInEarfcnRange(Ljava/util/ArrayList;I)Z
    .locals 3
    .param p2, "earfcn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;I)Z"
        }
    .end annotation

    .line 4129
    .local p1, "earfcnPairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    if-eqz p1, :cond_1

    .line 4130
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 4131
    .local v1, "earfcnPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt p2, v2, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt p2, v2, :cond_0

    .line 4132
    const/4 v0, 0x1

    return v0

    .line 4134
    .end local v1    # "earfcnPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 4137
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z
    .locals 6
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 3416
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 3417
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3418
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 3419
    .local v0, "simNumeric":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3420
    .local v1, "operatorNumeric":Ljava/lang/String;
    const/4 v2, 0x1

    .line 3423
    .local v2, "equalsMcc":Z
    const/4 v3, 0x3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3424
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 3426
    goto :goto_0

    .line 3425
    :catch_0
    move-exception v3

    .line 3427
    :goto_0
    return v2
.end method

.method private dumpCellInfoList(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4475
    const-string v0, " mLastCellInfoList={"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4476
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4477
    const/4 v0, 0x1

    .line 4478
    .local v0, "first":Z
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    .line 4479
    .local v2, "info":Landroid/telephony/CellInfo;
    if-nez v0, :cond_0

    .line 4480
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4482
    :cond_0
    const/4 v0, 0x0

    .line 4483
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4484
    .end local v2    # "info":Landroid/telephony/CellInfo;
    goto :goto_0

    .line 4486
    .end local v0    # "first":Z
    :cond_1
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4487
    return-void
.end method

.method private dumpEarfcnPairList(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4457
    const-string v0, " mEarfcnPairListForRsrpBoost={"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4458
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 4459
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4460
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 4461
    .local v2, "earfcnPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v3, "("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4462
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4463
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4464
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4465
    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4466
    add-int/lit8 v0, v0, -0x1

    if-eqz v0, :cond_0

    .line 4467
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4469
    .end local v2    # "earfcnPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 4471
    .end local v0    # "i":I
    :cond_1
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4472
    return-void
.end method

.method private fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "sid"    # I

    .line 3308
    if-gtz p2, :cond_0

    .line 3310
    return-object p1

    .line 3319
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzStateMachine;->getSavedTimeZoneId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3320
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzStateMachine;->getSavedTimeZoneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 3321
    .local v0, "tzone":Ljava/util/TimeZone;
    const/4 v2, 0x1

    .local v2, "isNitzTimeZone":Z
    goto :goto_2

    .line 3323
    .end local v0    # "tzone":Ljava/util/TimeZone;
    .end local v2    # "isNitzTimeZone":Z
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzStateMachine;->getCachedNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v0

    .line 3324
    .local v0, "lastNitzData":Lcom/android/internal/telephony/NitzData;
    if-nez v0, :cond_2

    .line 3325
    const/4 v2, 0x0

    .local v2, "tzone":Ljava/util/TimeZone;
    goto :goto_1

    .line 3327
    .end local v2    # "tzone":Ljava/util/TimeZone;
    :cond_2
    invoke-static {v0}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->guessZoneByNitzStatic(Lcom/android/internal/telephony/NitzData;)Ljava/util/TimeZone;

    move-result-object v2

    .line 3329
    .restart local v2    # "tzone":Ljava/util/TimeZone;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fixUnknownMcc(): guessNitzTimeZone returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3330
    if-nez v2, :cond_3

    move-object v4, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3329
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3333
    :goto_1
    nop

    .end local v0    # "lastNitzData":Lcom/android/internal/telephony/NitzData;
    move-object v0, v2

    move v2, v1

    .line 3336
    .local v0, "tzone":Ljava/util/TimeZone;
    .local v2, "isNitzTimeZone":Z
    :goto_2
    const/4 v3, 0x0

    .line 3337
    .local v3, "utcOffsetHours":I
    if-eqz v0, :cond_4

    .line 3338
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    const v5, 0x36ee80

    div-int v3, v4, v5

    .line 3341
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v4}, Lcom/android/internal/telephony/NitzStateMachine;->getCachedNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v4

    .line 3342
    .local v4, "nitzData":Lcom/android/internal/telephony/NitzData;
    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/internal/telephony/NitzData;->isDst()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v5

    goto :goto_3

    :cond_5
    move v6, v1

    .line 3343
    .local v6, "isDst":Z
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    if-eqz v6, :cond_6

    move v1, v5

    nop

    :cond_6
    invoke-virtual {v7, p2, v3, v1, v2}, Lcom/android/internal/telephony/HbpcdUtils;->getMcc(IIIZ)I

    move-result v1

    .line 3344
    .local v1, "mcc":I
    if-lez v1, :cond_7

    .line 3345
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "00"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3347
    :cond_7
    return-object p1
.end method

.method private getBandwidthsFromConfigs(Ljava/util/List;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)[I"
        }
    .end annotation

    .line 1543
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/-$$Lambda$ServiceStateTracker$WWHOcG5P4-jgjzPPgLwm-wN15OM;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$ServiceStateTracker$WWHOcG5P4-jgjzPPgLwm-wN15OM;

    .line 1544
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/-$$Lambda$ServiceStateTracker$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$ServiceStateTracker$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    .line 1545
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 1546
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 1543
    return-object v0
.end method

.method private getCarrierConfig()Landroid/os/PersistableBundle;
    .locals 2

    .line 4866
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    .line 4867
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 4868
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v0, :cond_0

    .line 4870
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 4871
    .local v1, "config":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    .line 4872
    return-object v1

    .line 4876
    .end local v1    # "config":Landroid/os/PersistableBundle;
    :cond_0
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1
.end method

.method private getLteEarfcn(Landroid/telephony/CellIdentity;)I
    .locals 3
    .param p1, "cellIdentity"    # Landroid/telephony/CellIdentity;

    .line 1012
    const/4 v0, -0x1

    .line 1013
    .local v0, "lteEarfcn":I
    if-eqz p1, :cond_1

    .line 1014
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1016
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result v0

    .line 1017
    nop

    .line 1025
    :cond_1
    :goto_0
    return v0
.end method

.method private getSubscriptionInfoAndStartPollingThreads()V
    .locals 2

    .line 4438
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 4441
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 4442
    return-void
.end method

.method private getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .line 3888
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3889
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0

    .line 3892
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method private handleCdmaSubscriptionSource(I)V
    .locals 2
    .param p1, "newSubscriptionSource"    # I

    .line 4445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscription Source : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4446
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 4448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFromRuim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4449
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->saveCdmaSubscriptionSource(I)V

    .line 4450
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v0, :cond_1

    .line 4452
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4454
    :cond_1
    return-void
.end method

.method private iccCardExists()Z
    .locals 3

    .line 4335
    const/4 v0, 0x0

    .line 4336
    .local v0, "iccCardExist":Z
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 4337
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 4339
    :cond_1
    return v0
.end method

.method private isGprsConsistent(II)Z
    .locals 1
    .param p1, "dataRegState"    # I
    .param p2, "voiceRegState"    # I

    .line 3358
    if-nez p2, :cond_1

    if-nez p1, :cond_0

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

.method private isHomeSid(I)Z
    .locals 3
    .param p1, "sid"    # I

    .line 1564
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1565
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1566
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_0

    .line 1567
    const/4 v1, 0x1

    return v1

    .line 1565
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1571
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method private isInHomeSidNid(II)Z
    .locals 5
    .param p1, "sid"    # I
    .param p2, "nid"    # I

    .line 3268
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSidsAllZeros()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3271
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    array-length v0, v0

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    array-length v2, v2

    if-eq v0, v2, :cond_1

    return v1

    .line 3273
    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 3275
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 3278
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    aget v3, v3, v2

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    aget v3, v3, v2

    const v4, 0xffff

    if-eq v3, v4, :cond_3

    if-eqz p2, :cond_3

    if-eq p2, v4, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    .line 3281
    :cond_3
    return v1

    .line 3275
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3285
    .end local v2    # "i":I
    :cond_5
    return v0
.end method

.method private isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .line 4815
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4817
    .local v0, "networks":[Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4818
    const/4 v1, 0x1

    return v1

    .line 4820
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isInvalidOperatorNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 3303
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    const-string v0, "000"

    .line 3304
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3303
    :goto_1
    return v0
.end method

.method private isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z
    .locals 8
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 3442
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3443
    .local v0, "operatorNumeric":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    .line 3444
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 3445
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v2, 0x0

    .line 3446
    .local v2, "numericArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3447
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 3448
    .local v3, "config":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_0

    .line 3449
    const-string v4, "non_roaming_operator_string_array"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3453
    .end local v3    # "config":Landroid/os/PersistableBundle;
    :cond_0
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 3457
    :cond_1
    array-length v3, v2

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 3458
    .local v6, "numeric":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3459
    const/4 v3, 0x1

    return v3

    .line 3457
    .end local v6    # "numeric":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3462
    :cond_3
    return v4

    .line 3454
    :cond_4
    :goto_1
    return v4
.end method

.method private isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z
    .locals 8
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 3466
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3467
    .local v0, "operatorNumeric":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    .line 3468
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 3469
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v2, 0x0

    .line 3470
    .local v2, "numericArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3471
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 3472
    .local v3, "config":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_0

    .line 3473
    const-string v4, "roaming_operator_string_array"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3477
    .end local v3    # "config":Landroid/os/PersistableBundle;
    :cond_0
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 3481
    :cond_1
    array-length v3, v2

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 3482
    .local v6, "numeric":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3483
    const/4 v3, 0x1

    return v3

    .line 3481
    .end local v6    # "numeric":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3486
    :cond_3
    return v4

    .line 3478
    :cond_4
    :goto_1
    return v4
.end method

.method private isRoamIndForHomeSystem(Ljava/lang/String;)Z
    .locals 6
    .param p1, "roamInd"    # Ljava/lang/String;

    .line 2171
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2172
    const v1, 0x107001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2173
    .local v0, "homeRoamIndicators":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRoamIndForHomeSystem: homeRoamIndicators="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2175
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2178
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 2179
    .local v4, "homeRoamInd":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2180
    const/4 v1, 0x1

    return v1

    .line 2178
    .end local v4    # "homeRoamInd":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2184
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRoamIndForHomeSystem: No match found against list for roamInd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2185
    return v1

    .line 2189
    :cond_2
    const-string v2, "isRoamIndForHomeSystem: No list found"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2190
    return v1
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 1
    .param p1, "cdmaRoaming"    # Z
    .param p2, "s"    # Landroid/telephony/ServiceState;

    .line 1847
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameOperatorNameFromSimAndSS(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSameNamedOperators(Landroid/telephony/ServiceState;)Z
    .locals 1
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 3406
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameOperatorNameFromSimAndSS(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSameOperatorNameFromSimAndSS(Landroid/telephony/ServiceState;)Z
    .locals 7
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 3383
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 3384
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3385
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 3389
    .local v0, "spn":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 3390
    .local v1, "onsl":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    .line 3392
    .local v2, "onss":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 3393
    .local v3, "equalsOnsl":Z
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    .line 3395
    .local v6, "equalsOnss":Z
    :goto_1
    if-nez v3, :cond_3

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v4, v5

    :goto_3
    return v4
.end method

.method private isSimAbsent()Z
    .locals 3

    .line 1529
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    .line 1530
    const/4 v0, 0x1

    .line 1536
    .local v0, "simAbsent":Z
    move v1, v0

    goto :goto_0

    .line 1532
    .end local v0    # "simAbsent":Z
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 1533
    .local v0, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v0, :cond_1

    .line 1534
    const/4 v1, 0x1

    .local v1, "simAbsent":Z
    goto :goto_0

    .line 1536
    .end local v1    # "simAbsent":Z
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .end local v0    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .restart local v1    # "simAbsent":Z
    :goto_0
    move v0, v1

    .line 1539
    .end local v1    # "simAbsent":Z
    .local v0, "simAbsent":Z
    return v0
.end method

.method private static isValidLteBandwidthKhz(I)Z
    .locals 1
    .param p0, "bandwidth"    # I

    .line 2092
    const/16 v0, 0x578

    if-eq p0, v0, :cond_0

    const/16 v0, 0xbb8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1388

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2710

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a98

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4e20

    if-eq p0, v0, :cond_0

    .line 2101
    const/4 v0, 0x0

    return v0

    .line 2099
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$WWHOcG5P4-jgjzPPgLwm-wN15OM(Landroid/telephony/PhysicalChannelConfig;)I
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/PhysicalChannelConfig;->getCellBandwidthDownlink()I

    move-result p0

    return p0
.end method

.method private logAttachChange()V
    .locals 2

    .line 2661
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachLog:Landroid/util/LocalLog;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2662
    return-void
.end method

.method private logPhoneTypeChange()V
    .locals 2

    .line 2665
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneTypeLog:Landroid/util/LocalLog;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2666
    return-void
.end method

.method private logRatChange()V
    .locals 2

    .line 2669
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatLog:Landroid/util/LocalLog;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2670
    return-void
.end method

.method private logRoamingChange()V
    .locals 2

    .line 2657
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingLog:Landroid/util/LocalLog;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2658
    return-void
.end method

.method private modemTriggeredPollState()V
    .locals 1

    .line 2752
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState(Z)V

    .line 2753
    return-void
.end method

.method private networkCountryIsoChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "newCountryIsoCode"    # Ljava/lang/String;
    .param p2, "prevCountryIsoCode"    # Ljava/lang/String;

    .line 4317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4319
    const-string v0, "countryIsoChanged: no new country ISO code"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4321
    const/4 v0, 0x0

    return v0

    .line 4324
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4326
    const-string v0, "countryIsoChanged: no previous country ISO code"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4328
    return v1

    .line 4330
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method private notifyCdmaSubscriptionInfoReady()V
    .locals 1

    .line 3916
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 3917
    const-string v0, "CDMA_SUBSCRIPTION: call notifyRegistrants()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3918
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3920
    :cond_0
    return-void
.end method

.method private onCarrierConfigChanged()V
    .locals 2

    .line 4191
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4192
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 4193
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 4195
    .local v1, "config":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    .line 4196
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->updateLteEarfcnLists(Landroid/os/PersistableBundle;)V

    .line 4197
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->updateReportingCriteria(Landroid/os/PersistableBundle;)V

    .line 4199
    :cond_0
    return-void
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3497
    new-instance v0, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v0}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    .line 3499
    .local v0, "newRs":Lcom/android/internal/telephony/RestrictedState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestrictedStateChanged: E rs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3501
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_14

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_14

    .line 3502
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3504
    .local v1, "state":I
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 3508
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v2, v5, :cond_5

    .line 3509
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_3

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v4

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 3512
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_4

    move v3, v4

    nop

    :cond_4
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    .line 3516
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRestrictedStateChanged: new rs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3518
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3519
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3520
    const/16 v2, 0x3e9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 3521
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3522
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3523
    const/16 v2, 0x3ea

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    .line 3531
    :cond_7
    :goto_4
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v2

    const/16 v3, 0x3ed

    const/16 v4, 0x3ee

    const/16 v5, 0x3ec

    if-eqz v2, :cond_a

    .line 3532
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isAnyCsRestricted()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3534
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3535
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3537
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3538
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v2

    if-nez v2, :cond_13

    .line 3540
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3542
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v2

    const/16 v6, 0x3eb

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 3543
    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v2

    if-nez v2, :cond_d

    .line 3544
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isAnyCsRestricted()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3546
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3547
    :cond_b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3549
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3550
    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3552
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3554
    :cond_d
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 3555
    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3556
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isAnyCsRestricted()Z

    move-result v2

    if-nez v2, :cond_e

    .line 3558
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3559
    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3561
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3562
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3564
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3567
    :cond_10
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3569
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3570
    :cond_11
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3572
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3573
    :cond_12
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3575
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    .line 3579
    :cond_13
    :goto_5
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 3581
    .end local v1    # "state":I
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestrictedStateChanged: X rs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3582
    return-void
.end method

.method private pollStateDone()V
    .locals 47

    .line 2814
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2815
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateRoamingState()V

    .line 2818
    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string v1, "telephony.test.forceRoaming"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2819
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v3}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2820
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v3}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2822
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 2823
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->resetServiceStateInIwlanMode()V

    .line 2825
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    if-eqz v1, :cond_2

    .line 2826
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/TelephonyTester;->overrideServiceState(Landroid/telephony/ServiceState;)V

    .line 2830
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Poll ServiceState done:  oldSS=["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] newSS=["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] oldMaxDataCalls="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mNewMaxDataCalls="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " oldReasonDataDenied="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mNewReasonDataDenied="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2838
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2839
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2840
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 2842
    .local v1, "hasRegistered":Z
    :goto_0
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2843
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2844
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v2

    .line 2846
    .local v4, "hasDeregistered":Z
    :goto_1
    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2847
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2848
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    if-nez v5, :cond_5

    move v5, v3

    goto :goto_2

    :cond_5
    move v5, v2

    .line 2850
    .local v5, "hasDataAttached":Z
    :goto_2
    iget-object v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2851
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2852
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v6

    if-eqz v6, :cond_6

    move v6, v3

    goto :goto_3

    :cond_6
    move v6, v2

    .line 2854
    .local v6, "hasDataDetached":Z
    :goto_3
    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2855
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v7

    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v8

    if-eq v7, v8, :cond_7

    move v7, v3

    goto :goto_4

    :cond_7
    move v7, v2

    .line 2857
    .local v7, "hasDataRegStateChanged":Z
    :goto_4
    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2858
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v8

    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v9

    if-eq v8, v9, :cond_8

    move v8, v3

    goto :goto_5

    :cond_8
    move v8, v2

    .line 2860
    .local v8, "hasVoiceRegStateChanged":Z
    :goto_5
    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    iget-object v10, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v3

    .line 2864
    .local v9, "hasLocationChanged":Z
    iget-object v10, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v10

    if-nez v10, :cond_9

    move v10, v3

    goto :goto_6

    :cond_9
    move v10, v2

    .line 2866
    .local v10, "isDataInService":Z
    :goto_6
    if-eqz v10, :cond_a

    .line 2867
    iget-object v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatRatcheter:Lcom/android/internal/telephony/RatRatcheter;

    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v12, v13, v9}, Lcom/android/internal/telephony/RatRatcheter;->ratchet(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;Z)V

    .line 2870
    :cond_a
    if-eqz v9, :cond_b

    .line 2871
    iget-object v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2874
    :cond_b
    iget-object v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2875
    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v11

    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v12

    if-eq v11, v12, :cond_c

    move v11, v3

    goto :goto_7

    :cond_c
    move v11, v2

    .line 2877
    .local v11, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_7
    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2878
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v12

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v13

    if-eq v12, v13, :cond_d

    move v12, v3

    goto :goto_8

    :cond_d
    move v12, v2

    .line 2880
    .local v12, "hasRilDataRadioTechnologyChanged":Z
    :goto_8
    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13, v14}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v13

    xor-int/2addr v13, v3

    .line 2882
    .local v13, "hasChanged":Z
    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v14

    if-nez v14, :cond_e

    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v14

    if-eqz v14, :cond_e

    move v14, v3

    goto :goto_9

    :cond_e
    move v14, v2

    .line 2884
    .local v14, "hasVoiceRoamingOn":Z
    :goto_9
    iget-object v15, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v15

    if-eqz v15, :cond_f

    iget-object v15, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v15

    if-nez v15, :cond_f

    move v15, v3

    goto :goto_a

    :cond_f
    move v15, v2

    .line 2886
    .local v15, "hasVoiceRoamingOff":Z
    :goto_a
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_b

    :cond_10
    move v3, v2

    .line 2888
    .local v3, "hasDataRoamingOn":Z
    :goto_b
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    goto :goto_c

    :cond_11
    const/4 v2, 0x0

    .line 2890
    .local v2, "hasDataRoamingOff":Z
    :goto_c
    move/from16 v18, v10

    iget v10, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRejectCode:I

    .end local v10    # "isDataInService":Z
    .local v18, "isDataInService":Z
    move/from16 v19, v8

    iget v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRejectCode:I

    .end local v8    # "hasVoiceRegStateChanged":Z
    .local v19, "hasVoiceRegStateChanged":Z
    if-eq v10, v8, :cond_12

    const/4 v8, 0x1

    goto :goto_d

    :cond_12
    const/4 v8, 0x0

    .line 2892
    .local v8, "hasRejectCauseChanged":Z
    :goto_d
    iget-object v10, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v10

    move/from16 v20, v8

    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .end local v8    # "hasRejectCauseChanged":Z
    .local v20, "hasRejectCauseChanged":Z
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v8

    if-eq v10, v8, :cond_13

    const/4 v8, 0x1

    goto :goto_e

    :cond_13
    const/4 v8, 0x0

    .line 2894
    .local v8, "hasCssIndicatorChanged":Z
    :goto_e
    const/4 v10, 0x0

    .line 2895
    .local v10, "has4gHandoff":Z
    const/16 v21, 0x0

    .line 2896
    .local v21, "hasMultiApnSupport":Z
    const/16 v22, 0x0

    .line 2897
    .local v22, "hasLostMultiApnSupport":Z
    move/from16 v23, v10

    iget-object v10, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .end local v10    # "has4gHandoff":Z
    .local v23, "has4gHandoff":Z
    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v10

    move/from16 v24, v8

    .end local v8    # "hasCssIndicatorChanged":Z
    .local v24, "hasCssIndicatorChanged":Z
    if-eqz v10, :cond_1a

    .line 2898
    iget-object v10, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v10

    const/16 v8, 0xd

    if-nez v10, :cond_16

    iget-object v10, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2899
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v10

    invoke-static {v10}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v10

    if-eqz v10, :cond_14

    iget-object v10, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2900
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v10

    if-eq v10, v8, :cond_15

    :cond_14
    iget-object v10, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2903
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v10

    if-ne v10, v8, :cond_16

    iget-object v10, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2905
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v10

    invoke-static {v10}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v10

    if-eqz v10, :cond_16

    :cond_15
    const/4 v10, 0x1

    goto :goto_f

    :cond_16
    const/4 v10, 0x0

    .line 2907
    .end local v23    # "has4gHandoff":Z
    .restart local v10    # "has4gHandoff":Z
    :goto_f
    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v8

    invoke-static {v8}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v8

    if-nez v8, :cond_17

    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2908
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v8

    move/from16 v25, v10

    const/16 v10, 0xd

    if-ne v8, v10, :cond_18

    .end local v10    # "has4gHandoff":Z
    .local v25, "has4gHandoff":Z
    goto :goto_10

    .end local v25    # "has4gHandoff":Z
    .restart local v10    # "has4gHandoff":Z
    :cond_17
    move/from16 v25, v10

    .end local v10    # "has4gHandoff":Z
    .restart local v25    # "has4gHandoff":Z
    :goto_10
    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2911
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v8

    invoke-static {v8}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2912
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v8

    const/16 v10, 0xd

    if-eq v8, v10, :cond_18

    const/4 v8, 0x1

    goto :goto_11

    :cond_18
    const/4 v8, 0x0

    :goto_11
    move/from16 v21, v8

    .line 2915
    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2916
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v8

    const/4 v10, 0x4

    if-lt v8, v10, :cond_19

    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2918
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v8

    const/16 v10, 0x8

    if-gt v8, v10, :cond_19

    const/4 v8, 0x1

    goto :goto_12

    :cond_19
    const/4 v8, 0x0

    :goto_12
    move/from16 v22, v8

    .line 2923
    move/from16 v10, v21

    move/from16 v0, v22

    move/from16 v8, v25

    goto :goto_13

    .end local v25    # "has4gHandoff":Z
    .restart local v23    # "has4gHandoff":Z
    :cond_1a
    move/from16 v10, v21

    move/from16 v0, v22

    move/from16 v8, v23

    .end local v21    # "hasMultiApnSupport":Z
    .end local v22    # "hasLostMultiApnSupport":Z
    .end local v23    # "has4gHandoff":Z
    .local v0, "hasLostMultiApnSupport":Z
    .local v8, "has4gHandoff":Z
    .local v10, "hasMultiApnSupport":Z
    :goto_13
    move/from16 v26, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "hasLostMultiApnSupport":Z
    .local v26, "hasLostMultiApnSupport":Z
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v10

    const-string v10, "pollStateDone: hasRegistered="

    .end local v10    # "hasMultiApnSupport":Z
    .local v27, "hasMultiApnSupport":Z
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " hasDeregistered="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " hasDataAttached="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " hasDataDetached="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " hasDataRegStateChanged="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " hasRilVoiceRadioTechnologyChanged= "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " hasRilDataRadioTechnologyChanged="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " hasChanged="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " hasVoiceRoamingOn="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " hasVoiceRoamingOff="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " hasDataRoamingOn="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " hasDataRoamingOff="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " hasLocationChanged="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " has4gHandoff = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " hasMultiApnSupport="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v27    # "hasMultiApnSupport":Z
    .restart local v10    # "hasMultiApnSupport":Z
    move/from16 v28, v10

    const-string v10, " hasLostMultiApnSupport="

    .end local v10    # "hasMultiApnSupport":Z
    .local v28, "hasMultiApnSupport":Z
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v26    # "hasLostMultiApnSupport":Z
    .local v10, "hasLostMultiApnSupport":Z
    move/from16 v29, v10

    const-string v10, " hasCssIndicatorChanged="

    .end local v10    # "hasLostMultiApnSupport":Z
    .local v29, "hasLostMultiApnSupport":Z
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v24    # "hasCssIndicatorChanged":Z
    .local v10, "hasCssIndicatorChanged":Z
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v30, v9

    move/from16 v22, v29

    move-object/from16 v9, p0

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2944
    .end local v9    # "hasLocationChanged":Z
    .end local v29    # "hasLostMultiApnSupport":Z
    .restart local v22    # "hasLostMultiApnSupport":Z
    .local v30, "hasLocationChanged":Z
    const/16 v21, 0x2

    if-nez v19, :cond_1c

    if-eqz v7, :cond_1b

    goto :goto_14

    .line 2951
    :cond_1b
    move/from16 v31, v2

    move/from16 v32, v3

    goto :goto_16

    .line 2945
    :cond_1c
    :goto_14
    iget-object v0, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1d

    const v0, 0xc3c2

    goto :goto_15

    .line 2946
    :cond_1d
    const v0, 0xc3c4

    :goto_15
    move/from16 v31, v2

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .end local v2    # "hasDataRoamingOff":Z
    .local v31, "hasDataRoamingOff":Z
    move/from16 v32, v3

    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2947
    .end local v3    # "hasDataRoamingOn":Z
    .local v32, "hasDataRoamingOn":Z
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v17, 0x0

    aput-object v3, v2, v17

    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v16, 0x1

    aput-object v3, v2, v16

    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2948
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v21

    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v23, 0x3

    aput-object v3, v2, v23

    .line 2945
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2951
    :goto_16
    iget-object v0, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2955
    if-eqz v11, :cond_1f

    .line 2956
    const/4 v0, -0x1

    .line 2957
    .local v0, "cid":I
    iget-object v2, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 2958
    .local v2, "loc":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 2963
    :cond_1e
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v17, 0x0

    aput-object v23, v3, v17

    move-object/from16 v33, v2

    iget-object v2, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2964
    .end local v2    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    .local v33, "loc":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v16, 0x1

    aput-object v2, v3, v16

    iget-object v2, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2965
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v21

    .line 2963
    const v2, 0xc3cb

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2967
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RAT switched "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2969
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    .line 2968
    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2972
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    .line 2971
    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at cell "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2967
    invoke-virtual {v9, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2976
    .end local v0    # "cid":I
    .end local v33    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_1f
    if-eqz v10, :cond_20

    .line 2977
    iget-object v0, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v2, "cssIndicatorChanged"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 2980
    :cond_20
    iget v0, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    iput v0, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    .line 2981
    iget v0, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    iput v0, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    .line 2982
    iget v0, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRejectCode:I

    iput v0, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mRejectCode:I

    .line 2985
    :cond_21
    iget-object v0, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 2989
    .local v0, "oldMergedSS":Landroid/telephony/ServiceState;
    iget-object v2, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNBSSTNotifyDelay:Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;

    invoke-virtual {v2}, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->getServiceState()V

    .line 2991
    iget-object v2, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2992
    .local v2, "tss":Landroid/telephony/ServiceState;
    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iput-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2993
    iput-object v2, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2995
    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 2998
    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    .line 2999
    .local v3, "tcl":Landroid/telephony/CellLocation;
    move-object/from16 v34, v2

    iget-object v2, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    .end local v2    # "tss":Landroid/telephony/ServiceState;
    .local v34, "tss":Landroid/telephony/ServiceState;
    iput-object v2, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    .line 3000
    iput-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    .line 3002
    if-eqz v11, :cond_22

    .line 3003
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 3006
    :cond_22
    iget-object v2, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3007
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v35, v3

    const-string v3, "phone"

    .end local v3    # "tcl":Landroid/telephony/CellLocation;
    .local v35, "tcl":Landroid/telephony/CellLocation;
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 3009
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v12, :cond_23

    .line 3010
    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    move/from16 v36, v10

    iget-object v10, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .end local v10    # "hasCssIndicatorChanged":Z
    .local v36, "hasCssIndicatorChanged":Z
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 3011
    iget-object v10, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3012
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v10

    invoke-static {v10}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v10

    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3013
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    .line 3011
    move/from16 v37, v15

    const/16 v15, 0x4c

    invoke-static {v15, v10, v3}, Landroid/util/StatsLog;->write(III)I

    .line 3015
    .end local v15    # "hasVoiceRoamingOff":Z
    .local v37, "hasVoiceRoamingOff":Z
    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3016
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    const/16 v10, 0x12

    if-ne v10, v3, :cond_24

    .line 3017
    const-string v3, "pollStateDone: IWLAN enabled"

    invoke-virtual {v9, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_17

    .line 3021
    .end local v36    # "hasCssIndicatorChanged":Z
    .end local v37    # "hasVoiceRoamingOff":Z
    .restart local v10    # "hasCssIndicatorChanged":Z
    .restart local v15    # "hasVoiceRoamingOff":Z
    :cond_23
    move/from16 v36, v10

    move/from16 v37, v15

    .end local v10    # "hasCssIndicatorChanged":Z
    .end local v15    # "hasVoiceRoamingOff":Z
    .restart local v36    # "hasCssIndicatorChanged":Z
    .restart local v37    # "hasVoiceRoamingOff":Z
    :cond_24
    :goto_17
    if-nez v11, :cond_25

    if-eqz v12, :cond_26

    .line 3023
    :cond_25
    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->fixType()V

    .line 3024
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySignalStrength()Z

    .line 3027
    :cond_26
    if-eqz v1, :cond_27

    .line 3028
    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3029
    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v3}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkAvailable()V

    .line 3032
    :cond_27
    if-eqz v4, :cond_28

    .line 3033
    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3034
    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v3}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    .line 3037
    :cond_28
    if-eqz v20, :cond_29

    .line 3038
    const/16 v3, 0x7d1

    invoke-virtual {v9, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    .line 3041
    :cond_29
    if-eqz v13, :cond_33

    .line 3042
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    .line 3044
    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    iget-object v10, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 3046
    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 3047
    .local v3, "prevOperatorNumeric":Ljava/lang/String;
    iget-object v10, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v10

    .line 3048
    .local v10, "prevCountryIsoCode":Ljava/lang/String;
    iget-object v15, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v15

    .line 3050
    .local v15, "operatorNumeric":Ljava/lang/String;
    move/from16 v38, v13

    iget-object v13, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .end local v13    # "hasChanged":Z
    .local v38, "hasChanged":Z
    invoke-virtual {v13}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v13

    if-nez v13, :cond_2a

    .line 3052
    invoke-direct {v9, v15}, Lcom/android/internal/telephony/ServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2a

    .line 3053
    iget-object v13, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v13

    .line 3054
    .local v13, "sid":I
    invoke-direct {v9, v15, v13}, Lcom/android/internal/telephony/ServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 3058
    .end local v13    # "sid":I
    :cond_2a
    iget-object v13, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v13

    invoke-virtual {v2, v13, v15}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 3060
    invoke-direct {v9, v15}, Lcom/android/internal/telephony/ServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2b

    .line 3061
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v39, v14

    const-string v14, "operatorNumeric "

    .end local v14    # "hasVoiceRoamingOn":Z
    .local v39, "hasVoiceRoamingOn":Z
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " is invalid"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3065
    iget-object v13, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    const-string v14, ""

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/LocaleTracker;->updateOperatorNumericAsync(Ljava/lang/String;)V

    .line 3066
    iget-object v13, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v13}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    .line 3102
    move/from16 v45, v1

    move/from16 v44, v4

    move/from16 v46, v6

    move/from16 v40, v7

    move/from16 v42, v11

    move/from16 v43, v12

    goto/16 :goto_19

    .line 3067
    .end local v39    # "hasVoiceRoamingOn":Z
    .restart local v14    # "hasVoiceRoamingOn":Z
    :cond_2b
    move/from16 v39, v14

    .end local v14    # "hasVoiceRoamingOn":Z
    .restart local v39    # "hasVoiceRoamingOn":Z
    iget-object v13, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v13

    const/16 v14, 0x12

    if-eq v13, v14, :cond_2e

    .line 3073
    iget-object v13, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v13

    if-nez v13, :cond_2c

    .line 3074
    invoke-virtual {v9, v15}, Lcom/android/internal/telephony/ServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    .line 3077
    :cond_2c
    iget-object v13, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {v13, v15}, Lcom/android/internal/telephony/LocaleTracker;->updateOperatorNumericSync(Ljava/lang/String;)V

    .line 3078
    iget-object v13, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/LocaleTracker;->getCurrentCountry()Ljava/lang/String;

    move-result-object v13

    .line 3081
    .local v13, "countryIsoCode":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->iccCardExists()Z

    move-result v14

    .line 3082
    .local v14, "iccCardExists":Z
    nop

    .line 3083
    move/from16 v40, v7

    invoke-direct {v9, v13, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->networkCountryIsoChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 3086
    .local v7, "networkIsoChanged":Z
    .local v40, "hasDataRegStateChanged":Z
    if-eqz v14, :cond_2d

    if-eqz v7, :cond_2d

    const/16 v21, 0x1

    goto :goto_18

    :cond_2d
    const/16 v21, 0x0

    :goto_18
    move/from16 v41, v21

    .line 3088
    .local v41, "countryChanged":Z
    move/from16 v42, v11

    move/from16 v43, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 3089
    .end local v12    # "hasRilDataRadioTechnologyChanged":Z
    .local v11, "ctm":J
    .local v42, "hasRilVoiceRadioTechnologyChanged":Z
    .local v43, "hasRilDataRadioTechnologyChanged":Z
    move/from16 v44, v4

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "hasDeregistered":Z
    .local v44, "hasDeregistered":Z
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v45, v1

    const-string v1, "Before handleNetworkCountryCodeKnown: countryChanged="

    .end local v1    # "hasRegistered":Z
    .local v45, "hasRegistered":Z
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v41

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v41    # "countryChanged":Z
    .local v1, "countryChanged":Z
    move/from16 v46, v6

    const-string v6, " iccCardExist="

    .end local v6    # "hasDataDetached":Z
    .local v46, "hasDataDetached":Z
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " countryIsoChanged="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " operatorNumeric="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " prevOperatorNumeric="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " countryIsoCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " prevCountryIsoCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ltod="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3097
    invoke-static {v11, v12}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3089
    invoke-virtual {v9, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3099
    .end local v11    # "ctm":J
    iget-object v4, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkCountryCodeSet(Z)V

    .end local v1    # "countryChanged":Z
    .end local v7    # "networkIsoChanged":Z
    .end local v13    # "countryIsoCode":Ljava/lang/String;
    .end local v14    # "iccCardExists":Z
    goto :goto_19

    .line 3102
    .end local v40    # "hasDataRegStateChanged":Z
    .end local v42    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v43    # "hasRilDataRadioTechnologyChanged":Z
    .end local v44    # "hasDeregistered":Z
    .end local v45    # "hasRegistered":Z
    .end local v46    # "hasDataDetached":Z
    .local v1, "hasRegistered":Z
    .restart local v4    # "hasDeregistered":Z
    .restart local v6    # "hasDataDetached":Z
    .local v7, "hasDataRegStateChanged":Z
    .local v11, "hasRilVoiceRadioTechnologyChanged":Z
    .restart local v12    # "hasRilDataRadioTechnologyChanged":Z
    :cond_2e
    move/from16 v45, v1

    move/from16 v44, v4

    move/from16 v46, v6

    move/from16 v40, v7

    move/from16 v42, v11

    move/from16 v43, v12

    .end local v1    # "hasRegistered":Z
    .end local v4    # "hasDeregistered":Z
    .end local v6    # "hasDataDetached":Z
    .end local v7    # "hasDataRegStateChanged":Z
    .end local v11    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v12    # "hasRilDataRadioTechnologyChanged":Z
    .restart local v40    # "hasDataRegStateChanged":Z
    .restart local v42    # "hasRilVoiceRadioTechnologyChanged":Z
    .restart local v43    # "hasRilDataRadioTechnologyChanged":Z
    .restart local v44    # "hasDeregistered":Z
    .restart local v45    # "hasRegistered":Z
    .restart local v46    # "hasDataDetached":Z
    :goto_19
    iget-object v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    .line 3103
    iget-object v4, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    goto :goto_1b

    .line 3104
    :cond_2f
    iget-object v4, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    if-nez v4, :cond_31

    iget-object v4, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_1a

    .line 3102
    :cond_30
    const/4 v4, 0x0

    goto :goto_1b

    .line 3104
    :cond_31
    :goto_1a
    nop

    .line 3102
    const/4 v4, 0x1

    :goto_1b
    invoke-virtual {v2, v1, v4}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 3106
    iget-object v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 3107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting ServiceState : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3110
    iget-object v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 3115
    iget-object v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mNBSSTNotifyDelay:Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;

    invoke-virtual {v1}, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->notifyServiceStateChangedDealy()V

    .line 3120
    :cond_32
    iget-object v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3121
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v4

    invoke-static {v4}, Landroid/provider/Telephony$ServiceStateTable;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3122
    invoke-static {v6}, Landroid/provider/Telephony$ServiceStateTable;->getContentValuesForServiceState(Landroid/telephony/ServiceState;)Landroid/content/ContentValues;

    move-result-object v6

    .line 3121
    invoke-virtual {v1, v4, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3124
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object v4, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    iget-object v6, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v4, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeServiceStateChanged(ILandroid/telephony/ServiceState;)V

    .end local v3    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v10    # "prevCountryIsoCode":Ljava/lang/String;
    .end local v15    # "operatorNumeric":Ljava/lang/String;
    goto :goto_1c

    .line 3127
    .end local v38    # "hasChanged":Z
    .end local v39    # "hasVoiceRoamingOn":Z
    .end local v40    # "hasDataRegStateChanged":Z
    .end local v42    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v43    # "hasRilDataRadioTechnologyChanged":Z
    .end local v44    # "hasDeregistered":Z
    .end local v45    # "hasRegistered":Z
    .end local v46    # "hasDataDetached":Z
    .restart local v1    # "hasRegistered":Z
    .restart local v4    # "hasDeregistered":Z
    .restart local v6    # "hasDataDetached":Z
    .restart local v7    # "hasDataRegStateChanged":Z
    .restart local v11    # "hasRilVoiceRadioTechnologyChanged":Z
    .restart local v12    # "hasRilDataRadioTechnologyChanged":Z
    .local v13, "hasChanged":Z
    .local v14, "hasVoiceRoamingOn":Z
    :cond_33
    move/from16 v45, v1

    move/from16 v44, v4

    move/from16 v46, v6

    move/from16 v40, v7

    move/from16 v42, v11

    move/from16 v43, v12

    move/from16 v38, v13

    move/from16 v39, v14

    .end local v1    # "hasRegistered":Z
    .end local v4    # "hasDeregistered":Z
    .end local v6    # "hasDataDetached":Z
    .end local v7    # "hasDataRegStateChanged":Z
    .end local v11    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v12    # "hasRilDataRadioTechnologyChanged":Z
    .end local v13    # "hasChanged":Z
    .end local v14    # "hasVoiceRoamingOn":Z
    .restart local v38    # "hasChanged":Z
    .restart local v39    # "hasVoiceRoamingOn":Z
    .restart local v40    # "hasDataRegStateChanged":Z
    .restart local v42    # "hasRilVoiceRadioTechnologyChanged":Z
    .restart local v43    # "hasRilDataRadioTechnologyChanged":Z
    .restart local v44    # "hasDeregistered":Z
    .restart local v45    # "hasRegistered":Z
    .restart local v46    # "hasDataDetached":Z
    :goto_1c
    if-nez v5, :cond_34

    if-nez v8, :cond_34

    if-nez v46, :cond_34

    if-nez v45, :cond_34

    if-eqz v44, :cond_35

    .line 3129
    :cond_34
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logAttachChange()V

    .line 3132
    :cond_35
    if-nez v5, :cond_36

    if-eqz v8, :cond_37

    .line 3133
    :cond_36
    iget-object v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3136
    :cond_37
    if-eqz v46, :cond_38

    .line 3137
    iget-object v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3140
    :cond_38
    if-nez v43, :cond_39

    if-eqz v42, :cond_3a

    .line 3141
    :cond_39
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logRatChange()V

    .line 3144
    :cond_3a
    if-nez v40, :cond_3b

    if-eqz v43, :cond_3d

    .line 3145
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 3147
    iget-object v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3148
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v3, 0x12

    if-ne v3, v1, :cond_3c

    .line 3149
    iget-object v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v3, "iwlanAvailable"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_1d

    .line 3151
    :cond_3c
    iget-object v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 3155
    :cond_3d
    :goto_1d
    if-nez v39, :cond_3e

    if-nez v37, :cond_3e

    if-nez v32, :cond_3e

    if-eqz v31, :cond_3f

    .line 3156
    :cond_3e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logRoamingChange()V

    .line 3159
    :cond_3f
    if-eqz v39, :cond_40

    .line 3160
    iget-object v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3163
    :cond_40
    if-eqz v37, :cond_41

    .line 3164
    iget-object v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3167
    :cond_41
    if-eqz v32, :cond_42

    .line 3168
    iget-object v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3171
    :cond_42
    if-eqz v31, :cond_43

    .line 3172
    iget-object v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3175
    :cond_43
    if-eqz v30, :cond_44

    .line 3176
    iget-object v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyLocationChanged()V

    .line 3179
    :cond_44
    iget-object v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 3180
    iget-object v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    iget-object v3, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    invoke-direct {v9, v1, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->isGprsConsistent(II)Z

    move-result v1

    if-nez v1, :cond_45

    .line 3181
    iget-boolean v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    if-nez v1, :cond_46

    iget-boolean v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    if-nez v1, :cond_46

    .line 3182
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 3184
    iget-object v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3185
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "gprs_register_check_period_ms"

    const v4, 0xea60

    .line 3184
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3188
    .local v1, "check_period":I
    const/16 v3, 0x16

    invoke-virtual {v9, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    int-to-long v6, v1

    invoke-virtual {v9, v3, v6, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3190
    .end local v1    # "check_period":I
    goto :goto_1e

    .line 3192
    :cond_45
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    .line 3195
    :cond_46
    :goto_1e
    return-void
.end method

.method private processCellLocationInfo(Landroid/telephony/CellLocation;Landroid/telephony/CellIdentity;)V
    .locals 11
    .param p1, "cellLocation"    # Landroid/telephony/CellLocation;
    .param p2, "cellIdentity"    # Landroid/telephony/CellIdentity;

    .line 941
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 942
    const/4 v0, -0x1

    .line 943
    .local v0, "psc":I
    const/4 v1, -0x1

    .line 944
    .local v1, "cid":I
    const/4 v2, -0x1

    .line 945
    .local v2, "lac":I
    if-eqz p2, :cond_1

    .line 946
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 959
    :pswitch_0
    move-object v3, p2

    check-cast v3, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityTdscdma;->getCid()I

    move-result v1

    .line 960
    move-object v3, p2

    check-cast v3, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityTdscdma;->getLac()I

    move-result v2

    .line 961
    goto :goto_0

    .line 953
    :pswitch_1
    move-object v3, p2

    check-cast v3, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v1

    .line 954
    move-object v3, p2

    check-cast v3, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v2

    .line 955
    move-object v3, p2

    check-cast v3, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v0

    .line 956
    goto :goto_0

    .line 964
    :pswitch_2
    move-object v3, p2

    check-cast v3, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v1

    .line 965
    move-object v3, p2

    check-cast v3, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v2

    .line 966
    goto :goto_0

    .line 948
    :cond_0
    move-object v3, p2

    check-cast v3, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v1

    .line 949
    move-object v3, p2

    check-cast v3, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v2

    .line 950
    nop

    .line 974
    :cond_1
    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3, v2, v1}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 975
    move-object v3, p1

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3, v0}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 976
    .end local v0    # "psc":I
    .end local v1    # "cid":I
    .end local v2    # "lac":I
    goto :goto_2

    .line 977
    :cond_2
    const/4 v0, -0x1

    .line 978
    .local v0, "baseStationId":I
    const v1, 0x7fffffff

    .line 979
    .local v1, "baseStationLatitude":I
    const v2, 0x7fffffff

    .line 980
    .local v2, "baseStationLongitude":I
    const/4 v3, 0x0

    .line 981
    .local v3, "systemId":I
    const/4 v4, 0x0

    .line 983
    .local v4, "networkId":I
    if-eqz p2, :cond_4

    .line 984
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    goto :goto_1

    .line 986
    :cond_3
    move-object v5, p2

    check-cast v5, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v0

    .line 987
    move-object v5, p2

    check-cast v5, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v1

    .line 988
    move-object v5, p2

    check-cast v5, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v2

    .line 989
    move-object v5, p2

    check-cast v5, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v3

    .line 990
    move-object v5, p2

    check-cast v5, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v4

    .line 991
    nop

    .line 1000
    .end local v3    # "systemId":I
    .end local v4    # "networkId":I
    .local v9, "systemId":I
    .local v10, "networkId":I
    :cond_4
    :goto_1
    move v9, v3

    move v10, v4

    if-nez v1, :cond_5

    if-nez v2, :cond_5

    .line 1001
    const v1, 0x7fffffff

    .line 1002
    const v2, 0x7fffffff

    .line 1006
    :cond_5
    move-object v3, p1

    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    move v4, v0

    move v5, v1

    move v6, v2

    move v7, v9

    move v8, v10

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 1009
    .end local v0    # "baseStationId":I
    .end local v1    # "baseStationLatitude":I
    .end local v2    # "baseStationLongitude":I
    .end local v9    # "systemId":I
    .end local v10    # "networkId":I
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 3

    .line 3898
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    if-eqz v0, :cond_0

    .line 3901
    return-void

    .line 3906
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3907
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3912
    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3913
    return-void
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .param p1, "code"    # I

    .line 3379
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private regCodeToServiceState(I)I
    .locals 2
    .param p1, "code"    # I

    .line 3365
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 3370
    return v0

    .line 3368
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private saveCdmaSubscriptionSource(I)V
    .locals 4
    .param p1, "source"    # I

    .line 4429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Storing cdma subscription source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4430
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "subscription_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read from settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "subscription_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4435
    return-void
.end method

.method private selectResourceForRejectCode(IZ)I
    .locals 2
    .param p1, "rejCode"    # I
    .param p2, "multipleSubscriptions"    # Z

    .line 3858
    const/4 v0, 0x0

    .line 3859
    .local v0, "rejResourceId":I
    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_4

    .line 3871
    :pswitch_0
    if-eqz p2, :cond_0

    .line 3872
    const v1, 0x10403c2

    goto :goto_0

    .line 3873
    :cond_0
    const v1, 0x10403c1

    :goto_0
    move v0, v1

    .line 3874
    goto :goto_4

    .line 3866
    :pswitch_1
    if-eqz p2, :cond_1

    .line 3867
    const v1, 0x10403c4

    goto :goto_1

    .line 3868
    :cond_1
    const v1, 0x10403c3

    :goto_1
    move v0, v1

    .line 3869
    goto :goto_4

    .line 3861
    :pswitch_2
    if-eqz p2, :cond_2

    .line 3862
    const v1, 0x10403be

    goto :goto_2

    .line 3863
    :cond_2
    const v1, 0x10403bd

    :goto_2
    move v0, v1

    .line 3864
    goto :goto_4

    .line 3876
    :cond_3
    if-eqz p2, :cond_4

    .line 3877
    const v1, 0x10403c0

    goto :goto_3

    .line 3878
    :cond_4
    const v1, 0x10403bf

    :goto_3
    move v0, v1

    .line 3879
    nop

    .line 3884
    :goto_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setPhyCellInfoFromCellIdentity(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V
    .locals 7
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "cellIdentity"    # Landroid/telephony/CellIdentity;

    .line 2106
    if-nez p2, :cond_0

    .line 2108
    const-string v0, "Could not set ServiceState channel number. CellIdentity null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2110
    return-void

    .line 2113
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getChannelNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setChannelNumber(I)V

    .line 2118
    instance-of v0, p2, Landroid/telephony/CellIdentityLte;

    if-eqz v0, :cond_7

    .line 2119
    move-object v0, p2

    check-cast v0, Landroid/telephony/CellIdentityLte;

    .line 2120
    .local v0, "cl":Landroid/telephony/CellIdentityLte;
    const/4 v1, 0x0

    .line 2123
    .local v1, "bandwidths":[I
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 2124
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getBandwidthsFromConfigs(Ljava/util/List;)[I

    move-result-object v1

    .line 2125
    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, v1, v4

    .line 2126
    .local v5, "bw":I
    invoke-static {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isValidLteBandwidthKhz(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid LTE Bandwidth in RegistrationState, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2128
    const/4 v1, 0x0

    .line 2129
    goto :goto_1

    .line 2125
    .end local v5    # "bw":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2143
    :cond_2
    :goto_1
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    array-length v4, v1

    if-ne v4, v2, :cond_6

    .line 2144
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getBandwidth()I

    move-result v4

    .line 2145
    .local v4, "cbw":I
    invoke-static {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isValidLteBandwidthKhz(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2146
    new-array v2, v2, [I

    aput v4, v2, v3

    move-object v1, v2

    goto :goto_2

    .line 2147
    :cond_4
    const v2, 0x7fffffff

    if-ne v4, v2, :cond_5

    .end local v4    # "cbw":I
    goto :goto_2

    .line 2151
    .restart local v4    # "cbw":I
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid LTE Bandwidth in RegistrationState, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2154
    .end local v4    # "cbw":I
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 2155
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setCellBandwidths([I)V

    .line 2160
    .end local v0    # "cl":Landroid/telephony/CellIdentityLte;
    .end local v1    # "bandwidths":[I
    :cond_7
    return-void
.end method

.method private setRoamingOff()V
    .locals 2

    .line 2294
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2295
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2296
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 2297
    return-void
.end method

.method private setRoamingOn()V
    .locals 2

    .line 2287
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2288
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2289
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 2290
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    .line 2291
    return-void
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 2

    .line 4750
    new-instance v0, Landroid/telephony/SignalStrength;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4751
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 9
    .param p1, "nitzString"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .line 3660
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3662
    .local v0, "start":J
    const-string v2, "SST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v0, p2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    invoke-static {p1}, Lcom/android/internal/telephony/NitzData;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/NitzData;

    move-result-object v2

    .line 3666
    .local v2, "newNitzData":Lcom/android/internal/telephony/NitzData;
    if-eqz v2, :cond_0

    .line 3668
    :try_start_0
    new-instance v3, Lcom/android/internal/telephony/util/TimeStampedValue;

    invoke-direct {v3, v2, p2, p3}, Lcom/android/internal/telephony/util/TimeStampedValue;-><init>(Ljava/lang/Object;J)V

    .line 3670
    .local v3, "nitzSignal":Lcom/android/internal/telephony/util/TimeStampedValue;, "Lcom/android/internal/telephony/util/TimeStampedValue<Lcom/android/internal/telephony/NitzData;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/NitzStateMachine;->handleNitzReceived(Lcom/android/internal/telephony/util/TimeStampedValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3673
    .end local v3    # "nitzSignal":Lcom/android/internal/telephony/util/TimeStampedValue;, "Lcom/android/internal/telephony/util/TimeStampedValue<Lcom/android/internal/telephony/NitzData;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3674
    .local v3, "end":J
    const-string v5, "SST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NITZ: end="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " dur="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v3, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    .end local v3    # "end":J
    goto :goto_0

    .line 3672
    :catchall_0
    move-exception v3

    .line 3673
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3674
    .local v4, "end":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NITZ: end="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " dur="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v4, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SST"

    invoke-static {v7, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3675
    .end local v4    # "end":J
    throw v3

    .line 3678
    :cond_0
    :goto_0
    return-void
.end method

.method private updateLteEarfcnLists(Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "config"    # Landroid/os/PersistableBundle;

    .line 4202
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoostLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4203
    :try_start_0
    const-string v1, "lte_earfcns_rsrp_boost_int"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoost:I

    .line 4204
    const-string v1, "boosted_lte_earfcns_string_array"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4206
    .local v1, "earfcnsStringArrayForRsrpBoost":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->convertEarfcnStringArrayToPairList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    .line 4208
    .end local v1    # "earfcnsStringArrayForRsrpBoost":[Ljava/lang/String;
    monitor-exit v0

    .line 4209
    return-void

    .line 4208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateOperatorNameFromCarrierConfig()V
    .locals 5

    .line 2303
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2304
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 2305
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2306
    .local v0, "hasBrandOverride":Z
    :goto_0
    if-nez v0, :cond_1

    .line 2307
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 2308
    .local v1, "config":Landroid/os/PersistableBundle;
    const-string v2, "cdma_home_registered_plmn_name_override_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2310
    const-string v2, "cdma_home_registered_plmn_name_string"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2312
    .local v2, "operator":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateOperatorNameFromCarrierConfig: changing from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2313
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2312
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2315
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v2, v4}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    .end local v0    # "hasBrandOverride":Z
    .end local v1    # "config":Landroid/os/PersistableBundle;
    .end local v2    # "operator":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateOperatorNameFromEri()V
    .locals 6

    .line 3198
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    const v1, 0x10405a8

    if-eqz v0, :cond_1

    .line 3199
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v0, :cond_9

    .line 3202
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-nez v0, :cond_0

    .line 3203
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    .local v0, "eriText":Ljava/lang/String;
    goto :goto_0

    .line 3207
    .end local v0    # "eriText":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3208
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3210
    .restart local v0    # "eriText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 3211
    .end local v0    # "eriText":Ljava/lang/String;
    goto/16 :goto_4

    .line 3212
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3213
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 3214
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 3215
    .local v0, "hasBrandOverride":Z
    :goto_1
    if-nez v0, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEriFileLoaded()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3216
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3217
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v3, :cond_8

    .line 3221
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v3

    .line 3223
    .local v3, "eriText":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    if-nez v4, :cond_4

    .line 3224
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 3225
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 3226
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    move-object v3, v1

    .line 3227
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3230
    const-string v1, "ro.cdma.home.operator.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 3232
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    if-eqz v4, :cond_7

    .line 3235
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 3236
    invoke-virtual {v4, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3238
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v3}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 3241
    .end local v3    # "eriText":Ljava/lang/String;
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_9

    .line 3242
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCombinedRegState()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3243
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 3247
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 3248
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getCsimSpnDisplayCondition()Z

    move-result v1

    .line 3249
    .local v1, "showSpn":Z
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v3

    .line 3251
    .local v3, "iconIndex":I
    if-eqz v1, :cond_9

    if-ne v3, v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3252
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaNetworkId()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isInHomeSidNid(II)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_9

    .line 3254
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 3258
    .end local v0    # "hasBrandOverride":Z
    .end local v1    # "showSpn":Z
    .end local v3    # "iconIndex":I
    :cond_9
    :goto_4
    return-void
.end method

.method private updateReportingCriteria(Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "config"    # Landroid/os/PersistableBundle;

    .line 4212
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v1, "lte_rsrp_thresholds_int_array"

    .line 4213
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 4212
    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSignalStrengthReportingCriteria([II)V

    .line 4215
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v1, "wcdma_rscp_thresholds_int_array"

    .line 4216
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 4215
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSignalStrengthReportingCriteria([II)V

    .line 4218
    return-void
.end method

.method private updateServiceStateLteEarfcnBoost(Landroid/telephony/ServiceState;I)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;
    .param p2, "lteEarfcn"    # I

    .line 4221
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoostLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4222
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    .line 4223
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->containsEarfcnInEarfcnRange(Ljava/util/ArrayList;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4224
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoost:I

    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setLteEarfcnRsrpBoost(I)V

    goto :goto_0

    .line 4228
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4226
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setLteEarfcnRsrpBoost(I)V

    .line 4228
    :goto_0
    monitor-exit v0

    .line 4229
    return-void

    .line 4228
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected final alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;

    .line 4800
    const-string v0, "force_home_network_bool"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected cancelPollState()V
    .locals 1

    .line 4306
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 4307
    return-void
.end method

.method protected checkCorrectThread()V
    .locals 2

    .line 4599
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4603
    return-void

    .line 4600
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ServiceStateTracker must be used from within one thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method convertEarfcnStringArrayToPairList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "earfcnsList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 4147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4149
    .local v0, "earfcnPairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    if-eqz p1, :cond_2

    .line 4152
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 4154
    const/4 v3, 0x0

    :try_start_0
    aget-object v4, p1, v2

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4155
    .local v4, "earfcns":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 4159
    return-object v3

    .line 4162
    :cond_0
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4163
    .local v5, "earfcnStart":I
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 4165
    .local v6, "earfcnEnd":I
    if-le v5, v6, :cond_1

    .line 4169
    return-object v3

    .line 4172
    :cond_1
    new-instance v7, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4183
    .end local v4    # "earfcns":[Ljava/lang/String;
    nop

    .line 4182
    nop

    .line 4152
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4178
    .end local v5    # "earfcnStart":I
    .end local v6    # "earfcnEnd":I
    :catch_0
    move-exception v1

    .line 4182
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return-object v3

    .line 4173
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 4177
    .local v1, "pse":Ljava/util/regex/PatternSyntaxException;
    return-object v3

    .line 4187
    .end local v1    # "pse":Ljava/util/regex/PatternSyntaxException;
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public disableLocationUpdates()V
    .locals 3

    .line 934
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    .line 935
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-nez v1, :cond_0

    .line 936
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 938
    :cond_0
    return-void
.end method

.method protected disableSingleLocationUpdate()V
    .locals 3

    .line 927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    .line 928
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-nez v1, :cond_0

    .line 929
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 931
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 693
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCellInfoList(Landroid/os/Handler;)V

    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForPhysicalChannelConfiguration(Landroid/os/Handler;)V

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    .line 697
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/CarrierActionAgent;->unregisterForCarrierAction(Landroid/os/Handler;I)V

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNBSSTNotifyDelay:Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNBSSTNotifyDelay:Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->dispose()V

    .line 705
    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNBSSTNotifyDelay:Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->dispose()V

    .line 710
    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 712
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4490
    const-string v0, "ServiceStateTracker:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVoiceCapable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRestrictedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPollingContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4497
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4496
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDesiredPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDontPollSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRestrictedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingRadioPowerOffAfterDataOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingRadioPowerOffAfterDataOffTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastCellInfoListTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4508
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->dumpCellInfoList(Ljava/io/PrintWriter;)V

    .line 4509
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPreferredNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPreferredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGsmRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEmergencyOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4518
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4519
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/NitzStateMachine;->dumpState(Ljava/io/PrintWriter;)V

    .line 4520
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mStartedGprsRegCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReportedGprsNoReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurDataSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurShowSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurShowPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4529
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurrentOtaspMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsInPrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDefaultRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegistrationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPrlVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsMinInfoReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsEriTextLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsEriTextLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsSubscriptionFromRuim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaSSM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegistrationDeniedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurrentCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4546
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mImsRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mImsRegistrationOnOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAlarmSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRadioDisabledByCarrier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPowerOffDelayNeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDeviceShuttingDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSpnUpdatePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLteRsrpBoost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLteRsrpBoost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4555
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->dumpEarfcnPairList(Ljava/io/PrintWriter;)V

    .line 4557
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/LocaleTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4559
    const-string v0, " Roaming Log:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4560
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 4561
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4562
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4563
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4565
    const-string v1, " Attach Log:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4566
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4567
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4568
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4570
    const-string v1, " Phone Change Log:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4571
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4572
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneTypeLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4573
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4575
    const-string v1, " Rat Change Log:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4576
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4577
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4578
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4580
    const-string v1, " Radio power Log:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4581
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4582
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4584
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/NitzStateMachine;->dumpLogs(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 4585
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 3

    .line 921
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 922
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    .line 923
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 924
    return-void

    .line 921
    :cond_1
    :goto_0
    return-void
.end method

.method public enableSingleLocationUpdate()V
    .locals 3

    .line 915
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 916
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    .line 917
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 918
    return-void

    .line 915
    :cond_1
    :goto_0
    return-void
.end method

.method public getAllCellInfo(Landroid/os/WorkSource;)Ljava/util/List;
    .locals 8
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/WorkSource;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 4350
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$1;)V

    .line 4352
    .local v0, "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v2

    .line 4353
    .local v2, "ver":I
    const/16 v3, 0x8

    if-lt v2, v3, :cond_3

    .line 4354
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isCallerOnDifferentThread()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4356
    if-eqz p1, :cond_0

    const-string v3, "com.tencent.mm"

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    .line 4357
    invoke-virtual {v3, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4359
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    iput-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 4362
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 4364
    const/16 v3, 0x2b

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 4365
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4

    .line 4366
    :try_start_0
    iput-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    .line 4367
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v3, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCellInfoList(Landroid/os/Message;Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4369
    :try_start_1
    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4372
    goto :goto_0

    .line 4370
    :catch_0
    move-exception v5

    .line 4371
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 4373
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v4

    .line 4374
    .end local v3    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 4373
    .restart local v3    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 4375
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    const-string v3, "SST.getAllCellInfo(): return last, back to back calls"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4376
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    iput-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 4379
    :cond_2
    const-string v3, "SST.getAllCellInfo(): return last, same thread can\'t block"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4380
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    iput-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 4383
    :cond_3
    const-string v3, "SST.getAllCellInfo(): not implemented"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4384
    iput-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    .line 4386
    :goto_1
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 4387
    :try_start_3
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 4390
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    monitor-exit v3

    return-object v1

    .line 4392
    :cond_4
    const-string v4, "SST.getAllCellInfo(): X size=0 list=null"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4393
    monitor-exit v3

    return-object v1

    .line 4395
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .line 1579
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method public getCellLocation(Landroid/os/WorkSource;)Landroid/telephony/CellLocation;
    .locals 8
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 3590
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 3591
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-ltz v0, :cond_0

    .line 3593
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    return-object v0

    .line 3595
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getAllCellInfo(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v0

    .line 3596
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v0, :cond_6

    .line 3609
    new-instance v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v1}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 3610
    .local v1, "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 3611
    .local v3, "ci":Landroid/telephony/CellInfo;
    instance-of v4, v3, Landroid/telephony/CellInfoGsm;

    if-eqz v4, :cond_1

    .line 3612
    move-object v2, v3

    check-cast v2, Landroid/telephony/CellInfoGsm;

    .line 3613
    .local v2, "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v4

    .line 3614
    .local v4, "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {v4}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v5

    .line 3615
    invoke-virtual {v4}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v6

    .line 3614
    invoke-virtual {v1, v5, v6}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 3616
    invoke-virtual {v4}, Landroid/telephony/CellIdentityGsm;->getPsc()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 3618
    return-object v1

    .line 3619
    .end local v2    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    .end local v4    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    :cond_1
    instance-of v4, v3, Landroid/telephony/CellInfoWcdma;

    if-eqz v4, :cond_2

    .line 3620
    move-object v2, v3

    check-cast v2, Landroid/telephony/CellInfoWcdma;

    .line 3621
    .local v2, "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v4

    .line 3622
    .local v4, "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {v4}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v5

    .line 3623
    invoke-virtual {v4}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v6

    .line 3622
    invoke-virtual {v1, v5, v6}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 3624
    invoke-virtual {v4}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 3626
    return-object v1

    .line 3627
    .end local v2    # "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    .end local v4    # "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    :cond_2
    instance-of v4, v3, Landroid/telephony/CellInfoLte;

    if-eqz v4, :cond_4

    .line 3628
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    if-ltz v4, :cond_3

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    if-gez v4, :cond_4

    .line 3630
    :cond_3
    move-object v4, v3

    check-cast v4, Landroid/telephony/CellInfoLte;

    .line 3631
    .local v4, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v5

    .line 3632
    .local v5, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v6

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_4

    .line 3633
    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v6

    if-eq v6, v7, :cond_4

    .line 3634
    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v6

    .line 3635
    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v7

    .line 3634
    invoke-virtual {v1, v6, v7}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 3636
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 3642
    .end local v3    # "ci":Landroid/telephony/CellInfo;
    .end local v4    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    .end local v5    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    :cond_4
    goto :goto_0

    .line 3646
    :cond_5
    return-object v1

    .line 3651
    .end local v1    # "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    return-object v1
.end method

.method protected getCombinedRegState()I
    .locals 3

    .line 4848
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    .line 4849
    .local v0, "regState":I
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    .line 4850
    .local v1, "dataRegState":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    if-nez v1, :cond_1

    .line 4853
    const-string v2, "getCombinedRegState: return STATE_IN_SERVICE as Data is in service"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4854
    move v0, v1

    .line 4856
    :cond_1
    return v0
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .line 2685
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0
.end method

.method public getDesiredPowerState()Z
    .locals 1

    .line 715
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    return v0
.end method

.method protected getHomeOperatorNumeric()Ljava/lang/String;
    .locals 3

    .line 4754
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 4755
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4756
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 4757
    .local v0, "numeric":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4758
    const-string v1, "ro.cdma.home.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4760
    :cond_0
    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 3

    .line 1592
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 1593
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1594
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 1596
    .local v0, "operatorNumeric":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1599
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;
    .locals 1

    .line 4880
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    return-object v0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    .line 1575
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method public getOtasp()I
    .locals 5

    .line 1618
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccRecordsLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1619
    const-string v0, "getOtasp: otasp uninitialized due to sim not loaded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1620
    return v1

    .line 1623
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    .line 1624
    const-string v0, "getOtasp: otasp not needed for GSM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1625
    return v2

    .line 1628
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1629
    const/4 v0, 0x2

    return v0

    .line 1631
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-ge v0, v3, :cond_3

    goto :goto_1

    .line 1635
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    const-string v4, "1111110111"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    .line 1636
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "000000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "test_cdma_setup"

    .line 1637
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1640
    :cond_4
    goto :goto_2

    .line 1638
    :cond_5
    :goto_0
    const/4 v2, 0x2

    goto :goto_2

    .line 1632
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOtasp: bad mMin=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1633
    const/4 v2, 0x1

    .line 1640
    .local v2, "provisioningState":I
    :goto_2
    move v0, v2

    .line 1643
    .end local v2    # "provisioningState":I
    .local v0, "provisioningState":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOtasp: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1644
    return v0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 1690
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method protected getPhoneId()I
    .locals 1

    .line 4764
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public getPowerStateFromCarrier()Z
    .locals 1

    .line 717
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    .line 1584
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .line 4402
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 4343
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1035
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/16 v3, 0xe

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1522
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message with number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1504
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1505
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_18

    .line 1506
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1511
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhysicalChannelConfiguration(Ljava/util/List;)V

    .line 1512
    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    .line 1515
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getBandwidthsFromConfigs(Ljava/util/List;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RatRatcheter;->updateBandwidths([ILandroid/telephony/ServiceState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1516
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1518
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    :cond_0
    goto/16 :goto_7

    .line 1125
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string v0, "EVENT_RADIO_POWER_OFF_DONE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1126
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1130
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    goto/16 :goto_7

    .line 1358
    :pswitch_3
    const-string v0, "EVENT_IMS_SERVICE_STATE_CHANGED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1361
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_18

    .line 1362
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto/16 :goto_7

    .line 1495
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1496
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_18

    .line 1497
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1498
    .local v1, "enable":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_RADIO_POWER_FROM_CARRIER: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1499
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPowerFromCarrier(Z)V

    .line 1500
    .end local v1    # "enable":Z
    goto/16 :goto_7

    .line 1333
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 1334
    .local v0, "dds":I
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    .line 1335
    monitor-enter p0

    .line 1336
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v1, :cond_1

    .line 1337
    const-string v1, "EVENT_ALL_DATA_DISCONNECTED, turn radio off now."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 1339
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_0

    .line 1341
    :cond_1
    const-string v1, "EVENT_ALL_DATA_DISCONNECTED is stale"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1343
    :goto_0
    monitor-exit p0

    .line 1344
    goto/16 :goto_7

    .line 1343
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1353
    .end local v0    # "dds":I
    :pswitch_6
    const-string v0, "EVENT_IMS_CAPABILITY_CHANGED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1354
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    .line 1355
    goto/16 :goto_7

    .line 1117
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1118
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_18

    .line 1119
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1120
    .local v1, "responseArray":[I
    aget v2, v1, v6

    if-ne v2, v7, :cond_2

    move v6, v7

    nop

    :cond_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    .line 1121
    .end local v1    # "responseArray":[I
    goto/16 :goto_7

    .line 1113
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    .line 1114
    goto/16 :goto_7

    .line 1347
    :pswitch_9
    const-string v0, "EVENT_CHANGE_IMS_STATE:"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    .line 1350
    goto/16 :goto_7

    .line 1094
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1095
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 1096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_UNSOL_CELL_INFO_LIST: error ignoring, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1098
    :cond_3
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1102
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    .line 1103
    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 1105
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1107
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyCellInfo(Ljava/util/List;)V

    .line 1109
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    goto/16 :goto_7

    .line 1070
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1071
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;

    if-eqz v1, :cond_18

    .line 1072
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;

    .line 1073
    .local v1, "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 1074
    :try_start_1
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    .line 1075
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GET_CELL_INFO_LIST: error ret null, e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1076
    iput-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 1078
    :cond_4
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iput-object v3, v1, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    .line 1085
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    .line 1086
    iget-object v3, v1, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 1087
    iget-object v3, v1, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1088
    monitor-exit v2

    .line 1089
    .end local v1    # "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    goto/16 :goto_7

    .line 1088
    .restart local v1    # "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 1052
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    :pswitch_c
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSimAbsent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1053
    const-string v0, "EVENT_ICC_CHANGED: SIM absent"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1055
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelAllNotifications()V

    .line 1057
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 1058
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    .line 1059
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 1061
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onUpdateIccAvailability()V

    .line 1062
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1063
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v0, v1, :cond_18

    .line 1064
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSimReady:Z

    .line 1065
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_7

    .line 1487
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1488
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_18

    .line 1489
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1490
    .local v1, "ints":[I
    aget v2, v1, v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    goto/16 :goto_7

    .line 1368
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "ints":[I
    :pswitch_e
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    .line 1369
    goto/16 :goto_7

    .line 1037
    :pswitch_f
    monitor-enter p0

    .line 1038
    :try_start_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v0, :cond_6

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    if-ne v0, v1, :cond_6

    .line 1040
    const-string v0, "EVENT_SET_RADIO_OFF, turn radio off now."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 1042
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 1043
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_2

    .line 1045
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_SET_RADIO_OFF is stale arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "!= tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1048
    :goto_2
    monitor-exit p0

    .line 1049
    goto/16 :goto_7

    .line 1048
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 1474
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1475
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_18

    .line 1476
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1477
    .restart local v1    # "ints":[I
    aget v2, v1, v6

    .line 1478
    .local v2, "otaStatus":I
    const/16 v3, 0x8

    if-eq v2, v3, :cond_7

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    .line 1480
    :cond_7
    const-string v3, "EVENT_OTA_PROVISION_STATUS_CHANGE: Complete, Reload MDN"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1481
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 1483
    .end local v2    # "otaStatus":I
    :cond_8
    goto/16 :goto_7

    .line 1469
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "ints":[I
    :pswitch_11
    const-string v0, "ERI file has been loaded, repolling."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1470
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 1471
    goto/16 :goto_7

    .line 1387
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 1390
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1395
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    .line 1396
    goto/16 :goto_7

    .line 1399
    :pswitch_13
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1400
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1402
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_18

    .line 1403
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 1404
    .local v3, "cdmaSubscription":[Ljava/lang/String;
    if-eqz v3, :cond_a

    array-length v4, v3

    const/4 v5, 0x5

    if-lt v4, v5, :cond_a

    .line 1405
    aget-object v4, v3, v6

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 1406
    aget-object v4, v3, v7

    aget-object v2, v3, v2

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    aget-object v1, v3, v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    .line 1409
    const/4 v1, 0x4

    aget-object v1, v3, v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 1410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET_CDMA_SUBSCRIPTION: MDN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1412
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 1414
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    .line 1416
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyCdmaSubscriptionInfoReady()V

    .line 1418
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_9

    .line 1420
    const-string v1, "GET_CDMA_SUBSCRIPTION set imsi in mIccRecords"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1422
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->setImsi(Ljava/lang/String;)V

    goto :goto_3

    .line 1425
    :cond_9
    const-string v1, "GET_CDMA_SUBSCRIPTION either mIccRecords is null or NV type device - not setting Imsi in mIccRecords"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1431
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET_CDMA_SUBSCRIPTION: error parsing cdmaSubscription params num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1435
    .end local v3    # "cdmaSubscription":[Ljava/lang/String;
    :goto_3
    goto/16 :goto_7

    .line 1440
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_14
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_RUIM_RECORDS_LOADED: what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1442
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 1443
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1444
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_7

    .line 1446
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 1447
    .local v0, "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v0, :cond_d

    .line 1448
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->isProvisioned()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1449
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 1450
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    .line 1451
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getNid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getPrlVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 1453
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 1455
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    .line 1457
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyCdmaSubscriptionInfoReady()V

    .line 1462
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 1463
    .end local v0    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    goto/16 :goto_7

    .line 1372
    :pswitch_15
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getLteOnCdmaMode()I

    move-result v0

    if-ne v0, v7, :cond_e

    .line 1374
    const-string v0, "Receive EVENT_RUIM_READY"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    goto :goto_4

    .line 1377
    :cond_e
    const-string v0, "Receive EVENT_RUIM_READY and Send Request getCDMASubscription."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1378
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    .line 1382
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1384
    goto/16 :goto_7

    .line 1320
    :pswitch_16
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1324
    const-string v0, "EVENT_RESTRICTED_STATE_CHANGED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1326
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1328
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_7

    .line 1305
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_17
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1306
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isGprsConsistent(II)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1311
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1312
    .local v0, "loc":Landroid/telephony/gsm/GsmCellLocation;
    const v1, 0xc3bb

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1313
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    nop

    :cond_f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 1312
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1314
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    .line 1316
    .end local v0    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_10
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 1317
    goto/16 :goto_7

    .line 1281
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1282
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_18

    .line 1283
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1285
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7

    .line 1274
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1276
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x15

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1277
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPreferredNetworkType:I

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1278
    goto/16 :goto_7

    .line 1290
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "message":Landroid/os/Message;
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1292
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_11

    .line 1293
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v6

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_5

    .line 1295
    :cond_11
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPreferredNetworkType:I

    .line 1298
    :goto_5
    const/16 v1, 0x14

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1299
    .restart local v1    # "message":Landroid/os/Message;
    const/4 v2, 0x7

    .line 1301
    .local v2, "toggledNetworkType":I
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1302
    goto/16 :goto_7

    .line 1264
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "toggledNetworkType":I
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1266
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_18

    .line 1267
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/16 v2, 0xf

    .line 1269
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1268
    invoke-virtual {v1, v7, v2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->getNetworkRegistrationState(ILandroid/os/Message;)V

    goto/16 :goto_7

    .line 1138
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1c
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1140
    iput v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    .line 1141
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSimReady:Z

    .line 1142
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 1144
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->queueNextSignalStrengthPoll()V

    .line 1145
    goto/16 :goto_7

    .line 1255
    :pswitch_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_SIM_RECORDS_LOADED: what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1256
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 1257
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    .line 1258
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1259
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_7

    .line 1190
    :pswitch_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1191
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_12

    .line 1192
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/NetworkRegistrationState;

    .line 1193
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationState;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    .line 1194
    .local v1, "cellIdentity":Landroid/telephony/CellIdentity;
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->processCellLocationInfo(Landroid/telephony/CellLocation;Landroid/telephony/CellIdentity;)V

    .line 1195
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyLocationChanged()V

    .line 1200
    .end local v1    # "cellIdentity":Landroid/telephony/CellIdentity;
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->disableSingleLocationUpdate()V

    .line 1201
    goto/16 :goto_7

    .line 1211
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1f
    const-string v0, "EVENT_POLL_STATE_NETWORK_SELECTION_MODE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1212
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1213
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1214
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_7

    .line 1216
    :cond_13
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_14

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_14

    .line 1217
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1218
    .local v1, "ints":[I
    aget v2, v1, v6

    if-ne v2, v7, :cond_18

    .line 1219
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_7

    .line 1222
    .end local v1    # "ints":[I
    :cond_14
    const-string v1, "Unable to getNetworkSelectionMode"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1225
    goto/16 :goto_7

    .line 1245
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1249
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    .line 1251
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)Z

    .line 1252
    goto/16 :goto_7

    .line 1234
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1236
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aget-object v1, v1, v6

    check-cast v1, Ljava/lang/String;

    .line 1237
    .local v1, "nitzString":Ljava/lang/String;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aget-object v2, v2, v7

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1239
    .local v2, "nitzReceiveTime":J
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    .line 1240
    goto :goto_7

    .line 1230
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "nitzString":Ljava/lang/String;
    .end local v2    # "nitzReceiveTime":J
    :pswitch_22
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 1231
    goto :goto_7

    .line 1206
    :pswitch_23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1207
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    .line 1208
    goto :goto_7

    .line 1170
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_24
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1172
    return-void

    .line 1174
    :cond_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1175
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)Z

    .line 1180
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 1181
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_16

    .line 1182
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    goto :goto_6

    :cond_16
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 1183
    .local v2, "cardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :goto_6
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_18

    .line 1184
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_7

    .line 1163
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v2    # "cardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :pswitch_25
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->modemTriggeredPollState()V

    .line 1164
    goto :goto_7

    .line 1149
    :pswitch_26
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1150
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_17

    .line 1151
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    .line 1154
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->queueNextSignalStrengthPoll()V

    .line 1157
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    .line 1159
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->modemTriggeredPollState()V

    .line 1160
    nop

    .line 1525
    :cond_18
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_26
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 1695
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    if-eq v0, v1, :cond_0

    return-void

    .line 1697
    :cond_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 1698
    const/4 v0, 0x0

    .line 1700
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_1

    .line 1701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePollStateResult exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1704
    :cond_1
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_2

    .line 1705
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1708
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_3

    .line 1710
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    .line 1711
    return-void

    .line 1714
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v1, :cond_4

    .line 1715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL implementation has returned an error where it must succeed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1718
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_4
    goto :goto_0

    .line 1719
    :cond_5
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1722
    goto :goto_0

    .line 1720
    :catch_0
    move-exception v0

    .line 1721
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1724
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 1726
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v0, v0, v1

    if-nez v0, :cond_16

    .line 1727
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 1728
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1729
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateRoamingState()V

    goto/16 :goto_4

    .line 1731
    :cond_6
    const/4 v0, 0x0

    .line 1732
    .local v0, "namMatch":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSidsAllZeros()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isHomeSid(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1733
    const/4 v0, 0x1

    .line 1737
    :cond_7
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v2, :cond_8

    .line 1738
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1739
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v2

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1738
    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v2

    .line 1740
    .local v2, "isRoamingBetweenOperators":Z
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    if-eq v2, v4, :cond_8

    .line 1741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRoamingBetweenOperators="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ". Override CDMA voice roaming to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1743
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v2}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 1752
    .end local v2    # "isRoamingBetweenOperators":Z
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    .line 1753
    .local v2, "dataRat":I
    invoke-static {v2}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1754
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1755
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    if-nez v4, :cond_9

    move v1, v3

    nop

    .line 1756
    .local v1, "isVoiceInService":Z
    :cond_9
    if-eqz v1, :cond_b

    .line 1757
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    .line 1758
    .local v4, "isVoiceRoaming":Z
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    if-eq v5, v4, :cond_a

    .line 1759
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data roaming != Voice roaming. Override data roaming to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1761
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v4}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1763
    .end local v4    # "isVoiceRoaming":Z
    :cond_a
    goto :goto_1

    .line 1769
    :cond_b
    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    .line 1770
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1769
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamIndForHomeSystem(Ljava/lang/String;)Z

    move-result v4

    .line 1771
    .local v4, "isRoamIndForHomeSystem":Z
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    if-ne v5, v4, :cond_c

    .line 1772
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRoamIndForHomeSystem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", override data roaming to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1774
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    xor-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1780
    .end local v1    # "isVoiceInService":Z
    .end local v4    # "isRoamIndForHomeSystem":Z
    :cond_c
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v1, v4}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    .line 1781
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v1, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 1782
    const/4 v1, 0x1

    .line 1783
    .local v1, "isPrlLoaded":Z
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1784
    const/4 v1, 0x0

    .line 1786
    :cond_d
    if-eqz v1, :cond_14

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v4

    if-nez v4, :cond_e

    goto :goto_2

    .line 1790
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSidsAllZeros()Z

    move-result v4

    if-nez v4, :cond_15

    .line 1791
    if-nez v0, :cond_f

    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    if-nez v4, :cond_f

    .line 1793
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_3

    .line 1794
    :cond_f
    const/4 v4, 0x2

    if-eqz v0, :cond_11

    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    if-nez v5, :cond_11

    .line 1796
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1797
    const-string v4, "Turn off roaming indicator as voice is LTE"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1798
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_3

    .line 1800
    :cond_10
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_3

    .line 1802
    :cond_11
    if-nez v0, :cond_12

    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    if-eqz v5, :cond_12

    .line 1804
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_3

    .line 1807
    :cond_12
    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    if-gt v5, v4, :cond_13

    .line 1808
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_3

    .line 1811
    :cond_13
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_3

    .line 1788
    :cond_14
    :goto_2
    const-string v4, "Turn off roaming indicator if !isPrlLoaded or voice RAT is unknown"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1789
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 1816
    :cond_15
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v3

    .line 1817
    .local v3, "roamingIndicator":I
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconIndex(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 1819
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconMode(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    .line 1826
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set CDMA Roaming Indicator to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". voiceRoaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1827
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ". dataRoaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1828
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isPrlLoaded = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ". namMatch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , mIsInPrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mRoamingIndicator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mDefaultRoamingIndicator= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1826
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1835
    .end local v0    # "namMatch":Z
    .end local v1    # "isPrlLoaded":Z
    .end local v2    # "dataRat":I
    .end local v3    # "roamingIndicator":I
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    .line 1838
    :cond_16
    return-void
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 18
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1853
    move-object/from16 v2, p2

    const/16 v3, 0xe

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v3, :cond_18

    const/4 v3, 0x3

    const/4 v7, 0x2

    packed-switch v1, :pswitch_data_0

    .line 2086
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollStateResultMessage: Unexpected RIL response received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2016
    :pswitch_0
    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2017
    iget-object v8, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    .line 2019
    .local v8, "opNames":[Ljava/lang/String;
    if-eqz v8, :cond_2

    array-length v9, v8

    if-lt v9, v3, :cond_2

    .line 2021
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2023
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 2022
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    .line 2023
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v4

    nop

    :cond_0
    move-object v3, v4

    .line 2024
    .local v3, "brandOverride":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 2025
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2026
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v5, v8, v7

    invoke-virtual {v4, v3, v3, v5}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2028
    :cond_1
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v5, v8, v5

    aget-object v6, v8, v6

    aget-object v7, v8, v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    .end local v3    # "brandOverride":Ljava/lang/String;
    .end local v8    # "opNames":[Ljava/lang/String;
    :cond_2
    :goto_0
    goto/16 :goto_9

    .line 2032
    :cond_3
    iget-object v8, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    .line 2034
    .restart local v8    # "opNames":[Ljava/lang/String;
    if-eqz v8, :cond_9

    array-length v9, v8

    if-lt v9, v3, :cond_9

    .line 2037
    aget-object v3, v8, v7

    if-eqz v3, :cond_4

    aget-object v3, v8, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x5

    if-lt v3, v9, :cond_4

    const-string v3, "00000"

    aget-object v9, v8, v7

    .line 2038
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2039
    :cond_4
    const-string v3, "ro.cdma.home.operator.numeric"

    const-string v9, "00000"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v7

    .line 2042
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RIL_REQUEST_OPERATOR.response[2], the numeric,  is bad. Using SystemProperties \'ro.cdma.home.operator.numeric\'= "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v8, v7

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2049
    :cond_5
    iget-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v3, :cond_6

    .line 2051
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v4, v8, v5

    aget-object v5, v8, v6

    aget-object v6, v8, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2053
    :cond_6
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2055
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 2054
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    .line 2055
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v4

    nop

    :cond_7
    move-object v3, v4

    .line 2056
    .restart local v3    # "brandOverride":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 2057
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v5, v8, v7

    invoke-virtual {v4, v3, v3, v5}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2059
    :cond_8
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v5, v8, v5

    aget-object v6, v8, v6

    aget-object v7, v8, v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    .end local v3    # "brandOverride":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 2063
    :cond_9
    const-string v3, "EVENT_POLL_STATE_OPERATOR_CDMA: error parsing opNames"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2066
    .end local v8    # "opNames":[Ljava/lang/String;
    :goto_2
    goto/16 :goto_9

    .line 1934
    :pswitch_1
    iget-object v5, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/NetworkRegistrationState;

    .line 1935
    .local v5, "networkRegState":Landroid/telephony/NetworkRegistrationState;
    nop

    .line 1936
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationState;->getDataSpecificStates()Landroid/telephony/DataSpecificRegistrationStates;

    move-result-object v7

    .line 1937
    .local v7, "dataSpecificStates":Landroid/telephony/DataSpecificRegistrationStates;
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationState;->getRegState()I

    move-result v8

    .line 1938
    .local v8, "registrationState":I
    invoke-direct {v0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeToServiceState(I)I

    move-result v9

    .line 1939
    .local v9, "serviceState":I
    nop

    .line 1940
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationState;->getAccessNetworkTechnology()I

    move-result v10

    .line 1939
    invoke-static {v10}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v10

    .line 1941
    .local v10, "newDataRat":I
    iget-object v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v9}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 1942
    iget-object v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v10}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 1943
    iget-object v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v5}, Landroid/telephony/ServiceState;->addNetworkRegistrationState(Landroid/telephony/NetworkRegistrationState;)V

    .line 1948
    if-ne v9, v6, :cond_a

    .line 1949
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    .line 1951
    :cond_a
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationState;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v6

    invoke-direct {v0, v4, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->setPhyCellInfoFromCellIdentity(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V

    .line 1953
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1955
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationState;->getReasonForDenial()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    .line 1956
    iget v3, v7, Landroid/telephony/DataSpecificRegistrationStates;->maxDataCalls:I

    iput v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    .line 1957
    invoke-direct {v0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    .line 1960
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    .line 1963
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlPollStateResultMessage: GsmSST dataServiceState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " regState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dataRadioTechnology="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1967
    :cond_b
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1969
    invoke-direct {v0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v3

    .line 1970
    .local v3, "isDataRoaming":Z
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1973
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    .line 1976
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlPollStateResultMessage: cdma dataServiceState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " regState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " dataRadioTechnology="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1980
    .end local v3    # "isDataRoaming":Z
    goto :goto_3

    .line 1988
    :cond_c
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v4

    .line 1989
    .local v4, "oldDataRAT":I
    if-nez v4, :cond_d

    if-nez v10, :cond_f

    .line 1991
    :cond_d
    invoke-static {v4}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {v10}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v6

    if-nez v6, :cond_f

    .line 1992
    :cond_e
    invoke-static {v4}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1993
    invoke-static {v10}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1994
    :cond_f
    iget-object v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v6, v3}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 1998
    :cond_10
    invoke-direct {v0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v3

    .line 1999
    .restart local v3    # "isDataRoaming":Z
    iget-object v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v3}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2002
    iget-object v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v3}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    .line 2004
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handlPollStateResultMessage: CdmaLteSST dataServiceState="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " registrationState="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " dataRadioTechnology="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2010
    .end local v3    # "isDataRoaming":Z
    .end local v4    # "oldDataRAT":I
    :goto_3
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2011
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationState;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->getLteEarfcn(Landroid/telephony/CellIdentity;)I

    move-result v4

    .line 2010
    invoke-direct {v0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->updateServiceStateLteEarfcnBoost(Landroid/telephony/ServiceState;I)V

    .line 2012
    goto/16 :goto_9

    .line 1855
    .end local v5    # "networkRegState":Landroid/telephony/NetworkRegistrationState;
    .end local v7    # "dataSpecificStates":Landroid/telephony/DataSpecificRegistrationStates;
    .end local v8    # "registrationState":I
    .end local v9    # "serviceState":I
    .end local v10    # "newDataRat":I
    :pswitch_2
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/NetworkRegistrationState;

    .line 1856
    .local v4, "networkRegState":Landroid/telephony/NetworkRegistrationState;
    nop

    .line 1857
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationState;->getVoiceSpecificStates()Landroid/telephony/VoiceSpecificRegistrationStates;

    move-result-object v8

    .line 1859
    .local v8, "voiceSpecificStates":Landroid/telephony/VoiceSpecificRegistrationStates;
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationState;->getRegState()I

    move-result v9

    .line 1860
    .local v9, "registrationState":I
    iget-boolean v10, v8, Landroid/telephony/VoiceSpecificRegistrationStates;->cssSupported:Z

    .line 1861
    .local v10, "cssIndicator":I
    nop

    .line 1862
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationState;->getAccessNetworkTechnology()I

    move-result v11

    .line 1861
    invoke-static {v11}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v11

    .line 1864
    .local v11, "newVoiceRat":I
    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeToServiceState(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 1865
    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12, v10}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    .line 1866
    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12, v11}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 1867
    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12, v4}, Landroid/telephony/ServiceState;->addNetworkRegistrationState(Landroid/telephony/NetworkRegistrationState;)V

    .line 1868
    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationState;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Lcom/android/internal/telephony/ServiceStateTracker;->setPhyCellInfoFromCellIdentity(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V

    .line 1871
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationState;->getReasonForDenial()I

    move-result v12

    .line 1872
    .local v12, "reasonForDenial":I
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationState;->isEmergencyEnabled()Z

    move-result v13

    iput-boolean v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    .line 1873
    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1875
    invoke-direct {v0, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    .line 1876
    iput v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRejectCode:I

    .line 1878
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x11200d6

    .line 1879
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 1880
    goto/16 :goto_7

    .line 1881
    :cond_11
    iget v13, v8, Landroid/telephony/VoiceSpecificRegistrationStates;->roamingIndicator:I

    .line 1884
    .local v13, "roamingIndicator":I
    iget v14, v8, Landroid/telephony/VoiceSpecificRegistrationStates;->systemIsInPrl:I

    .line 1887
    .local v14, "systemIsInPrl":I
    iget v15, v8, Landroid/telephony/VoiceSpecificRegistrationStates;->defaultRoamingIndicator:I

    .line 1889
    .local v15, "defaultRoamingIndicator":I
    iput v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    .line 1893
    nop

    .line 1894
    invoke-direct {v0, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 1896
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1895
    invoke-direct {v0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamIndForHomeSystem(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    move v5, v6

    goto :goto_4

    :cond_12
    const/4 v5, 0x0

    .line 1897
    .local v5, "cdmaRoaming":Z
    :goto_4
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v5}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 1898
    iput v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    .line 1899
    if-nez v14, :cond_13

    const/4 v3, 0x0

    goto :goto_5

    :cond_13
    move v3, v6

    :goto_5
    iput-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    .line 1900
    iput v15, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    .line 1902
    const/4 v3, 0x0

    .line 1903
    .local v3, "systemId":I
    const/16 v16, 0x0

    .line 1904
    .local v16, "networkId":I
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationState;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v6

    .line 1905
    .local v6, "cellIdentity":Landroid/telephony/CellIdentity;
    if-eqz v6, :cond_14

    invoke-virtual {v6}, Landroid/telephony/CellIdentity;->getType()I

    move-result v1

    if-ne v1, v7, :cond_14

    .line 1906
    move-object v1, v6

    check-cast v1, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v3

    .line 1907
    move-object v1, v6

    check-cast v1, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v16

    .line 1909
    .end local v16    # "networkId":I
    .local v1, "networkId":I
    :cond_14
    move/from16 v1, v16

    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7, v3, v1}, Landroid/telephony/ServiceState;->setCdmaSystemAndNetworkId(II)V

    .line 1911
    if-nez v12, :cond_15

    .line 1912
    const-string v7, "General"

    iput-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_6

    .line 1913
    :cond_15
    const/4 v7, 0x1

    if-ne v12, v7, :cond_16

    .line 1914
    const-string v7, "Authentication Failure"

    iput-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_6

    .line 1916
    :cond_16
    const-string v7, ""

    iput-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    .line 1919
    :goto_6
    iget v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    move/from16 v17, v1

    const/4 v1, 0x3

    if-ne v7, v1, :cond_17

    .line 1920
    .end local v1    # "networkId":I
    .local v17, "networkId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Registration denied, "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1924
    .end local v3    # "systemId":I
    .end local v5    # "cdmaRoaming":Z
    .end local v6    # "cellIdentity":Landroid/telephony/CellIdentity;
    .end local v13    # "roamingIndicator":I
    .end local v14    # "systemIsInPrl":I
    .end local v15    # "defaultRoamingIndicator":I
    .end local v17    # "networkId":I
    :cond_17
    :goto_7
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationState;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->processCellLocationInfo(Landroid/telephony/CellLocation;Landroid/telephony/CellIdentity;)V

    .line 1927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlPollVoiceRegResultMessage: regState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " radioTechnology="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1930
    goto :goto_9

    .line 2070
    .end local v4    # "networkRegState":Landroid/telephony/NetworkRegistrationState;
    .end local v8    # "voiceSpecificStates":Landroid/telephony/VoiceSpecificRegistrationStates;
    .end local v9    # "registrationState":I
    .end local v10    # "cssIndicator":I
    .end local v11    # "newVoiceRat":I
    .end local v12    # "reasonForDenial":I
    :cond_18
    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 2071
    .local v1, "ints":[I
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v5, 0x0

    aget v6, v1, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_19

    move v6, v7

    goto :goto_8

    :cond_19
    move v6, v5

    :goto_8
    invoke-virtual {v3, v6}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 2072
    aget v3, v1, v5

    if-ne v3, v7, :cond_1a

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->shouldForceAutoNetworkSelect()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2078
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 2079
    const-string v3, " Forcing Automatic Network Selection, manual selection is not allowed"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2088
    .end local v1    # "ints":[I
    :cond_1a
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 3

    .line 4293
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4294
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 4295
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 4296
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 4299
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/16 v2, 0x36

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 4301
    return-void
.end method

.method protected inSameCountry(Ljava/lang/String;)Z
    .locals 8
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 4624
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    goto :goto_3

    .line 4628
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getHomeOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 4629
    .local v0, "homeNumeric":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_1

    goto :goto_2

    .line 4633
    :cond_1
    const/4 v2, 0x1

    .line 4634
    .local v2, "inSameCountry":Z
    const/4 v3, 0x3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 4635
    .local v4, "networkMCC":Ljava/lang/String;
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 4636
    .local v3, "homeMCC":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v5

    .line 4637
    .local v5, "networkCountry":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v6

    .line 4638
    .local v6, "homeCountry":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 4642
    :cond_2
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4643
    .end local v2    # "inSameCountry":Z
    .local v1, "inSameCountry":Z
    if-eqz v1, :cond_3

    .line 4644
    return v1

    .line 4647
    :cond_3
    const-string v2, "us"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "vi"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4648
    const/4 v1, 0x1

    goto :goto_0

    .line 4649
    :cond_4
    const-string v2, "vi"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "us"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4650
    const/4 v1, 0x1

    .line 4652
    :cond_5
    :goto_0
    return v1

    .line 4640
    .end local v1    # "inSameCountry":Z
    .restart local v2    # "inSameCountry":Z
    :cond_6
    :goto_1
    return v1

    .line 4631
    .end local v2    # "inSameCountry":Z
    .end local v3    # "homeMCC":Ljava/lang/String;
    .end local v4    # "networkMCC":Ljava/lang/String;
    .end local v5    # "networkCountry":Ljava/lang/String;
    .end local v6    # "homeCountry":Ljava/lang/String;
    :cond_7
    :goto_2
    return v1

    .line 4626
    .end local v0    # "homeNumeric":Ljava/lang/String;
    :cond_8
    :goto_3
    return v1
.end method

.method protected isCallerOnDifferentThread()Z
    .locals 2

    .line 4606
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4608
    .local v0, "value":Z
    :goto_0
    return v0
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 4

    .line 2693
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2695
    return v1

    .line 2696
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2697
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 2699
    :cond_2
    return v2
.end method

.method public isDeviceShuttingDown()Z
    .locals 1

    .line 4841
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    return v0
.end method

.method public isImsRegistered()Z
    .locals 1

    .line 4588
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .line 1609
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    return v0
.end method

.method protected final isNonRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .line 4836
    const-string v0, "cdma_nonroaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .line 4828
    const-string v0, "gsm_nonroaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRadioOn()Z
    .locals 2

    .line 2732
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final isRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .line 4832
    const-string v0, "cdma_roaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .line 4824
    const-string v0, "gsm_roaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isSidsAllZeros()Z
    .locals 3

    .line 1550
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    if-eqz v0, :cond_1

    .line 1551
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1552
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 1553
    return v0

    .line 1551
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1557
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected final log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2673
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    return-void
.end method

.method protected final loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2677
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    return-void
.end method

.method protected notifyDataRegStateRilRadioTechnologyChanged()V
    .locals 6

    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 748
    .local v0, "rat":I
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    .line 749
    .local v1, "drs":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataRegStateRilRadioTechnologyChanged: drs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 751
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v3, "gsm.network.type"

    .line 752
    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v4

    .line 751
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 754
    return-void
.end method

.method public notifyServiceStateChanged()V
    .locals 2

    .line 4885
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 4886
    return-void
.end method

.method protected notifySignalStrength()Z
    .locals 4

    .line 721
    const/4 v0, 0x0

    .line 726
    .local v0, "notified":Z
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v2}, Landroid/telephony/SignalStrength;->equalsDbm(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 730
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySignalStrength()V

    .line 731
    const/4 v0, 0x1

    .line 732
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    goto :goto_0

    .line 733
    :catch_0
    move-exception v1

    .line 734
    .local v1, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSignalStrength() Phone already destroyed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "SignalStrength not notified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 738
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    return v0
.end method

.method public onImsCapabilityChanged()V
    .locals 1

    .line 2728
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2729
    return-void
.end method

.method public onImsServiceStateChanged()V
    .locals 1

    .line 2705
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2706
    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;)Z
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 4238
    const/4 v0, 0x0

    .line 4239
    .local v0, "isGsm":Z
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 4240
    .local v1, "dataRat":I
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    .line 4244
    .local v2, "voiceRat":I
    const/16 v3, 0x12

    if-eq v1, v3, :cond_0

    .line 4245
    invoke-static {v1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eq v2, v3, :cond_2

    .line 4247
    invoke-static {v2}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4248
    :cond_1
    const/4 v0, 0x1

    .line 4254
    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_5

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_5

    .line 4255
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/SignalStrength;

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4256
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->validateInput()V

    .line 4257
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 4259
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->fixType()V

    goto :goto_0

    .line 4261
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3, v0}, Landroid/telephony/SignalStrength;->setGsm(Z)V

    .line 4263
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getLteEarfcnRsrpBoost()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/SignalStrength;->setLteRsrpBoost(I)V

    .line 4265
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 4266
    .local v3, "config":Landroid/os/PersistableBundle;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-string v5, "use_only_rsrp_for_lte_signal_bar_bool"

    invoke-virtual {v3, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/SignalStrength;->setUseOnlyRsrpForLteLevel(Z)V

    .line 4268
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-string v5, "lte_rsrp_thresholds_int_array"

    invoke-virtual {v3, v5}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/telephony/SignalStrength;->setLteRsrpThresholds([I)V

    .line 4270
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-string v5, "wcdma_default_signal_strength_measurement_string"

    invoke-virtual {v3, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/telephony/SignalStrength;->setWcdmaDefaultSignalMeasurement(Ljava/lang/String;)V

    .line 4272
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-string v5, "wcdma_rscp_thresholds_int_array"

    invoke-virtual {v3, v5}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/telephony/SignalStrength;->setWcdmaRscpThresholds([I)V

    .line 4275
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v4

    if-nez v4, :cond_4

    .line 4276
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->fixType()V

    .line 4278
    .end local v3    # "config":Landroid/os/PersistableBundle;
    :cond_4
    goto :goto_1

    .line 4279
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSignalStrengthResult() Exception from RIL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4280
    new-instance v3, Landroid/telephony/SignalStrength;

    invoke-direct {v3, v0}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4283
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySignalStrength()Z

    move-result v3

    .line 4285
    .local v3, "ssChanged":Z
    return v3
.end method

.method protected onUpdateIccAvailability()V
    .locals 4

    .line 2621
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    .line 2622
    return-void

    .line 2625
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2627
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_4

    .line 2628
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2629
    const-string v1, "Removing stale icc objects."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2630
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 2631
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_1

    .line 2632
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2634
    :cond_1
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2635
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2637
    :cond_2
    if-eqz v0, :cond_4

    .line 2638
    const-string v1, "New card found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2639
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2640
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2641
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2642
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v3, 0x11

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2643
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_4

    .line 2644
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v3, 0x10

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 2646
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v1, :cond_4

    .line 2647
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v3, 0x1a

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2648
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_4

    .line 2649
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v3, 0x1b

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2654
    :cond_4
    :goto_0
    return-void
.end method

.method protected parseSidNid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "sidStr"    # Ljava/lang/String;
    .param p2, "nidStr"    # Ljava/lang/String;

    .line 1648
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1649
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1650
    .local v1, "sid":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    .line 1651
    move v2, v0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 1653
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    goto :goto_1

    .line 1654
    :catch_0
    move-exception v3

    .line 1655
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error parsing system id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1651
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1659
    .end local v1    # "sid":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CDMA_SUBSCRIPTION: SID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1661
    if-eqz p2, :cond_1

    .line 1662
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1663
    .local v1, "nid":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    .line 1664
    nop

    .local v0, "i":I
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1666
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1669
    goto :goto_3

    .line 1667
    :catch_1
    move-exception v2

    .line 1668
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA_SUBSCRIPTION: error parsing network id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1664
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1672
    .end local v0    # "i":I
    .end local v1    # "nid":[Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CDMA_SUBSCRIPTION: NID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1673
    return-void
.end method

.method public pollState()V
    .locals 1

    .line 2744
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState(Z)V

    .line 2745
    return-void
.end method

.method public pollState(Z)V
    .locals 6
    .param p1, "modemTriggered"    # Z

    .line 2756
    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 2757
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 2759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pollState: modemTriggered="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2761
    sget-object v1, Lcom/android/internal/telephony/ServiceStateTracker$2;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 2771
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 2772
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    invoke-virtual {v1}, Landroid/telephony/CellLocation;->setStateInvalid()V

    .line 2773
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2774
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v1}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    .line 2777
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    const/16 v1, 0x12

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2779
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 2784
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    goto :goto_1

    .line 2780
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    .line 2781
    goto :goto_2

    .line 2763
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 2764
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    invoke-virtual {v0}, Landroid/telephony/CellLocation;->setStateInvalid()V

    .line 2765
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2766
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    .line 2767
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    .line 2768
    goto :goto_2

    .line 2791
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v3, v1, v2

    add-int/2addr v3, v0

    aput v3, v1, v2

    .line 2792
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 2794
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v3, v1, v2

    add-int/2addr v3, v0

    aput v3, v1, v2

    .line 2795
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v3, 0x2

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 2797
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2796
    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/NetworkRegistrationManager;->getNetworkRegistrationState(ILandroid/os/Message;)V

    .line 2799
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v3, v1, v2

    add-int/2addr v3, v0

    aput v3, v1, v2

    .line 2800
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 2802
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2801
    invoke-virtual {v1, v0, v3}, Lcom/android/internal/telephony/NetworkRegistrationManager;->getNetworkRegistrationState(ILandroid/os/Message;)V

    .line 2804
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2805
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v3, v1, v2

    add-int/2addr v3, v0

    aput v3, v1, v2

    .line 2806
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 2811
    :cond_2
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 5
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 4058
    monitor-enter p0

    .line 4059
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v0, :cond_5

    .line 4060
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 4063
    .local v0, "dds":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4064
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4065
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 4066
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4068
    :cond_0
    const-string v1, "radioTurnedOff"

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 4069
    const-string v1, "Data disconnected, turn off radio right away."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4070
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    goto/16 :goto_0

    .line 4073
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4074
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 4075
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 4076
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 4078
    :cond_2
    const-string v1, "radioTurnedOff"

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 4079
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    .line 4080
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4081
    const-string v1, "Data is active on DDS.  Wait for all data disconnect"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4084
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-virtual {v1, v0, p0, v3, v4}, Lcom/android/internal/telephony/ProxyController;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 4086
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 4088
    :cond_3
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 4089
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x26

    iput v3, v1, Landroid/os/Message;->what:I

    .line 4090
    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 4091
    const-wide/16 v3, 0x7530

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4092
    const-string v3, "Wait upto 30s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4093
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_0

    .line 4095
    :cond_4
    const-string v2, "Cannot send delayed Msg, turn off radio right away."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4096
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 4097
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 4101
    .end local v0    # "dds":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_5
    :goto_0
    monitor-exit p0

    .line 4102
    return-void

    .line 4101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public processPendingRadioPowerOffAfterDataOff()Z
    .locals 3

    .line 4110
    monitor-enter p0

    .line 4111
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4112
    const-string v0, "Process pending request to turn radio off."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4113
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 4114
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 4115
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 4116
    monitor-exit p0

    return v2

    .line 4118
    :cond_0
    monitor-exit p0

    return v1

    .line 4119
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reRegisterNetwork(Landroid/os/Message;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 881
    const/16 v1, 0x13

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 880
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 882
    return-void
.end method

.method public registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3929
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3930
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3932
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 3933
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 3935
    :cond_0
    return-void
.end method

.method public registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3947
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3948
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3950
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3951
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 3953
    :cond_0
    return-void
.end method

.method public registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3968
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3969
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3970
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 3971
    return-void
.end method

.method public registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;Z)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "notifyNow"    # Z

    .line 858
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 859
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 861
    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 862
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 864
    :cond_0
    return-void
.end method

.method public registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 836
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 837
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 839
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 842
    :cond_0
    return-void
.end method

.method public registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3983
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3985
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3986
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_0

    .line 3987
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 3989
    :cond_0
    return-void
.end method

.method public registerForNetworkDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4002
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4004
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4005
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4006
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 4008
    :cond_0
    return-void
.end method

.method public registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4040
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4041
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4043
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4044
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 4046
    :cond_0
    return-void
.end method

.method public registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4021
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4022
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4024
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4025
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 4027
    :cond_0
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 4412
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4413
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4415
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isMinInfoReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4416
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 4418
    :cond_0
    return-void
.end method

.method public registerForVoiceRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 815
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 816
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 818
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 819
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 821
    :cond_0
    return-void
.end method

.method public registerForVoiceRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 794
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 795
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 797
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 800
    :cond_0
    return-void
.end method

.method public requestShutdown()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 685
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 686
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    .line 687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 688
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    .line 689
    return-void
.end method

.method protected resetServiceStateInIwlanMode()V
    .locals 4

    .line 4771
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_1

    .line 4772
    const/4 v0, 0x0

    .line 4773
    .local v0, "resetIwlanRatVal":Z
    const-string v1, "set service state as POWER_OFF"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4774
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 4775
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0x12

    if-ne v2, v1, :cond_0

    .line 4776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pollStateDone: mNewSS = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4777
    const-string v1, "pollStateDone: reset iwlan RAT value"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4778
    const/4 v0, 0x1

    .line 4781
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 4782
    .local v1, "operator":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 4783
    if-eqz v0, :cond_1

    .line 4784
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v2}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 4785
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 4786
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 4787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pollStateDone: mNewSS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4790
    .end local v0    # "resetIwlanRatVal":Z
    .end local v1    # "operator":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 3
    .param p1, "registered"    # Z

    .line 2709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsRegistrationState - registered : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2711
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2712
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v0, :cond_0

    .line 2713
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 2715
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2716
    .local v0, "context":Landroid/content/Context;
    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 2717
    .local v1, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2718
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    .line 2720
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2721
    return-void

    .line 2724
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "am":Landroid/app/AlarmManager;
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 2725
    return-void
.end method

.method public setNotification(I)V
    .locals 18
    .param p1, "notifyType"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    .line 3704
    move/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNotification: create notification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3706
    iget v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot setNotification on invalid subid mSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3709
    return-void

    .line 3713
    :cond_0
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 3715
    .local v2, "isSetNotification":Z
    if-nez v2, :cond_1

    .line 3716
    const-string v3, "Ignore all the notifications"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3717
    return-void

    .line 3720
    :cond_1
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3722
    .local v3, "context":Landroid/content/Context;
    const-string v4, "carrier_config"

    .line 3723
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    .line 3724
    .local v4, "configManager":Landroid/telephony/CarrierConfigManager;
    const/16 v5, 0x3ee

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 3725
    invoke-virtual {v4}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v7

    .line 3726
    .local v7, "bundle":Landroid/os/PersistableBundle;
    if-eqz v7, :cond_3

    .line 3727
    const-string v8, "disable_voice_barring_notification_bool"

    invoke-virtual {v7, v8, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 3729
    .local v8, "disableVoiceBarringNotification":Z
    if-eqz v8, :cond_3

    const/16 v9, 0x3eb

    if-eq v1, v9, :cond_2

    const/16 v9, 0x3ed

    if-eq v1, v9, :cond_2

    if-ne v1, v5, :cond_3

    .line 3732
    :cond_2
    const-string v5, "Voice/emergency call barred notification disabled"

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3733
    return-void

    .line 3738
    .end local v7    # "bundle":Landroid/os/PersistableBundle;
    .end local v8    # "disableVoiceBarringNotification":Z
    :cond_3
    const-string v7, ""

    .line 3739
    .local v7, "details":Ljava/lang/CharSequence;
    const-string v8, ""

    .line 3740
    .local v8, "title":Ljava/lang/CharSequence;
    const/16 v9, 0x3e7

    .line 3741
    .local v9, "notificationId":I
    const v10, 0x108008a

    .line 3743
    .local v10, "icon":I
    iget-object v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "phone"

    .line 3744
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    move v11, v12

    goto :goto_0

    :cond_4
    move v11, v6

    .line 3745
    .local v11, "multipleSubscriptions":Z
    :goto_0
    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result v13

    add-int/2addr v13, v12

    .line 3747
    .local v13, "simNumber":I
    const/16 v14, 0x7d1

    if-eq v1, v14, :cond_a

    const v15, 0x1040037

    const v14, 0x1040038

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    .line 3781
    :pswitch_0
    const v5, 0x1040035

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 3782
    if-eqz v11, :cond_5

    .line 3783
    new-array v5, v12, [Ljava/lang/Object;

    .line 3785
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v6

    .line 3783
    invoke-virtual {v3, v14, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 3786
    :cond_5
    invoke-virtual {v3, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_1
    move-object v7, v5

    .line 3787
    goto/16 :goto_5

    .line 3773
    :pswitch_1
    const v5, 0x1040036

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 3774
    if-eqz v11, :cond_6

    .line 3775
    new-array v5, v12, [Ljava/lang/Object;

    .line 3777
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v6

    .line 3775
    invoke-virtual {v3, v14, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 3778
    :cond_6
    invoke-virtual {v3, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_2
    move-object v7, v5

    .line 3779
    goto/16 :goto_5

    .line 3790
    :pswitch_2
    goto/16 :goto_5

    .line 3765
    :pswitch_3
    const v5, 0x1040033

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 3766
    if-eqz v11, :cond_7

    .line 3767
    new-array v5, v12, [Ljava/lang/Object;

    .line 3769
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v6

    .line 3767
    invoke-virtual {v3, v14, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 3770
    :cond_7
    invoke-virtual {v3, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_3
    move-object v7, v5

    .line 3771
    goto/16 :goto_5

    .line 3762
    :pswitch_4
    const/16 v9, 0x378

    .line 3763
    goto/16 :goto_5

    .line 3749
    :pswitch_5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v5

    int-to-long v14, v5

    .line 3750
    .local v14, "dataSubId":J
    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v5

    move-object/from16 v16, v7

    int-to-long v6, v5

    .end local v7    # "details":Ljava/lang/CharSequence;
    .local v16, "details":Ljava/lang/CharSequence;
    cmp-long v5, v14, v6

    if-eqz v5, :cond_8

    .line 3751
    return-void

    .line 3753
    :cond_8
    const/16 v9, 0x378

    .line 3754
    const v5, 0x1040034

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 3755
    if-eqz v11, :cond_9

    .line 3756
    new-array v5, v12, [Ljava/lang/Object;

    .line 3758
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3756
    const v6, 0x1040038

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 3759
    :cond_9
    const v5, 0x1040037

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_4
    move-object v7, v5

    .line 3760
    .end local v16    # "details":Ljava/lang/CharSequence;
    .restart local v7    # "details":Ljava/lang/CharSequence;
    goto :goto_5

    .line 3792
    .end local v14    # "dataSubId":J
    :cond_a
    move-object/from16 v16, v7

    .end local v7    # "details":Ljava/lang/CharSequence;
    .restart local v16    # "details":Ljava/lang/CharSequence;
    const/16 v9, 0x6f

    .line 3793
    iget v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRejectCode:I

    invoke-direct {v0, v5, v11}, Lcom/android/internal/telephony/ServiceStateTracker;->selectResourceForRejectCode(IZ)I

    move-result v5

    .line 3794
    .local v5, "resId":I
    if-nez v5, :cond_b

    .line 3795
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNotification: mRejectCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRejectCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is not handled."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3796
    return-void

    .line 3798
    :cond_b
    const v10, 0x1080799

    .line 3800
    new-array v6, v12, [Ljava/lang/Object;

    iget v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v14, 0x0

    aput-object v7, v6, v14

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 3801
    const/4 v7, 0x0

    .line 3807
    .end local v5    # "resId":I
    .end local v16    # "details":Ljava/lang/CharSequence;
    .restart local v7    # "details":Ljava/lang/CharSequence;
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNotification, create notification, notifyType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", details: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", subId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3811
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 3812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 3813
    invoke-virtual {v5, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 3814
    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 3815
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 3816
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v12, 0x1060156

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 3818
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 3819
    invoke-virtual {v6, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 3820
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "alert"

    .line 3821
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 3822
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 3824
    const-string v5, "notification"

    .line 3825
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 3827
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    const/16 v6, 0x3ea

    if-eq v1, v6, :cond_10

    const/16 v6, 0x3ec

    if-ne v1, v6, :cond_c

    goto :goto_7

    .line 3831
    :cond_c
    const/4 v6, 0x0

    .line 3832
    .local v6, "show":Z
    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v12

    if-eqz v12, :cond_d

    const/16 v12, 0x3ee

    if-ne v1, v12, :cond_d

    .line 3834
    const/4 v6, 0x1

    goto :goto_6

    .line 3835
    :cond_d
    const/16 v12, 0x7d1

    if-ne v1, v12, :cond_e

    .line 3837
    const/4 v6, 0x1

    goto :goto_6

    .line 3838
    :cond_e
    iget-object v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getState()I

    move-result v12

    if-nez v12, :cond_f

    .line 3842
    const/4 v6, 0x1

    .line 3845
    :cond_f
    :goto_6
    if-eqz v6, :cond_11

    .line 3846
    iget v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v5, v12, v9, v14}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .end local v6    # "show":Z
    goto :goto_8

    .line 3829
    :cond_10
    :goto_7
    iget v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 3849
    :cond_11
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setOperatorIdd(Ljava/lang/String;)V
    .locals 4
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 3291
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    .line 3292
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3291
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HbpcdUtils;->getIddByMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 3293
    .local v0, "idd":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3294
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v2, "gsm.operator.idpstring"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setGlobalSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3298
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v2, "gsm.operator.idpstring"

    const-string v3, "+"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->setGlobalSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3300
    :goto_0
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 9

    .line 2570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDeviceShuttingDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDesiredPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getRadioState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2572
    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPowerOffDelayNeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAlarmSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRadioDisabledByCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2576
    .local v0, "tmpLog":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2577
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2580
    .end local v0    # "tmpLog":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v0, :cond_0

    .line 2581
    const-string v0, "mAlarmSwitch == true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2582
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2583
    .local v0, "context":Landroid/content/Context;
    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 2584
    .local v2, "am":Landroid/app/AlarmManager;
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2585
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    .line 2589
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "am":Landroid/app/AlarmManager;
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2590
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v4, :cond_1

    .line 2591
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2592
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2594
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    if-eqz v0, :cond_4

    .line 2595
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    if-nez v0, :cond_3

    .line 2596
    const-string v0, "mImsRegistrationOnOff == true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2597
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2598
    .restart local v0    # "context":Landroid/content/Context;
    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 2600
    .restart local v2    # "am":Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_RADIO_OFF"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2601
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {v0, v1, v4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 2603
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    .line 2604
    const-string v1, "Alarm setting"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2605
    const/4 v1, 0x2

    .line 2606
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0xbb8

    add-long/2addr v5, v7

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 2605
    invoke-virtual {v2, v1, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2607
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "am":Landroid/app/AlarmManager;
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 2608
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 2609
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 2610
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    goto :goto_0

    .line 2612
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 2613
    .restart local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 2614
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    goto :goto_0

    .line 2615
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2616
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    .line 2618
    :cond_6
    :goto_0
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 0
    .param p1, "power"    # Z

    .line 886
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 888
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    .line 889
    return-void
.end method

.method public setRadioPowerFromCarrier(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 897
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    .line 898
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    .line 899
    return-void
.end method

.method protected setRoamingType(Landroid/telephony/ServiceState;)V
    .locals 9
    .param p1, "currentServiceState"    # Landroid/telephony/ServiceState;

    .line 4660
    nop

    .line 4661
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4662
    .local v0, "isVoiceInService":Z
    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_8

    .line 4663
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4664
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4666
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4667
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_4

    .line 4670
    :cond_1
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_4

    .line 4675
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 4677
    .local v5, "intRoamingIndicators":[I
    if-eqz v5, :cond_5

    array-length v6, v5

    if-lez v6, :cond_5

    .line 4679
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 4680
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v6

    .line 4681
    .local v6, "curRoamingIndicator":I
    move v7, v1

    .local v7, "i":I
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_4

    .line 4682
    aget v8, v5, v7

    if-ne v6, v8, :cond_3

    .line 4683
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 4685
    goto :goto_2

    .line 4681
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4688
    .end local v6    # "curRoamingIndicator":I
    .end local v7    # "i":I
    :cond_4
    :goto_2
    goto :goto_3

    .line 4690
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4691
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_3

    .line 4694
    :cond_6
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 4698
    .end local v5    # "intRoamingIndicators":[I
    :goto_3
    goto :goto_4

    .line 4700
    :cond_7
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 4703
    :cond_8
    :goto_4
    nop

    .line 4704
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    if-nez v5, :cond_9

    move v5, v2

    goto :goto_5

    :cond_9
    move v5, v1

    .line 4705
    .local v5, "isDataInService":Z
    :goto_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v6

    .line 4706
    .local v6, "dataRegType":I
    if-eqz v5, :cond_11

    .line 4707
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v7

    if-nez v7, :cond_a

    .line 4708
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_6

    .line 4710
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4711
    invoke-static {v6}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4712
    if-eqz v0, :cond_b

    .line 4714
    nop

    .line 4715
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    .line 4714
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_6

    .line 4718
    :cond_b
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_6

    .line 4722
    :cond_c
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_6

    .line 4725
    :cond_d
    invoke-static {v6}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4726
    if-eqz v0, :cond_e

    .line 4728
    nop

    .line 4729
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    .line 4728
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_6

    .line 4733
    :cond_e
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_6

    .line 4737
    :cond_f
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4738
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_6

    .line 4740
    :cond_10
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    .line 4747
    :cond_11
    :goto_6
    return-void
.end method

.method public unregisterForDataConnectionAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3937
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3938
    return-void
.end method

.method public unregisterForDataConnectionDetached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3955
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3956
    return-void
.end method

.method public unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3973
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3974
    return-void
.end method

.method public unregisterForDataRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 868
    return-void
.end method

.method public unregisterForDataRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 845
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 846
    return-void
.end method

.method public unregisterForNetworkAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3992
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3993
    return-void
.end method

.method public unregisterForNetworkDetached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4011
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4012
    return-void
.end method

.method public unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4049
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4050
    return-void
.end method

.method public unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4030
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4031
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 4421
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4422
    return-void
.end method

.method public unregisterForVoiceRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 825
    return-void
.end method

.method public unregisterForVoiceRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 803
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 804
    return-void
.end method

.method protected updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "newOp"    # Ljava/lang/String;
    .param p2, "oldOp"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 4613
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 4614
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4615
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update mccmnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fromServiceState=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4616
    const/4 v0, 0x1

    invoke-static {p3, p1, v0}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4618
    :cond_2
    return-void
.end method

.method protected updateOtaspState()V
    .locals 4

    .line 1676
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getOtasp()I

    move-result v0

    .line 1677
    .local v0, "otaspMode":I
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    .line 1678
    .local v1, "oldOtaspMode":I
    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    .line 1680
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    if-eq v1, v2, :cond_0

    .line 1682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOtaspState: call notifyOtaspChanged old otaspMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " new otaspMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1685
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyOtaspChanged(I)V

    .line 1687
    :cond_0
    return-void
.end method

.method protected updatePhoneObject()V
    .locals 3

    .line 772
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 773
    const v1, 0x11200c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 776
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 777
    .local v0, "isRegistered":Z
    :goto_1
    if-nez v0, :cond_2

    .line 778
    const-string v1, "updatePhoneObject: Ignore update"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 779
    return-void

    .line 781
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->updatePhoneObject(I)V

    .line 783
    .end local v0    # "isRegistered":Z
    :cond_3
    return-void
.end method

.method public updatePhoneType()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-nez v0, :cond_2

    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 611
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_3

    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 615
    :cond_3
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 617
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 619
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 621
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 622
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 623
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    .line 624
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 625
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    .line 626
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 627
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 628
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-virtual {v2}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    .line 631
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    .line 633
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v0, :cond_4

    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 639
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaPrlChanged(Landroid/os/Handler;)V

    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForEriFileLoaded(Landroid/os/Handler;)V

    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    .line 644
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    .line 645
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    goto :goto_1

    .line 647
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v3, 0x10

    invoke-virtual {v2, p0, v3, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 648
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v2}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    .line 649
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v2}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    .line 650
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x27

    invoke-static {v2, v3, p0, v4, v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 652
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 655
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x28

    invoke-interface {v2, p0, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 656
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v3, 0x24

    invoke-virtual {v2, p0, v3, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 657
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x25

    invoke-interface {v2, p0, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 659
    new-instance v0, Lcom/android/internal/telephony/HbpcdUtils;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/HbpcdUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    .line 661
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    .line 666
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onUpdateIccAvailability()V

    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v2, "gsm.network.type"

    .line 669
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    .line 668
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 675
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 677
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logPhoneTypeChange()V

    .line 680
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 681
    return-void
.end method

.method protected updateRoamingState()V
    .locals 7

    .line 2198
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 2212
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    move v0, v1

    .line 2214
    .local v0, "roaming":Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2215
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameNamedOperators(Landroid/telephony/ServiceState;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2216
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRoamingState: resource override set non roaming.isSameNamedOperators="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2217
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameNamedOperators(Landroid/telephony/ServiceState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isOperatorConsideredNonRoaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2218
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2216
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2219
    const/4 v0, 0x0

    .line 2222
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 2223
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 2225
    .local v1, "configLoader":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_7

    .line 2227
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 2229
    .local v2, "b":Landroid/os/PersistableBundle;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2230
    const-string v3, "updateRoamingState: carrier config override always on home network"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2231
    const/4 v0, 0x0

    goto :goto_2

    .line 2232
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRoamingState: carrier config override set non roaming:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2234
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2233
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2235
    const/4 v0, 0x0

    goto :goto_2

    .line 2236
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRoamingState: carrier config override set roaming:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2238
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2237
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2239
    const/4 v0, 0x1

    .line 2243
    .end local v2    # "b":Landroid/os/PersistableBundle;
    :cond_6
    :goto_2
    goto :goto_3

    .line 2241
    :catch_0
    move-exception v2

    .line 2242
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "updateRoamingState: unable to access carrier config service"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 2245
    :cond_7
    const-string v2, "updateRoamingState: no carrier config service available"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2248
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2249
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2250
    .end local v0    # "roaming":Z
    .end local v1    # "configLoader":Landroid/telephony/CarrierConfigManager;
    goto/16 :goto_7

    .line 2251
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 2252
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "carrier_config"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 2253
    .local v0, "configLoader":Landroid/telephony/CarrierConfigManager;
    if-eqz v0, :cond_e

    .line 2255
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 2256
    .local v3, "b":Landroid/os/PersistableBundle;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2258
    .local v4, "systemId":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2259
    const-string v5, "updateRoamingState: carrier config override always on home network"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2260
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingOff()V

    goto/16 :goto_5

    .line 2261
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 2262
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isNonRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_4

    .line 2266
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 2267
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2268
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateRoamingState: carrier config override set roaming:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2269
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2268
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2270
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingOn()V

    .end local v3    # "b":Landroid/os/PersistableBundle;
    .end local v4    # "systemId":Ljava/lang/String;
    goto :goto_5

    .line 2263
    .restart local v3    # "b":Landroid/os/PersistableBundle;
    .restart local v4    # "systemId":Ljava/lang/String;
    :cond_c
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateRoamingState: carrier config override set non-roaming:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2264
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2263
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2265
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingOff()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 2272
    .end local v3    # "b":Landroid/os/PersistableBundle;
    .end local v4    # "systemId":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 2273
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "updateRoamingState: unable to access carrier config service"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2274
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_5
    goto :goto_6

    .line 2276
    :cond_e
    const-string v3, "updateRoamingState: no carrier config service available"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2279
    :goto_6
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_f

    const-string v3, "telephony.test.forceRoaming"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2280
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2281
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2284
    .end local v0    # "configLoader":Landroid/telephony/CarrierConfigManager;
    :cond_f
    :goto_7
    return-void
.end method

.method protected updateSpnDisplay()V
    .locals 25

    .line 2322
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOperatorNameFromEri()V

    .line 2324
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOperatorNameFromCarrierConfig()V

    .line 2326
    const/4 v2, 0x0

    .line 2327
    .local v2, "wfcVoiceSpnFormat":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2328
    .local v3, "wfcDataSpnFormat":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCombinedRegState()I

    move-result v4

    .line 2329
    .local v4, "combinedRegState":I
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v4, :cond_2

    .line 2338
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x107007f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 2340
    .local v5, "wfcSpnFormats":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2341
    .local v6, "voiceIdx":I
    const/4 v7, 0x0

    .line 2342
    .local v7, "dataIdx":I
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 2343
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v8, "carrier_config"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/telephony/CarrierConfigManager;

    .line 2344
    .local v8, "configLoader":Landroid/telephony/CarrierConfigManager;
    if-eqz v8, :cond_1

    .line 2346
    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2347
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 2348
    const-string v9, "wfc_spn_format_idx_int"

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    move v6, v9

    .line 2349
    const-string v9, "wfc_data_spn_format_idx_int"

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v9

    .line 2354
    .end local v7    # "dataIdx":I
    .local v0, "dataIdx":I
    move v7, v0

    .end local v0    # "dataIdx":I
    .restart local v7    # "dataIdx":I
    :cond_0
    goto :goto_0

    .line 2352
    :catch_0
    move-exception v0

    .line 2353
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateSpnDisplay: carrier config error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2357
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    aget-object v2, v5, v6

    .line 2358
    aget-object v3, v5, v7

    .line 2361
    .end local v5    # "wfcSpnFormats":[Ljava/lang/String;
    .end local v6    # "voiceIdx":I
    .end local v7    # "dataIdx":I
    .end local v8    # "configLoader":Landroid/telephony/CarrierConfigManager;
    :cond_2
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const v6, 0x1040312

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_14

    .line 2380
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2381
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v10, 0x0

    .line 2382
    .local v10, "plmn":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2383
    .local v11, "showPlmn":Z
    if-eqz v0, :cond_3

    iget-object v12, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/uicc/IccRecords;->getDisplayRule(Landroid/telephony/ServiceState;)I

    move-result v12

    goto :goto_1

    :cond_3
    move v12, v9

    .line 2384
    .local v12, "rule":I
    :goto_1
    const/4 v13, 0x0

    .line 2385
    .local v13, "noService":Z
    if-eq v4, v8, :cond_7

    if-ne v4, v7, :cond_4

    goto :goto_3

    .line 2405
    :cond_4
    if-nez v4, :cond_6

    .line 2407
    iget-object v6, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v6

    .line 2408
    .end local v10    # "plmn":Ljava/lang/String;
    .local v6, "plmn":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    and-int/lit8 v10, v12, 0x2

    if-ne v10, v7, :cond_5

    move v10, v8

    goto :goto_2

    :cond_5
    move v10, v9

    .line 2424
    .end local v11    # "showPlmn":Z
    .local v10, "showPlmn":Z
    :goto_2
    move v11, v10

    goto/16 :goto_6

    .line 2413
    .end local v6    # "plmn":Ljava/lang/String;
    .local v10, "plmn":Ljava/lang/String;
    .restart local v11    # "showPlmn":Z
    :cond_6
    const/4 v11, 0x1

    .line 2414
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    .line 2415
    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2416
    .end local v10    # "plmn":Ljava/lang/String;
    .restart local v6    # "plmn":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSpnDisplay: radio is off w/ showPlmn="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " plmn="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 2387
    .end local v6    # "plmn":Ljava/lang/String;
    .restart local v10    # "plmn":Ljava/lang/String;
    :cond_7
    :goto_3
    const/4 v11, 0x1

    .line 2390
    iget-object v14, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1120048

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_8

    iget-boolean v14, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSimReady:Z

    if-nez v14, :cond_8

    move v14, v8

    goto :goto_4

    :cond_8
    move v14, v9

    .line 2393
    .local v14, "forceDisplayNoService":Z
    :goto_4
    iget-boolean v15, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v15, :cond_9

    if-nez v14, :cond_9

    .line 2395
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v15, 0x10401d6

    .line 2396
    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v10    # "plmn":Ljava/lang/String;
    .restart local v6    # "plmn":Ljava/lang/String;
    goto :goto_5

    .line 2399
    .end local v6    # "plmn":Ljava/lang/String;
    .restart local v10    # "plmn":Ljava/lang/String;
    :cond_9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    .line 2400
    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2401
    .end local v10    # "plmn":Ljava/lang/String;
    .restart local v6    # "plmn":Ljava/lang/String;
    const/4 v10, 0x1

    .line 2403
    .end local v13    # "noService":Z
    .local v10, "noService":Z
    move v13, v10

    .end local v10    # "noService":Z
    .restart local v13    # "noService":Z
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateSpnDisplay: radio is on but out of service, set plmn=\'"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\'"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2405
    .end local v14    # "forceDisplayNoService":Z
    nop

    .line 2424
    :goto_6
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_a
    const-string v10, ""

    .line 2425
    .local v10, "spn":Ljava/lang/String;
    :goto_7
    move-object v14, v10

    .line 2426
    .local v14, "dataSpn":Ljava/lang/String;
    if-nez v13, :cond_b

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_b

    and-int/lit8 v15, v12, 0x1

    if-ne v15, v8, :cond_b

    move v15, v8

    goto :goto_8

    :cond_b
    move v15, v9

    .line 2430
    .local v15, "showSpn":Z
    :goto_8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 2431
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 2435
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 2436
    .local v16, "originalSpn":Ljava/lang/String;
    new-array v7, v8, [Ljava/lang/Object;

    aput-object v16, v7, v9

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 2437
    new-array v7, v8, [Ljava/lang/Object;

    aput-object v16, v7, v9

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2438
    const/4 v15, 0x1

    .line 2439
    const/4 v11, 0x0

    .line 2440
    .end local v16    # "originalSpn":Ljava/lang/String;
    goto :goto_9

    :cond_c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 2443
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 2444
    .local v7, "originalPlmn":Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v7, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2445
    .end local v7    # "originalPlmn":Ljava/lang/String;
    goto :goto_9

    :cond_d
    iget-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_e

    if-eqz v11, :cond_f

    .line 2446
    invoke-static {v10, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2448
    :cond_e
    const/4 v10, 0x0

    .line 2449
    const/4 v15, 0x0

    .line 2452
    :cond_f
    :goto_9
    const/4 v5, -0x1

    .line 2453
    .local v5, "subId":I
    iget-object v7, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v7

    .line 2454
    .local v7, "subIds":[I
    if-eqz v7, :cond_10

    array-length v8, v7

    if-lez v8, :cond_10

    .line 2455
    aget v5, v7, v9

    .line 2459
    :cond_10
    iget v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    if-ne v8, v5, :cond_12

    iget-boolean v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    if-ne v11, v8, :cond_12

    iget-boolean v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    if-ne v15, v8, :cond_12

    iget-object v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 2462
    invoke-static {v10, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    .line 2463
    invoke-static {v14, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 2464
    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-boolean v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleChanged:Z

    if-eqz v8, :cond_11

    goto :goto_a

    .line 2489
    :cond_11
    move-object/from16 v24, v0

    goto/16 :goto_b

    .line 2470
    :cond_12
    :goto_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSpnDisplay: changed sending intent rule="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " showPlmn=\'%b\' plmn=\'%s\' showSpn=\'%b\' spn=\'%s\' dataSpn=\'%s\' subId=\'%d\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    .line 2472
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v18, 0x0

    aput-object v16, v9, v18

    const/16 v16, 0x1

    aput-object v6, v9, v16

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v17, 0x2

    aput-object v16, v9, v17

    const/16 v16, 0x3

    aput-object v10, v9, v16

    const/16 v16, 0x4

    aput-object v14, v9, v16

    const/16 v16, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v9, v16

    .line 2470
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2474
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2475
    .local v8, "intent":Landroid/content/Intent;
    const-string v9, "showSpn"

    invoke-virtual {v8, v9, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2476
    const-string v9, "spn"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2477
    const-string v9, "spnData"

    invoke-virtual {v8, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2478
    const-string v9, "showPlmn"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2479
    const-string v9, "plmn"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2480
    iget-object v9, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v9

    invoke-static {v8, v9}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 2481
    iget-object v9, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v24, v0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .end local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .local v24, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v9, v8, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2483
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v9, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v19

    move-object/from16 v18, v0

    move/from16 v20, v11

    move-object/from16 v21, v6

    move/from16 v22, v15

    move-object/from16 v23, v10

    invoke-virtual/range {v18 .. v23}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2485
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    .line 2489
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_13
    :goto_b
    iput v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    .line 2490
    iput-boolean v15, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    .line 2491
    iput-boolean v11, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    .line 2492
    iput-object v10, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 2493
    iput-object v14, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    .line 2494
    iput-object v6, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 2495
    .end local v5    # "subId":I
    .end local v6    # "plmn":Ljava/lang/String;
    .end local v7    # "subIds":[I
    .end local v10    # "spn":Ljava/lang/String;
    .end local v11    # "showPlmn":Z
    .end local v12    # "rule":I
    .end local v13    # "noService":Z
    .end local v14    # "dataSpn":Ljava/lang/String;
    .end local v15    # "showSpn":Z
    .end local v24    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    goto/16 :goto_e

    .line 2497
    :cond_14
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v0

    .line 2498
    .local v0, "plmn":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2500
    .local v5, "showPlmn":Z
    if-eqz v0, :cond_15

    const/4 v7, 0x1

    goto :goto_c

    :cond_15
    const/4 v7, 0x0

    :goto_c
    move v5, v7

    .line 2502
    const/4 v7, -0x1

    .line 2503
    .local v7, "subId":I
    iget-object v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v14

    .line 2504
    .local v14, "subIds":[I
    if-eqz v14, :cond_16

    array-length v8, v14

    if-lez v8, :cond_16

    .line 2505
    const/4 v8, 0x0

    aget v7, v14, v8

    .line 2508
    :cond_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_17

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_17

    .line 2511
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 2512
    .local v8, "originalPlmn":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v10, v9

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2513
    .end local v8    # "originalPlmn":Ljava/lang/String;
    goto :goto_d

    :cond_17
    iget-object v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v8, v9, :cond_18

    .line 2517
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSpnDisplay: overwriting plmn from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to null as radio state is off"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2519
    const/4 v0, 0x0

    .line 2522
    :cond_18
    :goto_d
    const/4 v8, 0x1

    if-ne v4, v8, :cond_19

    .line 2523
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2524
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2526
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSpnDisplay: radio is on but out of svc, set plmn=\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2530
    :cond_19
    iget v6, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    if-ne v6, v7, :cond_1a

    iget-object v6, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1a

    iget-boolean v6, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleChanged:Z

    if-eqz v6, :cond_1b

    .line 2540
    :cond_1a
    const-string v6, "updateSpnDisplay: changed sending intent showPlmn=\'%b\' plmn=\'%s\' subId=\'%d\'"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 2541
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 2540
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2543
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2544
    .local v6, "intent":Landroid/content/Intent;
    const-string v8, "showSpn"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2545
    const-string v8, "spn"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2546
    const-string v8, "showPlmn"

    invoke-virtual {v6, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2547
    const-string v8, "plmn"

    invoke-virtual {v6, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2548
    iget-object v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v8

    invoke-static {v6, v8}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 2549
    iget-object v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v6, v9}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2551
    iget-object v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v9, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v9

    const/4 v12, 0x0

    const-string v13, ""

    move v10, v5

    move-object v11, v0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 2553
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    .line 2557
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_1b
    iput v7, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    .line 2558
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    .line 2559
    iput-boolean v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    .line 2560
    const-string v8, ""

    iput-object v8, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 2561
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 2563
    iput-boolean v6, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleChanged:Z

    .line 2566
    .end local v0    # "plmn":Ljava/lang/String;
    .end local v5    # "showPlmn":Z
    .end local v7    # "subId":I
    .end local v14    # "subIds":[I
    :goto_e
    return-void
.end method

.method protected useDataRegStateForDataOnlyDevices()V
    .locals 2

    .line 761
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useDataRegStateForDataOnlyDevice: VoiceRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " DataRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 764
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 769
    :cond_0
    return-void
.end method
