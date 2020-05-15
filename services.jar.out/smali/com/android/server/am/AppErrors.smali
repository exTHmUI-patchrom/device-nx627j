.class Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrors$BadProcessInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAppsNotReportingCrashes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSystemAppSystraceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTraceDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd_MMM_HH_mm_ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    .line 93
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 98
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 108
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mSystemAppSystraceList:Ljava/util/HashMap;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 116
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 117
    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 118
    return-void
.end method

.method private createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 654
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 655
    return-object v1

    .line 658
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-nez v0, :cond_1

    .line 659
    return-object v1

    .line 662
    :cond_1
    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 663
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 664
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 665
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 666
    iput-wide p2, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 667
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 669
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v1, :cond_4

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-eqz v1, :cond_3

    goto :goto_1

    .line 672
    :cond_3
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-eqz v1, :cond_5

    .line 673
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 674
    new-instance v1, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 676
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 677
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 678
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_2

    .line 670
    :cond_4
    :goto_1
    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 671
    iput-object p4, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 681
    :cond_5
    :goto_2
    return-object v0
.end method

.method private generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "condition"    # I
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "shortMsg"    # Ljava/lang/String;
    .param p5, "longMsg"    # Ljava/lang/String;
    .param p6, "stackTrace"    # Ljava/lang/String;

    .line 625
    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    .line 627
    .local v0, "report":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    iput p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 628
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 629
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    .line 630
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 631
    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 632
    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 633
    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 634
    iput-object p6, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    .line 636
    return-object v0
.end method

.method private handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .locals 20
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "timeMillis"    # J
    .param p8, "callingPid"    # I
    .param p9, "callingUid"    # I

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 547
    iget-object v0, v7, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    const/4 v10, 0x0

    if-nez v0, :cond_0

    .line 548
    return v10

    .line 552
    :cond_0
    const/4 v11, 0x0

    if-eqz v8, :cond_1

    :try_start_0
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 552
    :cond_1
    move-object v0, v11

    .line 553
    .local v0, "name":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_2

    iget v1, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_1

    :cond_2
    move/from16 v1, p8

    :goto_1
    move v6, v1

    .line 554
    .local v6, "pid":I
    if-eqz v8, :cond_3

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_2

    :cond_3
    move/from16 v1, p9

    :goto_2
    move v5, v1

    .line 555
    .local v5, "uid":I
    iget-object v1, v7, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v1, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object v13, v0

    move v14, v6

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-wide/from16 v17, p6

    move-object/from16 v19, v1

    invoke-interface/range {v12 .. v19}, Landroid/app/IActivityController;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 557
    const-string v1, "1"

    const-string/jumbo v2, "ro.debuggable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_4

    const-string v1, "Native crash"

    iget-object v2, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 558
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 559
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip killing native crashed app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") during testing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    move v14, v5

    move v15, v6

    goto :goto_3

    .line 562
    :cond_4
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force-killing crashed app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at watcher\'s request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    if-eqz v8, :cond_5

    .line 565
    const/4 v13, 0x0

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v14, v5

    move-object/from16 v5, p5

    .line 565
    .end local v5    # "uid":I
    .local v14, "uid":I
    move v15, v6

    move-object v6, v13

    .line 565
    .end local v6    # "pid":I
    .local v15, "pid":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 567
    const-string v1, "crash"

    invoke-virtual {v8, v1, v12}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_3

    .line 571
    .end local v14    # "uid":I
    .end local v15    # "pid":I
    .restart local v5    # "uid":I
    .restart local v6    # "pid":I
    :cond_5
    move v14, v5

    move v15, v6

    .line 571
    .end local v5    # "uid":I
    .end local v6    # "pid":I
    .restart local v14    # "uid":I
    .restart local v15    # "pid":I
    invoke-static {v15}, Landroid/os/Process;->killProcess(I)V

    .line 572
    invoke-static {v14, v15}, Lcom/android/server/am/ActivityManagerService;->killProcessGroup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :cond_6
    :goto_3
    return v12

    .line 580
    .end local v0    # "name":Ljava/lang/String;
    .end local v14    # "uid":I
    .end local v15    # "pid":I
    :cond_7
    goto :goto_5

    .line 577
    :goto_4
    nop

    .line 578
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, v7, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v11, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 579
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 581
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    return v10
.end method

.method private isForgroundApp(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1216
    const/4 v0, 0x0

    .line 1217
    .local v0, "isForground":Z
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1218
    .local v1, "top_act":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1219
    .local v2, "top_app":Lcom/android/server/am/ProcessRecord;
    :goto_0
    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1220
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1222
    :cond_1
    return v0
.end method

.method static isInterestingForBackgroundTraces(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 879
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 880
    return v2

    .line 892
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 893
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasTopUi:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasOverlayUi:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    nop

    .line 892
    :cond_3
    :goto_0
    return v2
.end method

.method private makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "shortMsg"    # Ljava/lang/String;
    .param p3, "longMsg"    # Ljava/lang/String;
    .param p4, "stackTrace"    # Ljava/lang/String;
    .param p5, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 587
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 589
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 590
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->stopFreezingAllLocked()V

    .line 591
    const-string v3, "force-crash"

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v0

    return v0
.end method

.method private makeAppNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;

    .line 1206
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 1207
    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 1210
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1211
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->stopFreezingAllLocked()V

    .line 1212
    return-void
.end method


# virtual methods
.method final appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "aboveSystem"    # Z
    .param p5, "annotation"    # Ljava/lang/String;

    .line 900
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->nubiaAppNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    .line 901
    return-void
.end method

.method clearBadProcessLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 280
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 281
    return-void
.end method

.method crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 398
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 399
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 401
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 403
    .local v2, "origId":J
    :try_start_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    nop

    .line 407
    return-void

    .line 405
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .locals 38
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 412
    .local v14, "timeMillis":J
    iget-object v10, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 413
    .local v10, "shortMsg":Ljava/lang/String;
    iget-object v0, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 414
    .local v0, "longMsg":Ljava/lang/String;
    iget-object v9, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 415
    .local v9, "stackTrace":Ljava/lang/String;
    if-eqz v10, :cond_0

    if-eqz v0, :cond_0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 417
    :cond_0
    if-eqz v10, :cond_1

    .line 418
    move-object v0, v10

    .line 423
    .end local v0    # "longMsg":Ljava/lang/String;
    .local v16, "longMsg":Ljava/lang/String;
    :cond_1
    :goto_0
    move-object/from16 v16, v0

    if-eqz v12, :cond_2

    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget v1, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0, v1}, Lcom/android/server/RescueParty;->notePersistentAppCrash(Landroid/content/Context;I)V

    .line 427
    :cond_2
    new-instance v0, Lcom/android/server/am/AppErrorResult;

    invoke-direct {v0}, Lcom/android/server/am/AppErrorResult;-><init>()V

    move-object v7, v0

    .line 429
    .local v7, "result":Lcom/android/server/am/AppErrorResult;
    iget-object v8, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 434
    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v10

    move-object/from16 v5, v16

    move-object v6, v9

    move-object v13, v7

    move-object/from16 v17, v8

    move-wide v7, v14

    .line 434
    .end local v7    # "result":Lcom/android/server/am/AppErrorResult;
    .local v13, "result":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v18, v9

    move/from16 v9, p3

    .line 434
    .end local v9    # "stackTrace":Ljava/lang/String;
    .local v18, "stackTrace":Ljava/lang/String;
    move-object/from16 v19, v10

    move/from16 v10, p4

    .line 434
    .end local v10    # "shortMsg":Ljava/lang/String;
    .local v19, "shortMsg":Ljava/lang/String;
    :try_start_1
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v0, :cond_3

    .line 436
    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 468
    :catchall_0
    move-exception v0

    move-object v6, v13

    move-object/from16 v2, p2

    goto/16 :goto_c

    .line 443
    :cond_3
    if-eqz v12, :cond_4

    :try_start_3
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->instr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v0, :cond_4

    .line 444
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 448
    :cond_4
    if-eqz v12, :cond_5

    .line 449
    :try_start_4
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 452
    :cond_5
    :try_start_5
    new-instance v0, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v0}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V

    .line 453
    .local v0, "data":Lcom/android/server/am/AppErrorDialog$Data;
    iput-object v13, v0, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 454
    iput-object v12, v0, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 458
    if-eqz v12, :cond_12

    move-object v1, v11

    move-object v2, v12

    move-object/from16 v3, v19

    move-object/from16 v4, v16

    move-object/from16 v5, v18

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 459
    move-object v6, v13

    move-object/from16 v2, p2

    goto/16 :goto_b

    .line 462
    :cond_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 463
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 465
    iget-object v3, v0, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    .line 466
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 467
    iget-object v4, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 468
    .end local v0    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 470
    invoke-virtual {v13}, Lcom/android/server/am/AppErrorResult;->get()I

    move-result v0

    .line 472
    .local v0, "res":I
    const/4 v1, 0x0

    .line 473
    .local v1, "appErrorIntent":Landroid/content/Intent;
    iget-object v4, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v5, 0x13c

    invoke-static {v4, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 474
    const/4 v4, 0x6

    if-eq v0, v4, :cond_8

    const/4 v4, 0x7

    if-ne v0, v4, :cond_7

    goto :goto_2

    .line 477
    .end local v0    # "res":I
    .local v4, "res":I
    :cond_7
    :goto_1
    move v4, v0

    goto :goto_3

    .line 475
    .end local v4    # "res":I
    .restart local v0    # "res":I
    :cond_8
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 477
    .end local v0    # "res":I
    .restart local v4    # "res":I
    :goto_3
    iget-object v5, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 478
    const/4 v0, 0x5

    if-ne v4, v0, :cond_9

    .line 479
    :try_start_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_4

    .line 531
    :catchall_1
    move-exception v0

    move-object v6, v13

    move-object/from16 v2, p2

    goto/16 :goto_a

    .line 481
    :cond_9
    :goto_4
    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v4, v6, :cond_b

    .line 482
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "crash"

    invoke-virtual {v0, v12, v7, v2, v8}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 483
    if-eqz v3, :cond_b

    .line 485
    :try_start_8
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 486
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 485
    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 501
    goto :goto_6

    .line 487
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_9
    iget-object v8, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_a

    .line 491
    iget-object v8, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    .line 492
    .local v8, "cats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_5
    if-eqz v8, :cond_b

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 493
    iget-object v9, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v20

    iget v9, v3, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    iget-object v10, v3, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    new-instance v7, Lcom/android/server/am/SafeActivityOptions;

    .line 496
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/server/am/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    iget v2, v3, Lcom/android/server/am/TaskRecord;->userId:I

    const/16 v33, 0x0

    const-string v34, "AppErrors"

    const/16 v35, 0x0

    const/16 v36, 0x0

    .line 493
    move/from16 v21, v9

    move/from16 v22, p3

    move/from16 v23, p4

    move-object/from16 v24, v10

    move-object/from16 v25, v6

    move-object/from16 v31, v7

    move/from16 v32, v2

    invoke-virtual/range {v20 .. v36}, Lcom/android/server/am/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;)I

    .line 504
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "cats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    :goto_6
    const/4 v2, 0x1

    if-ne v4, v2, :cond_d

    .line 505
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 508
    .local v6, "orig":J
    :try_start_a
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityStackSupervisor;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 509
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_c

    .line 510
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "crash"

    const/4 v8, 0x0

    invoke-virtual {v0, v12, v8, v8, v2}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 511
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 514
    :cond_c
    :try_start_b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 515
    goto :goto_7

    .line 514
    :catchall_2
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 517
    .end local v6    # "orig":J
    :cond_d
    :goto_7
    const/16 v0, 0x8

    if-ne v4, v0, :cond_e

    .line 518
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 520
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 522
    :cond_e
    const/4 v0, 0x2

    if-ne v4, v0, :cond_f

    .line 523
    move-object v6, v13

    move-object/from16 v2, p2

    :try_start_c
    invoke-virtual {v11, v12, v14, v15, v2}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 525
    .end local v1    # "appErrorIntent":Landroid/content/Intent;
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .local v0, "appErrorIntent":Landroid/content/Intent;
    .local v6, "result":Lcom/android/server/am/AppErrorResult;
    move-object v1, v0

    goto :goto_8

    .line 525
    .end local v0    # "appErrorIntent":Landroid/content/Intent;
    .end local v6    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v1    # "appErrorIntent":Landroid/content/Intent;
    .restart local v13    # "result":Lcom/android/server/am/AppErrorResult;
    :cond_f
    move-object v6, v13

    move-object/from16 v2, p2

    .line 525
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v6    # "result":Lcom/android/server/am/AppErrorResult;
    :goto_8
    if-eqz v12, :cond_10

    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_10

    const/4 v7, 0x3

    if-eq v4, v7, :cond_10

    .line 528
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v7, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v8, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 529
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 528
    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 531
    :cond_10
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 533
    if-eqz v1, :cond_11

    .line 535
    :try_start_d
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v7, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v5, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_d} :catch_1

    .line 538
    goto :goto_9

    .line 536
    :catch_1
    move-exception v0

    .line 537
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "ActivityManager"

    const-string v7, "bug report receiver dissappeared"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_11
    :goto_9
    return-void

    .line 531
    .end local v6    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v13    # "result":Lcom/android/server/am/AppErrorResult;
    :catchall_3
    move-exception v0

    move-object v6, v13

    move-object/from16 v2, p2

    .line 531
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v6    # "result":Lcom/android/server/am/AppErrorResult;
    :goto_a
    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_a

    .line 459
    .end local v1    # "appErrorIntent":Landroid/content/Intent;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "res":I
    .end local v6    # "result":Lcom/android/server/am/AppErrorResult;
    .local v0, "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v13    # "result":Lcom/android/server/am/AppErrorResult;
    :cond_12
    move-object v6, v13

    move-object/from16 v2, p2

    .line 459
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v6    # "result":Lcom/android/server/am/AppErrorResult;
    :goto_b
    :try_start_f
    monitor-exit v17
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 468
    .end local v0    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .end local v6    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v13    # "result":Lcom/android/server/am/AppErrorResult;
    :catchall_5
    move-exception v0

    move-object v6, v13

    move-object/from16 v2, p2

    .line 468
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v6    # "result":Lcom/android/server/am/AppErrorResult;
    goto :goto_c

    .line 468
    .end local v6    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v18    # "stackTrace":Ljava/lang/String;
    .end local v19    # "shortMsg":Ljava/lang/String;
    .restart local v7    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v9    # "stackTrace":Ljava/lang/String;
    .restart local v10    # "shortMsg":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object v6, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object v2, v13

    .line 468
    .end local v7    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v9    # "stackTrace":Ljava/lang/String;
    .end local v10    # "shortMsg":Ljava/lang/String;
    .restart local v6    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v18    # "stackTrace":Ljava/lang/String;
    .restart local v19    # "shortMsg":Ljava/lang/String;
    :goto_c
    :try_start_10
    monitor-exit v17
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_c
.end method

.method createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 641
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    .line 642
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    if-nez v0, :cond_0

    .line 643
    const/4 v1, 0x0

    return-object v1

    .line 645
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APP_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 647
    const-string v2, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 648
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 649
    return-object v1
.end method

.method dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .locals 23
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "needSep"    # Z
    .param p4, "dumpPackage"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 190
    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 191
    const/4 v3, 0x0

    .line 192
    .local v3, "printed":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 193
    .local v5, "now":J
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 194
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 195
    .local v8, "processCount":I
    move/from16 v10, p3

    move v9, v3

    const/4 v3, 0x0

    .end local p3    # "needSep":Z
    .local v3, "ip":I
    .local v9, "printed":Z
    .local v10, "needSep":Z
    :goto_0
    if-ge v3, v8, :cond_7

    .line 196
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 197
    .local v11, "pname":Ljava/lang/String;
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 198
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 199
    .local v13, "uidCount":I
    move v14, v9

    const/4 v9, 0x0

    .local v9, "i":I
    .local v14, "printed":Z
    :goto_1
    if-ge v9, v13, :cond_5

    .line 200
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 201
    .local v15, "puid":I
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 202
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_1

    if-eqz v4, :cond_0

    move-object/from16 v16, v7

    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 203
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v16, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 204
    goto :goto_2

    .line 199
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "puid":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    :cond_0
    move-object/from16 v16, v7

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    :goto_2
    move/from16 v19, v8

    goto :goto_3

    .line 206
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v4    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v15    # "puid":I
    :cond_1
    move-object/from16 v16, v7

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    :cond_2
    if-nez v14, :cond_4

    .line 207
    if-eqz v10, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 208
    :cond_3
    const/4 v10, 0x1

    .line 209
    const-string v7, "  Time since processes crashed:"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    const/4 v7, 0x1

    .line 212
    .end local v14    # "printed":Z
    .local v7, "printed":Z
    move v14, v7

    .end local v7    # "printed":Z
    .restart local v14    # "printed":Z
    :cond_4
    const-string v7, "    Process "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    const-string v7, " uid "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 214
    const-string v7, ": last crashed "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move/from16 v19, v8

    sub-long v7, v5, v17

    .end local v8    # "processCount":I
    .local v19, "processCount":I
    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 216
    const-string v7, " ago"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "puid":I
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v16

    move/from16 v8, v19

    goto :goto_1

    .line 195
    .end local v9    # "i":I
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v13    # "uidCount":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v19    # "processCount":I
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "processCount":I
    :cond_5
    move-object/from16 v16, v7

    move/from16 v19, v8

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "processCount":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v19    # "processCount":I
    add-int/lit8 v3, v3, 0x1

    move v9, v14

    goto/16 :goto_0

    .line 221
    .end local v3    # "ip":I
    .end local v5    # "now":J
    .end local v10    # "needSep":Z
    .end local v14    # "printed":Z
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v19    # "processCount":I
    .restart local p3    # "needSep":Z
    :cond_6
    move/from16 v10, p3

    .end local p3    # "needSep":Z
    .restart local v10    # "needSep":Z
    :cond_7
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 222
    const/4 v3, 0x0

    .line 223
    .local v3, "printed":Z
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 224
    .local v4, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 225
    .local v5, "processCount":I
    move v6, v3

    const/4 v3, 0x0

    .local v3, "ip":I
    .local v6, "printed":Z
    :goto_4
    if-ge v3, v5, :cond_12

    .line 226
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 227
    .local v7, "pname":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 228
    .local v8, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 229
    .local v9, "uidCount":I
    move v11, v6

    const/4 v6, 0x0

    .local v6, "i":I
    .local v11, "printed":Z
    :goto_5
    if-ge v6, v9, :cond_11

    .line 230
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 231
    .local v12, "puid":I
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v7, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 232
    .local v13, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_9

    if-eqz v13, :cond_8

    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 233
    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 234
    nop

    .line 229
    .end local v12    # "puid":I
    .end local v13    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_8
    move-object/from16 v20, v4

    move/from16 v21, v5

    goto/16 :goto_7

    .line 236
    .restart local v12    # "puid":I
    .restart local v13    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_9
    if-nez v11, :cond_b

    .line 237
    if-eqz v10, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 238
    :cond_a
    const/4 v10, 0x1

    .line 239
    const-string v14, "  Bad processes:"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    const/4 v11, 0x1

    .line 242
    :cond_b
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 243
    .local v14, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    const-string v15, "    Bad process "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    const-string v15, " uid "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 245
    const-string v15, ": crashed at time "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v20, v4

    move/from16 v21, v5

    iget-wide v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    .end local v4    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v5    # "processCount":I
    .local v20, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v21, "processCount":I
    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 246
    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 247
    const-string v4, "      Short msg: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    :cond_c
    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 250
    const-string v4, "      Long msg: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    :cond_d
    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 253
    const-string v4, "      Stack:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    const/4 v4, 0x0

    .line 255
    .local v4, "lastPos":I
    move v5, v4

    const/4 v4, 0x0

    .local v4, "pos":I
    .local v5, "lastPos":I
    :goto_6
    iget-object v15, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v4, v15, :cond_f

    .line 256
    iget-object v15, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v0, 0xa

    if-ne v15, v0, :cond_e

    .line 257
    const-string v0, "        "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 258
    iget-object v0, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    sub-int v15, v4, v5

    invoke-virtual {v1, v0, v5, v15}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 260
    add-int/lit8 v0, v4, 0x1

    .line 255
    .end local v5    # "lastPos":I
    .local v0, "lastPos":I
    move v5, v0

    .end local v0    # "lastPos":I
    .restart local v5    # "lastPos":I
    :cond_e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    .line 263
    .end local v4    # "pos":I
    :cond_f
    iget-object v0, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v5, v0, :cond_10

    .line 264
    const-string v0, "        "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    iget-object v0, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 229
    .end local v5    # "lastPos":I
    .end local v12    # "puid":I
    .end local v13    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    :cond_10
    :goto_7
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v0, p0

    goto/16 :goto_5

    .line 225
    .end local v6    # "i":I
    .end local v7    # "pname":Ljava/lang/String;
    .end local v8    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v9    # "uidCount":I
    .end local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v21    # "processCount":I
    .local v4, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v5, "processCount":I
    :cond_11
    move-object/from16 v20, v4

    move/from16 v21, v5

    .end local v4    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v5    # "processCount":I
    .restart local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v21    # "processCount":I
    add-int/lit8 v3, v3, 0x1

    move v6, v11

    move-object/from16 v0, p0

    goto/16 :goto_4

    .line 272
    .end local v3    # "ip":I
    .end local v11    # "printed":Z
    .end local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v21    # "processCount":I
    :cond_12
    return v10
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 20
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 686
    move-object/from16 v3, p6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 687
    .local v10, "now":J
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "anr_show_background"

    const/4 v12, 0x0

    invoke-static {v0, v4, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    move v0, v13

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    move v14, v0

    .line 690
    .local v14, "showBackground":Z
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    move v0, v13

    goto :goto_1

    :cond_1
    move v0, v12

    :goto_1
    move v15, v0

    .line 695
    .local v15, "procIsBoundForeground":Z
    const/4 v0, 0x0

    .line 697
    .local v0, "tryAgain":Z
    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v4, :cond_2

    .line 698
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 699
    .local v4, "crashTime":Ljava/lang/Long;
    iget-object v5, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 701
    .local v5, "crashTimePersistent":Ljava/lang/Long;
    .local v9, "crashTimePersistent":Ljava/lang/Long;
    :goto_2
    move-object v9, v5

    goto :goto_3

    .end local v4    # "crashTime":Ljava/lang/Long;
    .end local v5    # "crashTimePersistent":Ljava/lang/Long;
    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    :cond_2
    const/4 v4, 0x0

    move-object v5, v4

    goto :goto_2

    .restart local v4    # "crashTime":Ljava/lang/Long;
    .restart local v9    # "crashTimePersistent":Ljava/lang/Long;
    :goto_3
    move-object v8, v4

    .line 705
    .end local v4    # "crashTime":Ljava/lang/Long;
    .local v8, "crashTime":Ljava/lang/Long;
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v13

    move v7, v0

    .end local v0    # "tryAgain":Z
    .local v4, "i":I
    .local v7, "tryAgain":Z
    :goto_4
    move v0, v4

    .end local v4    # "i":I
    .local v0, "i":I
    const-wide/32 v4, 0xea60

    if-ltz v0, :cond_6

    .line 708
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 710
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    iget-wide v12, v6, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v12, v4

    cmp-long v4, v10, v12

    if-lez v4, :cond_3

    .line 711
    const/4 v4, 0x1

    iput v4, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    goto :goto_5

    .line 713
    :cond_3
    const/4 v4, 0x1

    iget v5, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    add-int/2addr v5, v4

    iput v5, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 717
    :goto_5
    iget v4, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v4, v4

    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v12, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v4, v4, v12

    if-gez v4, :cond_5

    iget-boolean v4, v6, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v4, :cond_4

    if-eqz v15, :cond_5

    .line 719
    :cond_4
    const/4 v4, 0x1

    .line 705
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v7    # "tryAgain":Z
    .local v4, "tryAgain":Z
    move v7, v4

    .end local v4    # "tryAgain":Z
    .restart local v7    # "tryAgain":Z
    :cond_5
    add-int/lit8 v4, v0, -0x1

    .end local v0    # "i":I
    .local v4, "i":I
    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_4

    .line 723
    .end local v4    # "i":I
    :cond_6
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long/2addr v12, v4

    cmp-long v0, v10, v12

    if-gez v0, :cond_a

    .line 726
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has crashed too many times: killing!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/16 v0, 0x7550

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 729
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v5, v12

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v6, v5, v12

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x2

    aput-object v6, v5, v12

    .line 728
    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 730
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 731
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_8

    .line 736
    const/16 v0, 0x753f

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v5, v4, v12

    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 738
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_7

    .line 741
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v13, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v5, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object v4, v5

    move/from16 v16, v15

    move-object v15, v5

    move-wide v5, v10

    .end local v15    # "procIsBoundForeground":Z
    .local v16, "procIsBoundForeground":Z
    move-wide/from16 v17, v10

    move v10, v7

    move-object/from16 v7, p3

    .end local v7    # "tryAgain":Z
    .local v10, "tryAgain":Z
    .local v17, "now":J
    move-object v11, v8

    move-object/from16 v8, p4

    .end local v8    # "crashTime":Ljava/lang/Long;
    .local v11, "crashTime":Ljava/lang/Long;
    move-object/from16 v19, v11

    move-object v11, v9

    move-object/from16 v9, p5

    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    .local v11, "crashTimePersistent":Ljava/lang/Long;
    .local v19, "crashTime":Ljava/lang/Long;
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13, v15}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 743
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_6

    .line 745
    .end local v11    # "crashTimePersistent":Ljava/lang/Long;
    .end local v16    # "procIsBoundForeground":Z
    .end local v17    # "now":J
    .end local v19    # "crashTime":Ljava/lang/Long;
    .restart local v7    # "tryAgain":Z
    .restart local v8    # "crashTime":Ljava/lang/Long;
    .restart local v9    # "crashTimePersistent":Ljava/lang/Long;
    .local v10, "now":J
    .restart local v15    # "procIsBoundForeground":Z
    :cond_7
    move-object/from16 v19, v8

    move-wide/from16 v17, v10

    move/from16 v16, v15

    move v10, v7

    move-object v11, v9

    .end local v7    # "tryAgain":Z
    .end local v8    # "crashTime":Ljava/lang/Long;
    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    .end local v15    # "procIsBoundForeground":Z
    .local v10, "tryAgain":Z
    .restart local v11    # "crashTimePersistent":Ljava/lang/Long;
    .restart local v16    # "procIsBoundForeground":Z
    .restart local v17    # "now":J
    .restart local v19    # "crashTime":Ljava/lang/Long;
    :goto_6
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->bad:Z

    .line 746
    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 750
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "crash"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v10, v4}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 751
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 752
    if-nez v14, :cond_9

    .line 753
    return v5

    .line 756
    .end local v11    # "crashTimePersistent":Ljava/lang/Long;
    .end local v16    # "procIsBoundForeground":Z
    .end local v17    # "now":J
    .end local v19    # "crashTime":Ljava/lang/Long;
    .restart local v7    # "tryAgain":Z
    .restart local v8    # "crashTime":Ljava/lang/Long;
    .restart local v9    # "crashTimePersistent":Ljava/lang/Long;
    .local v10, "now":J
    .restart local v15    # "procIsBoundForeground":Z
    :cond_8
    move-object/from16 v19, v8

    move-wide/from16 v17, v10

    move/from16 v16, v15

    move v10, v7

    move-object v11, v9

    .end local v7    # "tryAgain":Z
    .end local v8    # "crashTime":Ljava/lang/Long;
    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    .end local v15    # "procIsBoundForeground":Z
    .local v10, "tryAgain":Z
    .restart local v11    # "crashTimePersistent":Ljava/lang/Long;
    .restart local v16    # "procIsBoundForeground":Z
    .restart local v17    # "now":J
    .restart local v19    # "crashTime":Ljava/lang/Long;
    :cond_9
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 769
    move-object/from16 v6, p2

    goto :goto_7

    .line 758
    .end local v11    # "crashTimePersistent":Ljava/lang/Long;
    .end local v16    # "procIsBoundForeground":Z
    .end local v17    # "now":J
    .end local v19    # "crashTime":Ljava/lang/Long;
    .restart local v7    # "tryAgain":Z
    .restart local v8    # "crashTime":Ljava/lang/Long;
    .restart local v9    # "crashTimePersistent":Ljava/lang/Long;
    .local v10, "now":J
    .restart local v15    # "procIsBoundForeground":Z
    :cond_a
    move-object/from16 v19, v8

    move-wide/from16 v17, v10

    move/from16 v16, v15

    move v10, v7

    move-object v11, v9

    .end local v7    # "tryAgain":Z
    .end local v8    # "crashTime":Ljava/lang/Long;
    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    .end local v15    # "procIsBoundForeground":Z
    .local v10, "tryAgain":Z
    .restart local v11    # "crashTimePersistent":Ljava/lang/Long;
    .restart local v16    # "procIsBoundForeground":Z
    .restart local v17    # "now":J
    .restart local v19    # "crashTime":Ljava/lang/Long;
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 759
    move-object/from16 v6, p2

    invoke-virtual {v0, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->finishTopCrashedActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 760
    .local v0, "affectedTask":Lcom/android/server/am/TaskRecord;
    if-eqz v3, :cond_b

    .line 761
    iput-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    .line 763
    :cond_b
    if-eqz v3, :cond_c

    if-eqz v11, :cond_c

    .line 764
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v7, v4

    cmp-long v4, v17, v7

    if-gez v4, :cond_c

    .line 765
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    .end local v0    # "affectedTask":Lcom/android/server/am/TaskRecord;
    goto :goto_8

    .line 769
    :cond_c
    :goto_7
    const/4 v4, 0x1

    :goto_8
    if-eqz v3, :cond_d

    if-eqz v10, :cond_d

    .line 770
    iput-boolean v4, v3, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    .line 777
    :cond_d
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    .line 778
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne v2, v0, :cond_f

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v0, v5

    if-nez v0, :cond_f

    .line 780
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    .local v0, "activityNdx":I
    :goto_9
    move v5, v0

    .end local v0    # "activityNdx":I
    .local v5, "activityNdx":I
    if-ltz v5, :cond_f

    .line 781
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 782
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 783
    const-string v0, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Clearing package preferred activities from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 786
    invoke-interface {v0, v8}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    goto :goto_a

    .line 787
    :catch_0
    move-exception v0

    .line 780
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_e
    :goto_a
    add-int/lit8 v0, v5, -0x1

    .end local v5    # "activityNdx":I
    .restart local v0    # "activityNdx":I
    goto :goto_9

    .line 794
    .end local v0    # "activityNdx":I
    :cond_f
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_10

    .line 797
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    move-wide/from16 v8, v17

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .end local v17    # "now":J
    .local v8, "now":J
    invoke-virtual {v0, v5, v7, v12}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 798
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v5, v7, v12}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 801
    .end local v8    # "now":J
    .restart local v17    # "now":J
    :cond_10
    move-wide/from16 v8, v17

    .end local v17    # "now":J
    .restart local v8    # "now":J
    :goto_b
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 802
    :cond_11
    const/4 v5, 0x1

    return v5
.end method

.method handleShowAnrUi(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 1227
    const/4 v2, 0x0

    .line 1228
    .local v2, "dialogToShow":Landroid/app/Dialog;
    iget-object v3, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1229
    move-object/from16 v4, p1

    :try_start_1
    iget-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 1230
    .local v0, "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    iget-object v5, v0, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 1231
    .local v5, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v5, :cond_0

    .line 1232
    const-string v6, "ActivityManager"

    const-string v7, "handleShowAnrUi: proc is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1235
    :cond_0
    :try_start_2
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    const/16 v7, 0x13d

    if-eqz v6, :cond_1

    .line 1236
    const-string v6, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has anr dialog: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1239
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1242
    :cond_1
    :try_start_3
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.ANR"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1243
    .local v6, "intent":Landroid/content/Intent;
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v8, :cond_2

    .line 1244
    const/high16 v8, 0x50000000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1247
    :cond_2
    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget v23, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v24, 0x3e8

    const/16 v25, 0x0

    move-object v12, v6

    invoke-virtual/range {v9 .. v25}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1251
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "anr_show_background"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v10, 0x1

    nop

    :cond_3
    move v8, v10

    .line 1257
    .local v8, "showBackground":Z
    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    move-result v9

    if-nez v9, :cond_5

    if-nez v8, :cond_5

    invoke-direct {v1, v5}, Lcom/android/server/am/AppErrors;->isForgroundApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_0

    .line 1262
    :cond_4
    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-static {v9, v7, v10}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1265
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v9}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    .end local v0    # "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "showBackground":Z
    goto :goto_1

    .line 1259
    .restart local v0    # "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    .restart local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v8    # "showBackground":Z
    :cond_5
    :goto_0
    new-instance v7, Lcom/android/server/am/AppNotRespondingDialog;

    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9, v10, v0}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    move-object v2, v7

    .line 1260
    iput-object v2, v5, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1267
    .end local v0    # "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "showBackground":Z
    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1269
    if-eqz v2, :cond_6

    .line 1270
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1272
    :cond_6
    return-void

    .line 1267
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v4, p1

    :goto_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method handleShowAppErrorUi(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 806
    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/AppErrorDialog$Data;

    .line 807
    .local v3, "data":Lcom/android/server/am/AppErrorDialog$Data;
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "anr_show_background"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    move v6, v0

    .line 810
    .local v6, "showBackground":Z
    const/4 v7, 0x0

    .line 813
    .local v7, "dialogToShow":Lcom/android/server/am/AppErrorDialog;
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 814
    iget-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 815
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v9, v3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 816
    .local v9, "res":Lcom/android/server/am/AppErrorResult;
    if-nez v0, :cond_1

    .line 817
    const-string v4, "ActivityManager"

    const-string v5, "handleShowAppErrorUi: proc is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 820
    :cond_1
    :try_start_1
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 821
    .local v10, "packageName":Ljava/lang/String;
    iget v11, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 822
    .local v11, "userId":I
    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v12, :cond_3

    .line 823
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "App already has crash dialog: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    if-eqz v9, :cond_2

    .line 825
    sget v4, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    invoke-virtual {v9, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 827
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 829
    :cond_3
    :try_start_2
    iget v12, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    const/16 v13, 0x2710

    if-lt v12, v13, :cond_4

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v12, v13, :cond_4

    const/4 v12, 0x1

    goto :goto_1

    :cond_4
    move v12, v5

    .line 832
    .local v12, "isBackground":Z
    :goto_1
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v13}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v13

    array-length v14, v13

    move v15, v12

    move v12, v5

    .line 832
    .end local v12    # "isBackground":Z
    .local v15, "isBackground":Z
    :goto_2
    if-ge v12, v14, :cond_6

    aget v16, v13, v12

    move/from16 v17, v16

    .line 833
    .local v17, "profileId":I
    move/from16 v4, v17

    if-eq v11, v4, :cond_5

    .line 833
    .end local v17    # "profileId":I
    .local v4, "profileId":I
    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    move/from16 v16, v5

    :goto_3
    and-int v15, v15, v16

    .line 832
    .end local v4    # "profileId":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 835
    :cond_6
    if-eqz v15, :cond_8

    if-nez v6, :cond_8

    .line 836
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping crash dialog of "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": background"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    if-eqz v9, :cond_7

    .line 838
    sget v4, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    invoke-virtual {v9, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 840
    :cond_7
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 842
    :cond_8
    :try_start_3
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 843
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v12, "show_first_crash_dialog"

    .line 842
    invoke-static {v4, v12, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    move v4, v5

    .line 845
    .local v4, "showFirstCrash":Z
    :goto_4
    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 846
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "show_first_crash_dialog_dev_option"

    iget-object v14, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 849
    invoke-virtual {v14}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v14

    .line 845
    invoke-static {v12, v13, v5, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    goto :goto_5

    :cond_a
    move v12, v5

    .line 850
    .local v12, "showFirstCrashDevOption":Z
    :goto_5
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-eqz v13, :cond_b

    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 851
    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v18, 0x1

    goto :goto_6

    :cond_b
    move/from16 v18, v5

    :goto_6
    move/from16 v5, v18

    .line 852
    .local v5, "crashSilenced":Z
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    move-result v13

    if-nez v13, :cond_c

    if-eqz v6, :cond_e

    :cond_c
    if-nez v5, :cond_e

    if-nez v4, :cond_d

    if-nez v12, :cond_d

    iget-boolean v13, v3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v13, :cond_e

    .line 854
    :cond_d
    new-instance v13, Lcom/android/server/am/AppErrorDialog;

    iget-object v14, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v13, v14, v2, v3}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    move-object v7, v13

    iput-object v13, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    goto :goto_7

    .line 858
    :cond_e
    if-eqz v9, :cond_f

    .line 859
    sget v2, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    invoke-virtual {v9, v2}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 862
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "showFirstCrash":Z
    .end local v5    # "crashSilenced":Z
    .end local v9    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v12    # "showFirstCrashDevOption":Z
    .end local v15    # "isBackground":Z
    :cond_f
    :goto_7
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object v0, v10

    .line 862
    .end local v10    # "packageName":Ljava/lang/String;
    .local v0, "packageName":Ljava/lang/String;
    move v2, v11

    .line 864
    .end local v11    # "userId":I
    .local v2, "userId":I
    if-eqz v7, :cond_10

    .line 865
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Showing crash dialog for package "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " u"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-virtual {v7}, Lcom/android/server/am/AppErrorDialog;->show()V

    .line 868
    :cond_10
    return-void

    .line 862
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "userId":I
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 276
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "fromDialog"    # Landroid/app/Dialog;

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 329
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 330
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 331
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 332
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-ne v0, p2, :cond_0

    .line 333
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 335
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-ne v0, p2, :cond_1

    .line 336
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 338
    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_2

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_2

    .line 339
    const-string/jumbo v4, "user-terminated"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 341
    const-string/jumbo v0, "user request after error"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 343
    :cond_2
    return-void
.end method

.method loadAppsNotReportingCrashesFromConfigLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "appsNotReportingCrashesConfig"    # Ljava/lang/String;

    .line 318
    if-eqz p1, :cond_0

    .line 319
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 321
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 322
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 325
    .end local v0    # "split":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method final nubiaAppNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
    .locals 33
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "aboveSystem"    # Z
    .param p5, "annotation"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 906
    move-object/from16 v15, p5

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v0

    .line 907
    .local v11, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/SparseArray;

    const/16 v3, 0x14

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    move-object v10, v0

    .line 909
    .local v10, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    .line 912
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-interface {v0, v3, v4, v15}, Landroid/app/IActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 914
    .local v0, "res":I
    if-gez v0, :cond_0

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v4, :cond_0

    .line 915
    const-string v3, "anr"

    invoke-virtual {v12, v3, v8}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    .end local v0    # "res":I
    :cond_0
    goto :goto_0

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v9, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 919
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 923
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 925
    .local v6, "anrTime":J
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 929
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "anr_show_background"

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v8

    goto :goto_1

    :cond_2
    move v0, v5

    :goto_1
    move/from16 v16, v0

    .line 934
    .local v16, "showBackground":Z
    iget-object v3, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 936
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    if-eqz v0, :cond_3

    .line 937
    :try_start_2
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "During shutdown skipping ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1016
    :catchall_0
    move-exception v0

    move-wide/from16 v27, v6

    move-object/from16 v18, v10

    move-object/from16 v24, v11

    move/from16 v6, p4

    goto/16 :goto_1c

    .line 939
    :cond_3
    :try_start_3
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->notResponding:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    if-eqz v0, :cond_4

    .line 940
    :try_start_4
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping duplicate ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 942
    :cond_4
    :try_start_5
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->crashing:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    if-eqz v0, :cond_5

    .line 943
    :try_start_6
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashing app skipping ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 945
    :cond_5
    :try_start_7
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->killedByAm:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    if-eqz v0, :cond_6

    .line 946
    :try_start_8
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App already killed by AM skipping ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 948
    :cond_6
    :try_start_9
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->killed:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    if-eqz v0, :cond_7

    .line 949
    :try_start_a
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping died app ANR: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 955
    :cond_7
    :try_start_b
    iput-boolean v8, v12, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 958
    const/16 v0, 0x7538

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    iget v4, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v4, v2, v9

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 959
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x3

    aput-object v4, v2, v9

    const/4 v4, 0x4

    aput-object v15, v2, v4

    .line 958
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 962
    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    if-eqz v0, :cond_9

    .line 964
    :try_start_c
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_8

    .line 965
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->dumpMessageHistory()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 969
    :cond_8
    goto :goto_2

    .line 967
    :catch_1
    move-exception v0

    .line 968
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_d
    const-string/jumbo v2, "nubialog"

    const-string v4, "ANR dumpMessageHistory failed"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 973
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_9
    :goto_2
    :try_start_e
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 976
    if-nez v16, :cond_a

    :try_start_f
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/AppErrors;->isInterestingForBackgroundTraces(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-nez v0, :cond_a

    move v0, v8

    goto :goto_3

    :cond_a
    move v0, v5

    .line 981
    .local v0, "isSilentANR":Z
    :goto_3
    :try_start_10
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    and-int/2addr v2, v8

    if-eqz v2, :cond_b

    move v2, v8

    goto :goto_4

    :cond_b
    move v2, v5

    .line 982
    .local v2, "isSystemApp":Z
    :goto_4
    if-nez v0, :cond_14

    if-eqz v2, :cond_14

    .line 984
    :try_start_11
    iget v4, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 985
    .local v4, "parentPid":I
    if-eqz v14, :cond_c

    iget-object v5, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_c

    iget-object v5, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v5, :cond_c

    .line 986
    iget-object v5, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move v4, v5

    .line 988
    :cond_c
    iget v5, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v4, v5, :cond_d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    :cond_d
    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    iget v9, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v5, v9, :cond_e

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v5, v4, :cond_e

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    :cond_e
    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    iget v9, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v5, v9, :cond_f

    .line 994
    iget v5, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    :cond_f
    iget-object v5, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v8

    .line 997
    .local v5, "i":I
    :goto_5
    if-ltz v5, :cond_14

    .line 998
    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 999
    .local v9, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_12

    iget-object v8, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v8, :cond_12

    .line 1000
    iget v8, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1001
    .local v8, "pid":I
    if-lez v8, :cond_12

    move/from16 v22, v2

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1001
    .end local v2    # "isSystemApp":Z
    .local v22, "isSystemApp":Z
    if-eq v8, v2, :cond_13

    if-eq v8, v4, :cond_13

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v8, v2, :cond_13

    .line 1002
    iget-boolean v2, v9, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v2, :cond_10

    .line 1003
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1005
    :cond_10
    iget-boolean v2, v9, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v2, :cond_11

    .line 1006
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1009
    :cond_11
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1009
    .end local v8    # "pid":I
    .end local v9    # "r":Lcom/android/server/am/ProcessRecord;
    goto :goto_6

    .line 997
    .end local v22    # "isSystemApp":Z
    .restart local v2    # "isSystemApp":Z
    :cond_12
    move/from16 v22, v2

    .line 997
    .end local v2    # "isSystemApp":Z
    .restart local v22    # "isSystemApp":Z
    :cond_13
    :goto_6
    add-int/lit8 v5, v5, -0x1

    move/from16 v2, v22

    const/4 v8, 0x1

    goto :goto_5

    .line 1016
    .end local v4    # "parentPid":I
    .end local v5    # "i":I
    .end local v22    # "isSystemApp":Z
    :cond_14
    :try_start_12
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move/from16 v22, v0

    .line 1018
    .end local v0    # "isSilentANR":Z
    .local v22, "isSilentANR":Z
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->isMonkey()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_16

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 1021
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mSystemAppSystraceList:Ljava/util/HashMap;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1022
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mSystemAppSystraceList:Ljava/util/HashMap;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->dumpSystrace()V

    goto :goto_7

    .line 1025
    :cond_15
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mSystemAppSystraceList:Ljava/util/HashMap;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1026
    .local v0, "num":I
    const/4 v2, 0x3

    if-ge v0, v2, :cond_16

    .line 1027
    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mSystemAppSystraceList:Ljava/util/HashMap;

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->dumpSystrace()V

    .line 1035
    .end local v0    # "num":I
    :cond_16
    :goto_7
    const-string v0, "1"

    const-string/jumbo v2, "persist.sys.dumpsys.enable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1036
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityManagerService;->dumpsysInfo(Lcom/android/server/am/ProcessRecord;)V

    .line 1041
    :cond_17
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1042
    if-eqz v22, :cond_18

    .line 1043
    const/4 v2, 0x1

    goto :goto_8

    .line 1042
    :cond_18
    nop

    .line 1043
    const/4 v2, 0x2

    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1041
    invoke-static {v0, v2, v15, v3, v4}, Lnubia/os/ApplicationManager$Trigger;->noteAppAnrCrash(Ljava/lang/String;ILjava/lang/String;J)V

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    .line 1047
    .local v9, "info":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1048
    const-string v0, "ANR in "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    if-eqz v13, :cond_19

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 1050
    const-string v0, " ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    :cond_19
    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    const-string v0, "PID: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    if-eqz v15, :cond_1a

    .line 1055
    const-string v0, "Reason: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    :cond_1a
    if-eqz v14, :cond_1b

    if-eq v14, v13, :cond_1b

    .line 1058
    const-string v0, "Parent: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    :cond_1b
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    move-object v8, v0

    .line 1062
    .local v8, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    const/4 v0, 0x0

    .line 1065
    .local v0, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 1066
    .local v2, "nativeProc":[Ljava/lang/String;
    if-eqz v22, :cond_20

    .line 1067
    const/4 v3, 0x0

    .line 1067
    .local v3, "i":I
    :goto_9
    sget-object v4, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1d

    .line 1068
    sget-object v4, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1069
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v4, v5, v19

    move-object v2, v5

    .line 1070
    goto :goto_a

    .line 1067
    :cond_1c
    const/16 v19, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1073
    .end local v3    # "i":I
    :cond_1d
    const/16 v19, 0x0

    :goto_a
    if-nez v2, :cond_1e

    const/4 v3, 0x0

    goto :goto_b

    :cond_1e
    invoke-static {v2}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v3

    .line 1074
    .local v3, "pid":[I
    :goto_b
    if-eqz v3, :cond_1f

    .line 1075
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v4

    .line 1076
    array-length v4, v3

    move/from16 v5, v19

    :goto_c
    if-ge v5, v4, :cond_1f

    move-object/from16 v23, v2

    aget v2, v3, v5

    .line 1077
    .local v2, "i":I
    .local v23, "nativeProc":[Ljava/lang/String;
    move-object/from16 v24, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1077
    .end local v3    # "pid":[I
    .local v24, "pid":[I
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1076
    .end local v2    # "i":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    goto :goto_c

    .line 1080
    .end local v23    # "nativeProc":[Ljava/lang/String;
    .end local v24    # "pid":[I
    .local v2, "nativeProc":[Ljava/lang/String;
    :cond_1f
    move-object/from16 v23, v2

    .line 1095
    .end local v2    # "nativeProc":[Ljava/lang/String;
    .restart local v23    # "nativeProc":[Ljava/lang/String;
    move-object v5, v0

    goto :goto_d

    .line 1081
    .end local v23    # "nativeProc":[Ljava/lang/String;
    .restart local v2    # "nativeProc":[Ljava/lang/String;
    :cond_20
    const/16 v19, 0x0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v0

    .line 1095
    move-object v5, v0

    move-object/from16 v23, v2

    .line 1095
    .end local v0    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "nativeProc":[Ljava/lang/String;
    .local v5, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v23    # "nativeProc":[Ljava/lang/String;
    :goto_d
    const/4 v0, 0x0

    .line 1096
    .local v0, "tracesFile":Ljava/io/File;
    if-nez v22, :cond_22

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-nez v2, :cond_21

    goto :goto_e

    .line 1099
    :cond_21
    invoke-static {v4, v11, v8, v10, v5}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v0

    .line 1103
    move-object v2, v0

    const/4 v3, 0x0

    goto :goto_f

    .line 1097
    :cond_22
    const/4 v4, 0x1

    :goto_e
    const/4 v3, 0x0

    invoke-static {v4, v11, v3, v10, v3}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v0

    .line 1103
    move-object v2, v0

    .line 1103
    .end local v0    # "tracesFile":Ljava/io/File;
    .local v2, "tracesFile":Ljava/io/File;
    :goto_f
    const/16 v17, 0x0

    .line 1105
    .local v17, "cpuInfo":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 1106
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v4

    .line 1107
    :try_start_13
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    move-object/from16 v26, v0

    .line 1108
    .end local v17    # "cpuInfo":Ljava/lang/String;
    .local v26, "cpuInfo":Ljava/lang/String;
    :try_start_14
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 1109
    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    move-object/from16 v4, v26

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    .end local v26    # "cpuInfo":Ljava/lang/String;
    .local v4, "cpuInfo":Ljava/lang/String;
    invoke-virtual {v8, v6, v7}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    const-string v0, "ActivityManager"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    if-nez v2, :cond_23

    .line 1118
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/os/Process;->sendSignal(II)V

    .line 1121
    :cond_23
    iget v3, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1122
    if-nez v13, :cond_24

    const-string/jumbo v17, "unknown"

    .line 1123
    move-object/from16 v29, v2

    goto :goto_10

    .line 1122
    :cond_24
    move-object/from16 v29, v2

    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 1123
    .end local v2    # "tracesFile":Ljava/io/File;
    .local v29, "tracesFile":Ljava/io/File;
    move-object/from16 v17, v2

    :goto_10
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_26

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1124
    nop

    .line 1127
    const/16 v20, 0x2

    goto :goto_11

    .line 1125
    :cond_25
    nop

    .line 1127
    const/16 v20, 0x1

    goto :goto_11

    .line 1126
    :cond_26
    nop

    .line 1127
    move/from16 v20, v19

    :goto_11
    if-eqz v12, :cond_28

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1128
    nop

    .line 1121
    const/16 v21, 0x2

    goto :goto_12

    .line 1129
    :cond_27
    nop

    .line 1121
    const/16 v21, 0x1

    goto :goto_12

    .line 1130
    :cond_28
    nop

    .line 1121
    move/from16 v21, v19

    :goto_12
    move-object/from16 v30, v9

    move-object/from16 v9, v29

    const/16 v2, 0x4f

    .line 1121
    .end local v29    # "tracesFile":Ljava/io/File;
    .local v9, "tracesFile":Ljava/io/File;
    .local v30, "info":Ljava/lang/StringBuilder;
    const/16 v24, 0x0

    move-object/from16 v25, v4

    const/16 v26, 0x1

    move-object v4, v0

    .line 1121
    .end local v4    # "cpuInfo":Ljava/lang/String;
    .local v25, "cpuInfo":Ljava/lang/String;
    move-object/from16 v19, v5

    move-object/from16 v5, v17

    .line 1121
    .end local v5    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v19, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-wide/from16 v27, v6

    move-object v6, v15

    .line 1121
    .end local v6    # "anrTime":J
    .local v27, "anrTime":J
    move/from16 v7, v20

    move-object/from16 v20, v8

    move/from16 v8, v21

    .line 1121
    .end local v8    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v20, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    invoke-static/range {v2 .. v8}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    .line 1133
    const-string v0, "dalvik.vm.stack-trace-dir"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1134
    .local v8, "tracesDirProp":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    if-eqz v9, :cond_29

    .line 1135
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, "tracesFileName":Ljava/lang/String;
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1137
    .local v2, "p":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_29

    .line 1138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1139
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1140
    .local v3, "newTracesFileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1141
    .local v4, "newTracesFile":Ljava/io/File;
    invoke-virtual {v9, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1142
    move-object v0, v4

    .line 1147
    .end local v2    # "p":I
    .end local v3    # "newTracesFileName":Ljava/lang/String;
    .end local v4    # "newTracesFile":Ljava/io/File;
    .end local v9    # "tracesFile":Ljava/io/File;
    .local v0, "tracesFile":Ljava/io/File;
    move-object/from16 v17, v0

    goto :goto_13

    .line 1147
    .end local v0    # "tracesFile":Ljava/io/File;
    .restart local v9    # "tracesFile":Ljava/io/File;
    :cond_29
    move-object/from16 v17, v9

    .line 1147
    .end local v9    # "tracesFile":Ljava/io/File;
    .local v17, "tracesFile":Ljava/io/File;
    :goto_13
    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "anr"

    iget-object v5, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v0, 0x0

    move-object v4, v12

    move-object v6, v13

    move-object v7, v14

    move-object/from16 v21, v8

    move-object v8, v15

    .line 1147
    .end local v8    # "tracesDirProp":Ljava/lang/String;
    .local v21, "tracesDirProp":Ljava/lang/String;
    move-object/from16 v31, v30

    move-object/from16 v9, v25

    .line 1147
    .end local v30    # "info":Ljava/lang/StringBuilder;
    .local v31, "info":Ljava/lang/StringBuilder;
    move-object/from16 v18, v10

    move-object/from16 v10, v17

    .line 1147
    .end local v10    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v18, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    move-object/from16 v24, v11

    move-object v11, v0

    .line 1147
    .end local v11    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v24, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1150
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "anr"

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->feedbackAnr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_2c

    .line 1156
    :try_start_15
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_4

    .line 1157
    move-object/from16 v5, v31

    :try_start_16
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1156
    .end local v31    # "info":Ljava/lang/StringBuilder;
    .local v5, "info":Ljava/lang/StringBuilder;
    invoke-interface {v0, v2, v3, v4}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    move v2, v0

    .line 1158
    .local v2, "res":I
    if-eqz v2, :cond_2b

    .line 1159
    if-gez v2, :cond_2a

    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v3, :cond_2a

    .line 1160
    const-string v0, "anr"
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_3

    const/4 v3, 0x1

    :try_start_17
    invoke-virtual {v12, v0, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_14

    .line 1162
    :cond_2a
    const/4 v3, 0x1

    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_2

    :try_start_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1163
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1164
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :try_start_19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_2

    goto :goto_14

    :catchall_1
    move-exception v0

    :try_start_1a
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    :try_start_1b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_2

    .line 1170
    .end local v2    # "res":I
    :catch_2
    move-exception v0

    goto :goto_15

    .line 1173
    :cond_2b
    const/4 v3, 0x1

    .line 1176
    :goto_14
    const/4 v4, 0x0

    goto :goto_16

    .line 1170
    :catch_3
    move-exception v0

    const/4 v3, 0x1

    goto :goto_15

    .line 1170
    .end local v5    # "info":Ljava/lang/StringBuilder;
    .restart local v31    # "info":Ljava/lang/StringBuilder;
    :catch_4
    move-exception v0

    move-object/from16 v5, v31

    const/4 v3, 0x1

    .line 1171
    .end local v31    # "info":Ljava/lang/StringBuilder;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v5    # "info":Ljava/lang/StringBuilder;
    :goto_15
    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 1172
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1172
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_16

    .line 1176
    .end local v5    # "info":Ljava/lang/StringBuilder;
    .restart local v31    # "info":Ljava/lang/StringBuilder;
    :cond_2c
    move-object/from16 v5, v31

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1176
    .end local v31    # "info":Ljava/lang/StringBuilder;
    .restart local v5    # "info":Ljava/lang/StringBuilder;
    :goto_16
    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_1c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1177
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v6, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v7, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V

    .line 1180
    nop

    .line 1181
    if-eqz v13, :cond_2d

    iget-object v9, v13, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    goto :goto_17

    .line 1182
    :cond_2d
    move-object v9, v4

    :goto_17
    if-eqz v15, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANR "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_2e
    const-string v0, "ANR"

    .line 1183
    :goto_18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1180
    invoke-direct {v1, v12, v9, v0, v4}, Lcom/android/server/am/AppErrors;->makeAppNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    if-eqz v22, :cond_2f

    .line 1187
    const-string v0, "bg anr"

    invoke-virtual {v12, v0, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1188
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1192
    :cond_2f
    :try_start_1d
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1193
    iget-object v3, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_1e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1196
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1197
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1198
    new-instance v2, Lcom/android/server/am/AppNotRespondingDialog$Data;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    move/from16 v6, p4

    :try_start_1f
    invoke-direct {v2, v12, v13, v6}, Lcom/android/server/am/AppNotRespondingDialog$Data;-><init>(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1200
    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1201
    .end local v0    # "msg":Landroid/os/Message;
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1202
    return-void

    .line 1201
    :catchall_2
    move-exception v0

    move/from16 v6, p4

    :goto_19
    :try_start_20
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_19

    .line 1192
    :catchall_4
    move-exception v0

    move/from16 v6, p4

    :goto_1a
    :try_start_21
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_1a

    .line 1108
    .end local v17    # "tracesFile":Ljava/io/File;
    .end local v18    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v19    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v21    # "tracesDirProp":Ljava/lang/String;
    .end local v24    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v25    # "cpuInfo":Ljava/lang/String;
    .end local v27    # "anrTime":J
    .local v2, "tracesFile":Ljava/io/File;
    .local v5, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "anrTime":J
    .local v8, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v9, "info":Ljava/lang/StringBuilder;
    .restart local v10    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v11    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v26    # "cpuInfo":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v19, v5

    move-wide/from16 v27, v6

    move-object/from16 v20, v8

    move-object v5, v9

    move-object/from16 v18, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v26

    move/from16 v6, p4

    move-object v9, v2

    move-object/from16 v17, v25

    .end local v2    # "tracesFile":Ljava/io/File;
    .end local v6    # "anrTime":J
    .end local v8    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v10    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v11    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v26    # "cpuInfo":Ljava/lang/String;
    .local v5, "info":Ljava/lang/StringBuilder;
    .local v9, "tracesFile":Ljava/io/File;
    .restart local v18    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v19    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v20    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v24    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v25    # "cpuInfo":Ljava/lang/String;
    .restart local v27    # "anrTime":J
    goto :goto_1b

    .line 1108
    .end local v18    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v19    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v24    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v25    # "cpuInfo":Ljava/lang/String;
    .end local v27    # "anrTime":J
    .restart local v2    # "tracesFile":Ljava/io/File;
    .local v5, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "anrTime":J
    .restart local v8    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v9, "info":Ljava/lang/StringBuilder;
    .restart local v10    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v11    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v17, "cpuInfo":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v19, v5

    move-wide/from16 v27, v6

    move-object/from16 v20, v8

    move-object v5, v9

    move-object/from16 v18, v10

    move-object/from16 v24, v11

    move/from16 v6, p4

    move-object v9, v2

    .line 1108
    .end local v2    # "tracesFile":Ljava/io/File;
    .end local v6    # "anrTime":J
    .end local v8    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v10    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v11    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v5, "info":Ljava/lang/StringBuilder;
    .local v9, "tracesFile":Ljava/io/File;
    .restart local v18    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v19    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v20    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v24    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27    # "anrTime":J
    :goto_1b
    :try_start_22
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_1b

    .line 1016
    .end local v5    # "info":Ljava/lang/StringBuilder;
    .end local v9    # "tracesFile":Ljava/io/File;
    .end local v17    # "cpuInfo":Ljava/lang/String;
    .end local v18    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v19    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v22    # "isSilentANR":Z
    .end local v23    # "nativeProc":[Ljava/lang/String;
    .end local v24    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "anrTime":J
    .restart local v6    # "anrTime":J
    .restart local v10    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v11    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_9
    move-exception v0

    move-wide/from16 v27, v6

    move-object/from16 v18, v10

    move-object/from16 v24, v11

    move/from16 v6, p4

    .line 1016
    .end local v6    # "anrTime":J
    .end local v10    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v11    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v18    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v24    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27    # "anrTime":J
    :goto_1c
    :try_start_23
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_a
    move-exception v0

    goto :goto_1c
.end method

.method resetProcessCrashTimeLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 284
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method resetProcessCrashTimeLocked(ZII)V
    .locals 7
    .param p1, "resetEntireUser"    # Z
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 288
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 289
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "ip":I
    :goto_0
    if-ltz v1, :cond_6

    .line 290
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 291
    .local v2, "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 292
    const/4 v4, 0x0

    .line 293
    .local v4, "remove":Z
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 294
    .local v5, "entUid":I
    if-nez p1, :cond_1

    .line 295
    const/4 v6, -0x1

    if-ne p3, v6, :cond_0

    .line 296
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-ne v6, p2, :cond_2

    .line 297
    const/4 v4, 0x1

    goto :goto_2

    .line 300
    :cond_0
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 301
    const/4 v4, 0x1

    goto :goto_2

    .line 304
    :cond_1
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p3, :cond_2

    .line 305
    const/4 v4, 0x1

    .line 307
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 308
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 291
    .end local v4    # "remove":Z
    .end local v5    # "entUid":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 311
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 312
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 289
    .end local v2    # "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 315
    .end local v1    # "ip":I
    :cond_6
    return-void
.end method

.method scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "initialPid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "message"    # Ljava/lang/String;

    .line 356
    const/4 v0, 0x0

    .line 362
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    .line 363
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 364
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 365
    .local v3, "p":Lcom/android/server/am/ProcessRecord;
    if-ltz p1, :cond_0

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, p1, :cond_0

    .line 366
    goto :goto_1

    .line 368
    :cond_0
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, p2, :cond_1

    .line 369
    move-object v0, v3

    .line 370
    goto :goto_2

    .line 372
    :cond_1
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ltz p4, :cond_2

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p4, :cond_3

    .line 374
    :cond_2
    move-object v0, v3

    .line 363
    .end local v3    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    .end local v2    # "i":I
    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    if-nez v0, :cond_5

    .line 380
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crashApplication: nothing for uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " initialPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void

    .line 387
    :cond_5
    invoke-virtual {v0, p5}, Lcom/android/server/am/ProcessRecord;->scheduleCrash(Ljava/lang/String;)V

    .line 388
    return-void

    .line 377
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 599
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 601
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 602
    .local v3, "userId":I
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, v3, :cond_0

    .line 603
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4, v5, v6}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 601
    .end local v3    # "userId":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 608
    return-void
.end method

.method stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 871
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 872
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 875
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .locals 32
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "dumpPackage"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 121
    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    return-void

    .line 125
    :cond_0
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 126
    .local v3, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 127
    .local v5, "now":J
    const-wide v7, 0x10300000001L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 129
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    const/16 v16, 0x0

    if-nez v7, :cond_5

    .line 130
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 131
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 132
    .local v8, "procCount":I
    move/from16 v9, v16

    .local v9, "ip":I
    :goto_0
    if-ge v9, v8, :cond_5

    .line 133
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 134
    .local v10, "ctoken":J
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Ljava/lang/String;

    .line 135
    .local v14, "pname":Ljava/lang/String;
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 136
    .local v15, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    move-wide/from16 v18, v5

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 138
    .local v5, "uidCount":I
    .local v18, "now":J
    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 139
    move/from16 v6, v16

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_4

    .line 140
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 141
    .local v12, "puid":I
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v14, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 142
    .local v13, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_2

    if-eqz v13, :cond_1

    move/from16 v20, v5

    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .end local v5    # "uidCount":I
    .local v20, "uidCount":I
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 143
    nop

    .line 139
    move-wide/from16 v25, v3

    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v14

    goto :goto_2

    .end local v12    # "puid":I
    .end local v13    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v20    # "uidCount":I
    .restart local v5    # "uidCount":I
    :cond_1
    move/from16 v20, v5

    move-wide/from16 v25, v3

    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v14

    .end local v5    # "uidCount":I
    .restart local v20    # "uidCount":I
    goto :goto_2

    .line 145
    .end local v20    # "uidCount":I
    .restart local v5    # "uidCount":I
    .restart local v12    # "puid":I
    .restart local v13    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_2
    move/from16 v20, v5

    .end local v5    # "uidCount":I
    .restart local v20    # "uidCount":I
    :cond_3
    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v24, v13

    move-object/from16 v23, v14

    const-wide v7, 0x20b00000002L

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 146
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "procCount":I
    .end local v14    # "pname":Ljava/lang/String;
    .local v13, "etoken":J
    .local v21, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v22, "procCount":I
    .local v23, "pname":Ljava/lang/String;
    .local v24, "r":Lcom/android/server/am/ProcessRecord;
    const-wide v7, 0x10500000001L

    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 147
    nop

    .line 148
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 147
    move-wide/from16 v25, v3

    const-wide v3, 0x10300000002L

    invoke-virtual {v1, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 149
    .end local v3    # "token":J
    .local v25, "token":J
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 139
    .end local v12    # "puid":I
    .end local v13    # "etoken":J
    .end local v24    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v14, v23

    move-wide/from16 v3, v25

    const-wide v12, 0x10900000001L

    goto :goto_1

    .line 151
    .end local v6    # "i":I
    .end local v20    # "uidCount":I
    .end local v21    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v22    # "procCount":I
    .end local v23    # "pname":Ljava/lang/String;
    .end local v25    # "token":J
    .restart local v3    # "token":J
    .restart local v5    # "uidCount":I
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "procCount":I
    .restart local v14    # "pname":Ljava/lang/String;
    :cond_4
    move-wide/from16 v25, v3

    move/from16 v20, v5

    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v14

    .end local v3    # "token":J
    .end local v5    # "uidCount":I
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "procCount":I
    .end local v14    # "pname":Ljava/lang/String;
    .restart local v20    # "uidCount":I
    .restart local v21    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v22    # "procCount":I
    .restart local v23    # "pname":Ljava/lang/String;
    .restart local v25    # "token":J
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 132
    .end local v10    # "ctoken":J
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v20    # "uidCount":I
    .end local v23    # "pname":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v5, v18

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    goto/16 :goto_0

    .line 156
    .end local v9    # "ip":I
    .end local v18    # "now":J
    .end local v21    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v22    # "procCount":I
    .end local v25    # "token":J
    .restart local v3    # "token":J
    .local v5, "now":J
    :cond_5
    move-wide/from16 v25, v3

    move-wide/from16 v18, v5

    .end local v3    # "token":J
    .end local v5    # "now":J
    .restart local v18    # "now":J
    .restart local v25    # "token":J
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 157
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 158
    .local v3, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 159
    .local v4, "processCount":I
    move/from16 v5, v16

    .local v5, "ip":I
    :goto_3
    if-ge v5, v4, :cond_9

    .line 160
    const-wide v6, 0x20b00000003L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 161
    .local v6, "btoken":J
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 162
    .local v8, "pname":Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 163
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 165
    .local v10, "uidCount":I
    const-wide v11, 0x10900000001L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 166
    move/from16 v13, v16

    .local v13, "i":I
    :goto_4
    if-ge v13, v10, :cond_8

    .line 167
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 168
    .local v14, "puid":I
    iget-object v15, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v15, v8, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 169
    .local v15, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_7

    if-eqz v15, :cond_6

    iget-object v11, v15, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 170
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 171
    nop

    .line 166
    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v8    # "pname":Ljava/lang/String;
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v14    # "puid":I
    .end local v15    # "r":Lcom/android/server/am/ProcessRecord;
    .local v27, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v28, "pname":Ljava/lang/String;
    .local v29, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_6
    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const-wide v14, 0x10300000002L

    goto :goto_5

    .line 173
    .end local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v28    # "pname":Ljava/lang/String;
    .end local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v8    # "pname":Ljava/lang/String;
    .restart local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v14    # "puid":I
    .restart local v15    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_7
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 174
    .local v11, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const-wide v2, 0x20b00000002L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 175
    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v8, "etoken":J
    .restart local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v28    # "pname":Ljava/lang/String;
    .restart local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    const-wide v2, 0x10500000001L

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 176
    iget-wide v2, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move/from16 v30, v14

    move-object/from16 v31, v15

    const-wide v14, 0x10300000002L

    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 177
    .end local v14    # "puid":I
    .end local v15    # "r":Lcom/android/server/am/ProcessRecord;
    .local v30, "puid":I
    .local v31, "r":Lcom/android/server/am/ProcessRecord;
    const-wide v2, 0x10900000003L

    iget-object v12, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 178
    const-wide v2, 0x10900000004L

    iget-object v12, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 179
    const-wide v2, 0x10900000005L

    iget-object v12, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 180
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 166
    .end local v8    # "etoken":J
    .end local v11    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    .end local v30    # "puid":I
    .end local v31    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    move-object/from16 v2, p4

    const-wide v11, 0x10900000001L

    goto/16 :goto_4

    .line 182
    .end local v13    # "i":I
    .end local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v28    # "pname":Ljava/lang/String;
    .end local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v8, "pname":Ljava/lang/String;
    .restart local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_8
    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const-wide v14, 0x10300000002L

    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v8    # "pname":Ljava/lang/String;
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v28    # "pname":Ljava/lang/String;
    .restart local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 159
    .end local v6    # "btoken":J
    .end local v10    # "uidCount":I
    .end local v28    # "pname":Ljava/lang/String;
    .end local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p4

    goto/16 :goto_3

    .line 186
    .end local v4    # "processCount":I
    .end local v5    # "ip":I
    .end local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    :cond_9
    move-wide/from16 v2, v25

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 187
    .end local v25    # "token":J
    .local v2, "token":J
    return-void
.end method
