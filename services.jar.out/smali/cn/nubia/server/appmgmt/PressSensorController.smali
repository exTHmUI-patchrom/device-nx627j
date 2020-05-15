.class public Lcn/nubia/server/appmgmt/PressSensorController;
.super Ljava/lang/Object;
.source "PressSensorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/PressSensorController$KeyguardStateChangedRunnable;,
        Lcn/nubia/server/appmgmt/PressSensorController$ScreenStateChangedRunnable;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPressSensorInternal:Lnubia/os/presssensor/PressSensorInternal;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-class v0, Lnubia/os/presssensor/PressSensorInternal;

    .line 17
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/presssensor/PressSensorInternal;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PressSensorController;->mPressSensorInternal:Lnubia/os/presssensor/PressSensorInternal;

    .line 18
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PressSensorController;->mPressSensorInternal:Lnubia/os/presssensor/PressSensorInternal;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PressSensorController;->mPressSensorInternal:Lnubia/os/presssensor/PressSensorInternal;

    invoke-virtual {v0}, Lnubia/os/presssensor/PressSensorInternal;->onApplicationManagerSystemReady()V

    .line 21
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PressSensorController"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PressSensorController;->mThread:Landroid/os/HandlerThread;

    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PressSensorController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/PressSensorController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/PressSensorController;->mHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/PressSensorController;)Lnubia/os/presssensor/PressSensorInternal;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PressSensorController;

    .line 9
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PressSensorController;->mPressSensorInternal:Lnubia/os/presssensor/PressSensorInternal;

    return-object v0
.end method


# virtual methods
.method public noteKeyguardStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 31
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PressSensorController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/PressSensorController$KeyguardStateChangedRunnable;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/PressSensorController$KeyguardStateChangedRunnable;-><init>(Lcn/nubia/server/appmgmt/PressSensorController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    return-void
.end method

.method public noteScreenStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PressSensorController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/PressSensorController$ScreenStateChangedRunnable;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/PressSensorController$ScreenStateChangedRunnable;-><init>(Lcn/nubia/server/appmgmt/PressSensorController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    return-void
.end method
