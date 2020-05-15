.class Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;
.super Ljava/lang/Object;
.source "PreLaunchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/PreLaunchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreLaunchRunnable"
.end annotation


# instance fields
.field private mIs2LevelLaunch:Z

.field private mPackageName:Ljava/lang/String;

.field private mProcessName:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/PreLaunchController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/PreLaunchController;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "is2LevelLaunch"    # Z

    .line 442
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p2, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->mProcessName:Ljava/lang/String;

    .line 444
    iput-object p3, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->mPackageName:Ljava/lang/String;

    .line 445
    iput-boolean p5, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->mIs2LevelLaunch:Z

    .line 446
    iput p4, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->mUid:I

    .line 447
    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;

    .line 436
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;

    .line 436
    iget v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->mUid:I

    return v0
.end method

.method static synthetic access$1200(Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;

    .line 436
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;

    .line 436
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->mIs2LevelLaunch:Z

    return v0
.end method

.method private isInmSkip2LevelPreStartList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 450
    invoke-static {}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 451
    :try_start_0
    invoke-static {}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 452
    .local v2, "app":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 453
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 455
    .end local v2    # "app":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 456
    :cond_1
    monitor-exit v0

    .line 457
    const/4 v0, 0x0

    return v0

    .line 456
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 463
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$000(Lcn/nubia/server/appmgmt/PreLaunchController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$1400(Lcn/nubia/server/appmgmt/PreLaunchController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$1500(Lcn/nubia/server/appmgmt/PreLaunchController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->mProcessName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$1600(Lcn/nubia/server/appmgmt/PreLaunchController;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$1700(Lcn/nubia/server/appmgmt/PreLaunchController;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 467
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v0, p0}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$1800(Lcn/nubia/server/appmgmt/PreLaunchController;Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchRunnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    goto :goto_0

    :catch_0
    move-exception v0

    .line 470
    :goto_0
    return-void
.end method
