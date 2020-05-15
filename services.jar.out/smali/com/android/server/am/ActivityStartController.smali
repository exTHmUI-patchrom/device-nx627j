.class public Lcom/android/server/am/ActivityStartController;
.super Ljava/lang/Object;
.source "ActivityStartController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStartController$StartHandler;
    }
.end annotation


# static fields
.field private static final DO_PENDING_ACTIVITY_LAUNCHES_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mFactory:Lcom/android/server/am/ActivityStarter$Factory;

.field private final mHandler:Landroid/os/Handler;

.field private mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

.field private mLastHomeActivityStartResult:I

.field private mLastStarter:Lcom/android/server/am/ActivityStarter;

.field private final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private tmpOutRecord:[Lcom/android/server/am/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 115
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v1, Lcom/android/server/am/ActivityStarter$DefaultFactory;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v3, Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v4, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {v3, p1, v4}, Lcom/android/server/am/ActivityStartInterceptor;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/am/ActivityStarter$DefaultFactory;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStartInterceptor;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStartController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStarter$Factory;)V

    .line 118
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStarter$Factory;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "factory"    # Lcom/android/server/am/ActivityStarter$Factory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->tmpOutRecord:[Lcom/android/server/am/ActivityRecord;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    .line 123
    iput-object p1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 124
    iput-object p2, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 125
    new-instance v0, Lcom/android/server/am/ActivityStartController$StartHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStartController$StartHandler;-><init>(Lcom/android/server/am/ActivityStartController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    .line 126
    iput-object p3, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    .line 127
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/am/ActivityStarter$Factory;->setController(Lcom/android/server/am/ActivityStartController;)V

    .line 128
    new-instance v0, Lcom/android/server/am/PendingRemoteAnimationRegistry;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/PendingRemoteAnimationRegistry;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStartController;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStartController;

    .line 63
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method


# virtual methods
.method addPendingActivityLaunch(Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;)V
    .locals 1
    .param p1, "launch"    # Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 421
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    return-void
.end method

.method checkTargetUser(IZIILjava/lang/String;)I
    .locals 9
    .param p1, "targetUserId"    # I
    .param p2, "validateIncomingUser"    # Z
    .param p3, "realCallingPid"    # I
    .param p4, "realCallingUid"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 239
    if-eqz p2, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    move v2, p3

    move v3, p4

    move v4, p1

    move-object v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    .line 244
    return p1
.end method

.method clearPendingActivityLaunches(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 427
    .local v0, "pendingLaunches":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "palNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 428
    iget-object v2, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 429
    .local v2, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v3, v2, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    .line 430
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 431
    iget-object v4, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 427
    .end local v2    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 434
    .end local v1    # "palNdx":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method doPendingActivityLaunches(Z)V
    .locals 12
    .param p1, "doResume"    # Z

    .line 405
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 407
    .local v0, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    move v8, v1

    .line 408
    .local v8, "resume":Z
    const/4 v1, 0x0

    const-string/jumbo v2, "pendingActivityLaunch"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 411
    .local v2, "starter":Lcom/android/server/am/ActivityStarter;
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityStarter;->startResolvedActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    goto :goto_1

    .line 413
    :catch_0
    move-exception v1

    .line 414
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during pending activity launch pal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sendErrorResult(Ljava/lang/String;)V

    .line 417
    .end local v0    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "starter":Lcom/android/server/am/ActivityStarter;
    .end local v8    # "resume":Z
    :goto_1
    goto :goto_0

    .line 418
    :cond_1
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 447
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 448
    const-string/jumbo v0, "mLastHomeActivityStartResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    iget v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 451
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 453
    const-string/jumbo v0, "mLastHomeActivityStartRecord:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 457
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 459
    .local v2, "dumpPackagePresent":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    if-eqz v3, :cond_4

    .line 460
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    .line 461
    invoke-virtual {v3, p3}, Lcom/android/server/am/ActivityStarter;->relatedToPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 463
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    .line 465
    .local v0, "dump":Z
    :goto_2
    if-eqz v0, :cond_4

    .line 466
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/server/am/ActivityStarter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 469
    if-eqz v2, :cond_4

    .line 470
    return-void

    .line 475
    .end local v0    # "dump":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 476
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 477
    const-string v0, "(nothing)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    :cond_5
    return-void
.end method

.method getPendingRemoteAnimationRegistry()Lcom/android/server/am/PendingRemoteAnimationRegistry;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    return-object v0
.end method

.method obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "reason"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/am/ActivityStarter$Factory;->obtain()Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStarter;->setIntent(Landroid/content/Intent;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStarter;->setReason(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method onExecutionComplete(Lcom/android/server/am/ActivityStarter;)V
    .locals 1
    .param p1, "starter"    # Lcom/android/server/am/ActivityStarter;

    .line 142
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/am/ActivityStarter$Factory;->obtain()Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStarter;->set(Lcom/android/server/am/ActivityStarter;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0, p1}, Lcom/android/server/am/ActivityStarter$Factory;->recycle(Lcom/android/server/am/ActivityStarter;)V

    .line 148
    return-void
.end method

.method postStartActivityProcessingForLastStarter(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .line 156
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    .line 161
    return-void
.end method

.method registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 439
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/PendingRemoteAnimationRegistry;->addPendingAnimation(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    .line 440
    return-void
.end method

.method schedulePendingActivityLaunches(J)V
    .locals 2
    .param p1, "delayMs"    # J

    .line 399
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 401
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 402
    return-void
.end method

.method startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;)I
    .locals 33
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p8, "userId"    # I
    .param p9, "reason"    # Ljava/lang/String;
    .param p10, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 303
    if-eqz v3, :cond_f

    .line 306
    if-eqz v4, :cond_e

    .line 309
    array-length v0, v3

    array-length v5, v4

    if-ne v0, v5, :cond_d

    .line 313
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 314
    .local v5, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 317
    .local v6, "realCallingUid":I
    const/4 v0, -0x1

    if-ltz p2, :cond_0

    .line 318
    const/4 v8, -0x1

    .line 323
    .local v8, "callingPid":I
    move/from16 v7, p2

    goto :goto_0

    .line 319
    .end local v8    # "callingPid":I
    :cond_0
    if-nez v2, :cond_1

    .line 320
    move v8, v5

    .line 321
    .restart local v8    # "callingPid":I
    move v7, v6

    .line 321
    .end local p2    # "callingUid":I
    .local v7, "callingUid":I
    goto :goto_0

    .line 323
    .end local v7    # "callingUid":I
    .end local v8    # "callingPid":I
    .restart local p2    # "callingUid":I
    :cond_1
    move v7, v0

    .line 323
    .end local p2    # "callingUid":I
    .restart local v7    # "callingUid":I
    move v8, v0

    .line 325
    .restart local v8    # "callingPid":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 327
    .local v9, "origId":J
    :try_start_0
    iget-object v11, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 328
    const/4 v12, 0x1

    new-array v13, v12, [Lcom/android/server/am/ActivityRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 329
    .local v13, "outActivity":[Lcom/android/server/am/ActivityRecord;
    move-object/from16 v14, p6

    const/4 v15, 0x0

    .line 329
    .end local p6    # "resultTo":Landroid/os/IBinder;
    .local v14, "resultTo":Landroid/os/IBinder;
    .local v15, "i":I
    :goto_1
    :try_start_2
    array-length v0, v3

    if-ge v15, v0, :cond_c

    .line 330
    aget-object v0, v3, v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 331
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_2

    .line 332
    nop

    .line 329
    move-wide v2, v9

    move-object v1, v13

    move-object/from16 v13, p9

    goto/16 :goto_8

    .line 336
    :cond_2
    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v18

    if-nez v18, :cond_3

    .line 340
    move-wide/from16 v19, v9

    goto :goto_2

    .line 337
    :cond_3
    new-instance v12, Ljava/lang/IllegalArgumentException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide/from16 v19, v9

    :try_start_4
    const-string v9, "File descriptors passed in Intent"

    .line 337
    .end local v9    # "origId":J
    .local v19, "origId":J
    invoke-direct {v12, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 390
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v13    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v15    # "i":I
    :catchall_0
    move-exception v0

    move-object/from16 v13, p9

    move-wide/from16 v2, v19

    goto/16 :goto_a

    .line 390
    .end local v19    # "origId":J
    .restart local v9    # "origId":J
    :catchall_1
    move-exception v0

    move-object/from16 v13, p9

    move-wide v2, v9

    .line 390
    .end local v9    # "origId":J
    .restart local v19    # "origId":J
    goto/16 :goto_a

    .line 340
    .end local v19    # "origId":J
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v9    # "origId":J
    .restart local v13    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v15    # "i":I
    :cond_4
    move-wide/from16 v19, v9

    .line 340
    .end local v9    # "origId":J
    .restart local v19    # "origId":J
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_5

    move v9, v12

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    .line 343
    .local v9, "componentSpecified":Z
    :goto_3
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v10

    .line 346
    iget-object v10, v1, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    aget-object v23, v4, v15

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v12, -0x2710

    .line 347
    invoke-static {v7, v6, v12}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v27

    .line 346
    move-object/from16 v21, v10

    move-object/from16 v22, v0

    move/from16 v26, p8

    invoke-virtual/range {v21 .. v27}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    .line 350
    .local v10, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v12, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v28, v13

    move/from16 v13, p8

    invoke-virtual {v12, v10, v13}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 350
    .end local v13    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .local v28, "outActivity":[Lcom/android/server/am/ActivityRecord;
    move-object v10, v12

    .line 352
    if-eqz v10, :cond_7

    :try_start_6
    iget-object v12, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_6

    goto :goto_4

    .line 355
    :cond_6
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 359
    :cond_7
    :goto_4
    :try_start_7
    array-length v12, v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-ne v15, v12, :cond_8

    move v12, v13

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    .line 360
    .local v12, "top":Z
    :goto_5
    const/16 v18, 0x0

    if-eqz v12, :cond_9

    .line 361
    nop

    .line 362
    move-object/from16 v21, p7

    goto :goto_6

    :cond_9
    move-object/from16 v21, v18

    :goto_6
    move-object/from16 v29, v21

    .line 363
    .local v29, "checkedOptions":Lcom/android/server/am/SafeActivityOptions;
    move-object/from16 v13, p9

    :try_start_8
    invoke-virtual {v1, v0, v13}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v3

    .line 364
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStarter;

    move-result-object v3

    move-object/from16 v30, v0

    aget-object v0, v4, v15

    .line 365
    .end local v0    # "intent":Landroid/content/Intent;
    .local v30, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 366
    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 367
    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 368
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStarter;->setRequestCode(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 369
    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStarter;->setCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 370
    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 371
    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 372
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 373
    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 374
    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 375
    .end local v29    # "checkedOptions":Lcom/android/server/am/SafeActivityOptions;
    .local v1, "checkedOptions":Lcom/android/server/am/SafeActivityOptions;
    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 376
    move-object/from16 v31, v1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setOutActivity([Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 380
    .end local v28    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .local v1, "outActivity":[Lcom/android/server/am/ActivityRecord;
    .local v31, "checkedOptions":Lcom/android/server/am/SafeActivityOptions;
    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityStarter;->setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 381
    move-object/from16 v2, p10

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v0

    .line 384
    .local v0, "res":I
    if-gez v0, :cond_a

    .line 385
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 392
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-wide/from16 v2, v19

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 385
    .end local v19    # "origId":J
    .local v2, "origId":J
    return v0

    .line 388
    .end local v2    # "origId":J
    .restart local v19    # "origId":J
    :cond_a
    move-wide/from16 v2, v19

    .line 388
    .end local v19    # "origId":J
    .restart local v2    # "origId":J
    const/16 v16, 0x0

    :try_start_9
    aget-object v17, v1, v16

    if-eqz v17, :cond_b

    move/from16 v32, v0

    aget-object v0, v1, v16

    .line 388
    .end local v0    # "res":I
    .local v32, "res":I
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    goto :goto_7

    .line 388
    .end local v32    # "res":I
    .restart local v0    # "res":I
    :cond_b
    move/from16 v32, v0

    .line 388
    .end local v0    # "res":I
    .restart local v32    # "res":I
    move-object/from16 v0, v18

    :goto_7
    move-object v14, v0

    .line 329
    .end local v9    # "componentSpecified":Z
    .end local v10    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v12    # "top":Z
    .end local v30    # "intent":Landroid/content/Intent;
    .end local v31    # "checkedOptions":Lcom/android/server/am/SafeActivityOptions;
    .end local v32    # "res":I
    :goto_8
    add-int/lit8 v15, v15, 0x1

    move-object v13, v1

    move-wide v9, v2

    const/4 v0, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    const/4 v12, 0x1

    goto/16 :goto_1

    .line 390
    .end local v1    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v2    # "origId":J
    .end local v15    # "i":I
    .restart local v19    # "origId":J
    :catchall_2
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object/from16 v13, p9

    :goto_9
    move-wide/from16 v2, v19

    .line 390
    .end local v19    # "origId":J
    .restart local v2    # "origId":J
    goto :goto_a

    .line 390
    .end local v2    # "origId":J
    .local v9, "origId":J
    :cond_c
    move-object/from16 v13, p9

    move-wide v2, v9

    .line 390
    .end local v9    # "origId":J
    .restart local v2    # "origId":J
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 392
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 393
    nop

    .line 395
    const/4 v0, 0x0

    return v0

    .line 390
    .end local v2    # "origId":J
    .restart local v9    # "origId":J
    :catchall_4
    move-exception v0

    move-object/from16 v13, p9

    move-wide v2, v9

    goto :goto_a

    .line 390
    .end local v14    # "resultTo":Landroid/os/IBinder;
    .restart local p6    # "resultTo":Landroid/os/IBinder;
    :catchall_5
    move-exception v0

    move-object/from16 v13, p9

    move-wide v2, v9

    move-object/from16 v14, p6

    .line 390
    .end local v9    # "origId":J
    .end local p6    # "resultTo":Landroid/os/IBinder;
    .restart local v2    # "origId":J
    .restart local v14    # "resultTo":Landroid/os/IBinder;
    :goto_a
    :try_start_b
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 392
    :catchall_6
    move-exception v0

    goto :goto_b

    .line 390
    :catchall_7
    move-exception v0

    goto :goto_a

    .line 392
    .end local v2    # "origId":J
    .end local v14    # "resultTo":Landroid/os/IBinder;
    .restart local v9    # "origId":J
    .restart local p6    # "resultTo":Landroid/os/IBinder;
    :catchall_8
    move-exception v0

    move-object/from16 v13, p9

    move-wide v2, v9

    move-object/from16 v14, p6

    .line 392
    .end local v9    # "origId":J
    .end local p6    # "resultTo":Landroid/os/IBinder;
    .restart local v2    # "origId":J
    .restart local v14    # "resultTo":Landroid/os/IBinder;
    :goto_b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 310
    .end local v2    # "origId":J
    .end local v5    # "realCallingPid":I
    .end local v6    # "realCallingUid":I
    .end local v7    # "callingUid":I
    .end local v8    # "callingPid":I
    .end local v14    # "resultTo":Landroid/os/IBinder;
    .restart local p2    # "callingUid":I
    .restart local p6    # "resultTo":Landroid/os/IBinder;
    :cond_d
    move-object/from16 v13, p9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "intents are length different than resolvedTypes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_e
    move-object/from16 v13, p9

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "resolvedTypes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_f
    move-object/from16 v13, p9

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "intents is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final startActivitiesInPackage(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;)I
    .locals 18
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intents"    # [Landroid/content/Intent;
    .param p4, "resolvedTypes"    # [Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p7, "userId"    # I
    .param p8, "validateIncomingUser"    # Z
    .param p9, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;

    .line 290
    const-string/jumbo v0, "startActivityInPackage"

    .line 292
    .local v0, "reason":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 293
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const-string/jumbo v6, "startActivityInPackage"

    .line 292
    move-object/from16 v1, p0

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v1

    .line 296
    .end local p7    # "userId":I
    .local v1, "userId":I
    const-string/jumbo v16, "startActivityInPackage"

    const/4 v8, 0x0

    move-object/from16 v7, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move v15, v1

    move-object/from16 v17, p9

    invoke-virtual/range {v7 .. v17}, Lcom/android/server/am/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;)I

    move-result v2

    return v2
.end method

.method final startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;)I
    .locals 17
    .param p1, "uid"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "resultWho"    # Ljava/lang/String;
    .param p9, "requestCode"    # I
    .param p10, "startFlags"    # I
    .param p11, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p12, "userId"    # I
    .param p13, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p14, "reason"    # Ljava/lang/String;
    .param p15, "validateIncomingUser"    # Z
    .param p16, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;

    .line 254
    move-object/from16 v0, p0

    move/from16 v1, p12

    move/from16 v2, p15

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v0

    .line 258
    .end local p12    # "userId":I
    .local v0, "userId":I
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p14

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 259
    move/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 260
    move/from16 v6, p2

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 261
    move/from16 v7, p3

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 262
    move-object/from16 v8, p4

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 263
    move-object/from16 v9, p6

    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 264
    move-object/from16 v10, p7

    invoke-virtual {v4, v10}, Lcom/android/server/am/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 265
    move-object/from16 v11, p8

    invoke-virtual {v4, v11}, Lcom/android/server/am/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 266
    move/from16 v12, p9

    invoke-virtual {v4, v12}, Lcom/android/server/am/ActivityStarter;->setRequestCode(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 267
    move/from16 v13, p10

    invoke-virtual {v4, v13}, Lcom/android/server/am/ActivityStarter;->setStartFlags(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 268
    move-object/from16 v14, p11

    invoke-virtual {v4, v14}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 269
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStarter;->setMayWait(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 270
    move-object/from16 v15, p13

    invoke-virtual {v4, v15}, Lcom/android/server/am/ActivityStarter;->setInTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 271
    move/from16 v16, v0

    move-object/from16 v0, p16

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 272
    .end local v0    # "userId":I
    .local v16, "userId":I
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v4

    .line 258
    return v4
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "reason"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p3}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startHomeActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->tmpOutRecord:[Lcom/android/server/am/ActivityRecord;

    .line 167
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setOutActivity([Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 168
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartResult:I

    .line 171
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->tmpOutRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    .line 172
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 178
    :cond_0
    return-void
.end method

.method startSetupActivity()V
    .locals 10

    .line 185
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCheckedForSetup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const-string v1, "device_provisioned"

    .line 194
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setCheckedForSetup(Z)V

    .line 199
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UPGRADE_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v4, 0x100480

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 204
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 205
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 206
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    .line 207
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.SETUP_VERSION"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 208
    :cond_1
    const/4 v5, 0x0

    .line 209
    .local v5, "vers":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_2

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    .line 210
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "android.SETUP_VERSION"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 213
    :cond_2
    const-string/jumbo v6, "last_setup_shown"

    invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, "lastVers":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 216
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 219
    const-string/jumbo v7, "startSetupActivity"

    invoke-virtual {p0, v1, v7}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v7

    .line 220
    invoke-virtual {v7, v3}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v3

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 221
    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v3

    .line 222
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStarter;->execute()I

    .line 226
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "vers":Ljava/lang/String;
    .end local v6    # "lastVers":Ljava/lang/String;
    :cond_3
    return-void
.end method
