.class public Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;
.super Ljava/lang/Object;
.source "GPSBehaviorDetection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$NoteRemovingProcessRunnable;,
        Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;,
        Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;
    }
.end annotation


# static fields
.field private static final GPS_PACKAGENAME:Ljava/lang/String; = "packageName"

.field private static final GPS_PID:Ljava/lang/String; = "pid"

.field private static final GPS_UID:Ljava/lang/String; = "uid"

.field private static final NULL:Ljava/lang/String; = ""


# instance fields
.field private final GPS_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

.field private mCurrentUsingGpsRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;

.field private mFlag:Z

.field private mHandler:Landroid/os/Handler;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mOnResumeGPSNotifyRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "controller"    # Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->GPS_LIST:Ljava/util/ArrayList;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mFlag:Z

    .line 40
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mHandler:Landroid/os/Handler;

    .line 42
    iput-object p3, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mLocationManager:Landroid/location/LocationManager;

    .line 44
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->registerContentObserverForGPSState()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    .line 24
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->GPS_LIST:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;IZ)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 24
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->notifyGPSChanged(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    .line 24
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mFlag:Z

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mFlag:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    .line 24
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    .line 24
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;
    .param p1, "x1"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->notifyStatusBarGPSChanged(Ljava/lang/String;)V

    return-void
.end method

.method private notifyGPSChanged(IZ)V
    .locals 2
    .param p1, "length"    # I
    .param p2, "isForeground"    # Z

    .line 169
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 170
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->GPS_LIST:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->getCurrentOnResumePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->GPS_LIST:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->notifyStatusBarGPSChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->GPS_LIST:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->notifyStatusBarGPSChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 176
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->GPS_LIST:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->getCurrentOnResumePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->GPS_LIST:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->notifyStatusBarGPSChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    if-eqz p2, :cond_4

    .line 179
    const-string v0, ""

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->notifyStatusBarGPSChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_3
    if-nez p1, :cond_4

    .line 182
    const-string v0, ""

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->notifyStatusBarGPSChanged(Ljava/lang/String;)V

    .line 184
    :cond_4
    :goto_0
    return-void
.end method

.method private notifyStatusBarGPSChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mController:Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->notifyStatusBarGPSChanged(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method private registerContentObserverForGPSState()V
    .locals 5

    .line 191
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_providers_allowed"

    .line 192
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$1;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$1;-><init>(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;Landroid/os/Handler;)V

    .line 191
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 205
    return-void
.end method


# virtual methods
.method public currentUsingGps([Landroid/os/Bundle;)V
    .locals 2
    .param p1, "GPSReceiver"    # [Landroid/os/Bundle;

    .line 48
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mCurrentUsingGpsRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mCurrentUsingGpsRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    :cond_0
    new-instance v0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;-><init>(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;[Landroid/os/Bundle;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mCurrentUsingGpsRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;

    .line 52
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mCurrentUsingGpsRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method

.method public noteRemovingProcess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;

    .line 137
    const-string v0, "com.autonavi.minimap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.webview:sandboxed_process0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "GPSBehaviorDetection"

    const-string/jumbo v1, "isolated process,do not remove gps list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 141
    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$NoteRemovingProcessRunnable;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$NoteRemovingProcessRunnable;-><init>(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;Ljava/lang/String;)V

    .line 145
    .local v0, "nrpr":Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$NoteRemovingProcessRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void

    .line 142
    .end local v0    # "nrpr":Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$NoteRemovingProcessRunnable;
    :cond_2
    :goto_0
    return-void
.end method

.method public noteResumingGPS(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mOnResumeGPSNotifyRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mOnResumeGPSNotifyRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    :cond_0
    new-instance v0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;-><init>(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mOnResumeGPSNotifyRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mFlag:Z

    .line 109
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->GPS_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mOnResumeGPSNotifyRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->mOnResumeGPSNotifyRunnable:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$OnResumeGPSNotifyRunnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    :goto_0
    return-void
.end method
