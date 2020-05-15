.class public Landroid/os/BSPApplicationManager$Trigger;
.super Ljava/lang/Object;
.source "BSPApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BSPApplicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trigger"
.end annotation


# static fields
.field private static sService:Landroid/os/IBSPApplicationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V
    .locals 6
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "duration"    # J

    .line 491
    invoke-static {}, Landroid/os/BSPApplicationManager$Trigger;->ensureService()V

    .line 492
    sget-object v0, Landroid/os/BSPApplicationManager$Trigger;->sService:Landroid/os/IBSPApplicationManager;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Landroid/os/BSPApplicationManager;->access$800(Landroid/os/IBSPApplicationManager;Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 493
    return-void
.end method

.method public static boostForTgpa(IILjava/lang/String;)I
    .locals 1
    .param p0, "boostType"    # I
    .param p1, "boostLevel"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 534
    invoke-static {}, Landroid/os/BSPApplicationManager$Trigger;->ensureService()V

    .line 535
    sget-object v0, Landroid/os/BSPApplicationManager$Trigger;->sService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0, p0, p1, p2}, Landroid/os/BSPApplicationManager;->access$1400(Landroid/os/IBSPApplicationManager;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static ensureService()V
    .locals 1

    .line 416
    sget-object v0, Landroid/os/BSPApplicationManager$Trigger;->sService:Landroid/os/IBSPApplicationManager;

    if-nez v0, :cond_0

    .line 417
    const-string/jumbo v0, "nubia.bspapplication.manager"

    .line 418
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 417
    invoke-static {v0}, Landroid/os/IBSPApplicationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBSPApplicationManager;

    move-result-object v0

    sput-object v0, Landroid/os/BSPApplicationManager$Trigger;->sService:Landroid/os/IBSPApplicationManager;

    .line 420
    :cond_0
    return-void
.end method

.method public static getForegroundPackageName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 423
    invoke-static {}, Landroid/os/BSPApplicationManager$Trigger;->ensureService()V

    .line 424
    sget-object v0, Landroid/os/BSPApplicationManager$Trigger;->sService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0}, Landroid/os/BSPApplicationManager;->access$000(Landroid/os/IBSPApplicationManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getViewOptimizeInfoByActivityName(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 440
    invoke-static {}, Landroid/os/BSPApplicationManager$Trigger;->ensureService()V

    .line 441
    sget-object v0, Landroid/os/BSPApplicationManager$Trigger;->sService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0, p0}, Landroid/os/BSPApplicationManager;->access$300(Landroid/os/IBSPApplicationManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isInNoTransitionAnim(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 501
    invoke-static {}, Landroid/os/BSPApplicationManager$Trigger;->ensureService()V

    .line 502
    sget-object v0, Landroid/os/BSPApplicationManager$Trigger;->sService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0, p0}, Landroid/os/BSPApplicationManager;->access$1000(Landroid/os/IBSPApplicationManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static noteAppBackground(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 7
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .line 512
    invoke-static {}, Landroid/os/BSPApplicationManager$Trigger;->ensureService()V

    .line 513
    sget-object v0, Landroid/os/BSPApplicationManager$Trigger;->sService:Landroid/os/IBSPApplicationManager;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/BSPApplicationManager;->access$1200(Landroid/os/IBSPApplicationManager;ILjava/lang/String;ILjava/lang/String;J)V

    .line 514
    return-void
.end method

.method public static noteAppForeground(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V
    .locals 9
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "caller"    # Ljava/lang/String;
    .param p5, "timestamp"    # J
    .param p7, "isColdLaunch"    # Z

    .line 507
    invoke-static {}, Landroid/os/BSPApplicationManager$Trigger;->ensureService()V

    .line 508
    sget-object v0, Landroid/os/BSPApplicationManager$Trigger;->sService:Landroid/os/IBSPApplicationManager;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/os/BSPApplicationManager;->access$1100(Landroid/os/IBSPApplicationManager;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V

    .line 509
    return-void
.end method

.method public static noteFocusChangedLw(Ljava/lang/String;)V
    .locals 1
    .param p0, "newFocus"    # Ljava/lang/String;

    .line 445
    invoke-static {}, Landroid/os/BSPApplicationManager$Trigger;->ensureService()V

    .line 446
    sget-object v0, Landroid/os/BSPApplicationManager$Trigger;->sService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0, p0}, Landroid/os/BSPApplicationManager;->access$400(Landroid/os/IBSPApplicationManager;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public static notePausingActivity(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "uid"    # I
    .param p1, "stackId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "visible"    # Z
    .param p5, "topActivityPackageName"    # Ljava/lang/String;
    .param p6, "topActivity"    # Ljava/lang/String;

    .line 450
    invoke-static {}, Landroid/os/BSPApplicationManager$Trigger;->ensureService()V

    .line 451
    sget-object v0, Landroid/os/BSPApplicationManager$Trigger;->sService:Landroid/os/IBSPApplicationManager;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Landroid/os/BSPApplicationManager;->access$500(Landroid/os/IBSPApplicationManager;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public static noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;

    .line 465
    invoke-static {}, Landroid/os/BSPApplicationManager$Trigger;->ensureService()V

    .line 466
    sget-object v0, Landroid/os/BSPApplicationManager$Trigger;->sService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0, p0, p1, p2}, Landroid/os/BSPApplicationManager;->access$700(Landroid/os/IBSPApplicationManager;ILjava/lang/String;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public static noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "stackId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .line 460
    invoke-static {}, Landroid/os/BSPApplicationManager$Trigger;->ensureService()V

    .line 461
    sget-object v0, Landroid/os/BSPApplicationManager$Trigger;->sService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0, p0, p1, p2, p3}, Landroid/os/BSPApplicationManager;->access$600(Landroid/os/IBSPApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public static noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "uid"    # I
    .param p1, "stackId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "isHomeActivity"    # Z

    .line 435
    invoke-static {}, Landroid/os/BSPApplicationManager$Trigger;->ensureService()V

    .line 436
    sget-object v0, Landroid/os/BSPApplicationManager$Trigger;->sService:Landroid/os/IBSPApplicationManager;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/os/BSPApplicationManager;->access$200(Landroid/os/IBSPApplicationManager;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 437
    return-void
.end method

.method public static releasePerformanceLock(Landroid/os/IBinder;)V
    .locals 1
    .param p0, "token"    # Landroid/os/IBinder;

    .line 496
    invoke-static {}, Landroid/os/BSPApplicationManager$Trigger;->ensureService()V

    .line 497
    sget-object v0, Landroid/os/BSPApplicationManager$Trigger;->sService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0, p0}, Landroid/os/BSPApplicationManager;->access$900(Landroid/os/IBSPApplicationManager;Landroid/os/IBinder;)V

    .line 498
    return-void
.end method

.method public static setBrightnessMode()V
    .locals 1

    .line 428
    invoke-static {}, Landroid/os/BSPApplicationManager$Trigger;->ensureService()V

    .line 429
    sget-object v0, Landroid/os/BSPApplicationManager$Trigger;->sService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0}, Landroid/os/BSPApplicationManager;->access$100(Landroid/os/IBSPApplicationManager;)V

    .line 430
    return-void
.end method

.method public static setThreadCpusetForTgpa(IZ)I
    .locals 1
    .param p0, "tid"    # I
    .param p1, "bigCluster"    # Z

    .line 523
    invoke-static {}, Landroid/os/BSPApplicationManager$Trigger;->ensureService()V

    .line 524
    sget-object v0, Landroid/os/BSPApplicationManager$Trigger;->sService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0, p0, p1}, Landroid/os/BSPApplicationManager;->access$1300(Landroid/os/IBSPApplicationManager;IZ)I

    move-result v0

    return v0
.end method
