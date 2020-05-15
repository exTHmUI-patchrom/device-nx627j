.class final Landroid/app/LoadedApk$ReceiverDispatcher$Args;
.super Landroid/content/BroadcastReceiver$PendingResult;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Args"
.end annotation


# instance fields
.field private extras:Landroid/os/Bundle;

.field private mCurIntent:Landroid/content/Intent;

.field private mDispatched:Z

.field private final mOrdered:Z

.field private mPreviousRunStacktrace:Ljava/lang/Throwable;

.field final synthetic this$0:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method public constructor <init>(Landroid/app/LoadedApk$ReceiverDispatcher;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 13
    .param p1, "this$0"    # Landroid/app/LoadedApk$ReceiverDispatcher;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I

    move-object v10, p0

    move-object v11, p1

    move-object/from16 v12, p5

    .line 1370
    iput-object v11, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 1371
    nop

    .line 1372
    iget-boolean v0, v11, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :goto_1
    iget-object v0, v11, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    .line 1373
    invoke-virtual {v0}, Landroid/content/IIntentReceiver$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v9

    .line 1371
    move-object v0, v10

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object v3, v12

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Landroid/content/BroadcastReceiver$PendingResult;-><init>(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)V

    .line 1374
    move-object v0, p2

    iput-object v0, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 1375
    move/from16 v1, p6

    iput-boolean v1, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    .line 1377
    if-eqz v12, :cond_1

    const-string v2, "callingUid"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1378
    iput-object v12, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->extras:Landroid/os/Bundle;

    goto :goto_2

    .line 1380
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->extras:Landroid/os/Bundle;

    .line 1381
    iget-object v2, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->extras:Landroid/os/Bundle;

    const-string v3, "callingUid"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    :goto_2
    return-void
.end method

.method private broadcastReceiveReg(Landroid/content/Intent;Landroid/content/BroadcastReceiver;ZLandroid/app/IActivityManager;)V
    .locals 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "ordered"    # Z
    .param p4, "mgr"    # Landroid/app/IActivityManager;

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1480
    const-string v0, "broadcastReceiveReg"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1482
    :try_start_0
    iget-object v0, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v0, v0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1483
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1484
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 1485
    invoke-virtual {v1, v0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1486
    invoke-virtual {v3, v1}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 1487
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1488
    .local v6, "start":J
    iget-object v8, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1490
    .local v8, "now":J
    sub-long v10, v8, v6

    .line 1491
    .local v10, "delay":J
    sget v12, Landroid/os/NubiaDebug;->RECEIVER_DELAY:I

    int-to-long v12, v12

    cmp-long v12, v10, v12

    if-ltz v12, :cond_0

    .line 1492
    const-string/jumbo v12, "nubialog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "LoadedApk onReceive() delay:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "ms receiver:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " intent:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1507
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v6    # "start":J
    .end local v8    # "now":J
    .end local v10    # "delay":J
    :cond_0
    goto :goto_0

    .line 1494
    :catch_0
    move-exception v0

    .line 1495
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v6, :cond_2

    if-eqz p3, :cond_2

    .line 1498
    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    .line 1499
    iget-object v8, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    if-eqz v8, :cond_1

    iget-object v8, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v9, v9, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1500
    invoke-virtual {v8, v9, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1500
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 1501
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1502
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error receiving broadcast "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " in "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1508
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    move-object/from16 v7, p4

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1509
    invoke-virtual {v1}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->finish()V

    .line 1511
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1512
    return-void
.end method

.method public static synthetic lambda$getRunnable$0(Landroid/app/LoadedApk$ReceiverDispatcher$Args;Landroid/content/Intent;Landroid/content/BroadcastReceiver;ZLandroid/app/IActivityManager;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "ordered"    # Z
    .param p4, "mgr"    # Landroid/app/IActivityManager;

    .line 1430
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->broadcastReceiveReg(Landroid/content/Intent;Landroid/content/BroadcastReceiver;ZLandroid/app/IActivityManager;)V

    return-void
.end method

.method public static synthetic lambda$getRunnable$1(Landroid/app/LoadedApk$ReceiverDispatcher$Args;)V
    .locals 12

    .line 1388
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v0, v0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1389
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    iget-boolean v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    .line 1399
    .local v7, "ordered":Z
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v8

    .line 1400
    .local v8, "mgr":Landroid/app/IActivityManager;
    iget-object v9, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 1401
    .local v9, "intent":Landroid/content/Intent;
    if-nez v9, :cond_0

    .line 1402
    const-string v1, "LoadedApk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null intent being dispatched, mDispatched="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mDispatched:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ": run() previously called at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mPreviousRunStacktrace:Ljava/lang/Throwable;

    .line 1404
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1402
    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 1408
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mDispatched:Z

    .line 1409
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Previous stacktrace"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mPreviousRunStacktrace:Ljava/lang/Throwable;

    .line 1410
    if-eqz v0, :cond_3

    if-eqz v9, :cond_3

    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v1, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1427
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->isDelayBroadcastRecevice()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->extras:Landroid/os/Bundle;

    const-string v2, "callingUid"

    .line 1428
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1429
    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v10, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    new-instance v11, Landroid/app/-$$Lambda$LoadedApk$ReceiverDispatcher$Args$tkFogufvjhTFlZP5CzeKo81hMQQ;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v9

    move-object v4, v0

    move v5, v7

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/app/-$$Lambda$LoadedApk$ReceiverDispatcher$Args$tkFogufvjhTFlZP5CzeKo81hMQQ;-><init>(Landroid/app/LoadedApk$ReceiverDispatcher$Args;Landroid/content/Intent;Landroid/content/BroadcastReceiver;ZLandroid/app/IActivityManager;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {v10, v11, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1432
    :cond_2
    invoke-direct {p0, v9, v0, v7, v8}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->broadcastReceiveReg(Landroid/content/Intent;Landroid/content/BroadcastReceiver;ZLandroid/app/IActivityManager;)V

    .line 1474
    :goto_0
    return-void

    .line 1411
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v1, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v1, :cond_4

    if-eqz v7, :cond_4

    .line 1416
    :try_start_0
    invoke-virtual {p0, v8}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    goto :goto_2

    .line 1417
    :catch_0
    move-exception v1

    .line 1418
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1422
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public final getRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 1387
    new-instance v0, Landroid/app/-$$Lambda$LoadedApk$ReceiverDispatcher$Args$AbD6cR9nG8U71RCTrm-BwEAEXAA;

    invoke-direct {v0, p0}, Landroid/app/-$$Lambda$LoadedApk$ReceiverDispatcher$Args$AbD6cR9nG8U71RCTrm-BwEAEXAA;-><init>(Landroid/app/LoadedApk$ReceiverDispatcher$Args;)V

    return-object v0
.end method
