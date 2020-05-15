.class public Lcn/nubia/server/appmgmt/ScreenSwitchController;
.super Ljava/lang/Object;
.source "ScreenSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/ScreenSwitchController$ScreenStateRunnable;,
        Lcn/nubia/server/appmgmt/ScreenSwitchController$ScreenStateChangedRunnable;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ScreenSwitchController;->mContext:Landroid/content/Context;

    .line 16
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScreenSwitchController"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ScreenSwitchController;->mThread:Landroid/os/HandlerThread;

    .line 17
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ScreenSwitchController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ScreenSwitchController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ScreenSwitchController;->mHandler:Landroid/os/Handler;

    .line 19
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ScreenSwitchController;->mContext:Landroid/content/Context;

    const-class v1, Lnubia/os/screenswitch/ScreenSwitchManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/screenswitch/ScreenSwitchManager;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ScreenSwitchController;->mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/ScreenSwitchController;)Lnubia/os/screenswitch/ScreenSwitchManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ScreenSwitchController;

    .line 8
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ScreenSwitchController;->mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

    return-object v0
.end method


# virtual methods
.method public noteScreenState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ScreenSwitchController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/ScreenSwitchController$ScreenStateRunnable;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/ScreenSwitchController$ScreenStateRunnable;-><init>(Lcn/nubia/server/appmgmt/ScreenSwitchController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    return-void
.end method

.method public noteScreenStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 23
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ScreenSwitchController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/ScreenSwitchController$ScreenStateChangedRunnable;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/ScreenSwitchController$ScreenStateChangedRunnable;-><init>(Lcn/nubia/server/appmgmt/ScreenSwitchController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    return-void
.end method
