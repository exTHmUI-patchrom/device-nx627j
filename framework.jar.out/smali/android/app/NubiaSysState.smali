.class public Landroid/app/NubiaSysState;
.super Ljava/lang/Object;
.source "NubiaSysState.java"


# static fields
.field public static final CALLBACK_PARAM_ACTIVITY:Ljava/lang/String; = "activityName"

.field public static final CALLBACK_PARAM_COUNT:Ljava/lang/String; = "count"

.field public static final CALLBACK_PARAM_PACKAGE:Ljava/lang/String; = "packageName"

.field public static final CALLBACK_PARAM_PID:Ljava/lang/String; = "pid"

.field public static final CALLBACK_PARAM_PROCESS_NAME:Ljava/lang/String; = "processName"

.field public static final CALLBACK_PARAM_STACKID:Ljava/lang/String; = "stackId"

.field public static final CALLBACK_PARAM_STATE_KEYGUARD:Ljava/lang/String; = "keyguard"

.field public static final CALLBACK_PARAM_UID:Ljava/lang/String; = "uid"

.field public static final FILTER_PACKAGES:Ljava/lang/String; = "filter_packages"

.field public static final FLAG_STATE_ACTIVITY_PAUSE:J = 0x4L

.field public static final FLAG_STATE_ACTIVITY_RESUME:J = 0x2L

.field public static final FLAG_STATE_ACTIVITY_RESUMED:J = 0x50L

.field public static final FLAG_STATE_ACTIVITY_STOP:J = 0x8L

.field public static final FLAG_STATE_ACTIVITY_TOP:J = 0x1L

.field public static final FLAG_STATE_ALL:J = 0x7fffffffffffffffL

.field public static final FLAG_STATE_APP_START:J = 0x10L

.field public static final FLAG_STATE_APP_STOP:J = 0x20L

.field public static final FLAG_STATE_KEYGUARD:J = 0x40L

.field public static final FLAG_STATE_RESUME_APP_DIED:J = 0x30L

.field public static final SYS_STATE_ACTIVITY_PAUSE:I = 0x7d2

.field public static final SYS_STATE_ACTIVITY_RESUME:I = 0x7d1

.field public static final SYS_STATE_ACTIVITY_RESUMED:I = 0x7d5

.field public static final SYS_STATE_ACTIVITY_STOP:I = 0x7d3

.field public static final SYS_STATE_ACTIVITY_TOP:I = 0x7d0

.field public static final SYS_STATE_APP_START:I = 0x834

.field public static final SYS_STATE_APP_STOP:I = 0x835

.field public static final SYS_STATE_KEYGUARD:I = 0x836

.field public static final SYS_STATE_RESUME_APP_DIED:I = 0x7d4

.field private static final TAG:Ljava/lang/String; = "NubiaSysState"


# instance fields
.field private mCallback:Lnubia/os/ITaskCallback;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/app/SysStateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/app/NubiaSysState$3;

    invoke-direct {v0, p0}, Landroid/app/NubiaSysState$3;-><init>(Landroid/app/NubiaSysState;)V

    iput-object v0, p0, Landroid/app/NubiaSysState;->mCallback:Lnubia/os/ITaskCallback;

    .line 63
    return-void
.end method

.method static synthetic access$000(Landroid/app/NubiaSysState;)Landroid/app/SysStateReceiver;
    .locals 1
    .param p0, "x0"    # Landroid/app/NubiaSysState;

    .line 20
    iget-object v0, p0, Landroid/app/NubiaSysState;->mReceiver:Landroid/app/SysStateReceiver;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/NubiaSysState;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/app/NubiaSysState;

    .line 20
    iget-object v0, p0, Landroid/app/NubiaSysState;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createHandler()V
    .locals 1

    .line 66
    new-instance v0, Landroid/app/NubiaSysState$1;

    invoke-direct {v0, p0}, Landroid/app/NubiaSysState$1;-><init>(Landroid/app/NubiaSysState;)V

    iput-object v0, p0, Landroid/app/NubiaSysState;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method private createReceiver()V
    .locals 1

    .line 77
    new-instance v0, Landroid/app/NubiaSysState$2;

    invoke-direct {v0, p0}, Landroid/app/NubiaSysState$2;-><init>(Landroid/app/NubiaSysState;)V

    iput-object v0, p0, Landroid/app/NubiaSysState;->mHandler:Landroid/os/Handler;

    .line 85
    return-void
.end method


# virtual methods
.method public getHasVisibleWindowUidSet()[I
    .locals 6

    .line 128
    const-string v0, "NubiaSysState"

    const-string v1, "NubiaSysState getHasVisibleWindowUidSet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 130
    .local v0, "mIwm":Landroid/view/IWindowManager;
    const/4 v1, 0x0

    new-array v1, v1, [I

    .line 132
    .local v1, "uidSet":[I
    :try_start_0
    invoke-interface {v0}, Landroid/view/IWindowManager;->getHasVisibleWindowUidSet()[I

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 135
    goto :goto_0

    .line 133
    :catch_0
    move-exception v2

    .line 134
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "NubiaSysState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException: e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1
.end method

.method public registerReceiver(Landroid/app/SysStateReceiver;)V
    .locals 3
    .param p1, "receiver"    # Landroid/app/SysStateReceiver;

    .line 111
    invoke-direct {p0}, Landroid/app/NubiaSysState;->createHandler()V

    .line 112
    iput-object p1, p0, Landroid/app/NubiaSysState;->mReceiver:Landroid/app/SysStateReceiver;

    .line 113
    iget-object v0, p0, Landroid/app/NubiaSysState;->mCallback:Lnubia/os/ITaskCallback;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2}, Lnubia/os/ApplicationManager$Trigger;->registerCallback(Lnubia/os/ITaskCallback;J)V

    .line 114
    return-void
.end method

.method public registerReceiver(Landroid/app/SysStateReceiver;J)V
    .locals 1
    .param p1, "receiver"    # Landroid/app/SysStateReceiver;
    .param p2, "flag"    # J

    .line 117
    invoke-direct {p0}, Landroid/app/NubiaSysState;->createHandler()V

    .line 118
    iput-object p1, p0, Landroid/app/NubiaSysState;->mReceiver:Landroid/app/SysStateReceiver;

    .line 119
    iget-object v0, p0, Landroid/app/NubiaSysState;->mCallback:Lnubia/os/ITaskCallback;

    invoke-static {v0, p2, p3}, Lnubia/os/ApplicationManager$Trigger;->registerCallback(Lnubia/os/ITaskCallback;J)V

    .line 120
    return-void
.end method

.method public registerReceiverHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/NubiaSysState;->registerReceiverHandler(Landroid/os/Handler;[Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public registerReceiverHandler(Landroid/os/Handler;J[Ljava/lang/String;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "flag"    # J
    .param p4, "acceptPkgs"    # [Ljava/lang/String;

    .line 104
    iput-object p1, p0, Landroid/app/NubiaSysState;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "filter":Landroid/os/Bundle;
    const-string v1, "filter_packages"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Landroid/app/NubiaSysState;->mCallback:Lnubia/os/ITaskCallback;

    invoke-static {v1, p2, p3, v0}, Lnubia/os/ApplicationManager$Trigger;->registerCallback(Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V

    .line 108
    return-void
.end method

.method public registerReceiverHandler(Landroid/os/Handler;[Ljava/lang/String;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "acceptPkgs"    # [Ljava/lang/String;

    .line 100
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/NubiaSysState;->registerReceiverHandler(Landroid/os/Handler;J[Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NubiaSysState;->mReceiver:Landroid/app/SysStateReceiver;

    .line 124
    iget-object v0, p0, Landroid/app/NubiaSysState;->mCallback:Lnubia/os/ITaskCallback;

    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->unregisterCallback(Lnubia/os/ITaskCallback;)V

    .line 125
    return-void
.end method
