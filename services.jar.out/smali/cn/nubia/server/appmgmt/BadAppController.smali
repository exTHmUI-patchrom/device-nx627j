.class public Lcn/nubia/server/appmgmt/BadAppController;
.super Ljava/lang/Object;
.source "BadAppController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;,
        Lcn/nubia/server/appmgmt/BadAppController$WindowRemoveRunnable;,
        Lcn/nubia/server/appmgmt/BadAppController$WindowAddRunnable;
    }
.end annotation


# static fields
.field private static final MAX_WINDOW_LIMIT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "BadAppCttl"


# instance fields
.field private mAppList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/BadAppController;->mAppList:Ljava/util/HashMap;

    .line 23
    iput-object p1, p0, Lcn/nubia/server/appmgmt/BadAppController;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcn/nubia/server/appmgmt/BadAppController;->mHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/BadAppController;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/BadAppController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/BadAppController;->windowAdd(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/BadAppController;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/BadAppController;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/BadAppController;->windowRemove(I)V

    return-void
.end method

.method private forceStopDadApp(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 67
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 68
    const-string v0, "BadAppCttl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for too many window"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    :goto_0
    return-void
.end method

.method private needManager(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 36
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private windowAdd(IILjava/lang/String;)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/BadAppController;->needManager(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/BadAppController;->mAppList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;

    .line 43
    .local v0, "app":Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;
    if-nez v0, :cond_1

    .line 44
    new-instance v1, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;

    invoke-direct {v1}, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;-><init>()V

    move-object v0, v1

    .line 45
    invoke-static {v0, p3}, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->access$002(Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    invoke-static {v0, p2}, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->access$102(Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;I)I

    .line 47
    iget-object v1, p0, Lcn/nubia/server/appmgmt/BadAppController;->mAppList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_1
    invoke-static {v0}, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->access$208(Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;)I

    .line 50
    invoke-static {v0}, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->access$200(Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;)I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    .line 51
    invoke-static {v0}, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->access$000(Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->access$100(Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/appmgmt/BadAppController;->forceStopDadApp(Ljava/lang/String;I)V

    .line 53
    :cond_2
    return-void
.end method

.method private windowRemove(I)V
    .locals 3
    .param p1, "pid"    # I

    .line 56
    iget-object v0, p0, Lcn/nubia/server/appmgmt/BadAppController;->mAppList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;

    .line 57
    .local v0, "app":Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;
    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-static {v0}, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->access$210(Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;)I

    .line 60
    invoke-static {v0}, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->access$200(Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 61
    iget-object v1, p0, Lcn/nubia/server/appmgmt/BadAppController;->mAppList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_1
    return-void
.end method


# virtual methods
.method noteAddWindow(IILjava/lang/String;)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcn/nubia/server/appmgmt/BadAppController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/BadAppController$WindowAddRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/BadAppController$WindowAddRunnable;-><init>(Lcn/nubia/server/appmgmt/BadAppController;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    return-void
.end method

.method noteRemoveWindow(I)V
    .locals 2
    .param p1, "pid"    # I

    .line 32
    iget-object v0, p0, Lcn/nubia/server/appmgmt/BadAppController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/BadAppController$WindowRemoveRunnable;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/BadAppController$WindowRemoveRunnable;-><init>(Lcn/nubia/server/appmgmt/BadAppController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    return-void
.end method
