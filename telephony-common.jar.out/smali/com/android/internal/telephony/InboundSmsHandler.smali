.class public abstract Lcom/android/internal/telephony/InboundSmsHandler;
.super Lcom/android/internal/util/StateMachine;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;,
        Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;,
        Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;,
        Lcom/android/internal/telephony/InboundSmsHandler$IdleState;,
        Lcom/android/internal/telephony/InboundSmsHandler$StartupState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;
    }
.end annotation


# static fields
.field private static ACTION_OPEN_SMS_APP:Ljava/lang/String; = null

.field public static final ADDRESS_COLUMN:I = 0x6

.field protected static final CHINA_TELECOM_REGISTER_SMS_RESPONSE:I = 0x4

.field public static final COUNT_COLUMN:I = 0x5

.field public static final DATE_COLUMN:I = 0x3

.field protected static final DBG:Z = true

.field public static final DESTINATION_PORT_COLUMN:I = 0x2

.field public static final DISPLAY_ADDRESS_COLUMN:I = 0x9

.field private static final DM_WAKE_LOCK_TIMEOUT:I = 0x1388

.field private static final EVENT_BROADCAST_COMPLETE:I = 0x3

.field public static final EVENT_BROADCAST_SMS:I = 0x2

.field public static final EVENT_INJECT_SMS:I = 0x8

.field public static final EVENT_NEW_SMS:I = 0x1

.field private static final EVENT_RELEASE_WAKELOCK:I = 0x5

.field private static final EVENT_RETURN_TO_IDLE:I = 0x4

.field public static final EVENT_START_ACCEPTING_SMS:I = 0x6

.field private static final EVENT_UPDATE_PHONE_OBJECT:I = 0x7

.field public static final ID_COLUMN:I = 0x7

.field public static final MESSAGE_BODY_COLUMN:I = 0x8

.field private static final NOTIFICATION_ID_NEW_MESSAGE:I = 0x1

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "InboundSmsHandler"

.field public static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final REFERENCE_NUMBER_COLUMN:I = 0x4

.field public static final SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field public static final SEQUENCE_COLUMN:I = 0x1

.field private static final VDBG:Z = false

.field private static final WAKELOCK_TIMEOUT:I = 0xbb8

.field protected static final sRawUri:Landroid/net/Uri;

.field protected static final sRawUriPermanentDelete:Landroid/net/Uri;


# instance fields
.field private final DELETE_PERMANENTLY:I

.field private final MARK_DELETED:I

.field protected mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

.field protected final mContext:Landroid/content/Context;

.field private final mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

.field private final mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private final mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

.field private mInterceptServiceConnection:Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSmsReceiveDisabled:Z

.field private final mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

.field protected mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field private mUserManager:Landroid/os/UserManager;

.field private final mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockTimeout:I

.field private final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 105
    const-string v0, "pdu"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    .line 110
    const-string v0, "pdu"

    const-string v1, "sequence"

    const-string v2, "destination_port"

    const-string v3, "display_originating_addr"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/InboundSmsHandler$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 172
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .line 173
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw/permanentDelete"

    .line 174
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    .line 225
    const-string v0, "com.android.internal.telephony.OPEN_DEFAULT_SMS_APP"

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CellBroadcastHandler;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p4, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p5, "cellBroadcastHandler"    # Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 239
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    .line 189
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    .line 192
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    .line 195
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    .line 198
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    .line 221
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->DELETE_PERMANENTLY:I

    .line 223
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->MARK_DELETED:I

    .line 241
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 242
    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 243
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 244
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 245
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    .line 246
    new-instance v1, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 248
    new-instance v1, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mInterceptServiceConnection:Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;

    .line 251
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 253
    .local v1, "smsCapable":Z
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 254
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 253
    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->getSmsReceiveCapableForPhone(IZ)Z

    move-result v2

    xor-int/2addr v2, v0

    iput-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    .line 256
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 257
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2, v0, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    .line 260
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getIDeviceIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->setInitialState(Lcom/android/internal/util/State;)V

    .line 269
    const-string v0, "created InboundSmsHandler"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleInjectSms(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # I

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/InboundSmsHandler;[[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # [[B
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/InboundSmsHandler;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # I

    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->isSkipNotifyFlagSet(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .line 100
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    return-void
.end method

.method static synthetic access$2200([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [Landroid/telephony/SmsMessage;

    .line 100
    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mInterceptServiceConnection:Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;

    return-object v0
.end method

.method static synthetic access$2500()Ljava/lang/String;
    .locals 1

    .line 100
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/InboundSmsHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # I

    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->setWakeLockTimeout(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$IdleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleNewSms(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;Z)I
    .locals 13
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "deDup"    # Z

    .line 1274
    const/4 v0, 0x2

    if-eqz p2, :cond_1

    .line 1276
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->duplicateExists(Lcom/android/internal/telephony/InboundSmsTracker;)Z

    move-result v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 1277
    const/4 v0, 0x5

    return v0

    .line 1282
    :cond_0
    goto :goto_0

    .line 1279
    :catch_0
    move-exception v1

    .line 1280
    .local v1, "e":Landroid/database/SQLException;
    const-string v2, "Can\'t access SMS database"

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1281
    return v0

    .line 1284
    .end local v1    # "e":Landroid/database/SQLException;
    :cond_1
    const-string v1, "Skipped message de-duping logic"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->logd(Ljava/lang/String;)V

    .line 1287
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1288
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1289
    .local v2, "refNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1290
    .local v3, "count":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 1293
    .local v4, "values":Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 1294
    .local v5, "newUri":Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URI of new row -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1297
    :try_start_1
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 1298
    .local v6, "rowId":J
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v8, v10, :cond_2

    .line 1300
    const-string v8, "_id=?"

    new-array v11, v10, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-virtual {p1, v8, v11}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 1303
    :cond_2
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    aput-object v1, v8, v9

    aput-object v2, v8, v10

    aput-object v3, v8, v0

    .line 1304
    .local v8, "deleteWhereArgs":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getQueryForSegments()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9, v8}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1306
    .end local v8    # "deleteWhereArgs":[Ljava/lang/String;
    :goto_1
    return v10

    .line 1307
    .end local v6    # "rowId":J
    :catch_1
    move-exception v6

    .line 1308
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error parsing URI for new row: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1309
    return v0
.end method

.method private static buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 5
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    .line 1565
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1567
    aget-object v0, p0, v1

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1570
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1571
    .local v0, "body":Ljava/lang/StringBuilder;
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p0, v1

    .line 1577
    .local v3, "msg":Landroid/telephony/SmsMessage;
    if-eqz v3, :cond_1

    .line 1579
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    .end local v3    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1583
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static cancelNewMessageNotification(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 999
    const-string v0, "notification"

    .line 1000
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1001
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const-string v1, "InboundSmsHandler"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1003
    return-void
.end method

.method private createInterceptIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1822
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 1823
    .local v0, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 1824
    .local v1, "sms":Landroid/telephony/SmsMessage;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1825
    .local v2, "interceptIntent":Landroid/content/Intent;
    const-string v3, "number"

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1826
    const-string v3, "body"

    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1827
    return-object v2
.end method

.method private deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;
    .param p3, "deleteType"    # I

    .line 1111
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .line 1112
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1113
    .local v1, "rows":I
    if-nez v1, :cond_1

    .line 1114
    const-string v2, "No rows were deleted from raw table!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1116
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rows from raw table."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1118
    :goto_1
    return-void
.end method

.method private dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 3
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .line 616
    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 617
    const-string v1, "dispatchSmsMessage: message is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 618
    return v0

    .line 621
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    if-eqz v1, :cond_1

    .line 623
    const-string v0, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 625
    const/4 v0, 0x1

    return v0

    .line 629
    :cond_1
    const/4 v1, 0x0

    .line 631
    .local v1, "onlyCore":Z
    :try_start_0
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 632
    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 634
    goto :goto_0

    .line 633
    :catch_0
    move-exception v2

    .line 635
    :goto_0
    if-eqz v1, :cond_2

    .line 637
    const-string v2, "Received a short message in encrypted state. Rejecting."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 638
    return v0

    .line 641
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    return v0
.end method

.method private dispatchSmsDeliveryIntent([[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V
    .locals 9
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "resultReceiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .line 1153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1154
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1155
    const-string v1, "format"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1157
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p3, v2, :cond_3

    .line 1158
    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1162
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 1163
    .local v2, "componentName":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 1165
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delivering SMS to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1166
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1169
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1173
    :goto_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1174
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 1175
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 1177
    const-string v3, "uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1182
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getAppSmsManager()Lcom/android/internal/telephony/AppSmsManager;

    move-result-object v1

    .line 1183
    .local v1, "appManager":Lcom/android/internal/telephony/AppSmsManager;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/AppSmsManager;->handleSmsReceivedIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1185
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    .line 1186
    return-void

    .line 1188
    .end local v1    # "appManager":Lcom/android/internal/telephony/AppSmsManager;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_2
    goto :goto_1

    .line 1189
    :cond_3
    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1191
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1192
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1195
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1198
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_1
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v8

    .line 1199
    .local v8, "options":Landroid/os/Bundle;
    const-string v3, "android.permission.RECEIVE_SMS"

    const/16 v4, 0x10

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v1, p0

    move-object v2, v0

    move-object v5, v8

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1201
    return-void
.end method

.method private dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V
    .locals 3
    .param p1, "receiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .line 1458
    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->access$2000(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->access$2100(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 1459
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 1460
    return-void
.end method

.method private duplicateExists(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 17
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1210
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1212
    .local v2, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1213
    .local v3, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1215
    .local v4, "count":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v5

    .line 1216
    .local v5, "sequence":I
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 1217
    .local v6, "seqNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 1218
    .local v7, "date":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    .line 1220
    .local v8, "messageBody":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    .line 1221
    const-string v0, "address=? AND reference_number=? AND count=? AND sequence=? AND date=? AND message_body=?"

    .line 1227
    .local v13, "where":Ljava/lang/String;
    :goto_0
    move-object v13, v0

    goto :goto_1

    .end local v13    # "where":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getQueryForMultiPartDuplicates()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1230
    .restart local v13    # "where":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    move-object/from16 v16, v0

    .line 1233
    .local v16, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v10, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v11, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v12, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v14, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v2, v14, v0

    aput-object v3, v14, v9

    const/4 v15, 0x2

    aput-object v4, v14, v15

    const/4 v15, 0x3

    aput-object v6, v14, v15

    const/4 v15, 0x4

    aput-object v7, v14, v15

    const/4 v15, 0x5

    aput-object v8, v14, v15

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1238
    .end local v16    # "cursor":Landroid/database/Cursor;
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1239
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Discarding duplicate message segment, refNumber="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " seqNumber="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " count="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1245
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1246
    .local v0, "oldPduString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v11

    .line 1247
    .local v11, "pdu":[B
    invoke-static {v0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v12

    .line 1248
    .local v12, "oldPdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v14

    invoke-static {v12, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1249
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Warning: dup message segment PDU of length "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " is different from existing PDU of length "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v12

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1252
    :cond_1
    nop

    .line 1255
    if-eqz v10, :cond_2

    .line 1256
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1252
    :cond_2
    return v9

    .line 1255
    .end local v0    # "oldPduString":Ljava/lang/String;
    .end local v11    # "pdu":[B
    .end local v12    # "oldPdu":[B
    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    if-eqz v10, :cond_4

    .line 1256
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1260
    :cond_4
    return v0

    .line 1255
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object/from16 v10, v16

    .end local v16    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :goto_2
    if-eqz v10, :cond_5

    .line 1256
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z
    .locals 9
    .param p1, "pdus"    # [[B
    .param p2, "destPort"    # I
    .param p3, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p4, "resultReceiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .param p5, "userUnlocked"    # Z

    .line 1025
    new-instance v7, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;

    .line 1027
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)V

    move-object v6, v7

    .line 1028
    .local v6, "filterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;
    new-instance v8, Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1029
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v0, v8

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;[[BILjava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;Ljava/lang/String;)V

    .line 1030
    .local v0, "carrierServicesFilter":Lcom/android/internal/telephony/CarrierServicesSmsFilter;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->filter()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1031
    return v2

    .line 1034
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 1035
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 1034
    invoke-static {v1, p1, v3, p2, v4}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->filter(Landroid/content/Context;[[BLjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1036
    const-string v1, "Visual voicemail SMS dropped"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1037
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    .line 1038
    return v2

    .line 1041
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private handleInjectSms(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 587
    const/4 v0, 0x0

    .line 589
    .local v0, "callback":Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;
    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;

    move-object v0, v1

    .line 590
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/SmsMessage;

    .line 591
    .local v1, "sms":Landroid/telephony/SmsMessage;
    if-nez v1, :cond_0

    .line 592
    const/4 v2, 0x2

    .local v2, "result":I
    goto :goto_0

    .line 594
    .end local v2    # "result":I
    :cond_0
    iget-object v2, v1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "sms":Landroid/telephony/SmsMessage;
    .restart local v2    # "result":I
    :goto_0
    move v1, v2

    .line 599
    .end local v2    # "result":I
    .local v1, "result":I
    goto :goto_1

    .line 596
    .end local v1    # "result":I
    :catch_0
    move-exception v1

    .line 597
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v2, "Exception dispatching message"

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 598
    const/4 v1, 0x2

    .line 601
    .local v1, "result":I
    :goto_1
    if-eqz v0, :cond_1

    .line 602
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    .line 604
    :cond_1
    return-void
.end method

.method private handleNewSms(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 552
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception processing incoming SMS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 554
    return-void

    .line 559
    :cond_0
    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/SmsMessage;

    .line 560
    .local v0, "sms":Landroid/telephony/SmsMessage;
    iget-object v1, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v1

    .line 562
    .local v1, "result":I
    const/4 v2, 0x4

    if-ne v2, v1, :cond_1

    .line 564
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->processRegisterSmsResponse(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    return-void

    .line 571
    .end local v0    # "sms":Landroid/telephony/SmsMessage;
    :cond_1
    goto :goto_0

    .line 568
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 569
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "Exception dispatching message"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 570
    const/4 v1, 0x2

    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "result":I
    :goto_0
    move v0, v1

    .line 575
    .end local v1    # "result":I
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 576
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 577
    .local v1, "handled":Z
    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 579
    .end local v1    # "handled":Z
    :cond_3
    return-void
.end method

.method private handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 6
    .param p1, "target"    # Landroid/content/ComponentName;

    .line 1123
    if-eqz p1, :cond_0

    .line 1124
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1125
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "sms-app"

    .local v1, "reason":Ljava/lang/String;
    goto :goto_0

    .line 1127
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1128
    .restart local v0    # "pkgName":Ljava/lang/String;
    const-string v1, "sms-broadcast"

    .line 1131
    .restart local v1    # "reason":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v1}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v2

    .line 1133
    .local v2, "duration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v4

    .line 1134
    .local v4, "bopts":Landroid/app/BroadcastOptions;
    invoke-virtual {v4, v2, v3}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 1135
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 1136
    .end local v2    # "duration":J
    .end local v4    # "bopts":Landroid/app/BroadcastOptions;
    :catch_0
    move-exception v2

    .line 1139
    const/4 v2, 0x0

    return-object v2
.end method

.method static isCurrentFormat3gpp2()Z
    .locals 2

    .line 1318
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 1319
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSkipNotifyFlagSet(I)Z
    .locals 1
    .param p1, "callbackResult"    # I

    .line 1466
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 686
    if-nez p1, :cond_0

    .line 688
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 692
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 693
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 695
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 696
    return-void
.end method

.method private notifyregisterIncomingSms()V
    .locals 6

    .line 1615
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.sCDMA_REGISTER_PHONEINFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1616
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    int-to-long v1, v1

    .line 1617
    .local v1, "subId":J
    const-string v3, "ZTEMT_SUBID"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1618
    const-string v3, "result"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1619
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1620
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1621
    return-void
.end method

.method private static parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 6
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    .line 1540
    const/4 v0, 0x0

    aget-object v1, p0, v0

    .line 1541
    .local v1, "sms":Landroid/telephony/SmsMessage;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1542
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "address"

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    const-string v3, "body"

    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    const-string v3, "date_sent"

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1545
    const-string v3, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1546
    const-string v3, "protocol"

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1547
    const-string v3, "seen"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1548
    const-string v3, "read"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1549
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v0

    .line 1550
    .local v0, "subject":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1551
    const-string v3, "subject"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    :cond_0
    const-string v3, "reply_path_present"

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1554
    const-string v3, "service_center"

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    return-object v2
.end method

.method private processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 22
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    move-object/from16 v7, p0

    .line 780
    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v9

    .line 782
    .local v9, "messageCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v1

    .line 783
    .local v1, "destPort":I
    const/4 v2, 0x0

    .line 784
    .local v2, "block":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 786
    .local v10, "address":Ljava/lang/String;
    const/4 v3, 0x0

    if-gtz v9, :cond_0

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMessagePart: returning false due to invalid message count "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 789
    return v3

    .line 792
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v11, 0x1

    if-ne v9, v11, :cond_1

    .line 794
    new-array v6, v11, [[B

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v12

    aput-object v12, v6, v3

    .line 795
    .local v6, "pdus":[[B
    iget-object v12, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDisplayAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    .line 870
    move v0, v1

    move v11, v2

    move-object v15, v6

    goto/16 :goto_3

    .line 798
    .end local v6    # "pdus":[[B
    :cond_1
    move-object v6, v4

    .line 801
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 802
    .local v12, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 805
    .local v13, "count":Ljava/lang/String;
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    aput-object v10, v14, v3

    aput-object v12, v14, v11

    aput-object v13, v14, v5

    move-object/from16 v19, v14

    .line 806
    .local v19, "whereArgs":[Ljava/lang/String;
    iget-object v15, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v16, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v17, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 807
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getQueryForSegments()Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    .line 806
    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    move-object v6, v14

    .line 809
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v14
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    .local v14, "cursorCount":I
    if-ge v14, v9, :cond_3

    .line 816
    nop

    .line 869
    if-eqz v6, :cond_2

    .line 870
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 816
    :cond_2
    return v3

    .line 820
    :cond_3
    :try_start_1
    new-array v15, v9, [[B

    .line 821
    .local v15, "pdus":[[B
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 823
    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 824
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 823
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 824
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v4

    sub-int/2addr v0, v4

    .line 829
    .local v0, "index":I
    array-length v4, v15

    if-ge v0, v4, :cond_7

    if-gez v0, :cond_4

    goto/16 :goto_1

    .line 837
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 838
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 837
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v15, v0

    .line 842
    if-nez v0, :cond_5

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 843
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 842
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 844
    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 845
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 844
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 847
    .local v4, "port":I
    invoke-static {v4}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    move-result v11

    move v4, v11

    .line 848
    const/4 v11, -0x1

    if-eq v4, v11, :cond_5

    .line 849
    move v1, v4

    .line 853
    .end local v4    # "port":I
    :cond_5
    if-nez v2, :cond_6

    .line 860
    iget-object v4, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    const/16 v3, 0x9

    .line 862
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 861
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 860
    const/4 v11, 0x0

    invoke-static {v4, v3, v11}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    move v0, v3

    .line 864
    .end local v2    # "block":Z
    .local v0, "block":Z
    move v2, v0

    .end local v0    # "block":Z
    .restart local v2    # "block":Z
    :cond_6
    goto :goto_2

    .line 830
    .local v0, "index":I
    :cond_7
    :goto_1
    const-string v3, "processMessagePart: invalid seqNumber = %d, messageCount = %d"

    new-array v4, v5, [Ljava/lang/Object;

    .line 832
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v11

    add-int/2addr v11, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v16, 0x0

    aput-object v11, v4, v16

    .line 833
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v16, 0x1

    aput-object v11, v4, v16

    .line 830
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 834
    nop

    .line 820
    .end local v0    # "index":I
    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    goto/16 :goto_0

    .line 869
    .end local v12    # "refNumber":Ljava/lang/String;
    .end local v13    # "count":Ljava/lang/String;
    .end local v14    # "cursorCount":I
    .end local v19    # "whereArgs":[Ljava/lang/String;
    :cond_8
    if-eqz v6, :cond_9

    .line 870
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_9
    move v0, v1

    move v11, v2

    .end local v1    # "destPort":I
    .end local v2    # "block":Z
    .local v0, "destPort":I
    .local v11, "block":Z
    :goto_3
    move-object v12, v15

    .line 876
    .end local v15    # "pdus":[[B
    .local v12, "pdus":[[B
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 877
    .local v13, "pduList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    invoke-interface {v13, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_6

    .line 883
    :cond_a
    new-instance v1, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    invoke-direct {v1, v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    move-object v14, v1

    .line 885
    .local v14, "resultReceiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    iget-object v1, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-nez v1, :cond_b

    .line 886
    invoke-direct {v7, v8, v12, v0, v14}, Lcom/android/internal/telephony/InboundSmsHandler;->processMessagePartWithUserLocked(Lcom/android/internal/telephony/InboundSmsTracker;[[BILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Z

    move-result v1

    return v1

    .line 889
    :cond_b
    const/16 v1, 0xb84

    if-ne v0, v1, :cond_10

    .line 891
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 892
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    array-length v2, v12

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_e

    aget-object v4, v12, v3

    .line 894
    .local v4, "pdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v6

    if-nez v6, :cond_d

    .line 895
    const-string v6, "3gpp"

    invoke-static {v4, v6}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 896
    .local v6, "msg":Landroid/telephony/SmsMessage;
    if-eqz v6, :cond_c

    .line 897
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v4

    goto :goto_5

    .line 899
    :cond_c
    const-string v2, "processMessagePart: SmsMessage.createFromPdu returned null"

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 900
    const/4 v15, 0x0

    return v15

    .line 903
    .end local v6    # "msg":Landroid/telephony/SmsMessage;
    :cond_d
    :goto_5
    const/4 v15, 0x0

    array-length v6, v4

    invoke-virtual {v1, v4, v15, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 892
    .end local v4    # "pdu":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 905
    :cond_e
    iget-object v2, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3, v14, v7, v10}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)I

    move-result v2

    .line 907
    .local v2, "result":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchWapPdu() returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 909
    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    .line 910
    const/4 v3, 0x1

    return v3

    .line 912
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v3, v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 914
    const/4 v3, 0x0

    return v3

    .line 918
    .end local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "result":I
    :cond_10
    const/4 v3, 0x0

    if-eqz v11, :cond_11

    .line 919
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v7, v1, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 921
    return v3

    .line 924
    :cond_11
    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, v12

    move v3, v0

    move-object v4, v8

    move-object v5, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z

    move-result v15

    .line 927
    .local v15, "filterInvoked":Z
    if-nez v15, :cond_12

    .line 932
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object v1, v7

    move-object v2, v12

    move-object v3, v8

    move v5, v0

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLcom/android/internal/telephony/InboundSmsTracker;Ljava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Z

    move-result v1

    return v1

    .line 937
    :cond_12
    const/4 v1, 0x1

    return v1

    .line 878
    .end local v14    # "resultReceiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .end local v15    # "filterInvoked":Z
    :cond_13
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessagePart: returning false due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "pduList.size() == 0"

    goto :goto_7

    :cond_14
    const-string v2, "pduList.contains(null)"

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 878
    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 880
    const/4 v1, 0x0

    return v1

    .line 869
    .end local v0    # "destPort":I
    .end local v11    # "block":Z
    .end local v12    # "pdus":[[B
    .end local v13    # "pduList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v1, "destPort":I
    .local v2, "block":Z
    .local v6, "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v3, "Can\'t access multipart SMS database"

    invoke-virtual {v7, v3, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 867
    nop

    .line 869
    if-eqz v6, :cond_15

    .line 870
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 867
    :cond_15
    const/4 v3, 0x0

    return v3

    .line 869
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_8
    if-eqz v6, :cond_16

    .line 870
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v0
.end method

.method private processMessagePartWithUserLocked(Lcom/android/internal/telephony/InboundSmsTracker;[[BILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Z
    .locals 8
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "destPort"    # I
    .param p4, "resultReceiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Credential-encrypted storage not available. Port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 952
    const/4 v0, 0x0

    const/16 v1, 0xb84

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/WapPushOverSms;->isWapPushForMms([BLcom/android/internal/telephony/InboundSmsHandler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 953
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    .line 954
    return v0

    .line 956
    :cond_0
    const/4 v1, -0x1

    if-ne p3, v1, :cond_2

    .line 958
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z

    move-result v1

    .line 960
    .local v1, "filterInvoked":Z
    if-eqz v1, :cond_1

    .line 962
    const/4 v0, 0x1

    return v0

    .line 965
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    .line 966
    return v0

    .line 969
    .end local v1    # "filterInvoked":Z
    :cond_2
    return v0
.end method

.method private processRegisterSmsResponse(I)V
    .locals 2
    .param p1, "result"    # I

    .line 1610
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyregisterIncomingSms()V

    .line 1611
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 1612
    return-void
.end method

.method static registerNewMessageNotificationActionHandler(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1849
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1850
    .local v0, "userFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1851
    new-instance v1, Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler$1;)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1852
    return-void
.end method

.method private static replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 1589
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private setWakeLockTimeout(I)V
    .locals 0
    .param p1, "timeOut"    # I

    .line 1606
    iput p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLockTimeout:I

    .line 1607
    return-void
.end method

.method private shouldChangeComponent([[BLcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 7
    .param p1, "pdus"    # [[B
    .param p2, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .line 1738
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1739
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/UiccSmsController;->isFlowrateChecked(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1740
    array-length v1, p1

    move-object v3, v0

    move v0, v2

    .end local v0    # "address":Ljava/lang/String;
    .local v3, "address":Ljava/lang/String;
    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v4, p1, v0

    .line 1741
    .local v4, "pdu":[B
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1742
    const-string v5, "3gpp"

    invoke-static {v4, v5}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v5

    .line 1743
    .local v5, "msg":Landroid/telephony/SmsMessage;
    const-string v6, ""

    if-eq v3, v6, :cond_1

    if-nez v3, :cond_0

    goto :goto_1

    .line 1745
    :cond_0
    const-string v6, ""

    if-ne v3, v6, :cond_2

    .line 1746
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v3

    .end local v4    # "pdu":[B
    .end local v5    # "msg":Landroid/telephony/SmsMessage;
    goto :goto_2

    .line 1744
    .restart local v4    # "pdu":[B
    .restart local v5    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    :goto_1
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    .line 1740
    .end local v4    # "pdu":[B
    .end local v5    # "msg":Landroid/telephony/SmsMessage;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1752
    :cond_3
    move-object v0, v3

    .end local v3    # "address":Ljava/lang/String;
    .restart local v0    # "address":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/UiccSmsController;->getFlowrateCheckedNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 1753
    .local v1, "flowrateCheckedNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/UiccSmsController;->isFlowrateChecked(I)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 1754
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1755
    const/4 v2, 0x1

    return v2

    .line 1757
    :cond_5
    return v2
.end method

.method private showNewMessageNotification()V
    .locals 6

    .line 974
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 975
    return-void

    .line 977
    :cond_0
    const-string v0, "Show new message notification."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 983
    .local v0, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x108008e

    .line 984
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 985
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 986
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, -0x1

    .line 987
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const v4, 0x10403dc

    .line 988
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const v4, 0x10403db

    .line 989
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 990
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v3, "sms"

    .line 991
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 992
    .local v1, "mBuilder":Landroid/app/Notification$Builder;
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    .line 993
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 994
    .local v3, "mNotificationManager":Landroid/app/NotificationManager;
    const-string v4, "InboundSmsHandler"

    .line 995
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 994
    invoke-virtual {v3, v4, v2, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 996
    return-void
.end method

.method private writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1505
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 1506
    .local v0, "messages":[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto :goto_2

    .line 1513
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1515
    .local v4, "sms":Landroid/telephony/SmsMessage;
    :try_start_0
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1519
    nop

    .line 1513
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1516
    .restart local v4    # "sms":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v2

    .line 1517
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v3, "NPE inside SmsMessage"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1518
    return-object v1

    .line 1521
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_1
    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v2

    .line 1522
    .local v2, "values":Landroid/content/ContentValues;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1524
    .local v3, "identity":J
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1528
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1524
    return-object v5

    .line 1528
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1525
    :catch_1
    move-exception v5

    .line 1526
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "Failed to persist inbox message"

    invoke-virtual {p0, v6, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1528
    .end local v5    # "e":Ljava/lang/Exception;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1529
    nop

    .line 1530
    return-object v1

    .line 1528
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1507
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "identity":J
    :cond_2
    :goto_2
    const-string v2, "Failed to parse SMS pdu"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1508
    return-object v1
.end method


# virtual methods
.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I
    .locals 4
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "deDup"    # Z

    .line 758
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 768
    return v1

    .line 764
    :cond_0
    return v2

    .line 760
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    .line 761
    return v2
.end method

.method public dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "user"    # Landroid/os/UserHandle;

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    .line 1055
    const/high16 v0, 0x8000000

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1056
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    .line 1057
    .local v14, "action":Ljava/lang/String;
    const-string v0, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    .line 1058
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.provider.Telephony.WAP_PUSH_DELIVER"

    .line 1059
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    .line 1060
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    :cond_0
    const/high16 v0, 0x10000000

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1069
    :cond_1
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v13, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1070
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v15, p6

    invoke-virtual {v15, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1072
    const/16 v16, 0x0

    move-object/from16 v2, v16

    .line 1074
    .local v2, "users":[I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 1076
    goto :goto_0

    .line 1075
    :catch_0
    move-exception v0

    .line 1077
    :goto_0
    const/4 v0, 0x1

    if-nez v2, :cond_2

    .line 1078
    new-array v3, v0, [I

    const/4 v4, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    aput v5, v3, v4

    move-object v2, v3

    .line 1082
    .end local v2    # "users":[I
    .local v12, "users":[I
    :cond_2
    move-object v12, v2

    array-length v2, v12

    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_1
    move v0, v2

    .end local v2    # "i":I
    .local v0, "i":I
    if-ltz v0, :cond_7

    .line 1083
    new-instance v2, Landroid/os/UserHandle;

    aget v3, v12, v0

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v11, v2

    .line 1084
    .local v11, "targetUser":Landroid/os/UserHandle;
    aget v2, v12, v0

    if-eqz v2, :cond_5

    .line 1086
    iget-object v2, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_sms"

    invoke-virtual {v2, v3, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1087
    nop

    .line 1082
    .end local v11    # "targetUser":Landroid/os/UserHandle;
    .end local v12    # "users":[I
    .local v17, "users":[I
    :cond_3
    :goto_2
    move-object/from16 v17, v12

    goto :goto_4

    .line 1090
    .end local v17    # "users":[I
    .restart local v11    # "targetUser":Landroid/os/UserHandle;
    .restart local v12    # "users":[I
    :cond_4
    iget-object v2, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    aget v3, v12, v0

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1091
    .local v2, "info":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1092
    goto :goto_2

    .line 1096
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :cond_5
    iget-object v2, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 1097
    aget v3, v12, v0

    if-nez v3, :cond_6

    .line 1098
    move-object/from16 v8, p5

    goto :goto_3

    .line 1097
    :cond_6
    nop

    .line 1098
    move-object/from16 v8, v16

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/4 v10, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 1096
    move-object v3, v13

    move-object v4, v11

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    .end local v11    # "targetUser":Landroid/os/UserHandle;
    .local v19, "targetUser":Landroid/os/UserHandle;
    move-object/from16 v17, v12

    move-object/from16 v12, v18

    .end local v12    # "users":[I
    .restart local v17    # "users":[I
    invoke-virtual/range {v2 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1082
    .end local v19    # "targetUser":Landroid/os/UserHandle;
    :goto_4
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "i":I
    .local v2, "i":I
    move-object/from16 v12, v17

    goto :goto_1

    .line 1100
    .end local v2    # "i":I
    .end local v17    # "users":[I
    :cond_7
    goto :goto_5

    .line 1101
    :cond_8
    iget-object v2, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 1102
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1101
    move-object v3, v13

    move-object v4, v15

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v2 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1104
    :goto_5
    return-void
.end method

.method protected abstract dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 19
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v0, p0

    .line 714
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    .line 717
    .local v1, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    const/4 v2, -0x1

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v3, :cond_0

    goto :goto_1

    .line 732
    :cond_0
    iget-object v3, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 733
    .local v3, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iget-object v4, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 734
    .local v4, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v4, :cond_1

    iget v5, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v10, v5

    goto :goto_0

    :cond_1
    move v10, v2

    .line 736
    .local v10, "destPort":I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v7

    .line 737
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v12

    .line 738
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v13

    iget v14, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v15, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v5, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/16 v17, 0x0

    .line 739
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v18

    .line 736
    move/from16 v16, v5

    invoke-virtual/range {v6 .. v18}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v3

    .end local v3    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v4    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    .end local v10    # "destPort":I
    goto :goto_2

    .line 719
    :cond_2
    :goto_1
    const/4 v3, -0x1

    .line 720
    .local v3, "destPort":I
    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v4, :cond_3

    .line 722
    iget-object v4, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 723
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destination port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 726
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v6

    .line 727
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v10

    const/4 v11, 0x0

    .line 728
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v13

    .line 729
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v14

    .line 726
    move v9, v3

    invoke-virtual/range {v5 .. v14}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v3

    .line 730
    .local v3, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    nop

    .line 736
    :goto_2
    nop

    .line 746
    nop

    .line 747
    invoke-virtual {v3}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v4

    if-ne v4, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 746
    :goto_3
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v2

    return v2
.end method

.method dispatchSmsDeliveryIntent([[BLcom/android/internal/telephony/InboundSmsTracker;Ljava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Z
    .locals 23
    .param p1, "pdus"    # [[B
    .param p2, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "resultReceiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v8, p0

    move/from16 v9, p4

    .line 1629
    iget-object v0, v8, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/android/internal/telephony/InboundSmsHandler;->mInterceptServiceConnection:Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->mInterceptService:Lcn/nubia/harassintercept/service/IInterceptService;

    if-nez v0, :cond_0

    .line 1630
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;

    iget-object v1, v8, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8, v1}, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;)V

    iput-object v0, v8, Lcom/android/internal/telephony/InboundSmsHandler;->mInterceptServiceConnection:Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;

    .line 1632
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v10, v0

    .line 1633
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "pdus"

    move-object/from16 v11, p1

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1634
    const-string v0, "format"

    move-object/from16 v12, p3

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1635
    const/4 v7, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v13, 0x0

    if-ne v9, v0, :cond_5

    .line 1636
    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1640
    iget-object v2, v8, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 1641
    .local v2, "componentName":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 1643
    invoke-virtual {v10, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivering SMS to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1644
    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1647
    :cond_1
    invoke-virtual {v10, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1650
    :goto_0
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->shouldChangeComponent([[BLcom/android/internal/telephony/InboundSmsTracker;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1651
    invoke-virtual {v10, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1652
    const-string v1, "cn.nubia.security2"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1653
    iget-object v1, v8, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v13, v1}, Lcom/android/internal/telephony/UiccSmsController;->setFlowrateChecked(ZI)V

    .line 1657
    :cond_2
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1658
    invoke-direct {v8, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 1659
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_3

    .line 1661
    const-string v3, "uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1666
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v1, v8, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getAppSmsManager()Lcom/android/internal/telephony/AppSmsManager;

    move-result-object v1

    .line 1667
    .local v1, "appManager":Lcom/android/internal/telephony/AppSmsManager;
    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/AppSmsManager;->handleSmsReceivedIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1669
    move-object/from16 v14, p5

    invoke-direct {v8, v14}, Lcom/android/internal/telephony/InboundSmsHandler;->dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    .line 1670
    return v13

    .line 1672
    .end local v1    # "appManager":Lcom/android/internal/telephony/AppSmsManager;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_4
    move-object/from16 v14, p5

    goto :goto_1

    .line 1673
    :cond_5
    move-object/from16 v14, p5

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1675
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v10, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1676
    invoke-virtual {v10, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1679
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_1
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v15

    .line 1681
    .local v15, "options":Landroid/os/Bundle;
    invoke-static {v10}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v16

    .line 1682
    .local v16, "msgs":[Landroid/telephony/SmsMessage;
    aget-object v17, v16, v13

    .line 1683
    .local v17, "sms":Landroid/telephony/SmsMessage;
    if-eqz v17, :cond_8

    .line 1684
    invoke-direct {v8, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->createInterceptIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    .line 1685
    .local v6, "interceptIntent":Landroid/content/Intent;
    iget-object v1, v8, Lcom/android/internal/telephony/InboundSmsHandler;->mInterceptServiceConnection:Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->isSpamSms(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    .line 1687
    .local v5, "resultIntent":Landroid/content/Intent;
    if-eqz v5, :cond_6

    .line 1688
    const-string v1, "intercept_reason"

    invoke-virtual {v5, v1, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "reason":I
    goto :goto_2

    .line 1690
    .end local v1    # "reason":I
    :cond_6
    move v1, v13

    .restart local v1    # "reason":I
    :goto_2
    move v4, v1

    .line 1692
    .end local v1    # "reason":I
    .local v4, "reason":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1693
    if-eqz v4, :cond_7

    .line 1694
    const-string v1, "intercept_mode"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1695
    .local v7, "mode":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1696
    const-string v0, "person_name"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1697
    .local v3, "name":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1698
    new-instance v2, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/InboundSmsHandler$2;

    move-object v0, v1

    move-object v13, v1

    move-object v1, v8

    move-object v9, v2

    move-object/from16 v2, v17

    move-object/from16 v18, v3

    move-object/from16 v3, v16

    .end local v3    # "name":Ljava/lang/String;
    .local v18, "name":Ljava/lang/String;
    move/from16 v19, v4

    move v4, v7

    .end local v4    # "reason":I
    .local v19, "reason":I
    move-object/from16 v20, v5

    move/from16 v5, v19

    .end local v5    # "resultIntent":Landroid/content/Intent;
    .local v20, "resultIntent":Landroid/content/Intent;
    move-object/from16 v21, v6

    move-object/from16 v6, v18

    .end local v6    # "interceptIntent":Landroid/content/Intent;
    .local v21, "interceptIntent":Landroid/content/Intent;
    move/from16 v22, v7

    move-object/from16 v7, p2

    .end local v7    # "mode":I
    .local v22, "mode":I
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler$2;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/telephony/SmsMessage;[Landroid/telephony/SmsMessage;IILjava/lang/String;Lcom/android/internal/telephony/InboundSmsTracker;)V

    invoke-direct {v9, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1720
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 1721
    const/4 v0, 0x0

    return v0

    .line 1723
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "reason":I
    .end local v20    # "resultIntent":Landroid/content/Intent;
    .end local v21    # "interceptIntent":Landroid/content/Intent;
    .end local v22    # "mode":I
    .restart local v4    # "reason":I
    .restart local v5    # "resultIntent":Landroid/content/Intent;
    .restart local v6    # "interceptIntent":Landroid/content/Intent;
    :cond_7
    move/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    .end local v4    # "reason":I
    .end local v5    # "resultIntent":Landroid/content/Intent;
    .end local v6    # "interceptIntent":Landroid/content/Intent;
    .restart local v19    # "reason":I
    .restart local v20    # "resultIntent":Landroid/content/Intent;
    .restart local v21    # "interceptIntent":Landroid/content/Intent;
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v0, v8

    move-object v1, v10

    move-object v4, v15

    move-object v5, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1726
    .end local v19    # "reason":I
    .end local v20    # "resultIntent":Landroid/content/Intent;
    .end local v21    # "interceptIntent":Landroid/content/Intent;
    goto :goto_3

    .line 1727
    :cond_8
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v0, v8

    move-object v1, v10

    move-object v4, v15

    move-object v5, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1730
    :goto_3
    return v7
.end method

.method public dispose()V
    .locals 0

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->quit()V

    .line 277
    return-void
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1594
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public getWakeLockTimeout()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1599
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLockTimeout:I

    return v0
.end method

.method protected abstract is3gpp2()Z
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1476
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1485
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 1495
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1496
    return-void
.end method

.method protected onQuitting()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispose()V

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mInterceptServiceConnection:Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->dispose(Landroid/content/Context;)V

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 672
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdatePhoneObject: phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 283
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    .line 284
    return-void
.end method
