.class final Lcom/android/server/am/ActivityLockHelper;
.super Ljava/lang/Object;
.source "ActivityLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityLockHelper$AppLockedObserver;,
        Lcom/android/server/am/ActivityLockHelper$AppSwitchObserver;,
        Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;,
        Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    }
.end annotation


# static fields
.field private static final APPLOCKMAMAGER_PACKAGE:Ljava/lang/String; = "cn.nubia.applockmanager"

.field private static final APPLOCKMANAGER_COLUMN:Ljava/lang/String; = "packagename"

.field private static final APPLOCKMANAGER_URI:Ljava/lang/String; = "content://cn.nubia.applockmanager/locked_app_packages"

.field private static final APPLOCKSWITCH_COLUMN:Ljava/lang/String; = "value"

.field private static final APPLOCKSWITCH_URI:Ljava/lang/String; = "content://cn.nubia.applockmanager/locked_app_manager/applock_switch"

.field private static final APPLOCK_PASSWORD_ACTION:Ljava/lang/String; = "cn.nubia.applockmanager.nubia_application_applock"

.field private static final APPLOCK_PASSWORD_CLASS_NAME:Ljava/lang/String; = "cn.nubia.applockmanager.AppLockActivity"

.field private static final APPLOCK_PASSWORD_NAME_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final APPLOCK_SWITCH_OFF:Ljava/lang/String; = "off"

.field private static final APPLOCK_SWITCH_ON:Ljava/lang/String; = "on"

.field private static final LOCKED_FILE:Ljava/lang/String; = "locked_app.list"

.field private static final LOCKED_PKG_CLASS_NAME:Ljava/lang/String; = "nubia_locked_package_class_name"

.field private static final LOCKED_PKG_NAME:Ljava/lang/String; = "nubia_locked_package_name"

.field private static LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static LOCKER_ACTIVITY_WHITELIST_KEYGUARD:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PASSWORD_START_ID:Ljava/lang/String; = "nubia_locked_start_id"

.field private static final QUICKSEARCHBOX_PACKAGE:Ljava/lang/String; = "cn.nubia.quicksearchbox"

.field private static final RESTART_EXTRA:Ljava/lang/String; = "nubia_locked_restartIntent"

.field private static final RESTART_STARTINFO_ID:Ljava/lang/String; = "nubia_locked_startinfo_id"

.field static final RESULT_NONE:I = 0x0

.field static final RESULT_PASS_FINISH:I = 0x3

.field static final RESULT_START_PASS:I = 0x1

.field static final RESULT_TASK_TO_BACK:I = 0x2

.field private static final SPLIT_TOKEN:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "ActivityLockHelper"

.field private static final WITHOUT_SMARTCONTAINER:Z

.field private static final YI_MODE_PACKAGE:Ljava/lang/String; = "cn.nubia.zbiglauncher.preset"

.field private static mRid:I


# instance fields
.field private _screenReceiver:Landroid/content/BroadcastReceiver;

.field private mCallFromMoveToTaskFront:Z

.field private mContext:Landroid/content/Context;

.field private mLockedApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLockedOn:Z

.field private mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPermitUid:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRecords:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/ActivityLockHelper$VerifyRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartActivity:Ljava/lang/String;

.field private final mSystemFile:Ljava/io/File;

.field private mTempRecord:Lcom/android/server/am/ActivityLockHelper$VerifyRecord;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 605
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityLockHelper;->LOCKER_ACTIVITY_WHITELIST_KEYGUARD:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityLockHelper;->APPLOCK_PASSWORD_NAME_LIST:Ljava/util/ArrayList;

    .line 79
    sget-object v0, Lcom/android/server/am/ActivityLockHelper;->APPLOCK_PASSWORD_NAME_LIST:Ljava/util/ArrayList;

    const-string v1, "cn.nubia.applockmanager.AppLockActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/android/server/am/ActivityLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.tencent.av.ui.VideoInviteFull"

    const-string v2, "com.tencent.mobileqq;com.tencent.tim"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/server/am/ActivityLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.tencent.av.ui.VideoInviteLock"

    const-string v2, "com.tencent.mobileqq;com.tencent.tim"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/server/am/ActivityLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.tencent.av.ui.AVActivity"

    const-string v2, "com.tencent.mobileqq;com.tencent.tim"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/server/am/ActivityLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.tencent.av.ui.VChatActivity"

    const-string v2, "com.tencent.mobileqq;com.tencent.tim"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/server/am/ActivityLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.tencent.mobileqq.activity.QQLSActivity"

    const-string v2, "com.tencent.mobileqq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/server/am/ActivityLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.tencent.av.ui.AVLoadingDialogActivity"

    const-string v2, "com.tencent.mobileqq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/server/am/ActivityLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    const-string v2, "com.tencent.mm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/server/am/ActivityLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.bilin.huijiao.call.direct.DirectCallActivity"

    const-string v2, "com.bilin.huijiao.activity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/server/am/ActivityLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.immomo.momo.quickchat.single.ui.FriendQChatActivity"

    const-string v2, "com.immomo.momo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/server/am/ActivityLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.xiaomi.channel.voip.VoipCallActivity"

    const-string v2, "com.xiaomi.channel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/server/am/ActivityLockHelper;->LOCKER_ACTIVITY_WHITELIST_KEYGUARD:Ljava/util/Map;

    const-string v1, "com.tencent.mobileqq.activity.SplashActivity"

    const-string v2, "com.tencent.mobileqq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/server/am/ActivityLockHelper;->LOCKER_ACTIVITY_WHITELIST_KEYGUARD:Ljava/util/Map;

    const-string v1, "com.tencent.mm.ui.LauncherUI"

    const-string v2, "com.tencent.mm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/ActivityLockHelper;->mRid:I

    .line 115
    invoke-static {}, Lcom/android/server/am/ActivityLockHelper;->withoutSmartContainer()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityLockHelper;->WITHOUT_SMARTCONTAINER:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mSystemFile:Ljava/io/File;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedOn:Z

    .line 98
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedApps:Ljava/util/HashSet;

    .line 99
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mPermitUid:Ljava/util/HashSet;

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mTempRecord:Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    .line 110
    iput-boolean v0, p0, Lcom/android/server/am/ActivityLockHelper;->mCallFromMoveToTaskFront:Z

    .line 112
    iput-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mRestartActivity:Ljava/lang/String;

    .line 193
    new-instance v0, Lcom/android/server/am/ActivityLockHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityLockHelper$1;-><init>(Lcom/android/server/am/ActivityLockHelper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->_screenReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    iput-object p1, p0, Lcom/android/server/am/ActivityLockHelper;->mContext:Landroid/content/Context;

    .line 120
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->initLockedApps()V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityLockHelper;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityLockHelper;

    .line 51
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedApps:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityLockHelper;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityLockHelper;

    .line 51
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityLockHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityLockHelper;

    .line 51
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityLockHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityLockHelper;

    .line 51
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->updateAppSwitch()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityLockHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityLockHelper;

    .line 51
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->updateAppList()V

    return-void
.end method

.method private addPermitApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "app"    # Ljava/lang/String;

    .line 215
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 216
    .local v0, "uid":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mPermitUid:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v0    # "uid":I
    :cond_0
    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 220
    :goto_0
    return-void
.end method

.method private getVerifyRecord(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "record":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 426
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/ActivityLockHelper$VerifyRecord;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mAttachActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v3, :cond_0

    .line 427
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    .line 428
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/ActivityLockHelper$VerifyRecord;>;"
    :cond_0
    goto :goto_0

    .line 429
    :cond_1
    return-object v0
.end method

.method private initLockedApps()V
    .locals 4

    .line 183
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->readDataFromFile()V

    .line 184
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedApps:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 185
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method private isLockedPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedApps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUidPermited(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 223
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mPermitUid:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUnlockAppActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 479
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "activityName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 481
    .local v1, "result":Z
    sget-object v2, Lcom/android/server/am/ActivityLockHelper;->APPLOCK_PASSWORD_NAME_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 482
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 483
    const/4 v1, 0x1

    .line 484
    goto :goto_1

    .line 486
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 487
    :cond_1
    :goto_1
    return v1
.end method

.method private makeId()I
    .locals 1

    .line 433
    sget v0, Lcom/android/server/am/ActivityLockHelper;->mRid:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/am/ActivityLockHelper;->mRid:I

    return v0
.end method

.method private markIntentRestricted(Landroid/content/Intent;Z)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "restricted"    # Z

    .line 695
    :try_start_0
    const-string v0, "com.cmx.cmplus.SmartContainerManagerNative"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 696
    .local v0, "smartContainerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "get"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 697
    .local v1, "get":Ljava/lang/reflect/Method;
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 698
    .local v3, "smartContainer":Ljava/lang/Object;
    const-string v4, "com.cmx.cmplus.ISmartContainerManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 699
    .local v4, "iSmartContainer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "markIntentRestricted"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Intent;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 700
    .local v5, "markIntentRestriced":Ljava/lang/reflect/Method;
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v9

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    .end local v0    # "smartContainerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "get":Ljava/lang/reflect/Method;
    .end local v3    # "smartContainer":Ljava/lang/Object;
    .end local v4    # "iSmartContainer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "markIntentRestriced":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 704
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private readDataFromFile()V
    .locals 7

    .line 666
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mSystemFile:Ljava/io/File;

    const-string/jumbo v2, "locked_app.list"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 667
    .local v0, "readFile":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 668
    .local v1, "fileReader":Ljava/io/FileReader;
    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 667
    .local v3, "reader":Ljava/io/BufferedReader;
    nop

    .line 669
    const/4 v4, 0x0

    .line 670
    .local v4, "tempString":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 671
    const-string/jumbo v5, "on"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedOn:Z

    .line 672
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_0

    .line 673
    iget-object v5, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedApps:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 675
    .end local v4    # "tempString":Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/am/ActivityLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 675
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :try_start_4
    invoke-static {v2, v1}, Lcom/android/server/am/ActivityLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 677
    .end local v1    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 675
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    move-object v5, v2

    goto :goto_1

    .line 667
    :catch_0
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 675
    :catchall_1
    move-exception v5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    :goto_1
    :try_start_6
    invoke-static {v5, v3}, Lcom/android/server/am/ActivityLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 675
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v3

    goto :goto_2

    .line 667
    :catch_1
    move-exception v2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 675
    :goto_2
    :try_start_8
    invoke-static {v2, v1}, Lcom/android/server/am/ActivityLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 675
    .end local v1    # "fileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v1

    .line 676
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ActivityLockHelper"

    const-string v3, "Failed read applocker data from file"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method

.method private registerObserver()V
    .locals 3

    .line 233
    new-instance v0, Lcom/android/server/am/ActivityLockHelper$AppLockedObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityLockHelper$AppLockedObserver;-><init>(Lcom/android/server/am/ActivityLockHelper;Landroid/os/Handler;)V

    .line 235
    .local v0, "appLockedObserver":Lcom/android/server/am/ActivityLockHelper$AppLockedObserver;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityLockHelper$AppLockedObserver;->observe()V

    .line 236
    new-instance v1, Lcom/android/server/am/ActivityLockHelper$AppSwitchObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ActivityLockHelper$AppSwitchObserver;-><init>(Lcom/android/server/am/ActivityLockHelper;Landroid/os/Handler;)V

    .line 238
    .local v1, "appSwitchObserver":Lcom/android/server/am/ActivityLockHelper$AppSwitchObserver;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityLockHelper$AppSwitchObserver;->observe()V

    .line 239
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityLockHelper;->_screenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    return-void
.end method

.method private updateAppList()V
    .locals 7

    .line 610
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 611
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "content://cn.nubia.applockmanager/locked_app_packages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 613
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 623
    if-eqz v1, :cond_0

    invoke-static {v2, v1}, Lcom/android/server/am/ActivityLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 614
    :cond_0
    return-void

    .line 615
    :cond_1
    :try_start_0
    const-string/jumbo v3, "packagename"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 616
    .local v3, "packageIndex":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 617
    .local v4, "tempLockedApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, -0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 618
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 619
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 621
    :cond_2
    iput-object v4, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedApps:Ljava/util/HashSet;

    .line 622
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->updateAppStatus()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    .end local v3    # "packageIndex":I
    .end local v4    # "tempLockedApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-static {v2, v1}, Lcom/android/server/am/ActivityLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 624
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->writeDataToFile()V

    .line 625
    return-void

    .line 623
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 611
    :catch_0
    move-exception v2

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    :goto_1
    if-eqz v1, :cond_4

    invoke-static {v2, v1}, Lcom/android/server/am/ActivityLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v3
.end method

.method private updateAppStatus()V
    .locals 5

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v0, "tempRemoveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedApps:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 630
    .local v2, "app":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 631
    iget-object v3, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .end local v2    # "app":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 634
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 635
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedApps:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 636
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 639
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 640
    .local v2, "remove":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    .end local v2    # "remove":Ljava/lang/String;
    goto :goto_2

    .line 642
    :cond_4
    return-void
.end method

.method private updateAppSwitch()V
    .locals 7

    .line 594
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 595
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "content://cn.nubia.applockmanager/locked_app_manager/applock_switch"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 597
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 605
    if-eqz v1, :cond_0

    invoke-static {v2, v1}, Lcom/android/server/am/ActivityLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 598
    :cond_0
    return-void

    .line 599
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    .line 605
    if-eqz v1, :cond_2

    invoke-static {v2, v1}, Lcom/android/server/am/ActivityLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 600
    :cond_2
    return-void

    .line 602
    :cond_3
    :try_start_1
    const-string/jumbo v3, "value"

    .line 603
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 602
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 604
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedOn:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    .end local v3    # "value":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-static {v2, v1}, Lcom/android/server/am/ActivityLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 606
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->writeDataToFile()V

    .line 607
    return-void

    .line 605
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 595
    :catch_0
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 605
    :goto_0
    if-eqz v1, :cond_5

    invoke-static {v2, v1}, Lcom/android/server/am/ActivityLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5
    throw v3
.end method

.method private static withoutSmartContainer()Z
    .locals 4

    .line 683
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.cmx.cmplus.SmartContainerConfig"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 684
    .local v1, "configClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "WITH_OUT_ALL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 685
    .local v2, "filed":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 686
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 687
    .end local v1    # "configClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "filed":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 688
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 690
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private writeDataToFile()V
    .locals 10

    .line 645
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mSystemFile:Ljava/io/File;

    const-string/jumbo v2, "locked_app.list"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 646
    .local v0, "writeTarget":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 647
    .local v1, "fstr":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 646
    .local v3, "str":Ljava/io/BufferedOutputStream;
    nop

    .line 648
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 650
    iget-boolean v6, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedOn:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "on"

    goto :goto_0

    :cond_0
    const-string/jumbo v6, "off"

    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 653
    iget-object v6, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 654
    .local v7, "pkg":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 655
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 658
    .end local v7    # "pkg":Ljava/lang/String;
    goto :goto_1

    .line 659
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 660
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/am/ActivityLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 660
    .end local v3    # "str":Ljava/io/BufferedOutputStream;
    :try_start_4
    invoke-static {v2, v1}, Lcom/android/server/am/ActivityLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 662
    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 660
    .restart local v1    # "fstr":Ljava/io/FileOutputStream;
    .restart local v3    # "str":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v4

    move-object v5, v2

    goto :goto_2

    .line 646
    :catch_0
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 660
    :catchall_1
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_2
    :try_start_6
    invoke-static {v5, v3}, Lcom/android/server/am/ActivityLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 660
    .end local v3    # "str":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v3

    goto :goto_3

    .line 646
    :catch_1
    move-exception v2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 660
    :goto_3
    :try_start_8
    invoke-static {v2, v1}, Lcom/android/server/am/ActivityLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 660
    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 661
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ActivityLockHelper"

    const-string v3, "Failed write applocker data to file"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method


# virtual methods
.method getResumeStartRecord()Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mTempRecord:Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    return-object v0
.end method

.method public getStartIntentInfo(Landroid/content/Intent;)Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 261
    const-string/jumbo v0, "nubia_locked_startinfo_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 262
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    .line 263
    .local v1, "r":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    const/4 v2, 0x0

    .line 264
    .local v2, "info":Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;
    if-eqz v1, :cond_0

    .line 265
    iget-object v2, v1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    .line 267
    :cond_0
    return-object v2
.end method

.method isAppInLockedStatus(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 276
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 277
    .local v0, "callUid":I
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityLockHelper;->isUidPermited(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 278
    return v2

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityLockHelper;->isLockedOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 281
    return v2

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityLockHelper;->isPkgNeedLocked(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 286
    :cond_2
    return v2
.end method

.method isLockActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 128
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityLockHelper;->isLockedPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isLockActivity(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityLockHelper;->isLockedPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isLockScreenWhiteListActivity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .line 179
    sget-object v0, Lcom/android/server/am/ActivityLockHelper;->LOCKER_ACTIVITY_WHITELIST_KEYGUARD:Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityLockHelper;->isWhiteListActivity(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method isLockedOn()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedOn:Z

    return v0
.end method

.method isPkgNeedLocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 246
    :cond_0
    return v0
.end method

.method isRestartIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "isRestart":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mRestartActivity:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityLockHelper;->mRestartActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const/4 v0, 0x1

    .line 254
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mRestartActivity:Ljava/lang/String;

    .line 257
    :cond_0
    return v0
.end method

.method isWhiteListActivity(Landroid/content/pm/ActivityInfo;Z)Z
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "isScreenLock"    # Z

    .line 139
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 140
    return v0

    .line 142
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 143
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 144
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 145
    .local v3, "targetActivity":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityLockHelper;->isWhiteListActivity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 146
    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/ActivityLockHelper;->isWhiteListActivity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    if-eqz p2, :cond_3

    .line 150
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityLockHelper;->isLockScreenWhiteListActivity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 151
    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/ActivityLockHelper;->isLockScreenWhiteListActivity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    :cond_2
    return v0

    .line 154
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_4
    :goto_0
    return v0
.end method

.method isWhiteListActivity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .line 158
    sget-object v0, Lcom/android/server/am/ActivityLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityLockHelper;->isWhiteListActivity(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method isWhiteListActivity(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 162
    .local p3, "whitelist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 166
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 168
    .local v1, "values":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "pkgSet":[Ljava/lang/String;
    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 170
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 171
    const/4 v0, 0x1

    return v0

    .line 169
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "values":Ljava/lang/String;
    .end local v2    # "pkgSet":[Ljava/lang/String;
    :cond_2
    return v0

    .line 163
    :cond_3
    :goto_1
    return v0
.end method

.method needDestroy(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 6
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "next"    # Lcom/android/server/am/ActivityRecord;

    .line 454
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 456
    :cond_0
    const/4 v1, 0x0

    .line 457
    .local v1, "need":Z
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityLockHelper;->isUnlockAppActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 458
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityLockHelper;->isUnlockAppActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 461
    return v0

    .line 463
    :cond_1
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "nubia_locked_start_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 464
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    .line 465
    .local v3, "r":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    if-eqz v3, :cond_4

    iget-boolean v4, v3, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyWithStart:Z

    if-nez v4, :cond_4

    .line 466
    iget-object v4, v3, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mAttachActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 467
    return v0

    .line 469
    :cond_2
    iget-object v4, v3, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mAttachActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_0
    move v1, v0

    .line 470
    if-eqz v1, :cond_4

    .line 471
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v3, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    .end local v2    # "id":I
    .end local v3    # "r":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    :cond_4
    return v1

    .line 455
    .end local v1    # "need":Z
    :cond_5
    :goto_1
    return v0
.end method

.method notifyUnLockApp(IZ)Z
    .locals 5
    .param p1, "id"    # I
    .param p2, "success"    # Z

    .line 302
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 303
    .local v0, "callUid":I
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityLockHelper;->isUidPermited(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    const/4 v1, 0x0

    return v1

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    .line 306
    .local v1, "r":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    if-eqz v1, :cond_2

    .line 307
    iget-object v2, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mPackageName:Ljava/lang/String;

    xor-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-boolean v2, v1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyWithStart:Z

    if-eqz v2, :cond_2

    .line 309
    if-eqz p2, :cond_1

    .line 310
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityLockHelper;->restartLockedActivity(Lcom/android/server/am/ActivityLockHelper$VerifyRecord;)V

    .line 311
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method notifyUnLockApp(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .line 290
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 291
    .local v0, "callUid":I
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityLockHelper;->isUidPermited(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 292
    return v2

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    xor-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const/4 v1, 0x1

    return v1

    .line 298
    :cond_1
    return v2
.end method

.method onReadTopActivityResumeState(Lcom/android/server/am/ActivityRecord;)I
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityLockHelper;->isLockActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    const/4 v0, 0x0

    return v0

    .line 406
    :cond_0
    const/4 v0, 0x0

    .line 407
    .local v0, "result":I
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityLockHelper;->isPkgNeedLocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 408
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityLockHelper;->getVerifyRecord(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    move-result-object v1

    .line 409
    .local v1, "record":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    if-nez v1, :cond_1

    .line 410
    const/4 v0, 0x1

    goto :goto_0

    .line 412
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/am/ActivityLockHelper;->mCallFromMoveToTaskFront:Z

    if-eqz v2, :cond_2

    .line 413
    const/4 v0, 0x1

    goto :goto_0

    .line 415
    :cond_2
    const/4 v0, 0x2

    .line 419
    .end local v1    # "record":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    :cond_3
    :goto_0
    return v0
.end method

.method onTopActivityResume(Lcom/android/server/am/ActivityRecord;Z)I
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "isLockScreen"    # Z

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityLockHelper;->isLockActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 363
    return v1

    .line 364
    :cond_0
    const/4 v0, 0x0

    .line 366
    .local v0, "result":I
    if-eqz p1, :cond_1

    .line 367
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 368
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0, v2, p2}, Lcom/android/server/am/ActivityLockHelper;->isWhiteListActivity(Landroid/content/pm/ActivityInfo;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    return v1

    .line 372
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityLockHelper;->isPkgNeedLocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 373
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityLockHelper;->getVerifyRecord(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    move-result-object v1

    .line 374
    .local v1, "record":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    if-nez v1, :cond_2

    .line 375
    new-instance v9, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->makeId()I

    move-result v5

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 376
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;-><init>(Lcom/android/server/am/ActivityLockHelper;ZILjava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;)V

    .line 377
    .local v2, "verifyRecord":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v2, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iput-object v2, p0, Lcom/android/server/am/ActivityLockHelper;->mTempRecord:Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    .line 379
    const/4 v0, 0x1

    .line 380
    .end local v2    # "verifyRecord":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    goto :goto_0

    .line 381
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-boolean v2, p0, Lcom/android/server/am/ActivityLockHelper;->mCallFromMoveToTaskFront:Z

    if-eqz v2, :cond_3

    .line 383
    new-instance v2, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    const/4 v5, 0x0

    .line 384
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->makeId()I

    move-result v6

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object v3, v2

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;-><init>(Lcom/android/server/am/ActivityLockHelper;ZILjava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;)V

    .line 385
    .restart local v2    # "verifyRecord":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v2, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iput-object v2, p0, Lcom/android/server/am/ActivityLockHelper;->mTempRecord:Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    .line 387
    const/4 v0, 0x1

    .line 388
    .end local v2    # "verifyRecord":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    goto :goto_0

    .line 389
    :cond_3
    const/4 v0, 0x2

    .line 392
    .end local v1    # "record":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    :goto_0
    goto :goto_1

    .line 393
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityLockHelper;->getVerifyRecord(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    move-result-object v1

    .line 394
    .restart local v1    # "record":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    if-eqz v1, :cond_5

    .line 395
    iget-object v2, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .end local v1    # "record":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    :cond_5
    :goto_1
    return v0
.end method

.method redirectLockedActivityStart(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/Object;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 27
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/WaitResult;
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p16, "userId"    # I
    .param p17, "iContainer"    # Ljava/lang/Object;
    .param p18, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p19, "pkgName"    # Ljava/lang/String;

    move-object/from16 v7, p0

    .line 325
    new-instance v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    move-object v8, v0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    move/from16 v18, p10

    move/from16 v19, p11

    move-object/from16 v20, p12

    move-object/from16 v21, p13

    move-object/from16 v22, p14

    move-object/from16 v23, p15

    move/from16 v24, p16

    move-object/from16 v25, p17

    move-object/from16 v26, p18

    invoke-direct/range {v8 .. v26}, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;-><init>(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/Object;Lcom/android/server/am/TaskRecord;)V

    move-object v6, v0

    .line 330
    .local v6, "restartInfo":Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;
    new-instance v8, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityLockHelper;->makeId()I

    move-result v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, v7

    move-object/from16 v4, p19

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;-><init>(Lcom/android/server/am/ActivityLockHelper;ZILjava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;)V

    .line 332
    .local v0, "r":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    iget-object v1, v7, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, v0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityLockHelper;->startUnlockAppActivity(Lcom/android/server/am/ActivityLockHelper$VerifyRecord;)V

    .line 334
    return-void
.end method

.method register()V
    .locals 1

    .line 206
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->registerReceiver()V

    .line 207
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->registerObserver()V

    .line 208
    const-string v0, "cn.nubia.applockmanager"

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityLockHelper;->addPermitApp(Ljava/lang/String;)V

    .line 209
    const-string v0, "cn.nubia.quicksearchbox"

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityLockHelper;->addPermitApp(Ljava/lang/String;)V

    .line 210
    const-string v0, "cn.nubia.zbiglauncher.preset"

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityLockHelper;->addPermitApp(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method restartLockedActivity(Lcom/android/server/am/ActivityLockHelper$VerifyRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    .line 337
    iget-object v0, p1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    if-eqz v0, :cond_2

    .line 338
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 339
    .local v0, "restartIntent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    iget-object v1, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 340
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 342
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityLockHelper;->mRestartActivity:Ljava/lang/String;

    .line 344
    :cond_0
    const-string/jumbo v2, "nubia_locked_startinfo_id"

    iget v3, p1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 347
    sget-boolean v2, Lcom/android/server/am/ActivityLockHelper;->WITHOUT_SMARTCONTAINER:Z

    if-eqz v2, :cond_1

    .line 348
    iget-object v2, p0, Lcom/android/server/am/ActivityLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 350
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityLockHelper;->markIntentRestricted(Landroid/content/Intent;Z)V

    .line 351
    iget-object v2, p0, Lcom/android/server/am/ActivityLockHelper;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    iget v4, v4, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 355
    .end local v0    # "restartIntent":Landroid/content/Intent;
    .end local v1    # "component":Landroid/content/ComponentName;
    :cond_2
    :goto_0
    return-void
.end method

.method public setCallFromMoveToTaskFront(Z)V
    .locals 0
    .param p1, "callFromMoveToTaskFront"    # Z

    .line 190
    iput-boolean p1, p0, Lcom/android/server/am/ActivityLockHelper;->mCallFromMoveToTaskFront:Z

    .line 191
    return-void
.end method

.method startUnlockAppActivity(Lcom/android/server/am/ActivityLockHelper$VerifyRecord;)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    .line 437
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 438
    .local v0, "passIntent":Landroid/content/Intent;
    const-string/jumbo v1, "nubia_locked_start_id"

    iget v2, p1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    const-string/jumbo v1, "nubia_locked_package_name"

    iget-object v2, p1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    iget-object v1, p1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    iget-object v1, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    iget-object v1, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "pkgClassName":Ljava/lang/String;
    const-string/jumbo v2, "nubia_locked_package_class_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    .end local v1    # "pkgClassName":Ljava/lang/String;
    :cond_0
    const-string v1, "cn.nubia.applockmanager.nubia_application_applock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 449
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 450
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 451
    return-void
.end method
