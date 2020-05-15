.class public Lcom/android/internal/telephony/euicc/EuiccCardController;
.super Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final KEY_LAST_BOOT_COUNT:Ljava/lang/String; = "last_boot_count"

.field private static final TAG:Ljava/lang/String; = "EuiccCardController"

.field private static sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field private mBestComponent:Landroid/content/pm/ComponentInfo;

.field private mCallingPackage:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

.field private mEuiccMainThreadHandler:Landroid/os/Handler;

.field private mSimSlotStatusChangeReceiver:Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccCardController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/telephony/euicc/EuiccController;Lcom/android/internal/telephony/uicc/UiccController;)V

    .line 106
    const-string v0, "euicc_card_controller"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/telephony/euicc/EuiccController;Lcom/android/internal/telephony/uicc/UiccController;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "euiccController"    # Lcom/android/internal/telephony/euicc/EuiccController;
    .param p4, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mContext:Landroid/content/Context;

    .line 116
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mAppOps:Landroid/app/AppOpsManager;

    .line 118
    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    .line 119
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 120
    iput-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->isBootUp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/EuiccCardController$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mSimSlotStatusChangeReceiver:Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mSimSlotStatusChangeReceiver:Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telephony.action.SIM_SLOT_STATUS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/euicc/EuiccCardController;)Lcom/android/internal/telephony/euicc/EuiccController;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccCardController;

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/euicc/EuiccCardController;)Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccCardController;

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mSimSlotStatusChangeReceiver:Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/euicc/EuiccCardController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccCardController;

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 53
    invoke-static {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccCardController;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getResultCode(Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/euicc/EuiccCardController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccCardController;

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkCallingPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 166
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mCallingPackage:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->findBestComponent(Landroid/content/pm/PackageManager;)Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mBestComponent:Landroid/content/pm/ComponentInfo;

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mBestComponent:Landroid/content/pm/ComponentInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mCallingPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mBestComponent:Landroid/content/pm/ComponentInfo;

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 169
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The calling package can only be LPA."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get()Lcom/android/internal/telephony/euicc/EuiccCardController;
    .locals 3

    .line 94
    sget-object v0, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    if-nez v0, :cond_1

    .line 95
    const-class v0, Lcom/android/internal/telephony/euicc/EuiccCardController;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    if-eqz v1, :cond_0

    .line 99
    monitor-exit v0

    goto :goto_0

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "get() called before init()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 101
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    return-object v0
.end method

.method private getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    .locals 4
    .param p1, "cardId"    # Ljava/lang/String;

    .line 175
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 176
    .local v0, "controller":Lcom/android/internal/telephony/uicc/UiccController;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForCardId(Ljava/lang/String;)I

    move-result v1

    .line 177
    .local v1, "slotId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 178
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v2

    .line 179
    .local v2, "slot":Lcom/android/internal/telephony/uicc/UiccSlot;
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForSlot(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    return-object v3

    .line 183
    .end local v2    # "slot":Lcom/android/internal/telephony/uicc/UiccSlot;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EuiccCard is null. CardId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;)V

    .line 184
    const/4 v2, 0x0

    return-object v2
.end method

.method private getResultCode(Ljava/lang/Throwable;)I
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 188
    instance-of v0, p1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    if-eqz v0, :cond_0

    .line 189
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->getErrorCode()I

    move-result v0

    return v0

    .line 191
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static init(Landroid/content/Context;)Lcom/android/internal/telephony/euicc/EuiccCardController;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    const-class v0, Lcom/android/internal/telephony/euicc/EuiccCardController;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    goto :goto_0

    .line 86
    :cond_0
    const-string v1, "EuiccCardController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times! sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    sget-object v0, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    return-object v0

    .line 88
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static isBootUp(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 136
    nop

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "boot_count"

    .line 136
    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 138
    .local v0, "bootCount":I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 139
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "last_boot_count"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 140
    .local v3, "lastBootCount":I
    if-eq v0, v2, :cond_1

    if-eq v3, v2, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 141
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "last_boot_count"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    const/4 v2, 0x1

    return v2
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 1100
    const-string v0, "EuiccCardController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 1104
    const-string v0, "EuiccCardController"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1105
    return-void
.end method


# virtual methods
.method public authenticateServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IAuthenticateServerCallback;)V
    .locals 13
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "matchingId"    # Ljava/lang/String;
    .param p4, "serverSigned1"    # [B
    .param p5, "serverSignature1"    # [B
    .param p6, "euiccCiPkIdToBeUsed"    # [B
    .param p7, "serverCertificate"    # [B
    .param p8, "callback"    # Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;

    move-object v1, p0

    .line 768
    move-object/from16 v2, p8

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 770
    move-object v3, p2

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v12

    .line 771
    .local v12, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v12, :cond_0

    .line 773
    const/4 v0, -0x2

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, v0, v4}, Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;->onComplete(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    goto :goto_0

    .line 774
    :catch_0
    move-exception v0

    move-object v4, v0

    .line 775
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v4, "authenticateServer callback failure."

    invoke-static {v4, v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 777
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 780
    :cond_0
    new-instance v10, Lcom/android/internal/telephony/euicc/EuiccCardController$15;

    invoke-direct {v10, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccCardController$15;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;)V

    .line 801
    .local v10, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[B>;"
    iget-object v11, v1, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    move-object v4, v12

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->authenticateServer(Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 803
    return-void
.end method

.method public cancelSession(Ljava/lang/String;Ljava/lang/String;[BILcom/android/internal/telephony/euicc/ICancelSessionCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "transactionId"    # [B
    .param p4, "reason"    # I
    .param p5, "callback"    # Lcom/android/internal/telephony/euicc/ICancelSessionCallback;

    .line 890
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 892
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 893
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 895
    const/4 v1, -0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p5, v1, v2}, Lcom/android/internal/telephony/euicc/ICancelSessionCallback;->onComplete(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    goto :goto_0

    .line 896
    :catch_0
    move-exception v1

    .line 897
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "cancelSession callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 899
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 902
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$18;

    invoke-direct {v1, p0, p5}, Lcom/android/internal/telephony/euicc/EuiccCardController$18;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/ICancelSessionCallback;)V

    .line 923
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[B>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3, p4, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->cancelSession([BILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 924
    return-void
.end method

.method public deleteProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;

    .line 411
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 413
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 414
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 416
    const/4 v1, -0x2

    :try_start_0
    invoke-interface {p4, v1}, Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    goto :goto_0

    .line 417
    :catch_0
    move-exception v1

    .line 418
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "deleteProfile callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 420
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 423
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$6;

    invoke-direct {v1, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$6;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;)V

    .line 446
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->deleteProfile(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 447
    return-void
.end method

.method public disableProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/IDisableProfileCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "refresh"    # Z
    .param p5, "callback"    # Lcom/android/internal/telephony/euicc/IDisableProfileCallback;

    .line 276
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 278
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 279
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 281
    const/4 v1, -0x2

    :try_start_0
    invoke-interface {p5, v1}, Lcom/android/internal/telephony/euicc/IDisableProfileCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    goto :goto_0

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "disableProfile callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 288
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$3;

    invoke-direct {v1, p0, p5}, Lcom/android/internal/telephony/euicc/EuiccCardController$3;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IDisableProfileCallback;)V

    .line 309
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3, p4, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->disableProfile(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 310
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1088
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "Requires DUMP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1091
    .local v0, "token":J
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1093
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCallingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBestComponent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mBestComponent:Landroid/content/pm/ComponentInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1097
    return-void
.end method

.method public getAllProfiles(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;

    .line 197
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 200
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 202
    const/4 v1, -0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p3, v1, v2}, Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;->onComplete(I[Landroid/service/euicc/EuiccProfileInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "getAllProfiles callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 209
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$1;

    invoke-direct {v1, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$1;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;)V

    .line 231
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[Landroid/service/euicc/EuiccProfileInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getAllProfiles(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 232
    return-void
.end method

.method public getDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;

    .line 493
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 495
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 496
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 498
    const/4 v1, -0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p3, v1, v2}, Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;->onComplete(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    goto :goto_0

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "getDefaultSmdpAddress callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 502
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 505
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$8;

    invoke-direct {v1, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$8;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;)V

    .line 526
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getDefaultSmdpAddress(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 527
    return-void
.end method

.method public getEuiccChallenge(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;

    .line 650
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 652
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 653
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 655
    const/4 v1, -0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p3, v1, v2}, Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;->onComplete(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    goto :goto_0

    .line 656
    :catch_0
    move-exception v1

    .line 657
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "getEuiccChallenge callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 659
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 662
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$12;

    invoke-direct {v1, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$12;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;)V

    .line 683
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[B>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEuiccChallenge(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 684
    return-void
.end method

.method public getEuiccInfo1(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;

    .line 689
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 691
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 692
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 694
    const/4 v1, -0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p3, v1, v2}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;->onComplete(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    goto :goto_0

    .line 695
    :catch_0
    move-exception v1

    .line 696
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "getEuiccInfo1 callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 698
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 701
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$13;

    invoke-direct {v1, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$13;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;)V

    .line 722
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[B>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEuiccInfo1(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 723
    return-void
.end method

.method public getEuiccInfo2(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;

    .line 728
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 730
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 731
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 733
    const/4 v1, -0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p3, v1, v2}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;->onComplete(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    goto :goto_0

    .line 734
    :catch_0
    move-exception v1

    .line 735
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "getEuiccInfo2 callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 737
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 740
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$14;

    invoke-direct {v1, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$14;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;)V

    .line 761
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[B>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEuiccInfo2(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 762
    return-void
.end method

.method public getProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetProfileCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/IGetProfileCallback;

    .line 237
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 240
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 242
    const/4 v1, -0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p4, v1, v2}, Lcom/android/internal/telephony/euicc/IGetProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "getProfile callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$2;

    invoke-direct {v1, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$2;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetProfileCallback;)V

    .line 270
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Landroid/service/euicc/EuiccProfileInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getProfile(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 271
    return-void
.end method

.method public getRulesAuthTable(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;

    .line 610
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 612
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 613
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 615
    const/4 v1, -0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p3, v1, v2}, Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;->onComplete(ILandroid/telephony/euicc/EuiccRulesAuthTable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    goto :goto_0

    .line 616
    :catch_0
    move-exception v1

    .line 617
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "getRulesAuthTable callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 619
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 622
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$11;

    invoke-direct {v1, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$11;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V

    .line 644
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Landroid/telephony/euicc/EuiccRulesAuthTable;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getRulesAuthTable(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 645
    return-void
.end method

.method public getSmdsAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;

    .line 532
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 534
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 535
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 537
    const/4 v1, -0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p3, v1, v2}, Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;->onComplete(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    goto :goto_0

    .line 538
    :catch_0
    move-exception v1

    .line 539
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "getSmdsAddress callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 541
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 544
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$9;

    invoke-direct {v1, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$9;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;)V

    .line 565
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getSmdsAddress(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 566
    return-void
.end method

.method public isEmbeddedSlotActivated()Z
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    .line 151
    .local v0, "slots":[Lcom/android/internal/telephony/uicc/UiccSlot;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 152
    return v1

    .line 154
    :cond_0
    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 155
    aget-object v3, v0, v2

    .line 156
    .local v3, "slotInfo":Lcom/android/internal/telephony/uicc/UiccSlot;
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->isActive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    const/4 v1, 0x1

    return v1

    .line 154
    .end local v3    # "slotInfo":Lcom/android/internal/telephony/uicc/UiccSlot;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method public listNotifications(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IListNotificationsCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "events"    # I
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/IListNotificationsCallback;

    .line 929
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 931
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 932
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 934
    const/4 v1, -0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p4, v1, v2}, Lcom/android/internal/telephony/euicc/IListNotificationsCallback;->onComplete(I[Landroid/telephony/euicc/EuiccNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    goto :goto_0

    .line 935
    :catch_0
    move-exception v1

    .line 936
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "listNotifications callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 938
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 941
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$19;

    invoke-direct {v1, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$19;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IListNotificationsCallback;)V

    .line 963
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[Landroid/telephony/euicc/EuiccNotification;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->listNotifications(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 964
    return-void
.end method

.method public loadBoundProfilePackage(Ljava/lang/String;Ljava/lang/String;[BLcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "boundProfilePackage"    # [B
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;

    .line 849
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 851
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 852
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 854
    const/4 v1, -0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p4, v1, v2}, Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;->onComplete(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    goto :goto_0

    .line 855
    :catch_0
    move-exception v1

    .line 856
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "loadBoundProfilePackage callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 858
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 861
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$17;

    invoke-direct {v1, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$17;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V

    .line 884
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[B>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->loadBoundProfilePackage([BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 885
    return-void
.end method

.method public prepareDownload(Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IPrepareDownloadCallback;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "hashCc"    # [B
    .param p4, "smdpSigned2"    # [B
    .param p5, "smdpSignature2"    # [B
    .param p6, "smdpCertificate"    # [B
    .param p7, "callback"    # Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;

    .line 809
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 811
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v7

    .line 812
    .local v7, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v7, :cond_0

    .line 814
    const/4 v0, -0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p7, v0, v1}, Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;->onComplete(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    goto :goto_0

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v1, "prepareDownload callback failure."

    invoke-static {v1, v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 818
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 821
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/euicc/EuiccCardController$16;

    invoke-direct {v5, p0, p7}, Lcom/android/internal/telephony/euicc/EuiccCardController$16;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;)V

    .line 842
    .local v5, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[B>;"
    iget-object v6, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    move-object v0, v7

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->prepareDownload([B[B[B[BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 844
    return-void
.end method

.method public removeNotificationFromList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "seqNumber"    # I
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;

    .line 1049
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 1051
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 1052
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 1054
    const/4 v1, -0x2

    :try_start_0
    invoke-interface {p4, v1}, Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    goto :goto_0

    .line 1055
    :catch_0
    move-exception v1

    .line 1056
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "removeNotificationFromList callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1058
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1061
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$22;

    invoke-direct {v1, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$22;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;)V

    .line 1083
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->removeNotificationFromList(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 1084
    return-void
.end method

.method public resetMemory(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IResetMemoryCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "options"    # I
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/IResetMemoryCallback;

    .line 452
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 454
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 455
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 457
    const/4 v1, -0x2

    :try_start_0
    invoke-interface {p4, v1}, Lcom/android/internal/telephony/euicc/IResetMemoryCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    goto :goto_0

    .line 458
    :catch_0
    move-exception v1

    .line 459
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "resetMemory callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 464
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$7;

    invoke-direct {v1, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$7;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IResetMemoryCallback;)V

    .line 487
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->resetMemory(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 488
    return-void
.end method

.method public retrieveNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "seqNumber"    # I
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;

    .line 1009
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 1011
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 1012
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 1014
    const/4 v1, -0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p4, v1, v2}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;->onComplete(ILandroid/telephony/euicc/EuiccNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    goto :goto_0

    .line 1015
    :catch_0
    move-exception v1

    .line 1016
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "retrieveNotification callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1018
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1021
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$21;

    invoke-direct {v1, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$21;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;)V

    .line 1043
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Landroid/telephony/euicc/EuiccNotification;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->retrieveNotification(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 1044
    return-void
.end method

.method public retrieveNotificationList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "events"    # I
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;

    .line 969
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 971
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 972
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 974
    const/4 v1, -0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p4, v1, v2}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;->onComplete(I[Landroid/telephony/euicc/EuiccNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    goto :goto_0

    .line 975
    :catch_0
    move-exception v1

    .line 976
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "retrieveNotificationList callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 978
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 981
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$20;

    invoke-direct {v1, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$20;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;)V

    .line 1003
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[Landroid/telephony/euicc/EuiccNotification;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->retrieveNotificationList(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 1004
    return-void
.end method

.method public setDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;

    .line 571
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 573
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 574
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 576
    const/4 v1, -0x2

    :try_start_0
    invoke-interface {p4, v1}, Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    goto :goto_0

    .line 577
    :catch_0
    move-exception v1

    .line 578
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "setDefaultSmdpAddress callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 580
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 583
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$10;

    invoke-direct {v1, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$10;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;)V

    .line 604
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->setDefaultSmdpAddress(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 605
    return-void
.end method

.method public setNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetNicknameCallback;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "nickname"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/android/internal/telephony/euicc/ISetNicknameCallback;

    .line 372
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 374
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v0

    .line 375
    .local v0, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v0, :cond_0

    .line 377
    const/4 v1, -0x2

    :try_start_0
    invoke-interface {p5, v1}, Lcom/android/internal/telephony/euicc/ISetNicknameCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    goto :goto_0

    .line 378
    :catch_0
    move-exception v1

    .line 379
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "setNickname callback failure."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 384
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController$5;

    invoke-direct {v1, p0, p5}, Lcom/android/internal/telephony/euicc/EuiccCardController$5;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/ISetNicknameCallback;)V

    .line 405
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3, p4, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->setNickname(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 406
    return-void
.end method

.method public switchToProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/ISwitchToProfileCallback;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "refresh"    # Z
    .param p5, "callback"    # Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;

    .line 315
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V

    .line 317
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object v6

    .line 318
    .local v6, "card":Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    if-nez v6, :cond_0

    .line 320
    const/4 v0, -0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p5, v0, v1}, Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v1, "switchToProfile callback failure."

    invoke-static {v1, v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 327
    :cond_0
    new-instance v7, Lcom/android/internal/telephony/euicc/EuiccCardController$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, v6

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/EuiccCardController$4;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;Z)V

    .line 366
    .local v0, "profileCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Landroid/service/euicc/EuiccProfileInfo;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v6, p3, v0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getProfile(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 367
    return-void
.end method
