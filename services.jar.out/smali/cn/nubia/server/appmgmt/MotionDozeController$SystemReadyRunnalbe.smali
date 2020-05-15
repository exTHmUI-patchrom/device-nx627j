.class Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;
.super Ljava/lang/Object;
.source "MotionDozeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/MotionDozeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemReadyRunnalbe"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/MotionDozeController;


# direct methods
.method private constructor <init>(Lcn/nubia/server/appmgmt/MotionDozeController;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/appmgmt/MotionDozeController;Lcn/nubia/server/appmgmt/MotionDozeController$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;
    .param p2, "x1"    # Lcn/nubia/server/appmgmt/MotionDozeController$1;

    .line 375
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 378
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$100(Lcn/nubia/server/appmgmt/MotionDozeController;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 379
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_0

    .line 380
    return-void

    .line 382
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 383
    .local v1, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_4

    .line 386
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$300(Lcn/nubia/server/appmgmt/MotionDozeController;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    const-string v2, "MotionDozeController"

    const-string/jumbo v3, "system ready. check motion apps"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_2
    const/4 v2, 0x0

    .line 391
    .local v2, "hasMotionApp":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 392
    .local v4, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-nez v5, :cond_3

    .line 393
    goto :goto_0

    .line 396
    :cond_3
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    .line 397
    .local v8, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v9}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1200(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 398
    :try_start_0
    iget-object v10, p0, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v10}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1300(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 399
    const/4 v2, 0x1

    .line 400
    monitor-exit v9

    goto :goto_2

    .line 402
    :cond_4
    monitor-exit v9

    .line 396
    .end local v8    # "packageName":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 402
    .restart local v8    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 405
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 406
    goto :goto_3

    .line 407
    .end local v4    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_6
    goto :goto_0

    .line 410
    :cond_7
    :goto_3
    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1402(Lcn/nubia/server/appmgmt/MotionDozeController;Z)Z

    .line 411
    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$500(Lcn/nubia/server/appmgmt/MotionDozeController;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$400(Lcn/nubia/server/appmgmt/MotionDozeController;)Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 412
    return-void

    .line 384
    .end local v2    # "hasMotionApp":Z
    :cond_8
    :goto_4
    return-void
.end method
