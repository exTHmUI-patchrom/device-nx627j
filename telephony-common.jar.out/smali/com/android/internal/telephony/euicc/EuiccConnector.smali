.class public Lcom/android/internal/telephony/euicc/EuiccConnector;
.super Lcom/android/internal/util/StateMachine;
.source "EuiccConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$RetainSubscriptionsCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$EraseCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccInfoCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccProfileInfoListCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$GetOtaStatusCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$GetEidCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;
    }
.end annotation


# static fields
.field private static final BIND_TIMEOUT_MILLIS:I = 0x7530

.field private static final CMD_COMMAND_COMPLETE:I = 0x6

.field private static final CMD_CONNECT_TIMEOUT:I = 0x2

.field private static final CMD_DELETE_SUBSCRIPTION:I = 0x6a

.field private static final CMD_DOWNLOAD_SUBSCRIPTION:I = 0x66

.field private static final CMD_ERASE_SUBSCRIPTIONS:I = 0x6d

.field private static final CMD_GET_DEFAULT_DOWNLOADABLE_SUBSCRIPTION_LIST:I = 0x68

.field private static final CMD_GET_DOWNLOADABLE_SUBSCRIPTION_METADATA:I = 0x65

.field private static final CMD_GET_EID:I = 0x64

.field private static final CMD_GET_EUICC_INFO:I = 0x69

.field private static final CMD_GET_EUICC_PROFILE_INFO_LIST:I = 0x67

.field private static final CMD_GET_OTA_STATUS:I = 0x6f

.field private static final CMD_LINGER_TIMEOUT:I = 0x3

.field private static final CMD_PACKAGE_CHANGE:I = 0x1

.field private static final CMD_RETAIN_SUBSCRIPTIONS:I = 0x6e

.field private static final CMD_SERVICE_CONNECTED:I = 0x4

.field private static final CMD_SERVICE_DISCONNECTED:I = 0x5

.field private static final CMD_START_OTA_IF_NECESSARY:I = 0x70

.field private static final CMD_SWITCH_TO_SUBSCRIPTION:I = 0x6b

.field private static final CMD_UPDATE_SUBSCRIPTION_NICKNAME:I = 0x6c

.field private static final EUICC_QUERY_FLAGS:I = 0x10100040

.field static final LINGER_TIMEOUT_MILLIS:I = 0xea60
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "EuiccConnector"


# instance fields
.field private mActiveCommandCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public mBindingState:Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public mConnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mDisconnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field private mEuiccService:Landroid/service/euicc/IEuiccService;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSelectedComponent:Landroid/content/pm/ServiceInfo;

.field public mUnavailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field private final mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 345
    const-string v0, "EuiccConnector"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 316
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 317
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/euicc/EuiccConnector$1;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    .line 336
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mActiveCommandCallbacks:Ljava/util/Set;

    .line 346
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->init(Landroid/content/Context;)V

    .line 347
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 351
    const-string v0, "EuiccConnector"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 316
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 317
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/euicc/EuiccConnector$1;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    .line 336
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mActiveCommandCallbacks:Ljava/util/Set;

    .line 352
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->init(Landroid/content/Context;)V

    .line 353
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/euicc/EuiccConnector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccConnector;

    .line 83
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->createBinding()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccConnector;

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mEuiccService:Landroid/service/euicc/IEuiccService;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/euicc/EuiccConnector;Landroid/service/euicc/IEuiccService;)Landroid/service/euicc/IEuiccService;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccConnector;
    .param p1, "x1"    # Landroid/service/euicc/IEuiccService;

    .line 83
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mEuiccService:Landroid/service/euicc/IEuiccService;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccConnector;

    .line 83
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->unbind()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/euicc/EuiccConnector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccConnector;
    .param p1, "x1"    # I

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccConnector;
    .param p1, "x1"    # Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->onCommandStart(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccConnector;
    .param p1, "x1"    # Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->onCommandEnd(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/euicc/EuiccConnector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccConnector;
    .param p1, "x1"    # I

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/euicc/EuiccConnector;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccConnector;

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mActiveCommandCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccConnector;

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mSelectedComponent:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/euicc/EuiccConnector;Landroid/content/pm/ServiceInfo;)Landroid/content/pm/ServiceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccConnector;
    .param p1, "x1"    # Landroid/content/pm/ServiceInfo;

    .line 83
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mSelectedComponent:Landroid/content/pm/ServiceInfo;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccConnector;

    .line 83
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->findBestComponent()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 83
    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->isEuiccCommand(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/os/Message;)Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;
    .locals 1
    .param p0, "x0"    # Landroid/os/Message;

    .line 83
    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getCallback(Landroid/os/Message;)Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    move-result-object v0

    return-object v0
.end method

.method private createBinding()Z
    .locals 3

    .line 972
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mSelectedComponent:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    .line 973
    const-string v0, "EuiccConnector"

    const-string v1, "Attempting to create binding but no component is selected"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v0, 0x0

    return v0

    .line 976
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.euicc.EuiccService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 977
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mSelectedComponent:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 980
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mContext:Landroid/content/Context;

    const v2, 0x4000001

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public static findBestActivity(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 5
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 157
    const v0, 0x10100040

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    nop

    .line 160
    invoke-static {p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->findBestComponent(Landroid/content/pm/PackageManager;Ljava/util/List;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 161
    .local v1, "bestComponent":Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_0

    .line 162
    const-string v2, "EuiccConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid component found for intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    return-object v1
.end method

.method public static findBestComponent(Landroid/content/pm/PackageManager;)Landroid/content/pm/ComponentInfo;
    .locals 5
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.euicc.EuiccService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 173
    const v1, 0x10100040

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 174
    .local v1, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->findBestComponent(Landroid/content/pm/PackageManager;Ljava/util/List;)Landroid/content/pm/ComponentInfo;

    move-result-object v2

    .line 175
    .local v2, "bestComponent":Landroid/content/pm/ComponentInfo;
    if-nez v2, :cond_0

    .line 176
    const-string v3, "EuiccConnector"

    const-string v4, "No valid EuiccService implementation found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    return-object v2
.end method

.method private static findBestComponent(Landroid/content/pm/PackageManager;Ljava/util/List;)Landroid/content/pm/ComponentInfo;
    .locals 5
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ComponentInfo;"
        }
    .end annotation

    .line 991
    .local p1, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v0, -0x80000000

    .line 992
    .local v0, "bestPriority":I
    const/4 v1, 0x0

    .line 993
    .local v1, "bestComponent":Landroid/content/pm/ComponentInfo;
    if-eqz p1, :cond_2

    .line 994
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 995
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {p0, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->isValidEuiccComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 996
    goto :goto_0

    .line 999
    :cond_0
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v4}, Landroid/content/IntentFilter;->getPriority()I

    move-result v4

    if-le v4, v0, :cond_1

    .line 1000
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v4}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    .line 1001
    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    .line 1003
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    goto :goto_0

    .line 1006
    :cond_2
    return-object v1
.end method

.method private findBestComponent()Landroid/content/pm/ServiceInfo;
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->findBestComponent(Landroid/content/pm/PackageManager;)Landroid/content/pm/ComponentInfo;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method private static getCallback(Landroid/os/Message;)Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;
    .locals 3
    .param p0, "message"    # Landroid/os/Message;

    .line 918
    iget v0, p0, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 940
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :pswitch_0
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameCommandCallback;

    return-object v0

    .line 936
    :pswitch_1
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchCommandCallback;

    return-object v0

    .line 934
    :pswitch_2
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteCommandCallback;

    return-object v0

    .line 932
    :pswitch_3
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;

    return-object v0

    .line 930
    :pswitch_4
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadCommandCallback;

    return-object v0

    .line 928
    :pswitch_5
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;

    return-object v0

    .line 926
    :pswitch_6
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 356
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mContext:Landroid/content/Context;

    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mPm:Landroid/content/pm/PackageManager;

    .line 361
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUnavailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUnavailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->addState(Lcom/android/internal/util/State;)V

    .line 363
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUnavailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 366
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mBindingState:Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mBindingState:Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->addState(Lcom/android/internal/util/State;)V

    .line 371
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mDisconnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mDisconnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->addState(Lcom/android/internal/util/State;)V

    .line 373
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mConnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mConnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mDisconnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 376
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->findBestComponent()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mSelectedComponent:Landroid/content/pm/ServiceInfo;

    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mSelectedComponent:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUnavailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->setInitialState(Lcom/android/internal/util/State;)V

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->start()V

    .line 384
    return-void
.end method

.method private static isEuiccCommand(I)Z
    .locals 1
    .param p0, "what"    # I

    .line 144
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidEuiccComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z
    .locals 7
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 1011
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    .line 1012
    .local v0, "componentInfo":Landroid/content/pm/ComponentInfo;
    invoke-virtual {v0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1018
    const-string v2, "EuiccConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not declare WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    return v3

    .line 1025
    :cond_0
    instance-of v2, v0, Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_1

    .line 1026
    move-object v2, v0

    check-cast v2, Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .local v2, "permission":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 1027
    .end local v2    # "permission":Ljava/lang/String;
    :cond_1
    instance-of v2, v0, Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_5

    .line 1028
    move-object v2, v0

    check-cast v2, Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto :goto_0

    .line 1030
    .restart local v2    # "permission":Ljava/lang/String;
    :goto_1
    nop

    .line 1032
    const-string v4, "android.permission.BIND_EUICC_SERVICE"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1033
    const-string v4, "EuiccConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not require the BIND_EUICC_SERVICE permission"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    return v3

    .line 1039
    :cond_2
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v4, :cond_4

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v4}, Landroid/content/IntentFilter;->getPriority()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 1043
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 1040
    :cond_4
    :goto_2
    const-string v4, "EuiccConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not specify a priority"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return v3

    .line 1030
    .end local v2    # "permission":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can only verify services/activities"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private onCommandEnd(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    .line 952
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mActiveCommandCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 953
    const-string v0, "EuiccConnector"

    const-string v1, "Callback already removed from mActiveCommandCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mActiveCommandCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    const/4 v0, 0x3

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessageDelayed(IJ)V

    .line 958
    :cond_1
    return-void
.end method

.method private onCommandStart(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    .line 946
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mActiveCommandCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 947
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->removeMessages(I)V

    .line 948
    return-void
.end method

.method private unbind()V
    .locals 1

    .line 985
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mEuiccService:Landroid/service/euicc/IEuiccService;

    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 987
    return-void
.end method


# virtual methods
.method public deleteSubscription(Ljava/lang/String;Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteCommandCallback;)V
    .locals 2
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteCommandCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 458
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;

    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;-><init>()V

    .line 459
    .local v0, "request":Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;
    iput-object p1, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;->mIccid:Ljava/lang/String;

    .line 460
    iput-object p2, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteCommandCallback;

    .line 461
    const/16 v1, 0x6a

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    .line 462
    return-void
.end method

.method public downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZZLcom/android/internal/telephony/euicc/EuiccConnector$DownloadCommandCallback;)V
    .locals 2
    .param p1, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p2, "switchAfterDownload"    # Z
    .param p3, "forceDeactivateSim"    # Z
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadCommandCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 427
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;

    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;-><init>()V

    .line 428
    .local v0, "request":Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;
    iput-object p1, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 429
    iput-boolean p2, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mSwitchAfterDownload:Z

    .line 430
    iput-boolean p3, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mForceDeactivateSim:Z

    .line 431
    iput-object p4, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadCommandCallback;

    .line 432
    const/16 v1, 0x66

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    .line 433
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1102
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSelectedComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mSelectedComponent:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEuiccService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mEuiccService:Landroid/service/euicc/IEuiccService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActiveCommandCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mActiveCommandCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1106
    return-void
.end method

.method public eraseSubscriptions(Lcom/android/internal/telephony/euicc/EuiccConnector$EraseCommandCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$EraseCommandCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 489
    const/16 v0, 0x6d

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    .line 490
    return-void
.end method

.method public getDefaultDownloadableSubscriptionList(ZLcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;)V
    .locals 2
    .param p1, "forceDeactivateSim"    # Z
    .param p2, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 443
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;

    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;-><init>()V

    .line 444
    .local v0, "request":Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;
    iput-boolean p1, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;->mForceDeactivateSim:Z

    .line 445
    iput-object p2, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;

    .line 446
    const/16 v1, 0x68

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    .line 447
    return-void
.end method

.method public getDownloadableSubscriptionMetadata(Landroid/telephony/euicc/DownloadableSubscription;ZLcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;)V
    .locals 2
    .param p1, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p2, "forceDeactivateSim"    # Z
    .param p3, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 414
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;

    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;-><init>()V

    .line 416
    .local v0, "request":Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;
    iput-object p1, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 417
    iput-boolean p2, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;->mForceDeactivateSim:Z

    .line 418
    iput-object p3, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;

    .line 419
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    .line 420
    return-void
.end method

.method public getEid(Lcom/android/internal/telephony/euicc/EuiccConnector$GetEidCommandCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$GetEidCommandCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 395
    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    .line 396
    return-void
.end method

.method public getEuiccInfo(Lcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccInfoCommandCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccInfoCommandCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 452
    const/16 v0, 0x69

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    .line 453
    return-void
.end method

.method getEuiccProfileInfoList(Lcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccProfileInfoListCommandCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccProfileInfoListCommandCallback;

    .line 436
    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    .line 437
    return-void
.end method

.method public getOtaStatus(Lcom/android/internal/telephony/euicc/EuiccConnector$GetOtaStatusCommandCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$GetOtaStatusCommandCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 401
    const/16 v0, 0x6f

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    .line 402
    return-void
.end method

.method public onHalting()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 390
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1048
    invoke-static {p2}, Landroid/service/euicc/IEuiccService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IEuiccService;

    move-result-object v0

    .line 1049
    .local v0, "euiccService":Landroid/service/euicc/IEuiccService;
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    .line 1050
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1054
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(I)V

    .line 1055
    return-void
.end method

.method public retainSubscriptions(Lcom/android/internal/telephony/euicc/EuiccConnector$RetainSubscriptionsCommandCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$RetainSubscriptionsCommandCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 495
    const/16 v0, 0x6e

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    .line 496
    return-void
.end method

.method public startOtaIfNecessary(Lcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 407
    const/16 v0, 0x70

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    .line 408
    return-void
.end method

.method public switchToSubscription(Ljava/lang/String;ZLcom/android/internal/telephony/euicc/EuiccConnector$SwitchCommandCallback;)V
    .locals 2
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "forceDeactivateSim"    # Z
    .param p3, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchCommandCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 468
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;

    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;-><init>()V

    .line 469
    .local v0, "request":Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;
    iput-object p1, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;->mIccid:Ljava/lang/String;

    .line 470
    iput-boolean p2, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;->mForceDeactivateSim:Z

    .line 471
    iput-object p3, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchCommandCallback;

    .line 472
    const/16 v1, 0x6b

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    .line 473
    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1095
    invoke-virtual {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 1096
    .local v0, "state":Lcom/android/internal/util/IState;
    const-string v1, "EuiccConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    if-nez v0, :cond_0

    const-string v3, "null"

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1096
    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    return-void
.end method

.method public updateSubscriptionNickname(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameCommandCallback;)V
    .locals 2
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameCommandCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 479
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;

    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;-><init>()V

    .line 480
    .local v0, "request":Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;
    iput-object p1, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;->mIccid:Ljava/lang/String;

    .line 481
    iput-object p2, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;->mNickname:Ljava/lang/String;

    .line 482
    iput-object p3, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameCommandCallback;

    .line 483
    const/16 v1, 0x6c

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    .line 484
    return-void
.end method
