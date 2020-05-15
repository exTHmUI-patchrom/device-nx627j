.class final Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;
.super Lnubia/os/screenswitch/IScreenSwitchManager$Stub;
.source "ScreenSwitchServiceFor627.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field private mScreenOnRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;


# direct methods
.method private constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0

    .line 1212
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-direct {p0}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;-><init>()V

    .line 1369
    new-instance p1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService$3;

    invoke-direct {p1, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService$3;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;)V

    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->mScreenOnRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p2, "x1"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;

    .line 1212
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    return-void
.end method

.method private updateHorizontalDetectorState(I)V
    .locals 4
    .param p1, "state"    # I

    .line 1354
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$9900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/DaemonDetector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1355
    return-void

    .line 1357
    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1358
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->mScreenOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1359
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService$2;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1365
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->mScreenOnRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1367
    :goto_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1436
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ScreenSwitchService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1437
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    array-length v2, p3

    if-lez v2, :cond_1

    const-string v2, "debug"

    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1202(Z)Z

    .line 1438
    if-eqz p3, :cond_2

    array-length v2, p3

    if-le v2, v1, :cond_2

    const-string/jumbo v2, "sensor"

    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    nop

    .line 1439
    .local v0, "debugSensor":Z
    :cond_2
    sput-boolean v0, Lcn/nubia/server/screenswitch/MotionDetector;->DEBUG:Z

    .line 1440
    sput-boolean v0, Lcn/nubia/server/screenswitch/HorizontalDetector;->DEBUG:Z

    .line 1441
    sput-boolean v0, Lcn/nubia/server/screenswitch/DaemonDetector;->DEBUG:Z

    .line 1442
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/io/PrintWriter;)V

    .line 1443
    return-void
.end method

.method public getCurrentDisplayId()I
    .locals 1

    .line 1259
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchImplFor627;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public noteScreenState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 1343
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteScreenState state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_0
    if-nez p1, :cond_1

    .line 1345
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/MotionDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/MotionDetector;->disable()V

    .line 1346
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->postCloseDoubleFPAnim()V

    .line 1347
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5102(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 1348
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/MotionDetector;

    move-result-object v0

    iput-boolean v1, v0, Lcn/nubia/server/screenswitch/MotionDetector;->mWakeUpAndUnlock:Z

    .line 1350
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->updateHorizontalDetectorState(I)V

    .line 1351
    return-void
.end method

.method public noteScreenStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 1337
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteScreenStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-static {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$9702(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 1339
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$9800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)V

    .line 1340
    return-void
.end method

.method public notifyHeadsUpShowing(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1431
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 1432
    return-void
.end method

.method public registerStateListener(Lnubia/os/screenswitch/IScreenSwitchStateListener;)V
    .locals 7
    .param p1, "listener"    # Lnubia/os/screenswitch/IScreenSwitchStateListener;

    .line 1269
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$9400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 1273
    :try_start_0
    invoke-interface {p1}, Lnubia/os/screenswitch/IScreenSwitchStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1274
    .local v1, "b":Landroid/os/IBinder;
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$9400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1275
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1276
    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$9400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;

    .line 1277
    .local v5, "r":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;
    iget-object v6, v5, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v6, :cond_0

    .line 1278
    goto :goto_2

    .line 1275
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1281
    .end local v4    # "i":I
    .end local v5    # "r":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;
    :cond_1
    new-instance v4, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;)V

    move-object v5, v4

    .line 1282
    .restart local v5    # "r":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;
    iput-object v1, v5, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;->binder:Landroid/os/IBinder;

    .line 1283
    new-instance v4, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SDeathRecipient;

    iget-object v6, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-direct {v4, v6, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SDeathRecipient;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/os/IBinder;)V

    iput-object v4, v5, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;->deathRecipient:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    if-eqz v1, :cond_2

    .line 1286
    :try_start_1
    iget-object v4, v5, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;->deathRecipient:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SDeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1290
    goto :goto_1

    .line 1287
    :catch_0
    move-exception v3

    .line 1288
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$9300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/os/IBinder;)V

    .line 1289
    monitor-exit v0

    return-void

    .line 1292
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$9400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1294
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "N":I
    :goto_2
    iput-object p1, v5, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;->callback:Lnubia/os/screenswitch/IScreenSwitchStateListener;

    .line 1295
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    iput v1, v5, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;->callerUserId:I

    .line 1297
    .end local v5    # "r":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;
    monitor-exit v0

    .line 1298
    return-void

    .line 1297
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public registerSwtichCallBack(Lnubia/os/screenswitch/IScreenSwitchCallback;I)V
    .locals 1
    .param p1, "callback"    # Lnubia/os/screenswitch/IScreenSwitchCallback;
    .param p2, "mode"    # I

    .line 1380
    if-nez p2, :cond_0

    .line 1381
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->register(Landroid/os/IInterface;)Z

    goto :goto_0

    .line 1382
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1383
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->register(Landroid/os/IInterface;)Z

    goto :goto_0

    .line 1384
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 1385
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1387
    :cond_2
    :goto_0
    return-void
.end method

.method public reportCallBackComplete(Lnubia/os/screenswitch/IScreenSwitchCallback;I)V
    .locals 3
    .param p1, "callback"    # Lnubia/os/screenswitch/IScreenSwitchCallback;
    .param p2, "mode"    # I

    .line 1402
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportCallBackComplete id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string/jumbo v2, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lnubia/os/screenswitch/IScreenSwitchCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",  mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_1
    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 1404
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->updateResult(Landroid/os/IInterface;Z)V

    goto :goto_1

    .line 1405
    :cond_2
    if-ne p2, v0, :cond_3

    .line 1406
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->updateResult(Landroid/os/IInterface;Z)V

    goto :goto_1

    .line 1407
    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 1408
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->updateResult(Landroid/os/IInterface;Z)V

    .line 1409
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->checkComplete()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1410
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1411
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1412
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1415
    :cond_4
    :goto_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1416
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1417
    :try_start_1
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1418
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 1420
    :cond_5
    :goto_2
    return-void
.end method

.method public requestSwitchScreen(I)V
    .locals 3
    .param p1, "eventType"    # I

    .line 1248
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)I

    .line 1249
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchImplFor627;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->createRealTarget(I)I

    move-result v1

    const-string/jumbo v2, "manual"

    invoke-static {v0, v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;ILjava/lang/String;)V

    goto :goto_0

    .line 1252
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->postDisplayDialog(I)V

    .line 1254
    :goto_0
    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSwitchScreen eventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    return-void
.end method

.method public resetSkipSwitchTask()V
    .locals 2

    .line 1424
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 1425
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4602(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/view/IApplicationToken;)Landroid/view/IApplicationToken;

    .line 1426
    return-void
.end method

.method public setDialogController(Lnubia/os/screenswitch/IScreenDialogController;)V
    .locals 3
    .param p1, "controller"    # Lnubia/os/screenswitch/IScreenDialogController;

    .line 1301
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->isSameBinder(Lnubia/os/screenswitch/IScreenDialogController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    return-void

    .line 1304
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->postDismissDialog(I)V

    .line 1305
    if-eqz p1, :cond_1

    .line 1308
    :try_start_0
    invoke-interface {p1}, Lnubia/os/screenswitch/IScreenDialogController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService$1;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;Lnubia/os/screenswitch/IScreenDialogController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1320
    goto :goto_0

    .line 1318
    :catch_0
    move-exception v0

    .line 1322
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->setController(Lnubia/os/screenswitch/IScreenDialogController;)V

    .line 1324
    return-void
.end method

.method public setDialogVisibilityChanged(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "visibility"    # I

    .line 1327
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v0, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 1328
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v3

    invoke-static {v0, v3, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$9600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;ZI)V

    .line 1329
    if-le p1, v2, :cond_1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1330
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 1331
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$4800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Landroid/view/IApplicationToken;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4602(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/view/IApplicationToken;)Landroid/view/IApplicationToken;

    .line 1333
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)I

    .line 1334
    :cond_2
    return-void
.end method

.method public switchScreen(I)V
    .locals 9
    .param p1, "displayId"    # I

    .line 1216
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1217
    .local v0, "uid":I
    and-int/lit8 v1, p1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1218
    .local v1, "aod":Z
    :goto_0
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 1219
    .local v4, "closeback":Z
    :goto_1
    and-int/lit8 v5, p1, 0x40

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    .line 1220
    .local v5, "wakeUp":Z
    :goto_2
    const-string v6, "ScreenSwitchService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "switchScreen displayId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", caller uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    and-int/lit8 v6, p1, -0x11

    and-int/lit8 v6, v6, -0x21

    and-int/lit8 v6, v6, -0x41

    .line 1224
    .local v6, "target":I
    if-eqz v1, :cond_4

    iget-object v7, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v7}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/os/PowerManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v7}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v7}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1225
    :cond_3
    const-string v2, "ScreenSwitchService"

    const-string v3, "disable switchScreen for aod when power on and incall"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    return-void

    .line 1229
    :cond_4
    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    move v2, v3

    nop

    .line 1230
    .local v2, "fromManual":Z
    :cond_5
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchImplFor627;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->createRealTarget(I)I

    move-result v3

    .line 1231
    .end local v6    # "target":I
    .local v3, "target":I
    new-instance v6, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;

    iget-object v7, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 1232
    if-eqz v2, :cond_6

    const-string/jumbo v8, "manual"

    goto :goto_3

    :cond_6
    const-string v8, "binder"

    :goto_3
    invoke-direct {v6, v7, v3, v8}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;ILjava/lang/String;)V

    .line 1233
    .local v6, "r":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;
    invoke-static {v6, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->access$8502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;Z)Z

    .line 1234
    invoke-static {v6, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->access$8602(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;Z)Z

    .line 1235
    if-eqz v5, :cond_9

    .line 1236
    if-nez v3, :cond_7

    iget-object v7, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v7}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$8700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    .line 1237
    :cond_7
    const-string/jumbo v7, "wakeup"

    invoke-static {v6, v7}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->access$8802(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;Ljava/lang/String;)Ljava/lang/String;

    .line 1238
    iget-object v7, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v7}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$8900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v6}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->access$9000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;)I

    move-result v7

    if-nez v7, :cond_8

    .line 1239
    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->access$9002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;I)I

    .line 1241
    :cond_8
    iget-object v7, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v7}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$9100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    .line 1243
    :cond_9
    iget-object v7, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v7}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$9200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1244
    return-void
.end method

.method public unRegisterStateListener(Lnubia/os/screenswitch/IScreenSwitchStateListener;)V
    .locals 2
    .param p1, "listener"    # Lnubia/os/screenswitch/IScreenSwitchStateListener;

    .line 1264
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-interface {p1}, Lnubia/os/screenswitch/IScreenSwitchStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$9300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/os/IBinder;)V

    .line 1265
    return-void
.end method

.method public unregisterSwtichCallBack(Lnubia/os/screenswitch/IScreenSwitchCallback;I)V
    .locals 1
    .param p1, "callback"    # Lnubia/os/screenswitch/IScreenSwitchCallback;
    .param p2, "mode"    # I

    .line 1391
    if-nez p2, :cond_0

    .line 1392
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_0

    .line 1393
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1394
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_0

    .line 1395
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 1396
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1398
    :cond_2
    :goto_0
    return-void
.end method
