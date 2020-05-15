.class final Lcom/android/server/am/ActivityTimeLockHelper;
.super Ljava/lang/Object;
.source "ActivityTimeLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityTimeLockHelper$AppLockedObserver;,
        Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;,
        Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    }
.end annotation


# static fields
.field private static final APPLOCKMAMAGER_PACKAGE:Ljava/lang/String; = "cn.nubia.applockmanager"

.field private static final APPLOCK_PASSWORD_CLASS_NAME:Ljava/lang/String; = "cn.nubia.apptimelock.DelaySettings"

.field private static final APPLOCK_PASSWORD_NAME_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final APPSTATUS_COLUMN_PKGNAME:Ljava/lang/String; = "packagename"

.field private static final APPSTATUS_COLUMN_STATUS:Ljava/lang/String; = "status"

.field private static final APPSTATUS_URI:Ljava/lang/String; = "content://cn.nubia.apptimelock/app_status"

.field private static final APPTIMELOCK_DELAY_ACTION:Ljava/lang/String; = "cn.nubia.apptimelock.action.DELAY"

.field private static final APPTIMELOCK_PACKAGE:Ljava/lang/String; = "cn.nubia.apptimelock"

.field private static final APP_LOCKED_FOR_DEADLINE_EXPIRED:Ljava/lang/String; = "2"

.field private static final APP_LOCKED_FOR_SLEEP_MODE:Ljava/lang/String; = "1"

.field private static final APP_TIME_LIMITED_LOCKED_STATUS:Ljava/lang/String; = "3"

.field private static final APP_UNLOCKED_STATUS:Ljava/lang/String; = "0"

.field private static final LOCKED_FILE:Ljava/lang/String; = "locked_app_time_lock.list"

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

.field private static final RESTART_STARTINFO_ID:Ljava/lang/String; = "nubia_locked_startinfo_id"

.field static final RESULT_NONE:I = 0x0

.field static final RESULT_PASS_FINISH:I = 0x3

.field static final RESULT_START_PASS:I = 0x1

.field static final RESULT_TASK_TO_BACK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActivityTimeLockHelper"

.field private static final WITHOUT_SMARTCONTAINER:Z

.field private static final YI_MODE_PACKAGE:Ljava/lang/String; = "cn.nubia.zbiglauncher.preset"

.field private static mRid:I


# instance fields
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
            "Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartActivity:Ljava/lang/String;

.field private final mSystemFile:Ljava/io/File;

.field private mTempRecord:Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 628
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

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST_KEYGUARD:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->APPLOCK_PASSWORD_NAME_LIST:Ljava/util/ArrayList;

    .line 87
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->APPLOCK_PASSWORD_NAME_LIST:Ljava/util/ArrayList;

    const-string v1, "cn.nubia.apptimelock.DelaySettings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.tencent.av.ui.VideoInviteFull"

    const-string v2, "com.tencent.mobileqq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.tencent.av.ui.VideoInviteLock"

    const-string v2, "com.tencent.mobileqq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.tencent.av.ui.AVActivity"

    const-string v2, "com.tencent.mobileqq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.tencent.av.ui.VChatActivity"

    const-string v2, "com.tencent.mobileqq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.tencent.mobileqq.activity.QQLSActivity"

    const-string v2, "com.tencent.mobileqq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.tencent.av.ui.AVLoadingDialogActivity"

    const-string v2, "com.tencent.mobileqq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    const-string v2, "com.tencent.mm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.bilin.huijiao.call.direct.DirectCallActivity"

    const-string v2, "com.bilin.huijiao.activity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.immomo.momo.quickchat.single.ui.FriendQChatActivity"

    const-string v2, "com.immomo.momo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.xiaomi.channel.voip.VoipCallActivity"

    const-string v2, "com.xiaomi.channel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.tencent.av.ui.VChatActivity"

    const-string v2, "com.tencent.tim"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.tencent.av.ui.VideoInviteFull"

    const-string v2, "com.tencent.tim"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.tencent.av.ui.VideoInviteLock"

    const-string v2, "com.tencent.tim"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    const-string v1, "com.tencent.av.ui.AVActivity"

    const-string v2, "com.tencent.tim"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST_KEYGUARD:Ljava/util/Map;

    const-string v1, "com.tencent.mobileqq.activity.SplashActivity"

    const-string v2, "com.tencent.mobileqq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST_KEYGUARD:Ljava/util/Map;

    const-string v1, "com.tencent.mm.ui.LauncherUI"

    const-string v2, "com.tencent.mm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/ActivityTimeLockHelper;->mRid:I

    .line 126
    invoke-static {}, Lcom/android/server/am/ActivityTimeLockHelper;->withoutSmartContainer()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityTimeLockHelper;->WITHOUT_SMARTCONTAINER:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mSystemFile:Ljava/io/File;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedApps:Ljava/util/HashSet;

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mPermitUid:Ljava/util/HashSet;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mTempRecord:Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mCallFromMoveToTaskFront:Z

    .line 123
    iput-object v0, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRestartActivity:Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mContext:Landroid/content/Context;

    .line 131
    invoke-direct {p0}, Lcom/android/server/am/ActivityTimeLockHelper;->initLockedApps()V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityTimeLockHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityTimeLockHelper;

    .line 58
    iget-object v0, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityTimeLockHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityTimeLockHelper;

    .line 58
    invoke-direct {p0}, Lcom/android/server/am/ActivityTimeLockHelper;->updateAppList()V

    return-void
.end method

.method private addPermitApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "app"    # Ljava/lang/String;

    .line 216
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 217
    .local v0, "uid":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mPermitUid:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0    # "uid":I
    :cond_0
    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 221
    :goto_0
    return-void
.end method

.method private getVerifyRecord(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "record":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

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

    .line 463
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mAttachActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v3, :cond_0

    .line 464
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    .line 465
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;>;"
    :cond_0
    goto :goto_0

    .line 466
    :cond_1
    return-object v0
.end method

.method private initLockedApps()V
    .locals 4

    .line 194
    invoke-direct {p0}, Lcom/android/server/am/ActivityTimeLockHelper;->readDataFromFile()V

    .line 195
    iget-object v0, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedApps:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 196
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method

.method private isLockedPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedApps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUidPermited(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 224
    iget-object v0, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mPermitUid:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUnlockAppActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 516
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "activityName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 518
    .local v1, "result":Z
    sget-object v2, Lcom/android/server/am/ActivityTimeLockHelper;->APPLOCK_PASSWORD_NAME_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 519
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 520
    const/4 v1, 0x1

    .line 521
    goto :goto_1

    .line 523
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 524
    :cond_1
    :goto_1
    return v1
.end method

.method private makeId()I
    .locals 1

    .line 470
    sget v0, Lcom/android/server/am/ActivityTimeLockHelper;->mRid:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/am/ActivityTimeLockHelper;->mRid:I

    return v0
.end method

.method private markIntentRestricted(Landroid/content/Intent;Z)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "restricted"    # Z

    .line 696
    :try_start_0
    const-string v0, "com.cmx.cmplus.SmartContainerManagerNative"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 697
    .local v0, "smartContainerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "get"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 698
    .local v1, "get":Ljava/lang/reflect/Method;
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 699
    .local v3, "smartContainer":Ljava/lang/Object;
    const-string v4, "com.cmx.cmplus.ISmartContainerManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 700
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

    .line 701
    .local v5, "markIntentRestriced":Ljava/lang/reflect/Method;
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v9

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    .end local v0    # "smartContainerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "get":Ljava/lang/reflect/Method;
    .end local v3    # "smartContainer":Ljava/lang/Object;
    .end local v4    # "iSmartContainer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "markIntentRestriced":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 705
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private readDataFromFile()V
    .locals 7

    .line 669
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mSystemFile:Ljava/io/File;

    const-string/jumbo v2, "locked_app_time_lock.list"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 670
    .local v0, "readFile":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 671
    .local v1, "fileReader":Ljava/io/FileReader;
    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 670
    .local v3, "reader":Ljava/io/BufferedReader;
    nop

    .line 672
    move-object v4, v2

    .line 673
    .local v4, "tempString":Ljava/lang/String;
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_0

    .line 674
    iget-object v5, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedApps:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 676
    .end local v4    # "tempString":Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/am/ActivityTimeLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 676
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :try_start_4
    invoke-static {v2, v1}, Lcom/android/server/am/ActivityTimeLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 678
    .end local v1    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 676
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    move-object v5, v2

    goto :goto_1

    .line 670
    :catch_0
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 676
    :catchall_1
    move-exception v5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    :goto_1
    :try_start_6
    invoke-static {v5, v3}, Lcom/android/server/am/ActivityTimeLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 676
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v3

    goto :goto_2

    .line 670
    :catch_1
    move-exception v2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 676
    :goto_2
    :try_start_8
    invoke-static {v2, v1}, Lcom/android/server/am/ActivityTimeLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 676
    .end local v1    # "fileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v1

    .line 677
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ActivityTimeLockHelper"

    const-string v3, "Failed read applocker data from file"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method

.method private updateAppList()V
    .locals 7

    .line 614
    iget-object v0, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 615
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "status in (? , ?)"

    .line 616
    .local v4, "selection":Ljava/lang/String;
    :try_start_0
    const-string v1, "content://cn.nubia.apptimelock/app_status"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v1, "1"

    const-string v5, "2"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 618
    if-nez v1, :cond_1

    .line 628
    if-eqz v1, :cond_0

    invoke-static {v2, v1}, Lcom/android/server/am/ActivityTimeLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 619
    :cond_0
    return-void

    .line 620
    :cond_1
    :try_start_1
    const-string/jumbo v3, "packagename"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 621
    .local v3, "packageIndex":I
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 622
    .local v5, "tempLockedApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v6, -0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 623
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 624
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 626
    :cond_2
    iput-object v5, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedApps:Ljava/util/HashSet;

    .line 627
    invoke-direct {p0}, Lcom/android/server/am/ActivityTimeLockHelper;->updateAppStatus()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    .end local v3    # "packageIndex":I
    .end local v5    # "tempLockedApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    :try_start_2
    invoke-static {v2, v1}, Lcom/android/server/am/ActivityTimeLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 630
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3
    goto :goto_2

    .line 628
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 616
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 628
    :goto_1
    if-eqz v1, :cond_4

    :try_start_4
    invoke-static {v2, v1}, Lcom/android/server/am/ActivityTimeLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 628
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v1

    .line 629
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ActivityTimeLockHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apptimelock, updateAppList exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-direct {p0}, Lcom/android/server/am/ActivityTimeLockHelper;->writeDataToFile()V

    .line 632
    return-void
.end method

.method private updateAppStatus()V
    .locals 5

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .local v0, "tempRemoveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedApps:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 637
    .local v2, "app":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 638
    iget-object v3, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .end local v2    # "app":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 641
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

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

    .line 642
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedApps:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 643
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 646
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

    .line 647
    .local v2, "remove":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .end local v2    # "remove":Ljava/lang/String;
    goto :goto_2

    .line 649
    :cond_4
    return-void
.end method

.method private static withoutSmartContainer()Z
    .locals 4

    .line 684
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.cmx.cmplus.SmartContainerConfig"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 685
    .local v1, "configClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "WITH_OUT_ALL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 686
    .local v2, "filed":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 687
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 688
    .end local v1    # "configClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "filed":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 689
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 691
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private writeDataToFile()V
    .locals 9

    .line 652
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mSystemFile:Ljava/io/File;

    const-string/jumbo v2, "locked_app_time_lock.list"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 653
    .local v0, "writeTarget":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 654
    .local v1, "fstr":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 653
    .local v3, "str":Ljava/io/BufferedOutputStream;
    nop

    .line 655
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedApps:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 657
    .local v6, "pkg":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 658
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 661
    .end local v6    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 662
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 663
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/am/ActivityTimeLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 663
    .end local v3    # "str":Ljava/io/BufferedOutputStream;
    :try_start_4
    invoke-static {v2, v1}, Lcom/android/server/am/ActivityTimeLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 665
    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 663
    .restart local v1    # "fstr":Ljava/io/FileOutputStream;
    .restart local v3    # "str":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v4

    move-object v5, v2

    goto :goto_1

    .line 653
    :catch_0
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 663
    :catchall_1
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_1
    :try_start_6
    invoke-static {v5, v3}, Lcom/android/server/am/ActivityTimeLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 663
    .end local v3    # "str":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v3

    goto :goto_2

    .line 653
    :catch_1
    move-exception v2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 663
    :goto_2
    :try_start_8
    invoke-static {v2, v1}, Lcom/android/server/am/ActivityTimeLockHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 663
    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 664
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ActivityTimeLockHelper"

    const-string v3, "Failed write applocker data to file"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method


# virtual methods
.method getResumeStartRecord()Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mTempRecord:Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    return-object v0
.end method

.method public getStartIntentInfo(Landroid/content/Intent;)Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 247
    const-string/jumbo v0, "nubia_locked_startinfo_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 248
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    .line 249
    .local v1, "r":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    const/4 v2, 0x0

    .line 250
    .local v2, "info":Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;
    if-eqz v1, :cond_0

    .line 251
    iget-object v2, v1, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;

    .line 253
    :cond_0
    return-object v2
.end method

.method isAppInLockedStatus(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 262
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 263
    .local v0, "callUid":I
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityTimeLockHelper;->isUidPermited(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 264
    return v2

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityTimeLockHelper;->isLockedOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    return v2

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityTimeLockHelper;->isPkgNeedLocked(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 272
    :cond_2
    return v2
.end method

.method isLockActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 146
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    return v0

    .line 149
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityTimeLockHelper;->isLockedPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isLockActivity(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityTimeLockHelper;->isLockedPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isLockScreenWhiteListActivity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .line 190
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST_KEYGUARD:Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityTimeLockHelper;->isWhiteListActivity(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method isLockedOn()Z
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const/4 v0, 0x1

    return v0

    .line 140
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isPkgNeedLocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 232
    :cond_0
    return v0
.end method

.method isRestartIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "isRestart":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRestartActivity:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRestartActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const/4 v0, 0x1

    .line 240
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRestartActivity:Ljava/lang/String;

    .line 243
    :cond_0
    return v0
.end method

.method isWhiteListActivity(Landroid/content/pm/ActivityInfo;Z)Z
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "isScreenLock"    # Z

    .line 157
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 158
    return v0

    .line 160
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 161
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 162
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 163
    .local v3, "targetActivity":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityTimeLockHelper;->isWhiteListActivity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 164
    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/ActivityTimeLockHelper;->isWhiteListActivity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    if-eqz p2, :cond_3

    .line 168
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityTimeLockHelper;->isLockScreenWhiteListActivity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 169
    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/ActivityTimeLockHelper;->isLockScreenWhiteListActivity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 170
    :cond_2
    return v0

    .line 172
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 165
    :cond_4
    :goto_0
    return v0
.end method

.method isWhiteListActivity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .line 176
    sget-object v0, Lcom/android/server/am/ActivityTimeLockHelper;->LOCKER_ACTIVITY_WHITELIST:Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityTimeLockHelper;->isWhiteListActivity(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method isWhiteListActivity(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
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

    .line 180
    .local p3, "whitelist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    const/4 v0, 0x1

    return v0

    .line 186
    :cond_1
    return v0

    .line 181
    :cond_2
    :goto_0
    return v0
.end method

.method needDestroy(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 6
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "next"    # Lcom/android/server/am/ActivityRecord;

    .line 491
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 493
    :cond_0
    const/4 v1, 0x0

    .line 494
    .local v1, "need":Z
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityTimeLockHelper;->isUnlockAppActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 495
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityTimeLockHelper;->isUnlockAppActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 498
    return v0

    .line 500
    :cond_1
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "nubia_locked_start_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 501
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    .line 502
    .local v3, "r":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    if-eqz v3, :cond_4

    iget-boolean v4, v3, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mVerifyWithStart:Z

    if-nez v4, :cond_4

    .line 503
    iget-object v4, v3, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mAttachActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 504
    return v0

    .line 506
    :cond_2
    iget-object v4, v3, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mAttachActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_0
    move v1, v0

    .line 507
    if-eqz v1, :cond_4

    .line 508
    iget-object v0, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v3, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .end local v2    # "id":I
    .end local v3    # "r":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    :cond_4
    return v1

    .line 492
    .end local v1    # "need":Z
    :cond_5
    :goto_1
    return v0
.end method

.method notifyUnLockAppWithTimeLock(IZ)Z
    .locals 4
    .param p1, "id"    # I
    .param p2, "success"    # Z

    .line 291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 292
    .local v0, "callUid":I
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityTimeLockHelper;->isUidPermited(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    .line 294
    .local v1, "r":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    if-eqz v1, :cond_3

    .line 295
    if-eqz p2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_1
    iget-boolean v2, v1, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mVerifyWithStart:Z

    if-eqz v2, :cond_3

    .line 299
    if-eqz p2, :cond_2

    .line 300
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityTimeLockHelper;->restartLockedActivity(Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;)V

    .line 302
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method notifyUnLockAppWithTimeLock(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .line 276
    const-string v0, "ActivityTimeLockHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyUnLockAppWithTimeLock  pkgName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 278
    .local v0, "callUid":I
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityTimeLockHelper;->isUidPermited(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 279
    return v2

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    if-eqz p2, :cond_1

    .line 283
    iget-object v1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const/4 v1, 0x1

    return v1

    .line 287
    :cond_1
    return v2
.end method

.method onReadTopActivityResumeState(Lcom/android/server/am/ActivityRecord;)I
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 440
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityTimeLockHelper;->isLockActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    const/4 v0, 0x0

    return v0

    .line 443
    :cond_0
    const/4 v0, 0x0

    .line 444
    .local v0, "result":I
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityTimeLockHelper;->isPkgNeedLocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 445
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityTimeLockHelper;->getVerifyRecord(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    move-result-object v1

    .line 446
    .local v1, "record":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    if-nez v1, :cond_1

    .line 447
    const/4 v0, 0x1

    goto :goto_0

    .line 449
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mCallFromMoveToTaskFront:Z

    if-eqz v2, :cond_2

    .line 450
    const/4 v0, 0x1

    goto :goto_0

    .line 452
    :cond_2
    const/4 v0, 0x2

    .line 456
    .end local v1    # "record":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    :cond_3
    :goto_0
    return v0
.end method

.method onTopActivityResume(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)I
    .locals 10
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "isLockScreen"    # Z

    .line 353
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityTimeLockHelper;->isLockActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 354
    return v1

    .line 355
    :cond_0
    const/4 v0, 0x0

    .line 357
    .local v0, "result":I
    if-eqz p2, :cond_1

    .line 358
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 359
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0, v2, p3}, Lcom/android/server/am/ActivityTimeLockHelper;->isWhiteListActivity(Landroid/content/pm/ActivityInfo;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 360
    return v1

    .line 363
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityTimeLockHelper;->isPkgNeedLocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 364
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityTimeLockHelper;->getVerifyRecord(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    move-result-object v1

    .line 365
    .local v1, "record":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    if-nez v1, :cond_3

    .line 366
    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    const-string v2, "cn.nubia.apptimelock.DelaySettings"

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    const-string v2, "ActivityTimeLockHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTopActivityResume r= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 370
    :cond_2
    new-instance v9, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/am/ActivityTimeLockHelper;->makeId()I

    move-result v5

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 371
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;-><init>(Lcom/android/server/am/ActivityTimeLockHelper;ZILjava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;)V

    .line 372
    .local v2, "verifyRecord":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v2, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iput-object v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mTempRecord:Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    .line 374
    const/4 v0, 0x1

    .line 375
    .end local v2    # "verifyRecord":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    goto :goto_0

    .line 377
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-boolean v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mCallFromMoveToTaskFront:Z

    if-eqz v2, :cond_4

    .line 379
    new-instance v2, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    const/4 v5, 0x0

    .line 380
    invoke-direct {p0}, Lcom/android/server/am/ActivityTimeLockHelper;->makeId()I

    move-result v6

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object v3, v2

    move-object v4, p0

    move-object v8, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;-><init>(Lcom/android/server/am/ActivityTimeLockHelper;ZILjava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;)V

    .line 381
    .restart local v2    # "verifyRecord":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v2, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iput-object v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mTempRecord:Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    .line 383
    const/4 v0, 0x1

    .line 384
    .end local v2    # "verifyRecord":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    goto :goto_0

    .line 385
    :cond_4
    const-string v2, "ActivityTimeLockHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTopActivityResume r= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";record="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v0, 0x2

    .line 389
    .end local v1    # "record":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    :goto_0
    goto :goto_1

    .line 390
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityTimeLockHelper;->getVerifyRecord(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    move-result-object v1

    .line 391
    .restart local v1    # "record":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    if-eqz v1, :cond_6

    .line 392
    iget-object v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .end local v1    # "record":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    :cond_6
    :goto_1
    return v0
.end method

.method onTopActivityResume(Lcom/android/server/am/ActivityRecord;Z)I
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "isLockScreen"    # Z

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityTimeLockHelper;->isLockActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 400
    return v1

    .line 401
    :cond_0
    const/4 v0, 0x0

    .line 403
    .local v0, "result":I
    if-eqz p1, :cond_1

    .line 404
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 405
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0, v2, p2}, Lcom/android/server/am/ActivityTimeLockHelper;->isWhiteListActivity(Landroid/content/pm/ActivityInfo;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 406
    return v1

    .line 409
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityTimeLockHelper;->isPkgNeedLocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 410
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityTimeLockHelper;->getVerifyRecord(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    move-result-object v1

    .line 411
    .local v1, "record":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    if-nez v1, :cond_2

    .line 412
    new-instance v9, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/am/ActivityTimeLockHelper;->makeId()I

    move-result v5

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 413
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;-><init>(Lcom/android/server/am/ActivityTimeLockHelper;ZILjava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;)V

    .line 414
    .local v2, "verifyRecord":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v2, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iput-object v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mTempRecord:Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    .line 416
    const/4 v0, 0x1

    .line 417
    .end local v2    # "verifyRecord":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    goto :goto_0

    .line 418
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-boolean v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mCallFromMoveToTaskFront:Z

    if-eqz v2, :cond_3

    .line 420
    new-instance v2, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    const/4 v5, 0x0

    .line 421
    invoke-direct {p0}, Lcom/android/server/am/ActivityTimeLockHelper;->makeId()I

    move-result v6

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object v3, v2

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;-><init>(Lcom/android/server/am/ActivityTimeLockHelper;ZILjava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;)V

    .line 422
    .restart local v2    # "verifyRecord":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v2, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iput-object v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mTempRecord:Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    .line 424
    const/4 v0, 0x1

    .line 425
    .end local v2    # "verifyRecord":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    goto :goto_0

    .line 426
    :cond_3
    const/4 v0, 0x2

    .line 429
    .end local v1    # "record":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    :goto_0
    goto :goto_1

    .line 430
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityTimeLockHelper;->getVerifyRecord(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    move-result-object v1

    .line 431
    .restart local v1    # "record":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    if-eqz v1, :cond_5

    .line 432
    iget-object v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .end local v1    # "record":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
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

    .line 316
    new-instance v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;

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

    invoke-direct/range {v8 .. v26}, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;-><init>(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/Object;Lcom/android/server/am/TaskRecord;)V

    move-object v6, v0

    .line 321
    .local v6, "restartInfo":Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;
    new-instance v8, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityTimeLockHelper;->makeId()I

    move-result v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, v7

    move-object/from16 v4, p19

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;-><init>(Lcom/android/server/am/ActivityTimeLockHelper;ZILjava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;)V

    .line 323
    .local v0, "r":Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;
    iget-object v1, v7, Lcom/android/server/am/ActivityTimeLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, v0, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityTimeLockHelper;->startUnlockAppActivity(Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;)V

    .line 325
    return-void
.end method

.method register()V
    .locals 2

    .line 205
    const-string v0, "ActivityTimeLockHelper"

    const-string/jumbo v1, "register"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Lcom/android/server/am/ActivityTimeLockHelper$AppLockedObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityTimeLockHelper$AppLockedObserver;-><init>(Lcom/android/server/am/ActivityTimeLockHelper;Landroid/os/Handler;)V

    .line 207
    .local v0, "appLockedObserver":Lcom/android/server/am/ActivityTimeLockHelper$AppLockedObserver;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityTimeLockHelper$AppLockedObserver;->observe()V

    .line 208
    const-string v1, "cn.nubia.apptimelock"

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityTimeLockHelper;->addPermitApp(Ljava/lang/String;)V

    .line 209
    const-string v1, "cn.nubia.applockmanager"

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityTimeLockHelper;->addPermitApp(Ljava/lang/String;)V

    .line 210
    const-string v1, "cn.nubia.quicksearchbox"

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityTimeLockHelper;->addPermitApp(Ljava/lang/String;)V

    .line 211
    const-string v1, "cn.nubia.zbiglauncher.preset"

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityTimeLockHelper;->addPermitApp(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method restartLockedActivity(Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    .line 328
    iget-object v0, p1, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;

    if-eqz v0, :cond_2

    .line 329
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 330
    .local v0, "restartIntent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;

    iget-object v1, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 331
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 333
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mRestartActivity:Ljava/lang/String;

    .line 335
    :cond_0
    const-string/jumbo v2, "nubia_locked_startinfo_id"

    iget v3, p1, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mVerifyId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 338
    sget-boolean v2, Lcom/android/server/am/ActivityTimeLockHelper;->WITHOUT_SMARTCONTAINER:Z

    if-eqz v2, :cond_1

    .line 339
    iget-object v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 341
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityTimeLockHelper;->markIntentRestricted(Landroid/content/Intent;Z)V

    .line 342
    iget-object v2, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p1, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;

    iget v4, v4, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 346
    .end local v0    # "restartIntent":Landroid/content/Intent;
    .end local v1    # "component":Landroid/content/ComponentName;
    :cond_2
    :goto_0
    return-void
.end method

.method public setCallFromMoveToTaskFront(Z)V
    .locals 0
    .param p1, "callFromMoveToTaskFront"    # Z

    .line 201
    iput-boolean p1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mCallFromMoveToTaskFront:Z

    .line 202
    return-void
.end method

.method startUnlockAppActivity(Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    .line 474
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 475
    .local v0, "passIntent":Landroid/content/Intent;
    const-string/jumbo v1, "nubia_locked_start_id"

    iget v2, p1, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mVerifyId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    const-string/jumbo v1, "nubia_locked_package_name"

    iget-object v2, p1, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    iget-object v1, p1, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;

    iget-object v1, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p1, Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;

    iget-object v1, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "pkgClassName":Ljava/lang/String;
    const-string/jumbo v2, "nubia_locked_package_class_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    .end local v1    # "pkgClassName":Ljava/lang/String;
    :cond_0
    const-string v1, "cn.nubia.apptimelock.action.DELAY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 486
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 487
    iget-object v1, p0, Lcom/android/server/am/ActivityTimeLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 488
    return-void
.end method
