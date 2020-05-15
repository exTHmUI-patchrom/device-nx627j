.class public Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;
.super Ljava/lang/Object;
.source "ModuleDataCollectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$FingerprintAuthRunnable;,
        Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$NoteEdgeGestureRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "module_data_collection_tag"


# instance fields
.field private isConn:Z

.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mService:Landroid/os/Messenger;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$1;-><init>(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->mConn:Landroid/content/ServiceConnection;

    .line 27
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ModuleDataCollectionControllerIO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->mThread:Landroid/os/HandlerThread;

    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->mHandler:Landroid/os/Handler;

    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->bindService(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    .line 17
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->isConn:Z

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;
    .param p1, "x1"    # Z

    .line 17
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->isConn:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    .line 17
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 17
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method private bindService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.owlsystem"

    const-string v3, "cn.nubia.applearning.datacollection.DataCollectionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->mConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 53
    return-void
.end method


# virtual methods
.method public noteEdgeGesture(Ljava/lang/String;)V
    .locals 2
    .param p1, "gesture"    # Ljava/lang/String;

    .line 56
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$NoteEdgeGestureRunnable;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$NoteEdgeGestureRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;Ljava/lang/String;)V

    .line 57
    .local v0, "negr":Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$NoteEdgeGestureRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method

.method public noteFingerprintAuth(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .line 85
    const-string/jumbo v0, "module_data_collection_tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModuleDataCollectionController packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$FingerprintAuthRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$FingerprintAuthRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;Ljava/lang/String;Z)V

    .line 87
    .local v0, "negr":Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$FingerprintAuthRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method
