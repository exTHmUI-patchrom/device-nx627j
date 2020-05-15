.class public Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;
.super Ljava/lang/Object;
.source "ApplicationBehaviorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnection;,
        Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnectionRunnable;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ApplicationBehaviorDetection"


# instance fields
.field public DEBUG:Z

.field private mBehaviorDetectionServiceConnection:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnection;

.field private mBehaviorDetectionServiceConnectionRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnectionRunnable;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppMarketPackageName:Ljava/lang/String;

.field private mCurrentGPSPackageName:Ljava/lang/String;

.field private mCurrentOnResumePackageName:Ljava/lang/String;

.field private mDataManager:Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

.field private mGPSBehaviorDetection:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

.field private mHandler:Landroid/os/Handler;

.field public mIBehaviorDetectionService:Lcn/nubia/behaviordetection/service/IBehaviorDetectionService;

.field private final mLock:Ljava/lang/Object;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->DEBUG:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mCurrentOnResumePackageName:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mCurrentGPSPackageName:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mCurrentAppMarketPackageName:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mLock:Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationBehaviorControllerIO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mThread:Landroid/os/HandlerThread;

    .line 52
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnectionRunnable;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnectionRunnable;-><init>(Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mBehaviorDetectionServiceConnectionRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnectionRunnable;

    .line 55
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mBehaviorDetectionServiceConnectionRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnectionRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    new-instance v0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mDataManager:Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    .line 58
    new-instance v0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p0}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mGPSBehaviorDetection:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    .line 60
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnection;)Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnection;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;
    .param p1, "x1"    # Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnection;

    .line 27
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mBehaviorDetectionServiceConnection:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnection;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;J)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;
    .param p1, "x1"    # J

    .line 27
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->againServiceConnection(J)V

    return-void
.end method

.method private againServiceConnection(J)V
    .locals 2
    .param p1, "delay"    # J

    .line 155
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mBehaviorDetectionServiceConnectionRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnectionRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mBehaviorDetectionServiceConnectionRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController$BehaviorDetectionServiceConnectionRunnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    return-void
.end method

.method private openCloseLog()V
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->DEBUG:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->DEBUG:Z

    .line 196
    return-void
.end method


# virtual methods
.method public currentUsingGps([Landroid/os/Bundle;)V
    .locals 1
    .param p1, "GPSReceivers"    # [Landroid/os/Bundle;

    .line 73
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mGPSBehaviorDetection:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->currentUsingGps([Landroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "next"    # I

    .line 186
    array-length v0, p2

    if-lt p3, v0, :cond_0

    return-void

    .line 188
    :cond_0
    aget-object v0, p2, p3

    .line 189
    .local v0, "cmd":Ljava/lang/String;
    const-string/jumbo v1, "log"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->openCloseLog()V

    .line 192
    :cond_1
    return-void
.end method

.method public getCurrentOnResumePackageName()Ljava/lang/String;
    .locals 2

    .line 88
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mCurrentOnResumePackageName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDataManager()Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mDataManager:Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    return-object v0
.end method

.method public isInAppStoreList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mDataManager:Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mDataManager:Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->isInAppStoreList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public noteRemovingProcess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mGPSBehaviorDetection:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->noteRemovingProcess(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public noteResumingActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mCurrentOnResumePackageName:Ljava/lang/String;

    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mGPSBehaviorDetection:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->noteResumingGPS(Ljava/lang/String;)V

    .line 81
    return-void

    .line 79
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public notifyClipChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "clipCallingPackage"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mIBehaviorDetectionService:Lcn/nubia/behaviordetection/service/IBehaviorDetectionService;

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mIBehaviorDetectionService:Lcn/nubia/behaviordetection/service/IBehaviorDetectionService;

    invoke-interface {v0, p1, p2}, Lcn/nubia/behaviordetection/service/IBehaviorDetectionService;->notifyClipChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mIBehaviorDetectionService:Lcn/nubia/behaviordetection/service/IBehaviorDetectionService;

    .line 133
    const-string v1, "ApplicationBehaviorDetection"

    const-string v2, "BehaviorDetectionController notifyClipChanged Exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 136
    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->againServiceConnection(J)V

    .line 138
    :goto_1
    return-void
.end method

.method public notifyStatusBarAppStoreChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "appMarket"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mIBehaviorDetectionService:Lcn/nubia/behaviordetection/service/IBehaviorDetectionService;

    if-eqz v0, :cond_1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mCurrentAppMarketPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mIBehaviorDetectionService:Lcn/nubia/behaviordetection/service/IBehaviorDetectionService;

    invoke-interface {v0, p1}, Lcn/nubia/behaviordetection/service/IBehaviorDetectionService;->notifyStatusBarAppMarketChanged(Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mCurrentAppMarketPackageName:Ljava/lang/String;

    .line 116
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ApplicationBehaviorDetection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyStatusBarAppStoreChanged APP_Store: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mIBehaviorDetectionService:Lcn/nubia/behaviordetection/service/IBehaviorDetectionService;

    .line 120
    const-string v1, "ApplicationBehaviorDetection"

    const-string v2, "BehaviorDetectionController notifyStatusBarAppMarketChanged Exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    goto :goto_1

    .line 123
    :cond_1
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->againServiceConnection(J)V

    .line 125
    :goto_1
    return-void
.end method

.method public notifyStatusBarGPSChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "gpsPackageName"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mIBehaviorDetectionService:Lcn/nubia/behaviordetection/service/IBehaviorDetectionService;

    if-eqz v0, :cond_1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mCurrentGPSPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mIBehaviorDetectionService:Lcn/nubia/behaviordetection/service/IBehaviorDetectionService;

    invoke-interface {v0, p1}, Lcn/nubia/behaviordetection/service/IBehaviorDetectionService;->notifyStatusBarGPSChanged(Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mCurrentGPSPackageName:Ljava/lang/String;

    .line 99
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ApplicationBehaviorDetection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyStatusBarGPSChanged pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->mIBehaviorDetectionService:Lcn/nubia/behaviordetection/service/IBehaviorDetectionService;

    .line 103
    const-string v1, "ApplicationBehaviorDetection"

    const-string v2, "BehaviorDetectionController notifyStatusBarGPSChanged Exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    goto :goto_1

    .line 106
    :cond_1
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->againServiceConnection(J)V

    .line 108
    :goto_1
    return-void
.end method
