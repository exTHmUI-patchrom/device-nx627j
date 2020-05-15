.class Lcom/android/server/am/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStarter$Request;,
        Lcom/android/server/am/ActivityStarter$DefaultFactory;,
        Lcom/android/server/am/ActivityStarter$Factory;
    }
.end annotation


# static fields
.field private static final INVALID_LAUNCH_MODE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAddingToTask:Z

.field private mAvoidMoveToFront:Z

.field private mCallingUid:I

.field private final mController:Lcom/android/server/am/ActivityStartController;

.field private mDoResume:Z

.field private mGameBinderLauch:Landroid/os/IBinder;

.field private mInTask:Lcom/android/server/am/TaskRecord;

.field private mIntent:Landroid/content/Intent;

.field private mIntentDelivered:Z

.field private final mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

.field private mKeepCurTransition:Z

.field private final mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

.field private mLastStartActivityResult:I

.field private mLastStartActivityTimeMs:J

.field private mLastStartReason:Ljava/lang/String;

.field private mLaunchFlags:I

.field private mLaunchMode:I

.field private mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

.field private mLaunchTaskBehind:Z

.field private mMovedToFront:Z

.field private mNewTaskInfo:Landroid/content/pm/ActivityInfo;

.field private mNewTaskIntent:Landroid/content/Intent;

.field private mNoAnimation:Z

.field private mNotTop:Lcom/android/server/am/ActivityRecord;

.field private mOptions:Landroid/app/ActivityOptions;

.field public mPerf:Landroid/util/BoostFramework;

.field private mPreferredDisplayId:I

.field private mRequest:Lcom/android/server/am/ActivityStarter$Request;

.field private mReuseTask:Lcom/android/server/am/TaskRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSourceRecord:Lcom/android/server/am/ActivityRecord;

.field private mSourceStack:Lcom/android/server/am/ActivityStack;

.field private mStartActivity:Lcom/android/server/am/ActivityRecord;

.field private mStartFlags:I

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mTargetStack:Lcom/android/server/am/ActivityStack;

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field private mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStartController;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStartInterceptor;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/server/am/ActivityStartController;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p4, "interceptor"    # Lcom/android/server/am/ActivityStartInterceptor;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 208
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    .line 224
    new-instance v1, Lcom/android/server/am/ActivityStarter$Request;

    invoke-direct {v1}, Lcom/android/server/am/ActivityStarter$Request;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    .line 446
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    .line 447
    iput-object p2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 448
    iput-object p3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 449
    iput-object p4, p0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    .line 450
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStarter;->reset(Z)V

    .line 451
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 452
    return-void
.end method

.method private acquirePerformanceLock(ZLjava/lang/String;)V
    .locals 4
    .param p1, "isInGameLaunchWhiteList"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1967
    if-eqz p1, :cond_0

    .line 1968
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mGameBinderLauch:Landroid/os/IBinder;

    .line 1969
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mGameBinderLauch:Landroid/os/IBinder;

    const/16 v1, 0x8

    const-wide/16 v2, 0x7530

    invoke-static {v0, p2, v1, v2, v3}, Landroid/os/BSPApplicationManager$Trigger;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 1974
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mGameBinderLauch:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 1975
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mGameBinderLauch:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/BSPApplicationManager$Trigger;->releasePerformanceLock(Landroid/os/IBinder;)V

    .line 1977
    :cond_1
    :goto_0
    return-void
.end method

.method private addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 2
    .param p1, "parent"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2830
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2833
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    goto :goto_1

    .line 2831
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    .line 2835
    :goto_1
    return-void
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchSingleInstance"    # Z
    .param p3, "launchSingleTask"    # Z
    .param p4, "launchFlags"    # I

    .line 2839
    const/high16 v0, 0x80000

    and-int v1, p4, v0

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 2842
    :cond_0
    const-string v0, "ActivityManager"

    const-string v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    const v0, -0x8080001

    and-int/2addr p4, v0

    goto :goto_0

    .line 2847
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2857
    :pswitch_0
    const v0, -0x8000001

    and-int/2addr p4, v0

    goto :goto_0

    .line 2854
    :pswitch_1
    or-int/2addr p4, v0

    .line 2855
    goto :goto_0

    .line 2851
    :pswitch_2
    or-int/2addr p4, v0

    .line 2852
    goto :goto_0

    .line 2849
    :pswitch_3
    nop

    .line 2861
    :goto_0
    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private canLaunchIntoFocusedStack(Lcom/android/server/am/ActivityRecord;Z)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z

    .line 2925
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 2927
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isActivityTypeAssistant()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2928
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v1

    .local v1, "canUseFocusedStack":Z
    goto :goto_0

    .line 2930
    .end local v1    # "canUseFocusedStack":Z
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    .line 2949
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 2950
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 2944
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->supportsFreeform()Z

    move-result v1

    .line 2945
    .restart local v1    # "canUseFocusedStack":Z
    goto :goto_0

    .line 2940
    .end local v1    # "canUseFocusedStack":Z
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    .line 2941
    .restart local v1    # "canUseFocusedStack":Z
    goto :goto_0

    .line 2935
    .end local v1    # "canUseFocusedStack":Z
    :cond_2
    const/4 v1, 0x1

    .line 2936
    .restart local v1    # "canUseFocusedStack":Z
    nop

    .line 2950
    :goto_0
    nop

    .line 2953
    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    iget v5, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-ne v4, v5, :cond_3

    move v2, v3

    nop

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private computeLaunchingTaskFlags()V
    .locals 10

    .line 2155
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/high16 v4, 0x10000000

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2156
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2157
    .local v0, "baseIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 2158
    .local v5, "root":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_5

    .line 2166
    invoke-direct {p0, v3, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2167
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2172
    if-nez v5, :cond_0

    goto :goto_0

    .line 2173
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2174
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller with mInTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but target is singleInstance/Task"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2168
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2169
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to launch singleInstance/Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " into different task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2181
    :cond_2
    :goto_0
    if-nez v5, :cond_3

    .line 2182
    const v6, 0x18082000

    .line 2184
    .local v6, "flagsOfInterest":I
    iget v7, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v8, -0x18082001

    and-int/2addr v7, v8

    .line 2185
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const v9, 0x18082000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 2186
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v8, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2187
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7, v8}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2188
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2193
    .end local v6    # "flagsOfInterest":I
    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_4

    .line 2194
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_1

    .line 2197
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2200
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 2201
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v5    # "root":Lcom/android/server/am/ActivityRecord;
    goto :goto_2

    .line 2159
    .restart local v0    # "baseIntent":Landroid/content/Intent;
    .restart local v5    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching into task without base intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2202
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v5    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 2208
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 2209
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2210
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2214
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_b

    .line 2215
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_9

    .line 2218
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v4

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_b

    .line 2219
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_3

    .line 2223
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-ne v0, v3, :cond_a

    .line 2227
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_3

    .line 2228
    :cond_a
    invoke-direct {p0, v3, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2231
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 2234
    :cond_b
    :goto_3
    return-void
.end method

.method static computeResolveFilterUid(III)I
    .locals 1
    .param p0, "customCallingUid"    # I
    .param p1, "actualCallingUid"    # I
    .param p2, "filterCallingUid"    # I

    .line 1650
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_0

    .line 1651
    nop

    .line 1650
    move v0, p2

    goto :goto_0

    .line 1652
    :cond_0
    if-ltz p0, :cond_1

    .line 1650
    move v0, p0

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method private computeSourceStack()V
    .locals 5

    .line 2237
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2238
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 2239
    return-void

    .line 2241
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    .line 2242
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 2243
    return-void

    .line 2250
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 2251
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity called from finishing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 2254
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 2260
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2261
    .local v0, "sourceTask":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 2263
    .end local v0    # "sourceTask":Lcom/android/server/am/TaskRecord;
    :cond_3
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 2264
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 2265
    return-void
.end method

.method private computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "launchFlags"    # I
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    .line 2866
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2867
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-direct {p0, p1, p3, v0, p4}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2868
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_0

    .line 2869
    return-object v1

    .line 2872
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2873
    .local v2, "currentStack":Lcom/android/server/am/ActivityStack;
    :goto_0
    if-eqz v2, :cond_2

    .line 2874
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 2883
    return-object v2

    .line 2886
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStarter;->canLaunchIntoFocusedStack(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2889
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v3

    .line 2892
    :cond_3
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v3, :cond_4

    .line 2894
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2895
    if-nez v1, :cond_4

    .line 2900
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v3, p1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2903
    :cond_4
    if-nez v1, :cond_7

    .line 2905
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    .line 2906
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_6

    .line 2907
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2908
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2911
    return-object v1

    .line 2906
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2915
    .end local v4    # "stackNdx":I
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p1, p4, v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2919
    .end local v3    # "display":Lcom/android/server/am/ActivityDisplay;
    :cond_7
    return-object v1
.end method

.method private createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 20
    .param p1, "auxiliaryResponse"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "originalIntent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "verificationBundle"    # Landroid/os/Bundle;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "userId"    # I

    move-object/from16 v7, p1

    .line 1118
    if-eqz v7, :cond_0

    iget-boolean v0, v7, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_0

    .line 1120
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    move-object v1, v7

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 1124
    :cond_0
    move-object/from16 v8, p0

    .line 1126
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    .line 1127
    const/4 v0, 0x0

    if-nez v7, :cond_1

    .line 1132
    move-object v11, v0

    goto :goto_1

    .line 1127
    :cond_1
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 1132
    move-object v11, v1

    :goto_1
    if-nez v7, :cond_2

    .line 1133
    move-object/from16 v16, v0

    goto :goto_2

    .line 1132
    :cond_2
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    .line 1133
    move-object/from16 v16, v1

    :goto_2
    if-nez v7, :cond_3

    move-object/from16 v17, v0

    goto :goto_3

    :cond_3
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    move-object/from16 v17, v1

    :goto_3
    if-eqz v7, :cond_4

    iget-boolean v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 1135
    :goto_4
    move/from16 v18, v1

    if-nez v7, :cond_5

    .line 1124
    :goto_5
    move-object/from16 v19, v0

    goto :goto_6

    .line 1135
    :cond_5
    iget-object v0, v7, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    goto :goto_5

    .line 1124
    :goto_6
    move-object/from16 v9, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    invoke-static/range {v9 .. v19}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .line 2632
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_0

    .line 2633
    return-void

    .line 2636
    :cond_0
    const/16 v0, 0x7533

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2637
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 2639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    .line 2640
    return-void
.end method

.method static getExternalResult(I)I
    .locals 1
    .param p0, "result"    # I

    .line 595
    const/16 v0, 0x66

    if-eq p0, v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    .line 2961
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    .line 2962
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0

    .line 2965
    :cond_0
    and-int/lit16 v0, p2, 0x1000

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2977
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 2979
    .local v0, "parentStack":Lcom/android/server/am/ActivityStack;
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, v1, :cond_3

    .line 2981
    return-object v0

    .line 2983
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne p3, v1, :cond_4

    .line 2986
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v1

    .line 2989
    :cond_4
    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2992
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivityType(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I

    move-result v2

    .line 2993
    .local v2, "activityType":I
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2999
    .end local v2    # "activityType":I
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 3000
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 3001
    .local v2, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3003
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1, p4, p3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    .line 3005
    :cond_6
    return-object v2

    .line 2970
    .end local v0    # "parentStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "dockedStack":Lcom/android/server/am/ActivityStack;
    :cond_7
    :goto_1
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    :goto_2
    move v6, v0

    goto :goto_3

    :cond_8
    const/4 v0, -0x1

    goto :goto_2

    .line 2971
    .local v6, "candidateDisplay":I
    :goto_3
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x1

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZI)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method private getPreferedDisplayId(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)I
    .locals 5
    .param p1, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "startingActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "options"    # Landroid/app/ActivityOptions;

    .line 2317
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 2318
    return v0

    .line 2322
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mVr2dDisplayId:I

    .line 2323
    .local v1, "displayId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2327
    return v1

    .line 2332
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v2

    .line 2333
    .local v3, "launchDisplayId":I
    :goto_0
    if-eq v3, v2, :cond_3

    .line 2334
    return v3

    .line 2337
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v4

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    move v1, v4

    .line 2339
    if-eq v1, v2, :cond_5

    .line 2340
    return v1

    .line 2342
    :cond_5
    return v0
.end method

.method private getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;
    .locals 9

    .line 2277
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x8000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_1

    .line 2279
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    .line 2283
    .local v0, "putIntoExistingTask":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    and-int/2addr v0, v5

    .line 2284
    const/4 v5, 0x0

    .line 2285
    .local v5, "intentActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 2286
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 2287
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    move-object v5, v2

    .line 2288
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_3

    :cond_5
    if-eqz v0, :cond_9

    .line 2289
    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v2, v6, :cond_6

    .line 2292
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2293
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v4

    .line 2292
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    goto :goto_3

    .line 2294
    :cond_6
    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_8

    .line 2297
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-eq v1, v8, :cond_7

    move v3, v4

    nop

    :cond_7
    invoke-virtual {v2, v6, v7, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    goto :goto_3

    .line 2301
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 2304
    :cond_9
    :goto_3
    return-object v5
.end method

.method private isAllowStartActivityWhenLockScreenOn(Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1083
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityStarter;->isDefaultAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_2

    .line 1087
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1088
    .local v0, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p3, v2, :cond_1

    .line 1090
    return v1

    .line 1092
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v3, 0x54

    invoke-virtual {v2, v3, p3, p2}, Lcom/android/server/AppOpsService;->noteOperationForM(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 1093
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not allow start activity on lock screen activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/4 v1, 0x0

    return v1

    .line 1097
    .end local v0    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_2
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " shouldn\'t come here !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    return v1

    .line 1084
    :cond_3
    :goto_0
    return v1
.end method

.method private isAllowedStartActivity(Landroid/content/Intent;Ljava/lang/String;II)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "callingPid"    # I

    .line 1033
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_4

    const/4 v0, -0x1

    if-eq v0, p4, :cond_4

    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityStarter;->isDefaultAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/am/ActivityManagerService;->isAppForeground(I)Z

    move-result v0

    .line 1037
    .local v0, "isAppForeground":Z
    if-eqz v0, :cond_1

    .line 1038
    return v1

    .line 1040
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UidRecord;

    .line 1041
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v2, :cond_2

    .line 1042
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uidRec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uidRec.curProcState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/UidRecord;->curProcState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    sub-long/2addr v3, v5

    .line 1045
    .local v3, "duration":J
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uidRec Duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const-wide/16 v5, 0xc8

    cmp-long v5, v3, v5

    if-gtz v5, :cond_2

    .line 1047
    return v1

    .line 1050
    .end local v3    # "duration":J
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_3

    .line 1051
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 1052
    .local v3, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p3, v4, :cond_3

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v5, 0x53

    .line 1053
    invoke-virtual {v4, v5, p3, p2}, Lcom/android/server/AppOpsService;->noteOperationForM(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 1054
    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not allow start activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const/4 v1, 0x0

    return v1

    .line 1058
    .end local v3    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_3
    return v1

    .line 1034
    .end local v0    # "isAppForeground":Z
    .end local v2    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_4
    :goto_0
    return v1
.end method

.method private isDefaultAllowed(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1063
    const/4 v0, 0x0

    .line 1065
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-interface {v2, p1, v1, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1068
    goto :goto_0

    .line 1066
    :catch_0
    move-exception v2

    .line 1069
    :goto_0
    if-eqz v0, :cond_1

    .line 1070
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.cts"

    .line 1072
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.cttl"

    .line 1073
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.test"

    .line 1074
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1075
    :cond_0
    return v3

    .line 1078
    :cond_1
    return v1
.end method

.method static isDocumentLaunchesIntoExisting(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 3016
    const/high16 v0, 0x80000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLaunchModeOneOf(II)Z
    .locals 1
    .param p1, "mode1"    # I
    .param p2, "mode2"    # I

    .line 3012
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isScreenOn()Z
    .locals 8

    .line 1102
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1103
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    const/4 v1, 0x0

    .line 1104
    .local v1, "screenOn":Z
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 1105
    .local v5, "display":Landroid/view/Display;
    invoke-virtual {v5}, Landroid/view/Display;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 1106
    const/4 v1, 0x1

    .line 1104
    .end local v5    # "display":Landroid/view/Display;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1109
    :cond_1
    return v1
.end method

.method private maybeLogActivityStart(ILjava/lang/String;ILandroid/content/Intent;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/PendingIntentRecord;)V
    .locals 22
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "realCallingUid"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p6, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p7, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;

    move-object/from16 v1, p0

    move/from16 v13, p1

    move/from16 v10, p3

    move-object/from16 v7, p5

    move-object/from16 v6, p6

    .line 987
    if-eqz v7, :cond_0

    .line 988
    iget-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    goto :goto_0

    .line 989
    :cond_0
    const/4 v2, 0x0

    :goto_0
    move/from16 v19, v2

    .line 990
    .local v19, "callerAppHasForegroundActivity":Z
    iget-object v2, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isActivityStartsLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v19, :cond_8

    if-nez v6, :cond_1

    goto/16 :goto_8

    .line 997
    :cond_1
    const-wide/16 v4, 0x40

    :try_start_0
    const-string/jumbo v2, "logActivityStart"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 998
    iget-object v2, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v13}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v8

    .line 999
    .local v8, "callingUidProcState":I
    iget-object v2, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1000
    invoke-virtual {v2, v13}, Lcom/android/server/wm/WindowManagerService;->isAnyWindowVisibleForUid(I)Z

    move-result v9

    .line 1001
    .local v9, "callingUidHasAnyVisibleWindow":Z
    if-ne v13, v10, :cond_2

    .line 1002
    nop

    .line 1003
    move v11, v8

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v10}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v2

    move v11, v2

    .line 1004
    .local v11, "realCallingUidProcState":I
    :goto_1
    if-ne v13, v10, :cond_3

    .line 1005
    nop

    .line 1006
    move v12, v9

    goto :goto_2

    :cond_3
    iget-object v2, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v10}, Lcom/android/server/wm/WindowManagerService;->isAnyWindowVisibleForUid(I)Z

    move-result v2

    move v12, v2

    .line 1007
    .local v12, "realCallingUidHasAnyVisibleWindow":Z
    :goto_2
    iget-object v14, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1008
    .local v14, "targetPackage":Ljava/lang/String;
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, -0x1

    if-eqz v2, :cond_4

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_3

    :cond_4
    move v2, v3

    .line 1009
    .local v2, "targetUid":I
    :goto_3
    iget-object v15, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v15, v2}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v15

    .line 1010
    .local v15, "targetUidProcState":I
    if-eq v2, v3, :cond_5

    .line 1011
    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->isAnyWindowVisibleForUid(I)Z

    move-result v0

    .line 1012
    move/from16 v16, v0

    goto :goto_4

    :cond_5
    const/16 v16, 0x0

    .line 1013
    .local v16, "targetUidHasAnyVisibleWindow":Z
    :goto_4
    if-eq v2, v3, :cond_6

    .line 1014
    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->getPendingTempWhitelistTagForUidLocked(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1015
    :cond_6
    const/4 v0, 0x0

    :goto_5
    move-object/from16 v17, v0

    .line 1017
    .local v17, "targetWhitelistTag":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p7, :cond_7

    const/4 v3, 0x1

    move/from16 v18, v3

    goto :goto_6

    :cond_7
    const/16 v18, 0x0

    :goto_6
    move/from16 v20, v2

    move-object v2, v0

    .end local v2    # "targetUid":I
    .local v20, "targetUid":I
    move-object/from16 v3, p4

    move-object v4, v7

    move-object v5, v6

    move v6, v13

    move-object/from16 v7, p2

    move/from16 v10, p3

    move/from16 v13, v20

    :try_start_1
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityMetricsLogger;->logActivityStart(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;ILjava/lang/String;IZIIZILjava/lang/String;IZLjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1026
    .end local v8    # "callingUidProcState":I
    .end local v9    # "callingUidHasAnyVisibleWindow":Z
    .end local v11    # "realCallingUidProcState":I
    .end local v12    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v14    # "targetPackage":Ljava/lang/String;
    .end local v15    # "targetUidProcState":I
    .end local v16    # "targetUidHasAnyVisibleWindow":Z
    .end local v17    # "targetWhitelistTag":Ljava/lang/String;
    .end local v20    # "targetUid":I
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1027
    nop

    .line 1028
    return-void

    .line 1026
    :catchall_0
    move-exception v0

    const-wide/16 v2, 0x40

    goto :goto_7

    :catchall_1
    move-exception v0

    move-wide v2, v4

    :goto_7
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 993
    :cond_8
    :goto_8
    return-void
.end method

.method private nubiaAcquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .param p1, "mStartActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 3239
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 3240
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    const-string v1, "cn.nubia.quicksearchbox"

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3241
    .local v1, "isNubiaQuickSearch":Z
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "cn.nubia"

    .line 3242
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3243
    .local v2, "isNubiaApp":Z
    :goto_0
    if-eqz v2, :cond_1

    const/16 v4, 0x10

    goto :goto_1

    .line 3244
    :cond_1
    const/4 v4, 0x2

    .line 3245
    .local v4, "startTypeForNewProcess":I
    :goto_1
    if-eqz v2, :cond_2

    const/16 v5, 0x11

    goto :goto_2

    .line 3246
    :cond_2
    const/4 v5, 0x3

    .line 3247
    .local v5, "startTypeForExistingProcess":I
    :goto_2
    if-ne v1, v3, :cond_3

    .line 3248
    const-string v3, "ActivityManager"

    const-string/jumbo v6, "no perflock for quicksearchbox"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    return-void

    .line 3251
    :cond_3
    const-wide/16 v6, 0x3e8

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 3252
    invoke-virtual {v3, v8}, Lcom/android/server/am/ActivityManagerService;->isLaunchFromHomeForBSP(I)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    .line 3259
    :cond_4
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v8, v5, v6, v7}, Landroid/os/BSPApplicationManager$Trigger;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    goto :goto_4

    .line 3253
    :cond_5
    :goto_3
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v8, v4, v6, v7}, Landroid/os/BSPApplicationManager$Trigger;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 3265
    :goto_4
    return-void
.end method

.method private onExecutionComplete()V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStartController;->onExecutionComplete(Lcom/android/server/am/ActivityStarter;)V

    .line 604
    return-void
.end method

.method private resumeTargetStackIfNeeded()V
    .locals 4

    .line 2585
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_0

    .line 2586
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_0

    .line 2588
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2590
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    .line 2591
    return-void
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .locals 9

    .line 2137
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2138
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2139
    .local v0, "sourceStack":Lcom/android/server/am/ActivityStack;
    :goto_0
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 2144
    const-string v2, "ActivityManager"

    const-string v3, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    const/4 v3, -0x1

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v2, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2148
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2150
    :cond_1
    return-void
.end method

.method private setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "doResume"    # Z
    .param p5, "startFlags"    # I
    .param p6, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    .line 2028
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStarter;->reset(Z)V

    .line 2030
    iput-object v8, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2031
    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2032
    iput-object v9, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2033
    iget v1, v8, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 2034
    move-object/from16 v14, p6

    iput-object v14, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 2035
    move-object/from16 v15, p7

    iput-object v15, v0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2036
    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2038
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/am/ActivityStarter;->getPreferedDisplayId(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    .line 2040
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    .line 2042
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v1

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    const/4 v3, 0x0

    move-object v2, v10

    move-object v4, v8

    move-object v5, v14

    move-object/from16 v16, v6

    move-object v6, v9

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/LaunchParamsController;->calculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    .line 2045
    iget v1, v8, Lcom/android/server/am/ActivityRecord;->launchMode:I

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    .line 2047
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v13

    :goto_0
    iget v4, v0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    const/4 v5, 0x2

    if-ne v5, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v13

    :goto_1
    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2049
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 2047
    invoke-direct {v0, v8, v1, v4, v6}, Lcom/android/server/am/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 2050
    iget-boolean v1, v8, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    const/high16 v4, 0x80000

    if-eqz v1, :cond_2

    .line 2051
    invoke-direct {v0, v5, v2}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v13

    :goto_2
    iput-boolean v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2054
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    .line 2056
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    const/high16 v2, 0x10000000

    if-eqz v1, :cond_3

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_3

    .line 2057
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 2062
    :cond_3
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 2063
    iget-boolean v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v1, :cond_4

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-ne v1, v5, :cond_5

    .line 2065
    :cond_4
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 2071
    :cond_5
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x40000

    and-int/2addr v2, v4

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_3

    :cond_6
    move v2, v13

    :goto_3
    iput-boolean v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2078
    iput-boolean v11, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 2079
    if-eqz v11, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2080
    :cond_7
    iput-boolean v3, v8, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 2081
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 2084
    :cond_8
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 2085
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_b

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2086
    iput-boolean v3, v8, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    .line 2087
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v1

    if-nez v1, :cond_c

    .line 2088
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2089
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    .line 2088
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 2090
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    goto :goto_4

    :cond_9
    move-object v4, v2

    .line 2091
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    :goto_4
    if-eqz v4, :cond_a

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2095
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 2096
    iput-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2098
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_a
    goto :goto_5

    .line 2099
    :cond_b
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2100
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 2101
    iput-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2105
    :cond_c
    :goto_5
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_d

    move-object v1, v8

    goto :goto_6

    :cond_d
    move-object v1, v2

    :goto_6
    iput-object v1, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 2107
    iput-object v10, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 2112
    if-eqz v10, :cond_e

    iget-boolean v1, v10, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-nez v1, :cond_e

    .line 2113
    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting activity in task not in recents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 2117
    :cond_e
    iput v12, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 2121
    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_10

    .line 2122
    move-object v1, v14

    .line 2123
    .local v1, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_f

    .line 2124
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 2127
    :cond_f
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v4, v8, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 2129
    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 2133
    .end local v1    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_10
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    move v13, v3

    nop

    :cond_11
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 2134
    return-void
.end method

.method private setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 21
    .param p1, "intentActivity"    # Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    .line 2352
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2353
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2358
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2359
    .local v2, "focusStack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_0

    .line 2360
    move-object v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 2362
    .local v4, "curTop":Lcom/android/server/am/ActivityRecord;
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 2363
    .local v5, "topTask":Lcom/android/server/am/TaskRecord;
    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_12

    .line 2364
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-ne v5, v8, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-eq v5, v8, :cond_12

    :cond_2
    iget-boolean v8, v0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v8, :cond_12

    .line 2366
    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v9, 0x400000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2367
    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_12

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 2368
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    if-ne v8, v9, :cond_12

    .line 2370
    :cond_3
    iget-boolean v8, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_4

    .line 2371
    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 2380
    :cond_4
    iget v8, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v9, 0x10008000

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_5

    move v8, v7

    goto :goto_2

    :cond_5
    move v8, v6

    .line 2383
    .local v8, "willClearTask":Z
    :goto_2
    if-nez v8, :cond_12

    .line 2384
    iget-object v9, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v10, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2385
    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2384
    invoke-direct {v0, v9, v10, v11, v12}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 2386
    .local v9, "launchStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v15

    .line 2388
    .local v15, "intentTask":Lcom/android/server/am/TaskRecord;
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2389
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "freeform to :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " launchStack : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v10

    if-nez v10, :cond_6

    goto :goto_3

    .line 2395
    :cond_6
    move-object v11, v9

    goto :goto_4

    .line 2392
    :cond_7
    :goto_3
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v10

    invoke-virtual {v10, v7, v6, v7}, Lcom/android/server/am/ActivityDisplay;->createStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    .line 2395
    .local v10, "target":Lcom/android/server/am/ActivityStack;
    move-object v11, v10

    .line 2397
    .end local v10    # "target":Lcom/android/server/am/ActivityStack;
    .local v11, "target":Lcom/android/server/am/ActivityStack;
    :goto_4
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x1

    const-string/jumbo v17, "launchFromFreeto"

    move-object v10, v15

    move-object v3, v15

    move/from16 v15, v16

    .line 2397
    .end local v15    # "intentTask":Lcom/android/server/am/TaskRecord;
    .local v3, "intentTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v16, v17

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2400
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 2401
    .local v10, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_8

    .line 2402
    iput-boolean v7, v10, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 2404
    :cond_8
    iget-object v12, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v14, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v15, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v13, v13, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v17, "bringingFreeformTaskToFront"

    move-object/from16 v16, v13

    move-object v13, v3

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2406
    iput-boolean v7, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 2407
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "target":Lcom/android/server/am/ActivityStack;
    goto :goto_5

    .line 2407
    .end local v3    # "intentTask":Lcom/android/server/am/TaskRecord;
    .restart local v15    # "intentTask":Lcom/android/server/am/TaskRecord;
    :cond_9
    move-object v3, v15

    .line 2407
    .end local v15    # "intentTask":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "intentTask":Lcom/android/server/am/TaskRecord;
    if-nez v9, :cond_a

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2408
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "freeform from :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " launchStack : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v10

    invoke-virtual {v10, v7, v6, v7}, Lcom/android/server/am/ActivityDisplay;->createStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v17

    .line 2411
    .local v17, "fullStack":Lcom/android/server/am/ActivityStack;
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string/jumbo v16, "launchFromFreeform"

    move-object v10, v3

    move-object/from16 v11, v17

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2414
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v12, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v15, "bringingFreeformTaskToFront"

    move-object v11, v3

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2416
    iput-boolean v7, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 2419
    .end local v17    # "fullStack":Lcom/android/server/am/ActivityStack;
    :cond_a
    :goto_5
    if-eqz v9, :cond_10

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-ne v9, v10, :cond_b

    goto/16 :goto_8

    .line 2426
    :cond_b
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 2427
    iget v10, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v10, v10, 0x1000

    if-eqz v10, :cond_c

    .line 2430
    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "launchToSide"

    move-object v13, v3

    move-object v14, v9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    goto :goto_6

    .line 2438
    :cond_c
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v12, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v15, "bringToFrontInsteadOfAdjacentLaunch"

    move-object v11, v3

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2442
    :goto_6
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v10

    .line 2443
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    if-eq v9, v10, :cond_d

    move v10, v7

    goto :goto_7

    :cond_d
    move v10, v6

    :goto_7
    iput-boolean v10, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_9

    .line 2444
    :cond_e
    iget v10, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v11, v11, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v10, v11, :cond_f

    .line 2448
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "reparentToDisplay"

    move-object v14, v9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2451
    iput-boolean v7, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_9

    .line 2452
    :cond_f
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2453
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v10

    if-nez v10, :cond_11

    .line 2458
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "reparentingHome"

    move-object v14, v9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2461
    iput-boolean v7, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_9

    .line 2423
    :cond_10
    :goto_8
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v12, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v15, "bringingFoundTaskToFront"

    move-object v11, v3

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2425
    iput-boolean v7, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 2463
    :cond_11
    :goto_9
    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2467
    invoke-virtual {v1, v10, v6, v7}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2474
    .end local v3    # "intentTask":Lcom/android/server/am/TaskRecord;
    .end local v8    # "willClearTask":Z
    .end local v9    # "launchStack":Lcom/android/server/am/ActivityStack;
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2476
    iget-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-nez v3, :cond_15

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_15

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_15

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2477
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "com.tencent.mm/.ui.LauncherUI"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2478
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "com.tencent.mobileqq/.activity.SplashActivity"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_13
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_14

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2479
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v3

    if-nez v3, :cond_15

    .line 2480
    :cond_14
    const-string v3, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "freeform reset :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " launchStack : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3, v7, v6, v7}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2483
    .local v3, "target":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v15

    .line 2484
    .restart local v15    # "intentTask":Lcom/android/server/am/TaskRecord;
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string/jumbo v14, "launchFromFreeReset"

    move-object v8, v15

    move-object v9, v3

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2487
    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v10, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v12, v9, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v13, "bringingFreeformTaskToFront"

    move-object v9, v15

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2489
    iput-boolean v7, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 2492
    .end local v3    # "target":Lcom/android/server/am/ActivityStack;
    .end local v15    # "intentTask":Lcom/android/server/am/TaskRecord;
    :cond_15
    iget-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-nez v3, :cond_16

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v3, :cond_16

    .line 2495
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v7, "intentActivityFound"

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2498
    :cond_16
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v7, v6, v6, v8}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    .line 2502
    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x200000

    and-int/2addr v3, v6

    if-eqz v3, :cond_17

    .line 2503
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v1, v6}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    return-object v3

    .line 2505
    :cond_17
    return-object v1
.end method

.method private setTaskFromInTask()I
    .locals 12

    .line 2743
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2744
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    const/16 v0, 0x65

    return v0

    .line 2748
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2752
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2753
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v3, v4, :cond_3

    .line 2755
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    .line 2756
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2757
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v9, "inTaskToFront"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2759
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 2762
    return v2

    .line 2764
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2765
    const/4 v1, 0x3

    return v1

    .line 2769
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v3, :cond_4

    .line 2770
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v9, "inTaskToFront"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2774
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2775
    return v1

    .line 2778
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v1, v1, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2780
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2781
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 2782
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string/jumbo v11, "inTaskToFront"

    move-object v6, v1

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2784
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2787
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v3, v3, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityStarter;->updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    .line 2790
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v9, "inTaskToFront"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2793
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v2, "setTaskFromInTask"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2797
    const/4 v1, 0x0

    return v1
.end method

.method private setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "intentActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 2509
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v1, 0x10008000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2520
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2521
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 2522
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 2523
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2524
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_7

    const/4 v0, 0x3

    const/4 v2, 0x2

    .line 2525
    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2549
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2554
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v1, v0, :cond_4

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 2556
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2557
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_3

    .line 2558
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2560
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_1

    .line 2561
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskRecord;->isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2564
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2565
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto :goto_1

    .line 2567
    :cond_5
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_6

    .line 2572
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2573
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto :goto_1

    .line 2574
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_9

    .line 2580
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_1

    .line 2526
    :cond_7
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2528
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_8

    .line 2532
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2535
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 2538
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 2539
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 2540
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-nez v3, :cond_8

    .line 2543
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2545
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/2addr v1, v4

    const-string/jumbo v4, "startActivityUnchecked"

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    .line 2549
    .end local v0    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_8
    nop

    .line 2582
    :cond_9
    :goto_1
    return-void
.end method

.method private setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)I
    .locals 16
    .param p1, "taskToAffiliate"    # Lcom/android/server/am/TaskRecord;
    .param p2, "topStack"    # Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2595
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v5, 0x1

    invoke-direct {v0, v2, v5, v3, v4}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2600
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_2

    .line 2601
    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2602
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v7

    .line 2603
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 2604
    :goto_0
    move-object v8, v2

    goto :goto_1

    .line 2603
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 2604
    :goto_1
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    :goto_2
    move-object v9, v2

    goto :goto_3

    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    goto :goto_2

    :goto_3
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/lit8 v12, v2, 0x1

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v15, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2601
    invoke-virtual/range {v6 .. v15}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 2607
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    const-string/jumbo v3, "setTaskFromReuseOrCreateNewTask - mReuseTask"

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2608
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v4, v4, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStarter;->updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    .line 2612
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_4

    .line 2613
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v3, "setTaskFromReuseOrCreateNewTask"

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2616
    :goto_4
    if-eqz v1, :cond_3

    .line 2617
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 2620
    :cond_3
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2621
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    const/16 v2, 0x65

    return v2

    .line 2625
    :cond_4
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_5

    .line 2626
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v3, "reuseOrNewTask"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2628
    :cond_5
    const/4 v2, 0x0

    return v2
.end method

.method private setTaskFromSourceRecord()I
    .locals 15

    .line 2643
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2644
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    const/16 v0, 0x65

    return v0

    .line 2647
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2648
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2649
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    const/16 v5, 0x1081

    .line 2650
    invoke-virtual {v4, v5, v0, v2, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v4

    iput v4, v1, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    .line 2654
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 2655
    .local v1, "sourceTask":Lcom/android/server/am/TaskRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .line 2660
    .local v11, "sourceStack":Lcom/android/server/am/ActivityStack;
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_0

    .line 2661
    :cond_2
    iget v4, v11, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    :goto_0
    move v12, v4

    .line 2662
    .local v12, "targetDisplayId":I
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    const/4 v13, 0x0

    if-ne v4, v1, :cond_4

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2663
    invoke-virtual {v4, v12}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v13

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v3

    :goto_2
    move v14, v4

    .line 2664
    .local v14, "moveStackAllowed":Z
    if-eqz v14, :cond_6

    .line 2665
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v5, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2669
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v4, :cond_5

    iget v4, v11, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v12, v4, :cond_5

    .line 2671
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v11, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2674
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v4, :cond_6

    .line 2677
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2682
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_7

    .line 2683
    iput-object v11, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    goto :goto_3

    .line 2684
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eq v2, v11, :cond_8

    .line 2685
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string/jumbo v10, "launchToSide"

    move-object v4, v1

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2689
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 2690
    .local v2, "topTask":Lcom/android/server/am/TaskRecord;
    if-eq v2, v1, :cond_9

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v4, :cond_9

    .line 2691
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v9, "sourceTaskToFront"

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_4

    .line 2693
    :cond_9
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v4, :cond_a

    .line 2694
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v5, "sourceStackToFront"

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2697
    :cond_a
    :goto_4
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/16 v7, 0x7533

    if-nez v4, :cond_d

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v8, 0x4000000

    and-int/2addr v4, v8

    if-eqz v4, :cond_d

    .line 2700
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v8, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v1, v4, v8}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 2701
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 2702
    if-eqz v4, :cond_c

    .line 2703
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    invoke-static {v7, v3, v8}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2704
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2706
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v6, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2707
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v3, :cond_b

    .line 2708
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2710
    :cond_b
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2711
    return v5

    .line 2713
    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_c
    goto :goto_5

    :cond_d
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v3, :cond_f

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_f

    .line 2717
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 2718
    .local v3, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_f

    .line 2719
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .line 2720
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v4, v3}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2721
    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3, v8}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2722
    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-static {v7, v8, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2723
    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2724
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v6, v7, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2725
    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v6, :cond_e

    .line 2726
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2728
    :cond_e
    return v5

    .line 2734
    .end local v3    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_f
    :goto_5
    const-string/jumbo v3, "setTaskFromSourceRecord"

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2737
    return v13
.end method

.method private setTaskToCurrentTopOrCreateNewTask()V
    .locals 12

    .line 2815
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2816
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_0

    .line 2817
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string v1, "addingToTopTask"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2819
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2820
    .local v0, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2821
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v3

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v11, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2820
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 2823
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    :goto_0
    const-string/jumbo v2, "setTaskToCurrentTopOrCreateNewTask"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2824
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/am/TaskRecord;)V

    .line 2827
    return-void
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;)I
    .locals 27
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ephemeralIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "resultWho"    # Ljava/lang/String;
    .param p11, "requestCode"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "callingPackage"    # Ljava/lang/String;
    .param p15, "realCallingPid"    # I
    .param p16, "realCallingUid"    # I
    .param p17, "startFlags"    # I
    .param p18, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p19, "ignoreTargetSecurity"    # Z
    .param p20, "componentSpecified"    # Z
    .param p21, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p22, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p23, "reason"    # Ljava/lang/String;
    .param p24, "allowPendingRemoteAnimationRegistryLookup"    # Z
    .param p25, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;

    move-object/from16 v15, p0

    .line 572
    invoke-static/range {p23 .. p23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 575
    move-object/from16 v14, p23

    iput-object v14, v15, Lcom/android/server/am/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v15, Lcom/android/server/am/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 577
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    const/16 v25, 0x0

    aput-object v1, v0, v25

    .line 579
    iget-object v13, v15, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v21, v13

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v22, p22

    move/from16 v23, p24

    move-object/from16 v24, p25

    invoke-direct/range {v0 .. v24}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;ZLcom/android/server/am/PendingIntentRecord;)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    .line 585
    if-eqz p21, :cond_0

    .line 587
    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v0, v25

    aput-object v0, p21, v25

    .line 590
    :cond_0
    iget v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    invoke-static {v0}, Lcom/android/server/am/ActivityStarter;->getExternalResult(I)I

    move-result v0

    return v0

    .line 573
    :cond_1
    move-object v1, v15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Need to specify a reason."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;ZLcom/android/server/am/PendingIntentRecord;)I
    .locals 76
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ephemeralIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "resultWho"    # Ljava/lang/String;
    .param p11, "requestCode"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "callingPackage"    # Ljava/lang/String;
    .param p15, "realCallingPid"    # I
    .param p16, "realCallingUid"    # I
    .param p17, "startFlags"    # I
    .param p18, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p19, "ignoreTargetSecurity"    # Z
    .param p20, "componentSpecified"    # Z
    .param p21, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p22, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p23, "allowPendingRemoteAnimationRegistryLookup"    # Z
    .param p24, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v13, p9

    move/from16 v12, p16

    move/from16 v4, p17

    move-object/from16 v11, p18

    .line 615
    const/4 v6, 0x0

    .line 618
    .local v6, "err":I
    if-eqz v11, :cond_0

    invoke-virtual/range {p18 .. p18}, Lcom/android/server/am/SafeActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 621
    .local v5, "verificationBundle":Landroid/os/Bundle;
    :goto_0
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityManagerService;->setActivityStartingLocked(Z)V

    .line 623
    const/4 v7, 0x0

    .line 624
    .local v7, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v14, :cond_2

    .line 625
    iget-object v8, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v14}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    .line 626
    if-eqz v7, :cond_1

    .line 627
    iget v8, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 628
    .end local p12    # "callingPid":I
    .local v8, "callingPid":I
    iget-object v10, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 637
    .end local v7    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local p13    # "callingUid":I
    .local v9, "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v10, "callingUid":I
    :goto_1
    move-object v9, v7

    goto :goto_2

    .line 630
    .end local v8    # "callingPid":I
    .end local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "callingUid":I
    .restart local v7    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local p12    # "callingPid":I
    .restart local p13    # "callingUid":I
    :cond_1
    const-string v8, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find app for caller "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " (pid="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p12

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v30, v6

    const-string v6, ") when starting: "

    .end local v6    # "err":I
    .local v30, "err":I
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 630
    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/16 v6, -0x5e

    .line 637
    .end local v30    # "err":I
    .restart local v6    # "err":I
    move/from16 v10, p13

    move v8, v9

    goto :goto_1

    :cond_2
    move/from16 v9, p12

    move/from16 v30, v6

    move/from16 v10, p13

    move v8, v9

    move-object v9, v7

    .line 637
    .end local v7    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local p12    # "callingPid":I
    .end local p13    # "callingUid":I
    .restart local v8    # "callingPid":I
    .restart local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v10    # "callingUid":I
    :goto_2
    if-eqz v3, :cond_3

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_3

    .line 638
    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 640
    .local v7, "userId":I
    :goto_3
    if-nez v6, :cond_4

    .line 641
    const-string v14, "ActivityManager"

    move-object/from16 v49, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .line 641
    .end local v5    # "verificationBundle":Landroid/os/Bundle;
    .local v49, "verificationBundle":Landroid/os/Bundle;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "START u"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " {"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v51, v7

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v4, v4, v7}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v12

    .end local v7    # "userId":I
    .local v51, "userId":I
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "} from uid "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-static/range {p2 .. p2}, Lnubia/os/ApplicationManager$Trigger;->noteStartActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 649
    .end local v49    # "verificationBundle":Landroid/os/Bundle;
    .end local v51    # "userId":I
    .restart local v5    # "verificationBundle":Landroid/os/Bundle;
    .restart local v7    # "userId":I
    :cond_4
    move-object/from16 v49, v5

    move/from16 v51, v7

    const/4 v7, 0x0

    .line 649
    .end local v5    # "verificationBundle":Landroid/os/Bundle;
    .end local v7    # "userId":I
    .restart local v49    # "verificationBundle":Landroid/os/Bundle;
    .restart local v51    # "userId":I
    :goto_4
    const/16 v4, 0x66

    if-eqz v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    .line 651
    .local v5, "cmp":Ljava/lang/String;
    if-eqz v5, :cond_5

    const-string v12, "OnePixelActivity"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 652
    const-string v7, "ActivityManager"

    const-string v12, "Do not start  OnePixelActivity, that is a keep alive activity."

    invoke-static {v7, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return v4

    .line 657
    .end local v5    # "cmp":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    .line 658
    .local v5, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v12, 0x0

    .line 659
    .local v12, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v13, :cond_6

    .line 660
    iget-object v14, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v14, v13}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 663
    if-eqz v5, :cond_6

    .line 664
    if-ltz p11, :cond_6

    iget-boolean v14, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v14, :cond_6

    .line 665
    move-object v12, v5

    .line 670
    .end local v5    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .local v14, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_6
    move-object v14, v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v48

    .line 672
    .local v48, "launchFlags":I
    const/high16 v5, 0x2000000

    and-int v5, v48, v5

    if-eqz v5, :cond_b

    if-eqz v14, :cond_b

    .line 675
    if-ltz p11, :cond_7

    .line 676
    invoke-static/range {p18 .. p18}, Lcom/android/server/am/SafeActivityOptions;->abort(Lcom/android/server/am/SafeActivityOptions;)V

    .line 677
    const/16 v4, -0x5d

    return v4

    .line 679
    :cond_7
    iget-object v5, v14, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 680
    .end local v12    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .local v5, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->isInStackLocked()Z

    move-result v12

    if-nez v12, :cond_8

    .line 681
    const/4 v5, 0x0

    .line 683
    :cond_8
    iget-object v12, v14, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 684
    .end local p10    # "resultWho":Ljava/lang/String;
    .local v12, "resultWho":Ljava/lang/String;
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->requestCode:I

    .line 685
    .end local p11    # "requestCode":I
    .local v0, "requestCode":I
    const/4 v4, 0x0

    iput-object v4, v14, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 686
    if-eqz v5, :cond_9

    .line 687
    invoke-virtual {v5, v14, v12, v0}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 689
    :cond_9
    iget v4, v14, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    if-ne v4, v10, :cond_a

    .line 700
    iget-object v4, v14, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 704
    .end local p14    # "callingPackage":Ljava/lang/String;
    .local v4, "callingPackage":Ljava/lang/String;
    move/from16 v60, v0

    move-object/from16 v29, v12

    move-object v12, v4

    goto :goto_6

    .line 704
    .end local v4    # "callingPackage":Ljava/lang/String;
    .restart local p14    # "callingPackage":Ljava/lang/String;
    :cond_a
    move/from16 v60, v0

    move-object/from16 v29, v12

    goto :goto_5

    .line 704
    .end local v0    # "requestCode":I
    .end local v5    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .local v12, "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local p10    # "resultWho":Ljava/lang/String;
    .restart local p11    # "requestCode":I
    :cond_b
    move-object/from16 v29, p10

    move/from16 v60, p11

    move-object v5, v12

    .line 704
    .end local p10    # "resultWho":Ljava/lang/String;
    .end local p11    # "requestCode":I
    .end local p14    # "callingPackage":Ljava/lang/String;
    .restart local v5    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .local v12, "callingPackage":Ljava/lang/String;
    .local v29, "resultWho":Ljava/lang/String;
    .local v60, "requestCode":I
    :goto_5
    move-object/from16 v12, p14

    :goto_6
    if-nez v6, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_c

    .line 707
    const/16 v6, -0x5b

    .line 710
    :cond_c
    if-nez v6, :cond_d

    if-nez v3, :cond_d

    .line 713
    const/16 v6, -0x5c

    .line 716
    :cond_d
    if-nez v6, :cond_f

    if-eqz v14, :cond_f

    .line 717
    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_f

    .line 722
    const/high16 v0, 0x10000000

    and-int v0, v48, v0

    if-nez v0, :cond_f

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v4, :cond_f

    .line 725
    :try_start_0
    const-string v0, "android.intent.category.VOICE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 726
    invoke-interface {v0, v4, v1, v2}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 728
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    const/16 v0, -0x61

    .line 736
    .end local v6    # "err":I
    .local v0, "err":I
    move v6, v0

    .line 736
    .end local v0    # "err":I
    .restart local v6    # "err":I
    :cond_e
    goto :goto_7

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v7, "Failure checking voice capabilities"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    const/16 v6, -0x61

    .line 740
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_7
    if-nez v6, :cond_11

    if-eqz p7, :cond_11

    .line 744
    :try_start_1
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v0, v4, v1, v2}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 746
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity being started in new voice task does not support: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 749
    const/16 v0, -0x61

    .line 754
    .end local v6    # "err":I
    .local v0, "err":I
    move v6, v0

    .line 754
    .end local v0    # "err":I
    .restart local v6    # "err":I
    :cond_10
    goto :goto_8

    .line 751
    :catch_1
    move-exception v0

    .line 752
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v7, "Failure checking voice capabilities"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 753
    const/16 v6, -0x61

    .line 757
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v6    # "err":I
    .local v61, "err":I
    :cond_11
    :goto_8
    move/from16 v61, v6

    if-nez v5, :cond_12

    const/16 v53, 0x0

    goto :goto_9

    :cond_12
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    move-object/from16 v53, v0

    .line 759
    .local v53, "resultStack":Lcom/android/server/am/ActivityStack;
    :goto_9
    if-eqz v61, :cond_14

    .line 760
    if-eqz v5, :cond_13

    .line 761
    const/16 v54, -0x1

    const/16 v58, 0x0

    const/16 v59, 0x0

    move-object/from16 v55, v5

    move-object/from16 v56, v29

    move/from16 v57, v60

    invoke-virtual/range {v53 .. v59}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 764
    :cond_13
    invoke-static/range {p18 .. p18}, Lcom/android/server/am/SafeActivityOptions;->abort(Lcom/android/server/am/SafeActivityOptions;)V

    .line 765
    return v61

    .line 768
    :cond_14
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz p22, :cond_15

    const/16 v25, 0x1

    goto :goto_a

    :cond_15
    const/16 v25, 0x0

    :goto_a
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v29

    move/from16 v20, v60

    move/from16 v21, v8

    move/from16 v22, v10

    move-object/from16 v23, v12

    move/from16 v24, p19

    move-object/from16 v26, v9

    move-object/from16 v27, v5

    move-object/from16 v28, v53

    invoke-virtual/range {v16 .. v28}, Lcom/android/server/am/ActivityStackSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZZLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    const/16 v16, 0x1

    xor-int/lit8 v0, v0, 0x1

    .line 771
    .local v0, "abort":Z
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v7

    move/from16 v62, v51

    const/4 v13, 0x0

    move-object v7, v1

    .line 771
    .end local v51    # "userId":I
    .local v62, "userId":I
    move/from16 v63, v8

    move v8, v10

    .line 771
    .end local v8    # "callingPid":I
    .local v63, "callingPid":I
    move-object v13, v9

    move-object/from16 v64, v14

    move/from16 v14, v16

    move/from16 v9, v63

    .line 771
    .end local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .local v13, "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v64, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    move/from16 v65, v10

    move-object v10, v2

    .line 771
    .end local v10    # "callingUid":I
    .local v65, "callingUid":I
    move-object/from16 v11, v17

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    xor-int/2addr v6, v14

    or-int/2addr v0, v6

    .line 775
    if-eqz v1, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 777
    .local v6, "className":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/NubiaSelfStartUtil;->getInstance()Lcom/android/server/am/NubiaSelfStartUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/NubiaSelfStartUtil;->firstBootGetAllowPkgNames()V

    .line 778
    invoke-static {}, Lcom/android/server/am/NubiaSelfStartUtil;->getInstance()Lcom/android/server/am/NubiaSelfStartUtil;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/am/NubiaSelfStartUtil;->isInActivityBlackList(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 779
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NBSelfStart] in activity blacklist : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    or-int/lit8 v0, v0, 0x1

    .line 786
    .end local v6    # "className":Ljava/lang/String;
    :cond_16
    move/from16 v10, v63

    move/from16 v11, v65

    invoke-direct {v15, v1, v12, v11, v10}, Lcom/android/server/am/ActivityStarter;->isAllowedStartActivity(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v6

    .line 786
    .end local v63    # "callingPid":I
    .end local v65    # "callingUid":I
    .local v10, "callingPid":I
    .local v11, "callingUid":I
    xor-int/2addr v6, v14

    or-int/2addr v0, v6

    .line 789
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroid/app/KeyguardManager;

    .line 790
    .local v9, "km":Landroid/app/KeyguardManager;
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 791
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->isScreenOn()Z

    move-result v28

    .line 792
    .local v28, "isScreenOn":Z
    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-nez v6, :cond_17

    if-nez v28, :cond_18

    .line 793
    :cond_17
    invoke-direct {v15, v1, v12, v11}, Lcom/android/server/am/ActivityStarter;->isAllowStartActivityWhenLockScreenOn(Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v6, v14

    or-int/2addr v0, v6

    .line 798
    :cond_18
    move-object/from16 v8, p18

    if-eqz v8, :cond_19

    .line 799
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v1, v3, v13, v6}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v6

    goto :goto_b

    .line 800
    :cond_19
    const/4 v6, 0x0

    .line 801
    .local v6, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_b
    if-eqz p23, :cond_1a

    .line 802
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v7

    .line 803
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStartController;->getPendingRemoteAnimationRegistry()Lcom/android/server/am/PendingRemoteAnimationRegistry;

    move-result-object v7

    .line 804
    invoke-virtual {v7, v12, v6}, Lcom/android/server/am/PendingRemoteAnimationRegistry;->overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 807
    .end local v6    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v25, "checkedOptions":Landroid/app/ActivityOptions;
    :cond_1a
    move-object/from16 v25, v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_1f

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 809
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_1f

    const-string v7, "com.tencent.mm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    const-string v7, "com.tencent.mobileqq"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 810
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 811
    .local v7, "className":Ljava/lang/String;
    if-eqz v7, :cond_1f

    const-string v14, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    if-eqz v14, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    move-object/from16 v66, v6

    const-string v6, "Voip_Is_Talking"

    .line 812
    .end local v6    # "packageName":Ljava/lang/String;
    .local v66, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v14, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v14, "Voip_Outcall"

    invoke-virtual {v6, v14, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_c

    .line 813
    .end local v66    # "packageName":Ljava/lang/String;
    .restart local v6    # "packageName":Ljava/lang/String;
    :cond_1c
    move-object/from16 v66, v6

    .line 813
    .end local v6    # "packageName":Ljava/lang/String;
    .restart local v66    # "packageName":Ljava/lang/String;
    :cond_1d
    :goto_c
    const-string v6, "com.tencent.av.ui.VChatActivity"

    .line 814
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, "com.tencent.av.ui.VideoInviteFull"

    .line 815
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, "com.tencent.av.ui.VideoInviteLock"

    .line 816
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 817
    :cond_1e
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->isAllowStartActivityInGameKeys()Z

    move-result v6

    const/4 v8, 0x1

    xor-int/2addr v6, v8

    or-int/2addr v0, v6

    .line 822
    .end local v0    # "abort":Z
    .end local v7    # "className":Ljava/lang/String;
    .end local v66    # "packageName":Ljava/lang/String;
    .local v6, "abort":Z
    :cond_1f
    move v6, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_20

    .line 826
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    .line 827
    .local v0, "watchIntent":Landroid/content/Intent;
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v0, v8}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    or-int/2addr v6, v7

    .line 831
    .end local v0    # "watchIntent":Landroid/content/Intent;
    nop

    .line 834
    move/from16 v51, v6

    const/4 v14, 0x0

    goto :goto_e

    .line 829
    :catch_2
    move-exception v0

    .line 830
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v14, 0x0

    iput-object v14, v7, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 830
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_d

    .line 834
    :cond_20
    const/4 v14, 0x0

    :goto_d
    move/from16 v51, v6

    .line 834
    .end local v6    # "abort":Z
    .local v51, "abort":Z
    :goto_e
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move/from16 v7, v62

    move/from16 v8, p15

    move-object/from16 v52, v9

    move/from16 v9, p16

    .line 834
    .end local v9    # "km":Landroid/app/KeyguardManager;
    .local v52, "km":Landroid/app/KeyguardManager;
    move/from16 v26, v10

    move/from16 v10, p17

    .line 834
    .end local v10    # "callingPid":I
    .local v26, "callingPid":I
    move/from16 v27, v11

    move-object v11, v12

    .line 834
    .end local v11    # "callingUid":I
    .local v27, "callingUid":I
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;)V

    .line 835
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, p6

    move-object/from16 v19, v3

    move-object/from16 v20, v2

    move-object/from16 v21, p22

    move/from16 v22, v26

    move/from16 v23, v27

    move-object/from16 v24, v25

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/am/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/am/TaskRecord;IILandroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 839
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 840
    .end local p2    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 841
    .end local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v1, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v3, v6, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 842
    .end local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v3, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v2, v6, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 843
    .end local p4    # "resolvedType":Ljava/lang/String;
    .local v2, "resolvedType":Ljava/lang/String;
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v4, v6, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 844
    .end local p22    # "inTask":Lcom/android/server/am/TaskRecord;
    .local v4, "inTask":Lcom/android/server/am/TaskRecord;
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v8, v6, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 845
    .end local v26    # "callingPid":I
    .restart local v8    # "callingPid":I
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v10, v6, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 846
    .end local v27    # "callingUid":I
    .local v10, "callingUid":I
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 849
    .end local v25    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v6, "checkedOptions":Landroid/app/ActivityOptions;
    move-object/from16 v50, v4

    move-object v11, v6

    goto :goto_f

    .line 849
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "resolvedType":Ljava/lang/String;
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "inTask":Lcom/android/server/am/TaskRecord;
    .end local v6    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v8    # "callingPid":I
    .end local v10    # "callingUid":I
    .restart local v25    # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v26    # "callingPid":I
    .restart local v27    # "callingUid":I
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local p22    # "inTask":Lcom/android/server/am/TaskRecord;
    :cond_21
    move-object/from16 v50, p22

    move-object v0, v1

    move-object/from16 v11, v25

    move/from16 v8, v26

    move/from16 v10, v27

    move-object/from16 v1, p6

    .line 849
    .end local v25    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v26    # "callingPid":I
    .end local v27    # "callingUid":I
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local p22    # "inTask":Lcom/android/server/am/TaskRecord;
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "callingPid":I
    .restart local v10    # "callingUid":I
    .local v11, "checkedOptions":Landroid/app/ActivityOptions;
    .local v50, "inTask":Lcom/android/server/am/TaskRecord;
    :goto_f
    if-eqz v51, :cond_23

    .line 850
    if-eqz v5, :cond_22

    .line 851
    const/16 v17, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v53

    move-object/from16 v18, v5

    move-object/from16 v19, v29

    move/from16 v20, v60

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 856
    :cond_22
    invoke-static {v11}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 857
    const/16 v4, 0x66

    return v4

    .line 863
    :cond_23
    iget-object v4, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mPermissionReviewRequired:Z

    if-eqz v4, :cond_26

    if-eqz v3, :cond_26

    .line 864
    iget-object v4, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v9, v62

    invoke-virtual {v4, v6, v9}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v4

    .line 864
    .end local v62    # "userId":I
    .local v9, "userId":I
    if-eqz v4, :cond_25

    .line 866
    iget-object v4, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v17, 0x2

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v6, 0x1

    new-array v7, v6, [Landroid/content/Intent;

    const/16 v16, 0x0

    aput-object v0, v7, v16

    new-array v14, v6, [Ljava/lang/String;

    aput-object v2, v14, v16

    const/high16 v26, 0x50000000

    const/16 v27, 0x0

    move-object/from16 v16, v4

    move-object/from16 v18, v12

    move/from16 v19, v10

    move/from16 v20, v9

    move-object/from16 v24, v7

    move-object/from16 v25, v14

    invoke-virtual/range {v16 .. v27}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v4

    .line 872
    .local v4, "target":Landroid/content/IIntentSender;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 873
    .local v6, "flags":I
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 874
    .local v7, "newIntent":Landroid/content/Intent;
    const/high16 v14, 0x800000

    or-int/2addr v14, v6

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 876
    const-string v14, "android.intent.extra.PACKAGE_NAME"

    move-object/from16 v67, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 876
    .end local v0    # "intent":Landroid/content/Intent;
    .local v67, "intent":Landroid/content/Intent;
    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    const-string v0, "android.intent.extra.INTENT"

    new-instance v14, Landroid/content/IntentSender;

    invoke-direct {v14, v4}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v7, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 878
    if-eqz v5, :cond_24

    .line 879
    const-string v0, "android.intent.extra.RESULT_NEEDED"

    const/4 v14, 0x1

    invoke-virtual {v7, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 881
    :cond_24
    move-object v0, v7

    .line 883
    .end local v67    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 884
    move/from16 v10, p16

    .line 885
    move/from16 v8, p15

    .line 887
    iget-object v14, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v20, 0x0

    move-object/from16 v68, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    .line 887
    .end local v1    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v68, "rInfo":Landroid/content/pm/ResolveInfo;
    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 888
    move/from16 v69, v8

    move/from16 v8, p16

    invoke-static {v10, v8, v1}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v21

    .line 887
    .end local v8    # "callingPid":I
    .local v69, "callingPid":I
    move-object/from16 v16, v14

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move/from16 v19, v9

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 890
    .end local v68    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v14, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v71, v2

    move-object/from16 v70, v4

    const/4 v2, 0x0

    move/from16 v4, p17

    invoke-virtual {v14, v0, v1, v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 906
    .end local v2    # "resolvedType":Ljava/lang/String;
    .end local v4    # "target":Landroid/content/IIntentSender;
    .end local v6    # "flags":I
    .end local v7    # "newIntent":Landroid/content/Intent;
    .local v71, "resolvedType":Ljava/lang/String;
    move-object v14, v1

    move-object/from16 v16, v3

    move/from16 v26, v69

    goto :goto_11

    .line 906
    .end local v69    # "callingPid":I
    .end local v71    # "resolvedType":Ljava/lang/String;
    .restart local v2    # "resolvedType":Ljava/lang/String;
    .restart local v8    # "callingPid":I
    :cond_25
    move/from16 v4, p17

    move-object/from16 v67, v0

    move-object/from16 v68, v1

    move/from16 v26, v8

    move/from16 v8, p16

    .line 906
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "callingPid":I
    .restart local v26    # "callingPid":I
    .restart local v67    # "intent":Landroid/content/Intent;
    .restart local v68    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_10

    .line 906
    .end local v9    # "userId":I
    .end local v26    # "callingPid":I
    .end local v67    # "intent":Landroid/content/Intent;
    .end local v68    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "callingPid":I
    .restart local v62    # "userId":I
    :cond_26
    move/from16 v4, p17

    move-object/from16 v67, v0

    move-object/from16 v68, v1

    move/from16 v26, v8

    move/from16 v9, v62

    move/from16 v8, p16

    .line 906
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "callingPid":I
    .end local v62    # "userId":I
    .restart local v9    # "userId":I
    .restart local v26    # "callingPid":I
    .restart local v67    # "intent":Landroid/content/Intent;
    .restart local v68    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_10
    move-object/from16 v71, v2

    move-object/from16 v16, v3

    move-object/from16 v0, v67

    move-object/from16 v14, v68

    .line 906
    .end local v2    # "resolvedType":Ljava/lang/String;
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v67    # "intent":Landroid/content/Intent;
    .end local v68    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "intent":Landroid/content/Intent;
    .local v14, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v16, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v71    # "resolvedType":Ljava/lang/String;
    :goto_11
    if-eqz v14, :cond_27

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v1, :cond_27

    .line 907
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    move-object v1, v15

    move-object/from16 v3, p3

    move v7, v4

    move-object v4, v12

    move-object/from16 v6, v71

    move/from16 v72, v10

    move v10, v7

    move v7, v9

    .line 907
    .end local v10    # "callingUid":I
    .local v72, "callingUid":I
    move-object/from16 v17, v5

    move-object/from16 v5, v49

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 909
    .end local v49    # "verificationBundle":Landroid/os/Bundle;
    .local v5, "verificationBundle":Landroid/os/Bundle;
    .local v17, "resultRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    .line 910
    .end local v71    # "resolvedType":Ljava/lang/String;
    .local v1, "resolvedType":Ljava/lang/String;
    move v2, v8

    .line 911
    .end local v72    # "callingUid":I
    .local v2, "callingUid":I
    move/from16 v3, p15

    .line 913
    .end local v26    # "callingPid":I
    .local v3, "callingPid":I
    iget-object v4, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v14, v10, v6}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 917
    .end local v16    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v4, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v71, v1

    move/from16 v72, v2

    move/from16 v26, v3

    move-object v1, v0

    goto :goto_12

    .line 917
    .end local v1    # "resolvedType":Ljava/lang/String;
    .end local v2    # "callingUid":I
    .end local v3    # "callingPid":I
    .end local v4    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v17    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .local v5, "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "callingUid":I
    .restart local v16    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "callingPid":I
    .restart local v49    # "verificationBundle":Landroid/os/Bundle;
    .restart local v71    # "resolvedType":Ljava/lang/String;
    :cond_27
    move-object/from16 v17, v5

    move/from16 v72, v10

    move-object/from16 v5, v49

    move v10, v4

    .line 917
    .end local v10    # "callingUid":I
    .end local v49    # "verificationBundle":Landroid/os/Bundle;
    .local v5, "verificationBundle":Landroid/os/Bundle;
    .restart local v17    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v72    # "callingUid":I
    move-object v1, v0

    move-object/from16 v4, v16

    .line 917
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v16    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v1, "intent":Landroid/content/Intent;
    .restart local v4    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_12
    const-string v0, "cn.nubia.video"

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "cn.nubia.gallery3d"

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 918
    :cond_28
    if-eqz v1, :cond_29

    const-string v0, "cn.nubia.gamehighlights"

    const-string/jumbo v2, "is_game_highlights"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 920
    :try_start_3
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "old screenOrientation= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",callingPackage= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",aInfo.packageName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", new screenOrientation= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 923
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 920
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getLastOrientation()I

    move-result v0

    iput v0, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_13

    .line 926
    :catch_3
    move-exception v0

    .line 927
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, " "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 928
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13
    goto :goto_14

    .line 930
    :cond_29
    const/4 v0, -0x1

    iput v0, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 935
    :cond_2a
    :goto_14
    new-instance v0, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 936
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v39

    if-eqz p7, :cond_2b

    const/16 v44, 0x1

    goto :goto_15

    :cond_2b
    const/16 v44, 0x0

    :goto_15
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v30, v0

    move-object/from16 v31, v2

    move-object/from16 v32, v13

    move/from16 v33, v26

    move/from16 v34, v72

    move-object/from16 v35, v12

    move-object/from16 v36, v1

    move-object/from16 v37, v71

    move-object/from16 v38, v4

    move-object/from16 v40, v17

    move-object/from16 v41, v29

    move/from16 v42, v60

    move/from16 v43, p20

    move-object/from16 v45, v3

    move-object/from16 v46, v11

    move-object/from16 v47, v64

    invoke-direct/range {v30 .. v47}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V

    .line 939
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p21, :cond_2c

    .line 940
    const/4 v2, 0x0

    aput-object v0, p21, v2

    .line 943
    :cond_2c
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v2, :cond_2d

    if-eqz v64, :cond_2d

    .line 946
    move-object/from16 v2, v64

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 946
    .end local v64    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .local v2, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_16

    .line 949
    .end local v2    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v64    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_2d
    move-object/from16 v2, v64

    .line 949
    .end local v64    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :goto_16
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 953
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-nez p7, :cond_31

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_2f

    .line 954
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v6, v8, :cond_2e

    goto :goto_17

    .line 964
    :cond_2e
    move-object/from16 v75, v3

    move-object/from16 v73, v4

    move-object/from16 v74, v5

    move/from16 v18, v9

    move-object v4, v11

    goto :goto_18

    .line 955
    :cond_2f
    :goto_17
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v16, "Activity start"

    move/from16 v7, v26

    move/from16 v8, v72

    move/from16 v18, v9

    move/from16 v9, p15

    .line 955
    .end local v9    # "userId":I
    .local v18, "userId":I
    move/from16 v10, p16

    move-object/from16 v73, v4

    move-object v4, v11

    move-object/from16 v11, v16

    .line 955
    .end local v11    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v4, "checkedOptions":Landroid/app/ActivityOptions;
    .local v73, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_30

    .line 957
    iget-object v11, v15, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    new-instance v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    move-object v6, v10

    move-object v7, v0

    move-object v8, v2

    move/from16 v9, p17

    move-object/from16 v74, v5

    move-object v5, v10

    move-object v10, v3

    .line 957
    .end local v5    # "verificationBundle":Landroid/os/Bundle;
    .local v74, "verificationBundle":Landroid/os/Bundle;
    move-object/from16 v75, v3

    move-object v3, v11

    move-object v11, v13

    .line 957
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .local v75, "stack":Lcom/android/server/am/ActivityStack;
    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStartController;->addPendingActivityLaunch(Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;)V

    .line 959
    invoke-static {v4}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 960
    const/16 v3, 0x64

    return v3

    .line 964
    .end local v74    # "verificationBundle":Landroid/os/Bundle;
    .end local v75    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "verificationBundle":Landroid/os/Bundle;
    :cond_30
    move-object/from16 v75, v3

    move-object/from16 v74, v5

    .line 964
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "verificationBundle":Landroid/os/Bundle;
    .restart local v74    # "verificationBundle":Landroid/os/Bundle;
    .restart local v75    # "stack":Lcom/android/server/am/ActivityStack;
    goto :goto_18

    .line 964
    .end local v18    # "userId":I
    .end local v73    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v74    # "verificationBundle":Landroid/os/Bundle;
    .end local v75    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .local v4, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "verificationBundle":Landroid/os/Bundle;
    .restart local v9    # "userId":I
    .restart local v11    # "checkedOptions":Landroid/app/ActivityOptions;
    :cond_31
    move-object/from16 v75, v3

    move-object/from16 v73, v4

    move-object/from16 v74, v5

    move/from16 v18, v9

    move-object v4, v11

    .line 964
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "verificationBundle":Landroid/os/Bundle;
    .end local v9    # "userId":I
    .end local v11    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v4, "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v18    # "userId":I
    .restart local v73    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v74    # "verificationBundle":Landroid/os/Bundle;
    .restart local v75    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_18
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v3, :cond_32

    .line 970
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v5, 0x0

    iput-wide v5, v3, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    goto :goto_19

    .line 972
    :cond_32
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    .line 975
    :goto_19
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStartController;->doPendingActivityLaunches(Z)V

    .line 977
    move-object v6, v15

    move/from16 v7, v72

    move-object v8, v12

    move/from16 v9, p16

    move-object v10, v1

    move-object v11, v13

    move-object v3, v12

    move-object v12, v0

    .line 977
    .end local v12    # "callingPackage":Ljava/lang/String;
    .local v3, "callingPackage":Ljava/lang/String;
    move-object v5, v13

    move-object/from16 v13, p24

    .line 977
    .end local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v5, "callerApp":Lcom/android/server/am/ProcessRecord;
    invoke-direct/range {v6 .. v13}, Lcom/android/server/am/ActivityStarter;->maybeLogActivityStart(ILjava/lang/String;ILandroid/content/Intent;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/PendingIntentRecord;)V

    .line 980
    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, v2

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p17

    move-object v13, v4

    move-object/from16 v68, v14

    move-object/from16 v14, v50

    .line 980
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v68    # "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v15, p21

    invoke-direct/range {v6 .. v15}, Lcom/android/server/am/ActivityStarter;->startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v6

    return v6
.end method

.method private startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p9, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    move-object v1, p0

    .line 1659
    const/16 v0, -0x60

    move v2, v0

    .line 1661
    .local v2, "result":I
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1662
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/ActivityStarter;->startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1668
    .end local v2    # "result":I
    .local v0, "result":I
    iget-object v2, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1669
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 1670
    iget-object v4, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "startActivity"

    const/4 v8, 0x1

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1673
    :cond_0
    iget-object v3, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1674
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    nop

    .line 1676
    iget-object v2, v1, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object v3, p1

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/server/am/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    .line 1678
    return v0

    .line 1668
    .end local v0    # "result":I
    .local v2, "result":I
    :catchall_0
    move-exception v0

    move-object v3, p1

    iget-object v4, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1669
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-static {v2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    .line 1670
    iget-object v6, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string/jumbo v9, "startActivity"

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1673
    :cond_1
    iget-object v5, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1674
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    throw v0
.end method

.method private startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ZILcom/android/server/am/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;)I
    .locals 93
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/WaitResult;
    .param p14, "globalConfig"    # Landroid/content/res/Configuration;
    .param p15, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p16, "ignoreTargetSecurity"    # Z
    .param p17, "userId"    # I
    .param p18, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p19, "reason"    # Ljava/lang/String;
    .param p20, "allowPendingRemoteAnimationRegistryLookup"    # Z
    .param p21, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;

    move-object/from16 v15, p0

    move-object/from16 v0, p4

    move/from16 v6, p17

    .line 1195
    if-eqz v0, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1196
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1197
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1198
    .local v2, "className":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/NubiaSelfStartUtil;->getInstance()Lcom/android/server/am/NubiaSelfStartUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/NubiaSelfStartUtil;->firstBootGetAllowPkgNames()V

    .line 1199
    invoke-static {}, Lcom/android/server/am/NubiaSelfStartUtil;->getInstance()Lcom/android/server/am/NubiaSelfStartUtil;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/NubiaSelfStartUtil;->isInActivityBlackList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1200
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NBSelfStart] in activity blacklist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const/16 v3, 0x66

    return v3

    .line 1208
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v14

    .line 1209
    .local v14, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v10, 0x1

    if-eqz v14, :cond_1

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v1

    if-le v1, v10, :cond_1

    const-string v1, "android.intent.category.HOME"

    invoke-interface {v14, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.action.MAIN"

    .line 1210
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1211
    invoke-interface {v14}, Ljava/util/Set;->clear()V

    .line 1212
    const-string v1, "android.intent.category.HOME"

    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1216
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1217
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "File descriptors passed in Intent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1219
    :cond_3
    :goto_0
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    .line 1220
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    move v1, v10

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 1222
    .local v1, "componentSpecified":Z
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v36

    .line 1223
    .local v36, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1226
    .local v11, "realCallingUid":I
    if-ltz p2, :cond_5

    .line 1227
    const/4 v3, -0x1

    .line 1232
    .local v3, "callingPid":I
    move/from16 v8, p2

    goto :goto_3

    .line 1228
    .end local v3    # "callingPid":I
    :cond_5
    if-nez p1, :cond_6

    .line 1229
    move/from16 v3, v36

    .line 1230
    .restart local v3    # "callingPid":I
    move v2, v11

    .line 1232
    .end local p2    # "callingUid":I
    .local v2, "callingUid":I
    .local v8, "callingUid":I
    :goto_2
    move v8, v2

    goto :goto_3

    .line 1232
    .end local v2    # "callingUid":I
    .end local v3    # "callingPid":I
    .end local v8    # "callingUid":I
    .restart local p2    # "callingUid":I
    :cond_6
    const/4 v3, -0x1

    move v2, v3

    goto :goto_2

    .line 1232
    .end local p2    # "callingUid":I
    .restart local v3    # "callingPid":I
    .restart local v8    # "callingUid":I
    :goto_3
    move v9, v3

    .line 1236
    .end local v3    # "callingPid":I
    .local v9, "callingPid":I
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1238
    .local v13, "ephemeralIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v5, v2

    .line 1239
    .end local p4    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    if-eqz v1, :cond_8

    const-string v0, "android.intent.action.VIEW"

    .line 1240
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    :cond_7
    const-string v0, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    .line 1241
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    .line 1242
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1243
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 1244
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1248
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1249
    const/4 v1, 0x0

    .line 1252
    .end local v1    # "componentSpecified":Z
    .local v37, "componentSpecified":Z
    :cond_8
    move/from16 v37, v1

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v16, 0x0

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 1254
    invoke-static {v8, v11, v1}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v17

    .line 1252
    move-object v1, v5

    move-object/from16 v2, p5

    move v3, v6

    move/from16 v4, v16

    move-object/from16 v38, v5

    move/from16 v5, v17

    .line 1252
    .end local v5    # "intent":Landroid/content/Intent;
    .local v38, "intent":Landroid/content/Intent;
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 1256
    .local v16, "rInfo":Landroid/content/pm/ResolveInfo;
    if-nez v16, :cond_a

    .line 1257
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 1258
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1262
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 1263
    .local v4, "userManager":Landroid/os/UserManager;
    const/4 v1, 0x0

    .line 1264
    .local v1, "profileLockedAndParentUnlockingOrUnlocked":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1266
    .local v2, "token":J
    :try_start_0
    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1267
    .local v0, "parent":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_9

    :try_start_1
    iget v10, v0, Landroid/content/pm/UserInfo;->id:I

    .line 1268
    invoke-virtual {v4, v10}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1269
    invoke-virtual {v4, v6}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v10, :cond_9

    const/4 v10, 0x1

    goto :goto_4

    .line 1271
    .end local v0    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v17, v5

    move-object/from16 v41, v13

    move-wide v12, v2

    goto :goto_5

    .line 1269
    .restart local v0    # "parent":Landroid/content/pm/UserInfo;
    :cond_9
    const/4 v10, 0x0

    .line 1271
    .end local v0    # "parent":Landroid/content/pm/UserInfo;
    .end local v1    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .local v10, "profileLockedAndParentUnlockingOrUnlocked":Z
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1272
    nop

    .line 1273
    if-eqz v10, :cond_a

    .line 1274
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/high16 v17, 0xc0000

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 1277
    invoke-static {v8, v11, v1}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v18

    .line 1274
    move-object/from16 v1, v38

    move-object/from16 v41, v13

    move-wide v12, v2

    move-object/from16 v2, p5

    .line 1274
    .end local v2    # "token":J
    .end local v13    # "ephemeralIntent":Landroid/content/Intent;
    .local v12, "token":J
    .local v41, "ephemeralIntent":Landroid/content/Intent;
    move v3, v6

    move-object/from16 v19, v4

    move/from16 v4, v17

    .line 1274
    .end local v4    # "userManager":Landroid/os/UserManager;
    .local v19, "userManager":Landroid/os/UserManager;
    move-object/from16 v17, v5

    move/from16 v5, v18

    .line 1274
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    .local v17, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 1274
    .end local v10    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v12    # "token":J
    .end local v17    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v19    # "userManager":Landroid/os/UserManager;
    goto :goto_6

    .line 1271
    .end local v41    # "ephemeralIntent":Landroid/content/Intent;
    .restart local v1    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .restart local v2    # "token":J
    .restart local v4    # "userManager":Landroid/os/UserManager;
    .restart local v5    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v13    # "ephemeralIntent":Landroid/content/Intent;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v17, v5

    move-object/from16 v41, v13

    move-wide v12, v2

    .line 1271
    .end local v2    # "token":J
    .end local v4    # "userManager":Landroid/os/UserManager;
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v13    # "ephemeralIntent":Landroid/content/Intent;
    .restart local v12    # "token":J
    .restart local v17    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v19    # "userManager":Landroid/os/UserManager;
    .restart local v41    # "ephemeralIntent":Landroid/content/Intent;
    :goto_5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1283
    .end local v1    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v12    # "token":J
    .end local v17    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v19    # "userManager":Landroid/os/UserManager;
    .end local v41    # "ephemeralIntent":Landroid/content/Intent;
    .restart local v13    # "ephemeralIntent":Landroid/content/Intent;
    :cond_a
    move-object/from16 v41, v13

    .line 1283
    .end local v13    # "ephemeralIntent":Landroid/content/Intent;
    .end local v16    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v41    # "ephemeralIntent":Landroid/content/Intent;
    :goto_6
    move-object/from16 v10, v16

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v1, p11

    move-object/from16 v2, p12

    move-object/from16 v3, v38

    invoke-virtual {v0, v3, v10, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    .line 1286
    .end local v38    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1287
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 1288
    .local v4, "className":Ljava/lang/String;
    if-eqz v4, :cond_f

    const-string v0, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    .line 1289
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1290
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "Voip_Is_Talking"

    const/4 v13, 0x0

    invoke-virtual {v0, v5, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1291
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "Voip_Outcall"

    invoke-virtual {v0, v5, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const-string v0, "com.tencent.av.ui.VChatActivity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1292
    :cond_c
    invoke-static {}, Lcn/nubia/game/GameModeHelper;->getDefault()Lcn/nubia/game/GameModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/game/GameModeHelper;->IsGameModeRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1293
    const-string v0, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startActivityWait enter gamecall name="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityGameCallHelper:Lcom/android/server/am/ActivityGameCallHelper;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityGameCallHelper;->isRestartIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1296
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Lcom/android/internal/statusbar/IStatusBarService;->hanldeGameCall(Ljava/lang/String;)V

    .line 1297
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityGameCallHelper:Lcom/android/server/am/ActivityGameCallHelper;

    const/16 v33, 0x0

    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v17, p1

    move/from16 v18, v8

    move-object/from16 v19, p3

    move-object/from16 v20, v3

    move-object/from16 v21, p5

    move-object/from16 v22, p6

    move-object/from16 v23, p7

    move-object/from16 v24, p8

    move-object/from16 v25, p9

    move/from16 v26, p10

    move/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v29, p13

    move-object/from16 v30, p14

    move-object/from16 v31, p15

    move/from16 v32, v6

    move-object/from16 v34, p18

    move-object/from16 v35, v5

    invoke-virtual/range {v16 .. v35}, Lcom/android/server/am/ActivityGameCallHelper;->redirectGameCallActivityStart(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/Object;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1304
    goto :goto_7

    .line 1301
    :catch_0
    move-exception v0

    .line 1302
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1303
    const-string v5, "ActivityManager"

    const-string v13, "e.printStackTrace()"

    invoke-static {v5, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7
    const/4 v5, 0x0

    return v5

    .line 1307
    :cond_d
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityGameCallHelper:Lcom/android/server/am/ActivityGameCallHelper;

    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityGameCallHelper;->getGameCallStartIntentInfo(Ljava/lang/String;)Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;

    move-result-object v0

    .line 1308
    .local v0, "info":Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;
    const-string v5, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startActivityWait restart info ="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    if-eqz v0, :cond_f

    .line 1310
    iget-object v1, v0, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mCaller:Landroid/app/IApplicationThread;

    .line 1311
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .local v1, "caller":Landroid/app/IApplicationThread;
    iget v5, v0, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mCallingUid:I

    .line 1312
    .end local v8    # "callingUid":I
    .local v5, "callingUid":I
    iget-object v7, v0, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mCallingPackage:Ljava/lang/String;

    .line 1313
    .end local p3    # "callingPackage":Ljava/lang/String;
    .local v7, "callingPackage":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mIntent:Landroid/content/Intent;

    .line 1314
    iget-object v8, v0, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mResolvedType:Ljava/lang/String;

    .line 1315
    .end local p5    # "resolvedType":Ljava/lang/String;
    .local v8, "resolvedType":Ljava/lang/String;
    iget-object v13, v0, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1316
    .end local p6    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .local v13, "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    move-object/from16 v43, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 1317
    .end local p7    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .local v1, "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .local v43, "caller":Landroid/app/IApplicationThread;
    move-object/from16 v44, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mResultTo:Landroid/os/IBinder;

    .line 1318
    .end local p8    # "resultTo":Landroid/os/IBinder;
    .local v1, "resultTo":Landroid/os/IBinder;
    .local v44, "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    move-object/from16 v45, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mResultWho:Ljava/lang/String;

    .line 1319
    .end local p9    # "resultWho":Ljava/lang/String;
    .local v1, "resultWho":Ljava/lang/String;
    .local v45, "resultTo":Landroid/os/IBinder;
    move-object/from16 v46, v1

    iget v1, v0, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mRequestCode:I

    .line 1320
    .end local p10    # "requestCode":I
    .local v1, "requestCode":I
    .local v46, "resultWho":Ljava/lang/String;
    move/from16 v47, v1

    iget v1, v0, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mStartFlags:I

    .line 1321
    .end local p11    # "startFlags":I
    .local v1, "startFlags":I
    .local v47, "requestCode":I
    iget-object v2, v0, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 1322
    .end local p12    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v2, "profilerInfo":Landroid/app/ProfilerInfo;
    move/from16 v48, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mOutResult:Landroid/app/WaitResult;

    .line 1323
    .end local p13    # "outResult":Landroid/app/WaitResult;
    .local v1, "outResult":Landroid/app/WaitResult;
    .local v48, "startFlags":I
    move-object/from16 v49, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mConfig:Landroid/content/res/Configuration;

    .line 1324
    .end local p14    # "globalConfig":Landroid/content/res/Configuration;
    .local v1, "globalConfig":Landroid/content/res/Configuration;
    .local v49, "outResult":Landroid/app/WaitResult;
    move-object/from16 v50, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mOptions:Lcom/android/server/am/SafeActivityOptions;

    .line 1325
    .end local p15    # "options":Lcom/android/server/am/SafeActivityOptions;
    .local v1, "options":Lcom/android/server/am/SafeActivityOptions;
    .local v50, "globalConfig":Landroid/content/res/Configuration;
    iget v6, v0, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mUserId:I

    .line 1327
    .end local p17    # "userId":I
    .local v6, "userId":I
    move-object/from16 v51, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1328
    .end local p18    # "inTask":Lcom/android/server/am/TaskRecord;
    .local v1, "inTask":Lcom/android/server/am/TaskRecord;
    .local v51, "options":Lcom/android/server/am/SafeActivityOptions;
    move-object/from16 v53, v1

    move-object/from16 v52, v2

    iget-wide v1, v0, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mToken:J

    .line 1328
    .end local v1    # "inTask":Lcom/android/server/am/TaskRecord;
    .end local v2    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v52, "profilerInfo":Landroid/app/ProfilerInfo;
    .local v53, "inTask":Lcom/android/server/am/TaskRecord;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1335
    .end local v0    # "info":Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;
    .end local v4    # "className":Ljava/lang/String;
    move-object v0, v3

    move/from16 v38, v5

    move/from16 v54, v6

    move-object/from16 v42, v7

    move-object/from16 v55, v53

    move-object/from16 v53, v51

    move-object/from16 v51, v50

    move-object/from16 v50, v49

    move/from16 v49, v48

    move/from16 v48, v47

    move-object/from16 v47, v46

    move-object/from16 v46, v45

    move-object/from16 v45, v44

    move-object/from16 v44, v13

    move-object v13, v8

    goto :goto_9

    .end local v5    # "callingUid":I
    .end local v6    # "userId":I
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v13    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local v43    # "caller":Landroid/app/IApplicationThread;
    .end local v44    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v45    # "resultTo":Landroid/os/IBinder;
    .end local v46    # "resultWho":Ljava/lang/String;
    .end local v47    # "requestCode":I
    .end local v48    # "startFlags":I
    .end local v49    # "outResult":Landroid/app/WaitResult;
    .end local v50    # "globalConfig":Landroid/content/res/Configuration;
    .end local v51    # "options":Lcom/android/server/am/SafeActivityOptions;
    .end local v52    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v53    # "inTask":Lcom/android/server/am/TaskRecord;
    .local v8, "callingUid":I
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p3    # "callingPackage":Ljava/lang/String;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    .restart local p6    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .restart local p7    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .restart local p8    # "resultTo":Landroid/os/IBinder;
    .restart local p9    # "resultWho":Ljava/lang/String;
    .restart local p10    # "requestCode":I
    .restart local p11    # "startFlags":I
    .restart local p12    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p13    # "outResult":Landroid/app/WaitResult;
    .restart local p14    # "globalConfig":Landroid/content/res/Configuration;
    .restart local p15    # "options":Lcom/android/server/am/SafeActivityOptions;
    .restart local p17    # "userId":I
    .restart local p18    # "inTask":Lcom/android/server/am/TaskRecord;
    :cond_f
    move-object/from16 v43, p1

    move-object/from16 v42, p3

    move-object/from16 v13, p5

    move-object/from16 v44, p6

    move-object/from16 v45, p7

    move-object/from16 v46, p8

    move-object/from16 v47, p9

    move/from16 v48, p10

    move-object/from16 v50, p13

    move-object/from16 v51, p14

    move-object/from16 v53, p15

    move-object/from16 v55, p18

    move-object/from16 v52, v2

    move-object v0, v3

    move/from16 v54, v6

    move/from16 v38, v8

    move/from16 v49, p11

    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "callingUid":I
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "callingPackage":Ljava/lang/String;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .end local p6    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local p7    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local p8    # "resultTo":Landroid/os/IBinder;
    .end local p9    # "resultWho":Ljava/lang/String;
    .end local p10    # "requestCode":I
    .end local p11    # "startFlags":I
    .end local p12    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p13    # "outResult":Landroid/app/WaitResult;
    .end local p14    # "globalConfig":Landroid/content/res/Configuration;
    .end local p15    # "options":Lcom/android/server/am/SafeActivityOptions;
    .end local p17    # "userId":I
    .end local p18    # "inTask":Lcom/android/server/am/TaskRecord;
    .local v0, "intent":Landroid/content/Intent;
    .local v13, "resolvedType":Ljava/lang/String;
    .local v38, "callingUid":I
    .local v42, "callingPackage":Ljava/lang/String;
    .restart local v43    # "caller":Landroid/app/IApplicationThread;
    .local v44, "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .local v45, "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .local v46, "resultTo":Landroid/os/IBinder;
    .local v47, "resultWho":Ljava/lang/String;
    .local v48, "requestCode":I
    .local v49, "startFlags":I
    .local v50, "outResult":Landroid/app/WaitResult;
    .local v51, "globalConfig":Landroid/content/res/Configuration;
    .restart local v52    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v53, "options":Lcom/android/server/am/SafeActivityOptions;
    .local v54, "userId":I
    .local v55, "inTask":Lcom/android/server/am/TaskRecord;
    :goto_9
    const/4 v1, 0x0

    .line 1336
    .local v1, "isScreenLock":Z
    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v2, :cond_10

    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1337
    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v1

    .line 1339
    .end local v1    # "isScreenLock":Z
    .local v8, "isScreenLock":Z
    :cond_10
    move v8, v1

    if-eqz v12, :cond_12

    sget-boolean v1, Lcom/android/server/am/AppLockerConfig;->ENABLE:Z

    if-eqz v1, :cond_12

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityLockHelper:Lcom/android/server/am/ActivityLockHelper;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityLockHelper;->isLockedOn()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityLockHelper:Lcom/android/server/am/ActivityLockHelper;

    iget-object v2, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1340
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityLockHelper;->isLockActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityLockHelper:Lcom/android/server/am/ActivityLockHelper;

    .line 1341
    invoke-virtual {v1, v12, v8}, Lcom/android/server/am/ActivityLockHelper;->isWhiteListActivity(Landroid/content/pm/ActivityInfo;Z)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1342
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object v1, v15

    move-object v2, v0

    move-object v3, v13

    move-object v4, v12

    move/from16 v6, v38

    move-object/from16 v7, v42

    move/from16 v56, v8

    move/from16 v8, p16

    .end local v8    # "isScreenLock":Z
    .local v56, "isScreenLock":Z
    move-object/from16 v57, v10

    move v10, v9

    move/from16 v9, p20

    .line 1342
    .end local v9    # "callingPid":I
    .local v10, "callingPid":I
    .local v57, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/ActivityStarter;->willBeAbortLater(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;IILjava/lang/String;ZZ)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1344
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityLockHelper:Lcom/android/server/am/ActivityLockHelper;

    iget-object v2, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityLockHelper;->isPkgNeedLocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1345
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityLockHelper:Lcom/android/server/am/ActivityLockHelper;

    const/16 v33, 0x0

    iget-object v2, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v1

    move-object/from16 v17, v43

    move/from16 v18, v38

    move-object/from16 v19, v42

    move-object/from16 v20, v0

    move-object/from16 v21, v13

    move-object/from16 v22, v44

    move-object/from16 v23, v45

    move-object/from16 v24, v46

    move-object/from16 v25, v47

    move/from16 v26, v48

    move/from16 v27, v49

    move-object/from16 v28, v52

    move-object/from16 v29, v50

    move-object/from16 v30, v51

    move-object/from16 v31, v53

    move/from16 v32, v54

    move-object/from16 v34, v55

    move-object/from16 v35, v2

    invoke-virtual/range {v16 .. v35}, Lcom/android/server/am/ActivityLockHelper;->redirectLockedActivityStart(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/Object;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 1349
    const/4 v1, 0x0

    return v1

    .line 1350
    :cond_11
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityLockHelper:Lcom/android/server/am/ActivityLockHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityLockHelper;->isRestartIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1351
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityLockHelper:Lcom/android/server/am/ActivityLockHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityLockHelper;->getStartIntentInfo(Landroid/content/Intent;)Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    move-result-object v1

    .line 1352
    .local v1, "info":Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;
    if-eqz v1, :cond_13

    .line 1353
    iget-object v2, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mCaller:Landroid/app/IApplicationThread;

    .line 1354
    .end local v43    # "caller":Landroid/app/IApplicationThread;
    .local v2, "caller":Landroid/app/IApplicationThread;
    iget v3, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mCallingUid:I

    .line 1355
    .end local v38    # "callingUid":I
    .local v3, "callingUid":I
    iget-object v4, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mCallingPackage:Ljava/lang/String;

    .line 1356
    .end local v42    # "callingPackage":Ljava/lang/String;
    .local v4, "callingPackage":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mIntent:Landroid/content/Intent;

    .line 1357
    iget-object v5, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mResolvedType:Ljava/lang/String;

    .line 1358
    .end local v13    # "resolvedType":Ljava/lang/String;
    .local v5, "resolvedType":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1359
    .end local v44    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .local v6, "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    iget-object v7, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 1360
    .end local v45    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .local v7, "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    iget-object v8, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mResultTo:Landroid/os/IBinder;

    .line 1361
    .end local v46    # "resultTo":Landroid/os/IBinder;
    .local v8, "resultTo":Landroid/os/IBinder;
    iget-object v9, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mResultWho:Ljava/lang/String;

    .line 1362
    .end local v47    # "resultWho":Ljava/lang/String;
    .local v9, "resultWho":Ljava/lang/String;
    iget v13, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mRequestCode:I

    .line 1363
    .end local v48    # "requestCode":I
    .local v13, "requestCode":I
    move-object/from16 v58, v0

    iget v0, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mStartFlags:I

    .line 1364
    .end local v49    # "startFlags":I
    .local v0, "startFlags":I
    .local v58, "intent":Landroid/content/Intent;
    move/from16 v59, v0

    iget-object v0, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 1365
    .end local v52    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v0, "profilerInfo":Landroid/app/ProfilerInfo;
    .local v59, "startFlags":I
    move-object/from16 v60, v0

    iget-object v0, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mOutResult:Landroid/app/WaitResult;

    .line 1366
    .end local v50    # "outResult":Landroid/app/WaitResult;
    .local v0, "outResult":Landroid/app/WaitResult;
    .local v60, "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v61, v0

    iget-object v0, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mConfig:Landroid/content/res/Configuration;

    .line 1367
    .end local v51    # "globalConfig":Landroid/content/res/Configuration;
    .local v0, "globalConfig":Landroid/content/res/Configuration;
    .local v61, "outResult":Landroid/app/WaitResult;
    move-object/from16 v62, v0

    iget-object v0, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mOptions:Lcom/android/server/am/SafeActivityOptions;

    .line 1368
    .end local v53    # "options":Lcom/android/server/am/SafeActivityOptions;
    .local v0, "options":Lcom/android/server/am/SafeActivityOptions;
    .local v62, "globalConfig":Landroid/content/res/Configuration;
    move-object/from16 v63, v0

    iget v0, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mUserId:I

    .line 1370
    .end local v54    # "userId":I
    .local v0, "userId":I
    .local v63, "options":Lcom/android/server/am/SafeActivityOptions;
    move/from16 v64, v0

    iget-object v0, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1371
    .end local v55    # "inTask":Lcom/android/server/am/TaskRecord;
    .local v0, "inTask":Lcom/android/server/am/TaskRecord;
    .local v64, "userId":I
    move-object/from16 v65, v2

    move/from16 v66, v3

    iget-wide v2, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mToken:J

    .line 1371
    .end local v2    # "caller":Landroid/app/IApplicationThread;
    .end local v3    # "callingUid":I
    .local v65, "caller":Landroid/app/IApplicationThread;
    .local v66, "callingUid":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1377
    .end local v1    # "info":Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;
    move-object/from16 v55, v0

    move-object/from16 v42, v4

    move-object/from16 v44, v6

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move-object/from16 v47, v9

    move/from16 v48, v13

    move-object/from16 v0, v58

    move-object/from16 v43, v65

    move-object v13, v5

    goto :goto_a

    .end local v4    # "callingPackage":Ljava/lang/String;
    .end local v5    # "resolvedType":Ljava/lang/String;
    .end local v6    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local v7    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v56    # "isScreenLock":Z
    .end local v57    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v58    # "intent":Landroid/content/Intent;
    .end local v59    # "startFlags":I
    .end local v60    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v61    # "outResult":Landroid/app/WaitResult;
    .end local v62    # "globalConfig":Landroid/content/res/Configuration;
    .end local v63    # "options":Lcom/android/server/am/SafeActivityOptions;
    .end local v64    # "userId":I
    .end local v65    # "caller":Landroid/app/IApplicationThread;
    .end local v66    # "callingUid":I
    .local v0, "intent":Landroid/content/Intent;
    .local v8, "isScreenLock":Z
    .local v9, "callingPid":I
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v13, "resolvedType":Ljava/lang/String;
    .restart local v38    # "callingUid":I
    .restart local v42    # "callingPackage":Ljava/lang/String;
    .restart local v43    # "caller":Landroid/app/IApplicationThread;
    .restart local v44    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .restart local v45    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .restart local v46    # "resultTo":Landroid/os/IBinder;
    .restart local v47    # "resultWho":Ljava/lang/String;
    .restart local v48    # "requestCode":I
    .restart local v49    # "startFlags":I
    .restart local v50    # "outResult":Landroid/app/WaitResult;
    .restart local v51    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v52    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v53    # "options":Lcom/android/server/am/SafeActivityOptions;
    .restart local v54    # "userId":I
    .restart local v55    # "inTask":Lcom/android/server/am/TaskRecord;
    :cond_12
    move/from16 v56, v8

    move-object/from16 v57, v10

    move v10, v9

    .line 1377
    .end local v8    # "isScreenLock":Z
    .end local v9    # "callingPid":I
    .local v10, "callingPid":I
    .restart local v56    # "isScreenLock":Z
    .restart local v57    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_13
    move/from16 v66, v38

    move/from16 v59, v49

    move-object/from16 v61, v50

    move-object/from16 v62, v51

    move-object/from16 v60, v52

    move-object/from16 v63, v53

    move/from16 v64, v54

    .line 1377
    .end local v38    # "callingUid":I
    .end local v49    # "startFlags":I
    .end local v50    # "outResult":Landroid/app/WaitResult;
    .end local v51    # "globalConfig":Landroid/content/res/Configuration;
    .end local v52    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v53    # "options":Lcom/android/server/am/SafeActivityOptions;
    .end local v54    # "userId":I
    .restart local v59    # "startFlags":I
    .restart local v60    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v61    # "outResult":Landroid/app/WaitResult;
    .restart local v62    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v63    # "options":Lcom/android/server/am/SafeActivityOptions;
    .restart local v64    # "userId":I
    .restart local v66    # "callingUid":I
    :goto_a
    const/4 v1, 0x0

    .line 1378
    .local v1, "screenLock":Z
    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v2, :cond_14

    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 1379
    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v1

    .line 1381
    .end local v1    # "screenLock":Z
    .local v9, "screenLock":Z
    :cond_14
    move v9, v1

    if-eqz v12, :cond_16

    sget-boolean v1, Lcom/android/server/am/AppTimeLockConfig;->ENABLE:Z

    if-eqz v1, :cond_16

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTimeLockHelper:Lcom/android/server/am/ActivityTimeLockHelper;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityTimeLockHelper;->isLockedOn()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTimeLockHelper:Lcom/android/server/am/ActivityTimeLockHelper;

    iget-object v2, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1382
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityTimeLockHelper;->isLockActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTimeLockHelper:Lcom/android/server/am/ActivityTimeLockHelper;

    .line 1383
    invoke-virtual {v1, v12, v9}, Lcom/android/server/am/ActivityTimeLockHelper;->isWhiteListActivity(Landroid/content/pm/ActivityInfo;Z)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1384
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object v1, v15

    move-object v2, v0

    move-object v3, v13

    move-object v4, v12

    move/from16 v6, v66

    move-object/from16 v7, v42

    move/from16 v8, p16

    move/from16 v38, v9

    move/from16 v9, p20

    .end local v9    # "screenLock":Z
    .local v38, "screenLock":Z
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/ActivityStarter;->willBeAbortLaterForAppTimeLock(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;IILjava/lang/String;ZZ)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1386
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityWait aInfo.packageName  ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTimeLockHelper:Lcom/android/server/am/ActivityTimeLockHelper;

    iget-object v2, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityTimeLockHelper;->isPkgNeedLocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1388
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "startActivityWait redirectLockedActivityStart"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTimeLockHelper:Lcom/android/server/am/ActivityTimeLockHelper;

    const/16 v33, 0x0

    iget-object v2, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v1

    move-object/from16 v17, v43

    move/from16 v18, v66

    move-object/from16 v19, v42

    move-object/from16 v20, v0

    move-object/from16 v21, v13

    move-object/from16 v22, v44

    move-object/from16 v23, v45

    move-object/from16 v24, v46

    move-object/from16 v25, v47

    move/from16 v26, v48

    move/from16 v27, v59

    move-object/from16 v28, v60

    move-object/from16 v29, v61

    move-object/from16 v30, v62

    move-object/from16 v31, v63

    move/from16 v32, v64

    move-object/from16 v34, v55

    move-object/from16 v35, v2

    invoke-virtual/range {v16 .. v35}, Lcom/android/server/am/ActivityTimeLockHelper;->redirectLockedActivityStart(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/Object;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 1393
    const/4 v1, 0x0

    return v1

    .line 1394
    :cond_15
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTimeLockHelper:Lcom/android/server/am/ActivityTimeLockHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityTimeLockHelper;->isRestartIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1395
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "startActivityWait isRestartIntent"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTimeLockHelper:Lcom/android/server/am/ActivityTimeLockHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityTimeLockHelper;->getStartIntentInfo(Landroid/content/Intent;)Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;

    move-result-object v1

    .line 1397
    .local v1, "info":Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;
    if-eqz v1, :cond_17

    .line 1398
    iget-object v2, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mCaller:Landroid/app/IApplicationThread;

    .line 1399
    .end local v43    # "caller":Landroid/app/IApplicationThread;
    .restart local v2    # "caller":Landroid/app/IApplicationThread;
    iget v3, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mCallingUid:I

    .line 1400
    .end local v66    # "callingUid":I
    .restart local v3    # "callingUid":I
    iget-object v4, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mCallingPackage:Ljava/lang/String;

    .line 1401
    .end local v42    # "callingPackage":Ljava/lang/String;
    .restart local v4    # "callingPackage":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mIntent:Landroid/content/Intent;

    .line 1402
    iget-object v13, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mResolvedType:Ljava/lang/String;

    .line 1403
    iget-object v5, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1404
    .end local v44    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .local v5, "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    iget-object v6, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 1405
    .end local v45    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .local v6, "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    iget-object v7, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mResultTo:Landroid/os/IBinder;

    .line 1406
    .end local v46    # "resultTo":Landroid/os/IBinder;
    .local v7, "resultTo":Landroid/os/IBinder;
    iget-object v8, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mResultWho:Ljava/lang/String;

    .line 1407
    .end local v47    # "resultWho":Ljava/lang/String;
    .local v8, "resultWho":Ljava/lang/String;
    iget v9, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mRequestCode:I

    .line 1408
    .end local v48    # "requestCode":I
    .local v9, "requestCode":I
    move-object/from16 v67, v0

    iget v0, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mStartFlags:I

    .line 1409
    .end local v59    # "startFlags":I
    .local v0, "startFlags":I
    .local v67, "intent":Landroid/content/Intent;
    move/from16 v68, v0

    iget-object v0, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 1410
    .end local v60    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v0, "profilerInfo":Landroid/app/ProfilerInfo;
    .local v68, "startFlags":I
    move-object/from16 v69, v0

    iget-object v0, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mOutResult:Landroid/app/WaitResult;

    .line 1411
    .end local v61    # "outResult":Landroid/app/WaitResult;
    .local v0, "outResult":Landroid/app/WaitResult;
    .local v69, "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v70, v0

    iget-object v0, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mConfig:Landroid/content/res/Configuration;

    .line 1412
    .end local v62    # "globalConfig":Landroid/content/res/Configuration;
    .local v0, "globalConfig":Landroid/content/res/Configuration;
    .local v70, "outResult":Landroid/app/WaitResult;
    move-object/from16 v71, v0

    iget-object v0, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mOptions:Lcom/android/server/am/SafeActivityOptions;

    .line 1413
    .end local v63    # "options":Lcom/android/server/am/SafeActivityOptions;
    .local v0, "options":Lcom/android/server/am/SafeActivityOptions;
    .local v71, "globalConfig":Landroid/content/res/Configuration;
    move-object/from16 v72, v0

    iget v0, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mUserId:I

    .line 1415
    .end local v64    # "userId":I
    .local v0, "userId":I
    .local v72, "options":Lcom/android/server/am/SafeActivityOptions;
    move/from16 v73, v0

    iget-object v0, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1416
    .end local v55    # "inTask":Lcom/android/server/am/TaskRecord;
    .local v0, "inTask":Lcom/android/server/am/TaskRecord;
    .local v73, "userId":I
    move-object/from16 v74, v2

    move/from16 v75, v3

    iget-wide v2, v1, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mToken:J

    .line 1416
    .end local v2    # "caller":Landroid/app/IApplicationThread;
    .end local v3    # "callingUid":I
    .local v74, "caller":Landroid/app/IApplicationThread;
    .local v75, "callingUid":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1422
    .end local v1    # "info":Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;
    move-object/from16 v55, v0

    move-object/from16 v42, v4

    move-object/from16 v44, v5

    move-object/from16 v45, v6

    move-object/from16 v46, v7

    move-object/from16 v47, v8

    move/from16 v48, v9

    move-object v4, v13

    move-object/from16 v3, v67

    move/from16 v59, v68

    move-object/from16 v60, v69

    move-object/from16 v8, v70

    move-object/from16 v1, v71

    move-object/from16 v9, v72

    move/from16 v13, v73

    move-object/from16 v2, v74

    goto :goto_b

    .end local v4    # "callingPackage":Ljava/lang/String;
    .end local v5    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local v6    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v7    # "resultTo":Landroid/os/IBinder;
    .end local v8    # "resultWho":Ljava/lang/String;
    .end local v38    # "screenLock":Z
    .end local v67    # "intent":Landroid/content/Intent;
    .end local v68    # "startFlags":I
    .end local v69    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v70    # "outResult":Landroid/app/WaitResult;
    .end local v71    # "globalConfig":Landroid/content/res/Configuration;
    .end local v72    # "options":Lcom/android/server/am/SafeActivityOptions;
    .end local v73    # "userId":I
    .end local v74    # "caller":Landroid/app/IApplicationThread;
    .end local v75    # "callingUid":I
    .local v0, "intent":Landroid/content/Intent;
    .local v9, "screenLock":Z
    .restart local v42    # "callingPackage":Ljava/lang/String;
    .restart local v43    # "caller":Landroid/app/IApplicationThread;
    .restart local v44    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .restart local v45    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .restart local v46    # "resultTo":Landroid/os/IBinder;
    .restart local v47    # "resultWho":Ljava/lang/String;
    .restart local v48    # "requestCode":I
    .restart local v55    # "inTask":Lcom/android/server/am/TaskRecord;
    .restart local v59    # "startFlags":I
    .restart local v60    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v61    # "outResult":Landroid/app/WaitResult;
    .restart local v62    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v63    # "options":Lcom/android/server/am/SafeActivityOptions;
    .restart local v64    # "userId":I
    .restart local v66    # "callingUid":I
    :cond_16
    move/from16 v38, v9

    .line 1422
    .end local v9    # "screenLock":Z
    .restart local v38    # "screenLock":Z
    :cond_17
    move-object v3, v0

    move-object v4, v13

    move-object/from16 v2, v43

    move-object/from16 v8, v61

    move-object/from16 v1, v62

    move-object/from16 v9, v63

    move/from16 v13, v64

    move/from16 v75, v66

    .line 1422
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v43    # "caller":Landroid/app/IApplicationThread;
    .end local v61    # "outResult":Landroid/app/WaitResult;
    .end local v62    # "globalConfig":Landroid/content/res/Configuration;
    .end local v63    # "options":Lcom/android/server/am/SafeActivityOptions;
    .end local v64    # "userId":I
    .end local v66    # "callingUid":I
    .local v1, "globalConfig":Landroid/content/res/Configuration;
    .restart local v2    # "caller":Landroid/app/IApplicationThread;
    .local v3, "intent":Landroid/content/Intent;
    .local v4, "resolvedType":Ljava/lang/String;
    .local v8, "outResult":Landroid/app/WaitResult;
    .local v9, "options":Lcom/android/server/am/SafeActivityOptions;
    .local v13, "userId":I
    .restart local v75    # "callingUid":I
    :goto_b
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1423
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_15

    move-object v6, v0

    .line 1424
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_18

    :try_start_4
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1425
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_c

    .line 1572
    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_2
    move-exception v0

    move-object/from16 v89, v1

    move-object/from16 v40, v7

    move-object/from16 v72, v9

    move v6, v10

    move/from16 v73, v13

    move-object/from16 v39, v14

    move-object v9, v15

    move-object/from16 v13, v41

    move-object/from16 v10, v57

    move-object v15, v8

    move v8, v11

    goto/16 :goto_1b

    .line 1425
    .restart local v6    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_18
    const/4 v0, 0x0

    :goto_c
    :try_start_5
    iput-boolean v0, v6, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1429
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_15

    move-wide/from16 v76, v16

    .line 1431
    .local v76, "origId":J
    const/4 v5, 0x2

    if-eqz v12, :cond_21

    :try_start_6
    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_21

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v0, :cond_21

    .line 1437
    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1438
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 1439
    .local v0, "heavy":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_21

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v78, v6

    iget-object v6, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1439
    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    .local v78, "stack":Lcom/android/server/am/ActivityStack;
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    if-ne v5, v6, :cond_1a

    :try_start_7
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v6, v12, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1440
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez v5, :cond_19

    goto :goto_d

    .line 1497
    .end local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    :cond_19
    move-object/from16 v82, v2

    move-object/from16 v40, v7

    move-object/from16 v85, v8

    move-object/from16 v72, v9

    move-object/from16 v84, v78

    const/16 v21, 0x0

    goto/16 :goto_14

    .line 1441
    .restart local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    :cond_1a
    :goto_d
    move/from16 v5, v75

    .line 1442
    .local v5, "appCallingUid":I
    if-eqz v2, :cond_1c

    .line 1443
    :try_start_8
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1444
    .local v6, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v6, :cond_1b

    .line 1445
    move/from16 v79, v5

    :try_start_9
    iget-object v5, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1445
    .end local v5    # "appCallingUid":I
    .local v79, "appCallingUid":I
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1455
    .end local v79    # "appCallingUid":I
    .restart local v5    # "appCallingUid":I
    move/from16 v79, v5

    move-object/from16 v81, v8

    goto/16 :goto_e

    .line 1447
    :cond_1b
    move/from16 v79, v5

    .line 1447
    .end local v5    # "appCallingUid":I
    .restart local v79    # "appCallingUid":I
    :try_start_a
    const-string v5, "ActivityManager"

    move-object/from16 v80, v6

    new-instance v6, Ljava/lang/StringBuilder;

    .line 1447
    .end local v6    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v80, "callerApp":Lcom/android/server/am/ProcessRecord;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object/from16 v81, v8

    :try_start_b
    const-string v8, "Unable to find app for caller "

    .line 1447
    .end local v8    # "outResult":Landroid/app/WaitResult;
    .local v81, "outResult":Landroid/app/WaitResult;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " (pid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") when starting: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1447
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    invoke-static {v9}, Lcom/android/server/am/SafeActivityOptions;->abort(Lcom/android/server/am/SafeActivityOptions;)V

    .line 1451
    const/16 v5, -0x5e

    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v5

    .line 1572
    .end local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v76    # "origId":J
    .end local v78    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v79    # "appCallingUid":I
    .end local v80    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v0

    move-object/from16 v89, v1

    move-object/from16 v40, v7

    move-object/from16 v72, v9

    move v6, v10

    move v8, v11

    move/from16 v73, v13

    move-object/from16 v39, v14

    move-object v9, v15

    move-object/from16 v13, v41

    move-object/from16 v10, v57

    move-object/from16 v15, v81

    goto/16 :goto_1b

    .end local v81    # "outResult":Landroid/app/WaitResult;
    .restart local v8    # "outResult":Landroid/app/WaitResult;
    :catchall_4
    move-exception v0

    move-object/from16 v89, v1

    move-object/from16 v40, v7

    move-object/from16 v72, v9

    move v6, v10

    move/from16 v73, v13

    move-object/from16 v39, v14

    move-object v9, v15

    move-object/from16 v13, v41

    move-object/from16 v10, v57

    move-object v15, v8

    move v8, v11

    .end local v8    # "outResult":Landroid/app/WaitResult;
    .restart local v81    # "outResult":Landroid/app/WaitResult;
    goto/16 :goto_1b

    .line 1455
    .end local v81    # "outResult":Landroid/app/WaitResult;
    .restart local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "appCallingUid":I
    .restart local v8    # "outResult":Landroid/app/WaitResult;
    .restart local v76    # "origId":J
    .restart local v78    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1c
    move/from16 v79, v5

    move-object/from16 v81, v8

    .line 1455
    .end local v5    # "appCallingUid":I
    .end local v8    # "outResult":Landroid/app/WaitResult;
    .restart local v79    # "appCallingUid":I
    .restart local v81    # "outResult":Landroid/app/WaitResult;
    :goto_e
    :try_start_c
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v17, 0x2

    const-string v18, "android"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v6, 0x1

    new-array v8, v6, [Landroid/content/Intent;

    const/16 v16, 0x0

    aput-object v3, v8, v16
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    move-object/from16 v82, v2

    :try_start_d
    new-array v2, v6, [Ljava/lang/String;

    .end local v2    # "caller":Landroid/app/IApplicationThread;
    .local v82, "caller":Landroid/app/IApplicationThread;
    aput-object v4, v2, v16

    const/high16 v26, 0x50000000

    const/16 v27, 0x0

    move-object/from16 v16, v5

    move/from16 v19, v79

    move/from16 v20, v13

    move-object/from16 v24, v8

    move-object/from16 v25, v2

    invoke-virtual/range {v16 .. v27}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 1461
    .local v2, "target":Landroid/content/IIntentSender;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    move-object v8, v5

    .line 1462
    .local v8, "newIntent":Landroid/content/Intent;
    if-ltz v48, :cond_1d

    .line 1464
    :try_start_e
    const-string v5, "has_result"

    const/4 v6, 0x1

    invoke-virtual {v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_f

    .line 1572
    .end local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "target":Landroid/content/IIntentSender;
    .end local v8    # "newIntent":Landroid/content/Intent;
    .end local v76    # "origId":J
    .end local v78    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v79    # "appCallingUid":I
    :catchall_5
    move-exception v0

    move-object/from16 v89, v1

    move-object/from16 v40, v7

    move-object/from16 v72, v9

    move v6, v10

    move v8, v11

    move/from16 v73, v13

    move-object/from16 v39, v14

    move-object v9, v15

    move-object/from16 v13, v41

    move-object/from16 v10, v57

    move-object/from16 v15, v81

    move-object/from16 v2, v82

    goto/16 :goto_1b

    .line 1466
    .restart local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "target":Landroid/content/IIntentSender;
    .restart local v8    # "newIntent":Landroid/content/Intent;
    .restart local v76    # "origId":J
    .restart local v78    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v79    # "appCallingUid":I
    :cond_1d
    :goto_f
    :try_start_f
    const-string/jumbo v5, "intent"

    new-instance v6, Landroid/content/IntentSender;

    invoke-direct {v6, v2}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1468
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    if-lez v5, :cond_1e

    .line 1469
    :try_start_10
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1470
    .local v5, "hist":Lcom/android/server/am/ActivityRecord;
    const-string v6, "cur_app"

    move-object/from16 v83, v0

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1470
    .end local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    .local v83, "heavy":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v8, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1472
    const-string v0, "cur_task"

    .line 1473
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 1472
    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 1472
    .end local v5    # "hist":Lcom/android/server/am/ActivityRecord;
    goto :goto_10

    .line 1475
    .end local v83    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    :cond_1e
    move-object/from16 v83, v0

    .line 1475
    .end local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v83    # "heavy":Lcom/android/server/am/ProcessRecord;
    :goto_10
    :try_start_11
    const-string/jumbo v0, "new_app"

    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1477
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1478
    const-string v0, "android"

    const-class v5, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 1479
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1478
    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 1480
    const/4 v6, 0x2

    move-object v5, v8

    .line 1481
    .end local v3    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 1482
    .end local v4    # "resolvedType":Ljava/lang/String;
    .local v3, "resolvedType":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1483
    .end local v82    # "caller":Landroid/app/IApplicationThread;
    .local v16, "caller":Landroid/app/IApplicationThread;
    :try_start_12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    move v4, v0

    .line 1484
    .end local v75    # "callingUid":I
    .local v4, "callingUid":I
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    move v10, v0

    .line 1485
    const/16 v37, 0x1

    .line 1486
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v6, v6, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 1487
    invoke-static {v4, v11, v6}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v19
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 1486
    move/from16 v20, v4

    move-object v4, v0

    .line 1486
    .end local v4    # "callingUid":I
    .local v20, "callingUid":I
    move-object/from16 v84, v78

    const/16 v21, 0x0

    move-object/from16 v6, v17

    .line 1486
    .end local v78    # "stack":Lcom/android/server/am/ActivityStack;
    .local v84, "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v40, v7

    move v7, v13

    move-object v0, v8

    move-object/from16 v85, v81

    move/from16 v8, v18

    .line 1486
    .end local v8    # "newIntent":Landroid/content/Intent;
    .end local v81    # "outResult":Landroid/app/WaitResult;
    .local v0, "newIntent":Landroid/content/Intent;
    .local v85, "outResult":Landroid/app/WaitResult;
    move-object/from16 v72, v9

    move/from16 v9, v19

    .line 1486
    .end local v9    # "options":Lcom/android/server/am/SafeActivityOptions;
    .restart local v72    # "options":Lcom/android/server/am/SafeActivityOptions;
    :try_start_14
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 1489
    .end local v57    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v4, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_1f

    :try_start_15
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_11

    .line 1572
    .end local v0    # "newIntent":Landroid/content/Intent;
    .end local v2    # "target":Landroid/content/IIntentSender;
    .end local v76    # "origId":J
    .end local v79    # "appCallingUid":I
    .end local v83    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v84    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_6
    move-exception v0

    move-object/from16 v89, v1

    move v6, v10

    move v8, v11

    move/from16 v73, v13

    move-object/from16 v39, v14

    move-object v9, v15

    move-object/from16 v2, v16

    move/from16 v75, v20

    move-object/from16 v13, v41

    move-object/from16 v15, v85

    move-object v10, v4

    goto/16 :goto_16

    .line 1489
    .restart local v0    # "newIntent":Landroid/content/Intent;
    .restart local v2    # "target":Landroid/content/IIntentSender;
    .restart local v76    # "origId":J
    .restart local v79    # "appCallingUid":I
    .restart local v83    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v84    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1f
    const/4 v6, 0x0

    :goto_11
    move-object v12, v6

    .line 1490
    if-eqz v12, :cond_20

    .line 1491
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v12, v13}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    move-object v0, v6

    .line 1497
    .end local v2    # "target":Landroid/content/IIntentSender;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v79    # "appCallingUid":I
    .end local v83    # "heavy":Lcom/android/server/am/ProcessRecord;
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object v2, v0

    move v6, v10

    goto :goto_12

    .line 1497
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_20
    move v6, v10

    move-object v2, v12

    .line 1497
    .end local v10    # "callingPid":I
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "caller":Landroid/app/IApplicationThread;
    .end local v20    # "callingUid":I
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v6, "callingPid":I
    .restart local v75    # "callingUid":I
    .restart local v82    # "caller":Landroid/app/IApplicationThread;
    :goto_12
    move-object/from16 v82, v16

    move/from16 v75, v20

    goto/16 :goto_15

    .line 1572
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "callingPid":I
    .end local v75    # "callingUid":I
    .end local v76    # "origId":J
    .end local v82    # "caller":Landroid/app/IApplicationThread;
    .end local v84    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v10    # "callingPid":I
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "caller":Landroid/app/IApplicationThread;
    .restart local v20    # "callingUid":I
    .restart local v57    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catchall_7
    move-exception v0

    move-object/from16 v89, v1

    move-object v4, v3

    move-object v3, v5

    move v6, v10

    move v8, v11

    move/from16 v73, v13

    move-object/from16 v39, v14

    move-object v9, v15

    move-object/from16 v2, v16

    move/from16 v75, v20

    move-object/from16 v13, v41

    move-object/from16 v10, v57

    move-object/from16 v15, v85

    goto/16 :goto_1b

    .end local v20    # "callingUid":I
    .end local v72    # "options":Lcom/android/server/am/SafeActivityOptions;
    .end local v85    # "outResult":Landroid/app/WaitResult;
    .local v4, "callingUid":I
    .restart local v9    # "options":Lcom/android/server/am/SafeActivityOptions;
    .restart local v81    # "outResult":Landroid/app/WaitResult;
    :catchall_8
    move-exception v0

    move/from16 v20, v4

    move-object/from16 v40, v7

    move-object/from16 v72, v9

    move-object/from16 v89, v1

    move-object v4, v3

    move-object v3, v5

    move v6, v10

    move v8, v11

    move/from16 v73, v13

    move-object/from16 v39, v14

    move-object v9, v15

    move-object/from16 v2, v16

    move/from16 v75, v20

    move-object/from16 v13, v41

    move-object/from16 v10, v57

    move-object/from16 v15, v81

    .end local v4    # "callingUid":I
    .end local v9    # "options":Lcom/android/server/am/SafeActivityOptions;
    .end local v81    # "outResult":Landroid/app/WaitResult;
    .restart local v20    # "callingUid":I
    .restart local v72    # "options":Lcom/android/server/am/SafeActivityOptions;
    .restart local v85    # "outResult":Landroid/app/WaitResult;
    goto/16 :goto_1b

    .line 1572
    .end local v20    # "callingUid":I
    .end local v72    # "options":Lcom/android/server/am/SafeActivityOptions;
    .end local v85    # "outResult":Landroid/app/WaitResult;
    .restart local v9    # "options":Lcom/android/server/am/SafeActivityOptions;
    .restart local v75    # "callingUid":I
    .restart local v81    # "outResult":Landroid/app/WaitResult;
    :catchall_9
    move-exception v0

    move-object/from16 v40, v7

    move-object/from16 v72, v9

    move-object/from16 v89, v1

    move-object v4, v3

    move-object v3, v5

    move v6, v10

    move v8, v11

    move/from16 v73, v13

    move-object/from16 v39, v14

    move-object v9, v15

    move-object/from16 v2, v16

    move-object/from16 v13, v41

    move-object/from16 v10, v57

    move-object/from16 v15, v81

    goto :goto_13

    .end local v5    # "intent":Landroid/content/Intent;
    .end local v16    # "caller":Landroid/app/IApplicationThread;
    .local v3, "intent":Landroid/content/Intent;
    .local v4, "resolvedType":Ljava/lang/String;
    .restart local v82    # "caller":Landroid/app/IApplicationThread;
    :catchall_a
    move-exception v0

    move-object/from16 v40, v7

    move-object/from16 v72, v9

    move-object/from16 v89, v1

    move v6, v10

    move v8, v11

    move/from16 v73, v13

    move-object/from16 v39, v14

    move-object v9, v15

    move-object/from16 v13, v41

    move-object/from16 v10, v57

    move-object/from16 v15, v81

    move-object/from16 v2, v82

    .end local v1    # "globalConfig":Landroid/content/res/Configuration;
    .end local v9    # "options":Lcom/android/server/am/SafeActivityOptions;
    .end local v11    # "realCallingUid":I
    .end local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v41    # "ephemeralIntent":Landroid/content/Intent;
    .end local v57    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v81    # "outResult":Landroid/app/WaitResult;
    .end local v82    # "caller":Landroid/app/IApplicationThread;
    .local v2, "caller":Landroid/app/IApplicationThread;
    .restart local v6    # "callingPid":I
    .local v8, "realCallingUid":I
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v13, "ephemeralIntent":Landroid/content/Intent;
    .local v15, "outResult":Landroid/app/WaitResult;
    .local v39, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v72    # "options":Lcom/android/server/am/SafeActivityOptions;
    .restart local v73    # "userId":I
    .restart local v85    # "outResult":Landroid/app/WaitResult;
    .local v89, "globalConfig":Landroid/content/res/Configuration;
    :goto_13
    goto/16 :goto_1b

    .line 1572
    .end local v6    # "callingPid":I
    .end local v8    # "realCallingUid":I
    .end local v15    # "outResult":Landroid/app/WaitResult;
    .end local v39    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v72    # "options":Lcom/android/server/am/SafeActivityOptions;
    .end local v73    # "userId":I
    .end local v85    # "outResult":Landroid/app/WaitResult;
    .end local v89    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v1    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v9    # "options":Lcom/android/server/am/SafeActivityOptions;
    .local v10, "callingPid":I
    .restart local v11    # "realCallingUid":I
    .local v13, "userId":I
    .restart local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v41    # "ephemeralIntent":Landroid/content/Intent;
    .restart local v57    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v81    # "outResult":Landroid/app/WaitResult;
    :catchall_b
    move-exception v0

    move-object/from16 v82, v2

    move-object/from16 v40, v7

    move-object/from16 v72, v9

    move-object/from16 v89, v1

    move v6, v10

    move v8, v11

    move/from16 v73, v13

    move-object/from16 v39, v14

    move-object v9, v15

    move-object/from16 v13, v41

    move-object/from16 v10, v57

    move-object/from16 v15, v81

    .end local v2    # "caller":Landroid/app/IApplicationThread;
    .end local v9    # "options":Lcom/android/server/am/SafeActivityOptions;
    .end local v81    # "outResult":Landroid/app/WaitResult;
    .restart local v72    # "options":Lcom/android/server/am/SafeActivityOptions;
    .restart local v82    # "caller":Landroid/app/IApplicationThread;
    .restart local v85    # "outResult":Landroid/app/WaitResult;
    goto/16 :goto_1b

    .line 1572
    .end local v72    # "options":Lcom/android/server/am/SafeActivityOptions;
    .end local v82    # "caller":Landroid/app/IApplicationThread;
    .end local v85    # "outResult":Landroid/app/WaitResult;
    .restart local v2    # "caller":Landroid/app/IApplicationThread;
    .local v8, "outResult":Landroid/app/WaitResult;
    .restart local v9    # "options":Lcom/android/server/am/SafeActivityOptions;
    :catchall_c
    move-exception v0

    move-object/from16 v82, v2

    move-object/from16 v40, v7

    move-object/from16 v72, v9

    move-object/from16 v89, v1

    move v6, v10

    move/from16 v73, v13

    move-object/from16 v39, v14

    move-object v9, v15

    move-object/from16 v13, v41

    move-object/from16 v10, v57

    move-object v15, v8

    move v8, v11

    .end local v2    # "caller":Landroid/app/IApplicationThread;
    .end local v8    # "outResult":Landroid/app/WaitResult;
    .end local v9    # "options":Lcom/android/server/am/SafeActivityOptions;
    .restart local v72    # "options":Lcom/android/server/am/SafeActivityOptions;
    .restart local v82    # "caller":Landroid/app/IApplicationThread;
    .restart local v85    # "outResult":Landroid/app/WaitResult;
    goto/16 :goto_1b

    .line 1497
    .end local v72    # "options":Lcom/android/server/am/SafeActivityOptions;
    .end local v82    # "caller":Landroid/app/IApplicationThread;
    .end local v85    # "outResult":Landroid/app/WaitResult;
    .restart local v2    # "caller":Landroid/app/IApplicationThread;
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    .restart local v8    # "outResult":Landroid/app/WaitResult;
    .restart local v9    # "options":Lcom/android/server/am/SafeActivityOptions;
    .restart local v76    # "origId":J
    :cond_21
    move-object/from16 v82, v2

    move-object/from16 v84, v6

    move-object/from16 v40, v7

    move-object/from16 v85, v8

    move-object/from16 v72, v9

    const/16 v21, 0x0

    .line 1497
    .end local v2    # "caller":Landroid/app/IApplicationThread;
    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "outResult":Landroid/app/WaitResult;
    .end local v9    # "options":Lcom/android/server/am/SafeActivityOptions;
    .restart local v72    # "options":Lcom/android/server/am/SafeActivityOptions;
    .restart local v82    # "caller":Landroid/app/IApplicationThread;
    .restart local v84    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v85    # "outResult":Landroid/app/WaitResult;
    :goto_14
    move-object v5, v3

    move-object v3, v4

    move v6, v10

    move-object v2, v12

    move-object/from16 v4, v57

    .line 1497
    .end local v10    # "callingPid":I
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v57    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v3, "resolvedType":Ljava/lang/String;
    .local v4, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "intent":Landroid/content/Intent;
    .local v6, "callingPid":I
    :goto_15
    const/4 v0, 0x1

    :try_start_16
    new-array v0, v0, [Lcom/android/server/am/ActivityRecord;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_14

    move-object v7, v0

    .line 1498
    .local v7, "outRecord":[Lcom/android/server/am/ActivityRecord;
    move-object v10, v15

    move v8, v11

    move-object/from16 v11, v82

    .line 1498
    .end local v11    # "realCallingUid":I
    .local v8, "realCallingUid":I
    move/from16 v9, v21

    move-object v12, v5

    move-object/from16 v39, v14

    move-object v14, v3

    .line 1498
    .end local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v39    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v9, v15

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v44

    move-object/from16 v18, v45

    move-object/from16 v19, v46

    move-object/from16 v20, v47

    move/from16 v21, v48

    move/from16 v22, v6

    move/from16 v23, v75

    move-object/from16 v24, v42

    move/from16 v25, v36

    move/from16 v26, v8

    move/from16 v27, v59

    move-object/from16 v28, v72

    move/from16 v29, p16

    move/from16 v30, v37

    move-object/from16 v31, v7

    move-object/from16 v32, v55

    move-object/from16 v33, p19

    move/from16 v34, p20

    move-object/from16 v35, p21

    move/from16 v73, v13

    move-object/from16 v13, v41

    :try_start_17
    invoke-direct/range {v10 .. v35}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;)I

    move-result v0

    .end local v41    # "ephemeralIntent":Landroid/content/Intent;
    .local v13, "ephemeralIntent":Landroid/content/Intent;
    .restart local v73    # "userId":I
    move v10, v0

    .line 1504
    .local v10, "res":I
    move-wide/from16 v11, v76

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1506
    .end local v76    # "origId":J
    .local v11, "origId":J
    move-object/from16 v14, v84

    iget-boolean v0, v14, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_13

    .line 1506
    .end local v84    # "stack":Lcom/android/server/am/ActivityStack;
    .local v14, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_22

    .line 1511
    :try_start_18
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v15, "android.permission.CHANGE_CONFIGURATION"
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    move-object/from16 v86, v2

    :try_start_19
    const-string/jumbo v2, "updateConfiguration()"

    .line 1511
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v86, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    const/4 v2, 0x0

    iput-boolean v2, v14, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1516
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Z)Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    goto :goto_17

    .line 1572
    .end local v7    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .end local v10    # "res":I
    .end local v11    # "origId":J
    .end local v14    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_d
    move-exception v0

    move-object/from16 v89, v1

    move-object v10, v4

    move-object/from16 v2, v82

    move-object/from16 v15, v85

    move-object/from16 v12, v86

    .line 1572
    .end local v1    # "globalConfig":Landroid/content/res/Configuration;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v82    # "caller":Landroid/app/IApplicationThread;
    .end local v85    # "outResult":Landroid/app/WaitResult;
    .end local v86    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v2, "caller":Landroid/app/IApplicationThread;
    .local v3, "intent":Landroid/content/Intent;
    .local v4, "resolvedType":Ljava/lang/String;
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v15    # "outResult":Landroid/app/WaitResult;
    .restart local v89    # "globalConfig":Landroid/content/res/Configuration;
    :goto_16
    move-object v4, v3

    move-object v3, v5

    goto/16 :goto_1b

    .line 1572
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v15    # "outResult":Landroid/app/WaitResult;
    .end local v89    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v1    # "globalConfig":Landroid/content/res/Configuration;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v3, "resolvedType":Ljava/lang/String;
    .local v4, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v82    # "caller":Landroid/app/IApplicationThread;
    .restart local v85    # "outResult":Landroid/app/WaitResult;
    :catchall_e
    move-exception v0

    move-object/from16 v86, v2

    move-object/from16 v89, v1

    move-object v10, v4

    move-object/from16 v2, v82

    move-object/from16 v15, v85

    move-object/from16 v12, v86

    move-object v4, v3

    move-object v3, v5

    .line 1572
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v86    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_1b

    .line 1521
    .end local v86    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .local v10, "res":I
    .restart local v11    # "origId":J
    .restart local v14    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_22
    move-object/from16 v86, v2

    .line 1521
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v86    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_17
    :try_start_1a
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v15, v7, v2

    invoke-virtual {v0, v10, v15}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_12

    .line 1522
    move-object/from16 v15, v85

    if-eqz v15, :cond_28

    .line 1523
    .end local v85    # "outResult":Landroid/app/WaitResult;
    .restart local v15    # "outResult":Landroid/app/WaitResult;
    :try_start_1b
    iput v10, v15, Landroid/app/WaitResult;->result:I

    .line 1525
    aget-object v0, v7, v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    move-object/from16 v87, v0

    .line 1527
    .local v87, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_25

    move-object/from16 v88, v3

    .line 1527
    .end local v3    # "resolvedType":Ljava/lang/String;
    .local v88, "resolvedType":Ljava/lang/String;
    packed-switch v10, :pswitch_data_0

    .line 1571
    .end local v87    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v89, v1

    goto/16 :goto_1a

    .line 1543
    .restart local v87    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_0
    const/4 v2, 0x0

    :try_start_1c
    iput-boolean v2, v15, Landroid/app/WaitResult;->timeout:Z

    .line 1544
    move-object/from16 v2, v87

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1544
    .end local v87    # "r":Lcom/android/server/am/ActivityRecord;
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iput-object v0, v15, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    .line 1545
    move-object/from16 v89, v1

    const-wide/16 v0, 0x0

    :try_start_1d
    iput-wide v0, v15, Landroid/app/WaitResult;->totalTime:J

    .line 1546
    .end local v1    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v89    # "globalConfig":Landroid/content/res/Configuration;
    goto/16 :goto_1a

    .line 1572
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .end local v10    # "res":I
    .end local v11    # "origId":J
    .end local v14    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v89    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v1    # "globalConfig":Landroid/content/res/Configuration;
    :catchall_f
    move-exception v0

    move-object/from16 v89, v1

    move-object v10, v4

    move-object v3, v5

    move-object/from16 v2, v82

    move-object/from16 v12, v86

    move-object/from16 v4, v88

    .line 1572
    .end local v1    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v89    # "globalConfig":Landroid/content/res/Configuration;
    goto/16 :goto_1b

    .line 1551
    .end local v89    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v1    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v7    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "res":I
    .restart local v11    # "origId":J
    .restart local v14    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v87    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_1
    move-object/from16 v89, v1

    move-object/from16 v2, v87

    .line 1551
    .end local v1    # "globalConfig":Landroid/content/res/Configuration;
    .end local v87    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v89    # "globalConfig":Landroid/content/res/Configuration;
    iget-boolean v0, v2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1552
    const/4 v1, 0x0

    iput-boolean v1, v15, Landroid/app/WaitResult;->timeout:Z

    .line 1553
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v0, v15, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1554
    const-wide/16 v0, 0x0

    iput-wide v0, v15, Landroid/app/WaitResult;->totalTime:J

    goto :goto_1a

    .line 1556
    :cond_23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide/from16 v90, v0

    .line 1557
    .local v90, "startTimeMs":J
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v92, v2

    move-wide/from16 v2, v90

    invoke-virtual {v0, v1, v15, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    .line 1561
    .end local v90    # "startTimeMs":J
    .local v2, "startTimeMs":J
    .local v92, "r":Lcom/android/server/am/ActivityRecord;
    :cond_24
    :try_start_1e
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1e} :catch_1
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    .line 1563
    goto :goto_18

    .line 1562
    :catch_1
    move-exception v0

    .line 1564
    :goto_18
    :try_start_1f
    iget-boolean v0, v15, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_29

    iget-object v0, v15, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_24

    .line 1564
    .end local v2    # "startTimeMs":J
    .end local v92    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_1a

    .line 1529
    .end local v88    # "resolvedType":Ljava/lang/String;
    .end local v89    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v1    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    .restart local v87    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_25
    move-object/from16 v89, v1

    move-object/from16 v88, v3

    move-object/from16 v92, v87

    .line 1529
    .end local v1    # "globalConfig":Landroid/content/res/Configuration;
    .end local v3    # "resolvedType":Ljava/lang/String;
    .end local v87    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v88    # "resolvedType":Ljava/lang/String;
    .restart local v89    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v92    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_11

    .line 1532
    :cond_26
    :try_start_20
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_20} :catch_2
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    .line 1534
    goto :goto_19

    .line 1533
    :catch_2
    move-exception v0

    .line 1535
    :goto_19
    :try_start_21
    iget v0, v15, Landroid/app/WaitResult;->result:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    iget-boolean v0, v15, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_27

    iget-object v0, v15, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_26

    .line 1537
    :cond_27
    iget v0, v15, Landroid/app/WaitResult;->result:I

    if-ne v0, v1, :cond_29

    .line 1538
    const/4 v10, 0x2

    goto :goto_1a

    .line 1572
    .end local v7    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .end local v10    # "res":I
    .end local v11    # "origId":J
    .end local v14    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v88    # "resolvedType":Ljava/lang/String;
    .end local v89    # "globalConfig":Landroid/content/res/Configuration;
    .end local v92    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    :catchall_10
    move-exception v0

    move-object/from16 v89, v1

    move-object/from16 v88, v3

    move-object v10, v4

    move-object v3, v5

    move-object/from16 v2, v82

    move-object/from16 v12, v86

    move-object/from16 v4, v88

    .line 1572
    .end local v1    # "globalConfig":Landroid/content/res/Configuration;
    .end local v3    # "resolvedType":Ljava/lang/String;
    .restart local v88    # "resolvedType":Ljava/lang/String;
    .restart local v89    # "globalConfig":Landroid/content/res/Configuration;
    goto/16 :goto_1b

    .line 1571
    .end local v88    # "resolvedType":Ljava/lang/String;
    .end local v89    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v1    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    .restart local v7    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "res":I
    .restart local v11    # "origId":J
    .restart local v14    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_28
    move-object/from16 v89, v1

    move-object/from16 v88, v3

    .line 1571
    .end local v1    # "globalConfig":Landroid/content/res/Configuration;
    .end local v3    # "resolvedType":Ljava/lang/String;
    .restart local v88    # "resolvedType":Ljava/lang/String;
    .restart local v89    # "globalConfig":Landroid/content/res/Configuration;
    :cond_29
    :goto_1a
    monitor-exit v40
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 1572
    .end local v7    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .end local v10    # "res":I
    .end local v11    # "origId":J
    .end local v14    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_11
    move-exception v0

    move-object v10, v4

    move-object v3, v5

    move-object/from16 v2, v82

    move-object/from16 v12, v86

    move-object/from16 v4, v88

    goto/16 :goto_1b

    .line 1572
    .end local v15    # "outResult":Landroid/app/WaitResult;
    .end local v88    # "resolvedType":Ljava/lang/String;
    .end local v89    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v1    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    .restart local v85    # "outResult":Landroid/app/WaitResult;
    :catchall_12
    move-exception v0

    move-object/from16 v89, v1

    move-object/from16 v88, v3

    move-object/from16 v15, v85

    move-object v10, v4

    move-object v3, v5

    move-object/from16 v2, v82

    move-object/from16 v12, v86

    move-object/from16 v4, v88

    .line 1572
    .end local v1    # "globalConfig":Landroid/content/res/Configuration;
    .end local v3    # "resolvedType":Ljava/lang/String;
    .end local v85    # "outResult":Landroid/app/WaitResult;
    .restart local v15    # "outResult":Landroid/app/WaitResult;
    .restart local v88    # "resolvedType":Ljava/lang/String;
    .restart local v89    # "globalConfig":Landroid/content/res/Configuration;
    goto :goto_1b

    .line 1572
    .end local v15    # "outResult":Landroid/app/WaitResult;
    .end local v86    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v88    # "resolvedType":Ljava/lang/String;
    .end local v89    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v1    # "globalConfig":Landroid/content/res/Configuration;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    .restart local v85    # "outResult":Landroid/app/WaitResult;
    :catchall_13
    move-exception v0

    move-object/from16 v89, v1

    move-object/from16 v86, v2

    move-object/from16 v88, v3

    move-object/from16 v15, v85

    move-object v10, v4

    move-object v3, v5

    move-object/from16 v2, v82

    move-object/from16 v12, v86

    move-object/from16 v4, v88

    .end local v1    # "globalConfig":Landroid/content/res/Configuration;
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "resolvedType":Ljava/lang/String;
    .end local v85    # "outResult":Landroid/app/WaitResult;
    .restart local v15    # "outResult":Landroid/app/WaitResult;
    .restart local v86    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v88    # "resolvedType":Ljava/lang/String;
    .restart local v89    # "globalConfig":Landroid/content/res/Configuration;
    goto :goto_1b

    .line 1572
    .end local v8    # "realCallingUid":I
    .end local v15    # "outResult":Landroid/app/WaitResult;
    .end local v39    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v73    # "userId":I
    .end local v86    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v88    # "resolvedType":Ljava/lang/String;
    .end local v89    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v1    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    .local v11, "realCallingUid":I
    .local v13, "userId":I
    .local v14, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v41    # "ephemeralIntent":Landroid/content/Intent;
    .restart local v85    # "outResult":Landroid/app/WaitResult;
    :catchall_14
    move-exception v0

    move-object/from16 v89, v1

    move-object/from16 v86, v2

    move-object/from16 v88, v3

    move v8, v11

    move/from16 v73, v13

    move-object/from16 v39, v14

    move-object v9, v15

    move-object/from16 v13, v41

    move-object/from16 v15, v85

    move-object v10, v4

    move-object v3, v5

    move-object/from16 v2, v82

    move-object/from16 v12, v86

    move-object/from16 v4, v88

    .end local v1    # "globalConfig":Landroid/content/res/Configuration;
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "resolvedType":Ljava/lang/String;
    .end local v11    # "realCallingUid":I
    .end local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v41    # "ephemeralIntent":Landroid/content/Intent;
    .end local v85    # "outResult":Landroid/app/WaitResult;
    .restart local v8    # "realCallingUid":I
    .local v13, "ephemeralIntent":Landroid/content/Intent;
    .restart local v15    # "outResult":Landroid/app/WaitResult;
    .restart local v39    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v73    # "userId":I
    .restart local v86    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v88    # "resolvedType":Ljava/lang/String;
    .restart local v89    # "globalConfig":Landroid/content/res/Configuration;
    goto :goto_1b

    .line 1572
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "callingPid":I
    .end local v15    # "outResult":Landroid/app/WaitResult;
    .end local v39    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v72    # "options":Lcom/android/server/am/SafeActivityOptions;
    .end local v73    # "userId":I
    .end local v82    # "caller":Landroid/app/IApplicationThread;
    .end local v86    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v88    # "resolvedType":Ljava/lang/String;
    .end local v89    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v1    # "globalConfig":Landroid/content/res/Configuration;
    .local v2, "caller":Landroid/app/IApplicationThread;
    .local v3, "intent":Landroid/content/Intent;
    .local v4, "resolvedType":Ljava/lang/String;
    .local v8, "outResult":Landroid/app/WaitResult;
    .restart local v9    # "options":Lcom/android/server/am/SafeActivityOptions;
    .local v10, "callingPid":I
    .restart local v11    # "realCallingUid":I
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v13, "userId":I
    .restart local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v41    # "ephemeralIntent":Landroid/content/Intent;
    .restart local v57    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catchall_15
    move-exception v0

    move-object/from16 v89, v1

    move-object/from16 v82, v2

    move-object/from16 v40, v7

    move-object/from16 v72, v9

    move/from16 v73, v13

    move-object/from16 v39, v14

    move-object v9, v15

    move-object/from16 v13, v41

    move-object v15, v8

    move v8, v11

    move v6, v10

    move-object/from16 v10, v57

    .end local v1    # "globalConfig":Landroid/content/res/Configuration;
    .end local v9    # "options":Lcom/android/server/am/SafeActivityOptions;
    .end local v11    # "realCallingUid":I
    .end local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v41    # "ephemeralIntent":Landroid/content/Intent;
    .end local v57    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "callingPid":I
    .local v8, "realCallingUid":I
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v13, "ephemeralIntent":Landroid/content/Intent;
    .restart local v15    # "outResult":Landroid/app/WaitResult;
    .restart local v39    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v72    # "options":Lcom/android/server/am/SafeActivityOptions;
    .restart local v73    # "userId":I
    .restart local v89    # "globalConfig":Landroid/content/res/Configuration;
    :goto_1b
    :try_start_22
    monitor-exit v40
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_16
    move-exception v0

    goto :goto_1b

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .locals 26
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p9, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v9, p0

    .line 1687
    move-object/from16 v10, p9

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p6

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ActivityStarter;->setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 1690
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 1692
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeSourceStack()V

    .line 1694
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v1, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1696
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1698
    .local v0, "reusedActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {v9, v1}, Lcom/android/server/am/ActivityStarter;->nubiaAcquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;)V

    .line 1701
    const/4 v1, 0x0

    .line 1702
    .local v1, "preferredWindowingMode":I
    const/4 v2, 0x0

    .line 1703
    .local v2, "preferredLaunchDisplayId":I
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_0

    .line 1704
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    .line 1705
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    .line 1710
    :cond_0
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1711
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1712
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v2, v3, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 1715
    :cond_1
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1716
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v1, v3, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 1720
    :cond_2
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_12

    .line 1724
    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget v12, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v13, 0x10008000

    and-int/2addr v12, v13

    if-ne v12, v13, :cond_3

    move v12, v6

    goto :goto_0

    :cond_3
    move v12, v7

    :goto_0
    invoke-virtual {v8, v11, v12}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1727
    const-string v3, "ActivityManager"

    const-string/jumbo v4, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    const/16 v3, 0x65

    return v3

    .line 1733
    :cond_4
    iget v8, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v11, 0x4200000

    and-int/2addr v8, v11

    if-ne v8, v11, :cond_5

    iget v8, v9, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-nez v8, :cond_5

    move v8, v6

    goto :goto_1

    :cond_5
    move v8, v7

    .line 1741
    .local v8, "clearTopAndResetStandardLaunchMode":Z
    :goto_1
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    if-nez v11, :cond_6

    if-nez v8, :cond_6

    .line 1742
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 1745
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v11, :cond_7

    .line 1748
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v11, v12}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1754
    :cond_7
    iget v11, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v12, 0x4000000

    and-int/2addr v11, v12

    if-nez v11, :cond_8

    iget v11, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1755
    invoke-static {v11}, Lcom/android/server/am/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1756
    invoke-direct {v9, v3, v4}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1757
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 1762
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v13, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/TaskRecord;->performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 1769
    .local v12, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    if-nez v13, :cond_9

    .line 1770
    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 1773
    :cond_9
    if-eqz v12, :cond_b

    .line 1774
    iget-boolean v13, v12, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v13, :cond_a

    .line 1777
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    iget-object v14, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v13, v14}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1779
    :cond_a
    invoke-direct {v9, v12}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1783
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_b
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11, v7, v0}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 1785
    invoke-direct {v9, v0}, Lcom/android/server/am/ActivityStarter;->setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1788
    if-eqz v10, :cond_c

    array-length v11, v10

    if-lez v11, :cond_c

    aget-object v11, v10, v7

    goto :goto_2

    :cond_c
    move-object v11, v5

    .line 1792
    .local v11, "outResult":Lcom/android/server/am/ActivityRecord;
    :goto_2
    if-eqz v11, :cond_e

    iget-boolean v12, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v12, :cond_d

    iget-boolean v12, v11, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v12, :cond_e

    .line 1793
    :cond_d
    aput-object v0, v10, v7

    .line 1796
    :cond_e
    iget v12, v9, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/2addr v12, v6

    if-eqz v12, :cond_f

    .line 1800
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1801
    return v6

    .line 1804
    :cond_f
    if-eqz v0, :cond_12

    .line 1805
    invoke-direct {v9, v0}, Lcom/android/server/am/ActivityStarter;->setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 1807
    iget-boolean v12, v9, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v12, :cond_12

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v12, :cond_12

    .line 1811
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1812
    if-eqz v10, :cond_10

    array-length v5, v10

    if-lez v5, :cond_10

    .line 1813
    aput-object v0, v10, v7

    .line 1816
    :cond_10
    iget-boolean v5, v9, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-eqz v5, :cond_11

    goto :goto_3

    :cond_11
    move v4, v3

    :goto_3
    return v4

    .line 1821
    .end local v8    # "clearTopAndResetStandardLaunchMode":Z
    .end local v11    # "outResult":Lcom/android/server/am/ActivityRecord;
    :cond_12
    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v8, :cond_15

    .line 1822
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_13

    .line 1823
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    nop

    :cond_13
    move-object v3, v5

    .line 1824
    .local v3, "sourceStack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_14

    .line 1825
    const/4 v12, -0x1

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v13, v4, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v4, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v15, v4, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1829
    :cond_14
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v4}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1830
    const/16 v4, -0x5c

    return v4

    .line 1835
    .end local v3    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :cond_15
    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1836
    .local v8, "topStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v17

    .line 1837
    .local v17, "topFocused":Lcom/android/server/am/ActivityRecord;
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8, v11}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    .line 1838
    .local v15, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v15, :cond_17

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v11, :cond_17

    iget-object v11, v15, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1839
    invoke-virtual {v11, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    iget v11, v15, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v12, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v11, v12, :cond_17

    iget-object v11, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_17

    iget-object v11, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v11, :cond_17

    iget v11, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v12, 0x20000000

    and-int/2addr v11, v12

    if-nez v11, :cond_16

    .line 1843
    invoke-direct {v9, v6, v4}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v11

    if-eqz v11, :cond_17

    :cond_16
    move v11, v6

    goto :goto_4

    :cond_17
    move v11, v7

    :goto_4
    move/from16 v18, v11

    .line 1844
    .local v18, "dontStart":Z
    if-eqz v18, :cond_1a

    .line 1846
    iput-object v5, v8, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1847
    iget-boolean v4, v9, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v4, :cond_18

    .line 1848
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1850
    :cond_18
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v4}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1851
    iget v4, v9, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_19

    .line 1854
    return v6

    .line 1857
    :cond_19
    invoke-direct {v9, v15}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1861
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v2, v8}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    .line 1864
    return v3

    .line 1867
    :cond_1a
    const/4 v3, 0x0

    .line 1868
    .local v3, "newTask":Z
    iget-boolean v11, v9, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v11, :cond_1b

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v11, :cond_1b

    .line 1869
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    goto :goto_5

    :cond_1b
    move-object v11, v5

    :goto_5
    move-object v14, v11

    .line 1872
    .local v14, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    const/4 v11, 0x0

    .line 1873
    .local v11, "result":I
    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v12, :cond_1e

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v12, :cond_1e

    iget-boolean v12, v9, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v12, :cond_1e

    iget v12, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v13, 0x10000000

    and-int/2addr v12, v13

    if-eqz v12, :cond_1e

    .line 1875
    const/4 v3, 0x1

    .line 1876
    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1883
    .local v12, "packageName":Ljava/lang/String;
    sget-object v13, Lcn/nubiamini/server/appmgmt/BSPPkgNameList;->mSpecialPackageList:Ljava/util/List;

    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v13, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 1885
    .local v5, "isInGameLaunchWhiteList":Z
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->getGameLauncherAppNameList()Ljava/util/List;

    move-result-object v13

    .line 1886
    .local v13, "gameLauncherAppNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_1d

    .line 1887
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/String;

    .line 1888
    .local v7, "pkglist":Ljava/lang/String;
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1889
    const/4 v5, 0x1

    .line 1890
    goto :goto_7

    .line 1892
    .end local v7    # "pkglist":Ljava/lang/String;
    :cond_1c
    nop

    .line 1887
    const/4 v4, 0x2

    const/4 v7, 0x0

    goto :goto_6

    .line 1895
    :cond_1d
    :goto_7
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v9, v5, v4}, Lcom/android/server/am/ActivityStarter;->acquirePerformanceLock(ZLjava/lang/String;)V

    .line 1896
    invoke-direct {v9, v14, v8}, Lcom/android/server/am/ActivityStarter;->setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)I

    move-result v11

    .line 1897
    .end local v5    # "isInGameLaunchWhiteList":Z
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "gameLauncherAppNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_8

    :cond_1e
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_1f

    .line 1898
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromSourceRecord()I

    move-result v11

    .line 1906
    .end local v11    # "result":I
    .local v3, "result":I
    .local v4, "newTask":Z
    :goto_8
    move v4, v3

    move v3, v11

    goto :goto_9

    .line 1899
    .end local v4    # "newTask":Z
    .local v3, "newTask":Z
    .restart local v11    # "result":I
    :cond_1f
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_20

    .line 1900
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromInTask()I

    move-result v11

    goto :goto_8

    .line 1904
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskToCurrentTopOrCreateNewTask()V

    goto :goto_8

    .line 1906
    .end local v11    # "result":I
    .local v3, "result":I
    .restart local v4    # "newTask":Z
    :goto_9
    if-eqz v3, :cond_21

    .line 1907
    return v3

    .line 1910
    :cond_21
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v9, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1911
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v24

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v12, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 1910
    move-object/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v11

    move/from16 v25, v12

    invoke-virtual/range {v20 .. v25}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 1912
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v12, v9, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 1913
    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    .line 1912
    invoke-virtual {v5, v6, v7, v11, v12}, Lcom/android/server/am/ActivityManagerService;->grantEphemeralAccessLocked(ILandroid/content/Intent;II)V

    .line 1914
    if-eqz v4, :cond_22

    .line 1915
    const/16 v5, 0x7534

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v7, v7, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v6, v11

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1916
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v11, 0x1

    aput-object v7, v6, v11

    .line 1915
    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1918
    :cond_22
    const/16 v5, 0x7535

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1919
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    .line 1918
    invoke-static {v5, v6, v7}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1920
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1922
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 1924
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v9, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object/from16 v13, v17

    move-object v7, v14

    move v14, v4

    .line 1924
    .end local v14    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    .local v7, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    move-object/from16 v19, v15

    move v15, v5

    .line 1924
    .end local v15    # "top":Lcom/android/server/am/ActivityRecord;
    .local v19, "top":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZZLandroid/app/ActivityOptions;)V

    .line 1926
    iget-boolean v5, v9, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v5, :cond_26

    .line 1927
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1928
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1929
    .local v5, "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_25

    if-eqz v5, :cond_23

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v6, :cond_23

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v6, v5, :cond_23

    goto :goto_a

    .line 1948
    :cond_23
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_24

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6, v11}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-nez v6, :cond_24

    .line 1949
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v11, "startActivityUnchecked"

    invoke-virtual {v6, v11}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1951
    :cond_24
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6, v11, v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 1951
    .end local v5    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_b

    .line 1938
    .restart local v5    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :cond_25
    :goto_a
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v11, v11}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1941
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1954
    .end local v5    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :goto_b
    goto :goto_c

    :cond_26
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_27

    .line 1955
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    .line 1957
    :cond_27
    :goto_c
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v6, v11}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    .line 1959
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v6, v1, v2, v11}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    .line 1962
    const/4 v5, 0x0

    return v5
.end method

.method private willBeAbortLater(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;IILjava/lang/String;ZZ)Z
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "callingPackage"    # Ljava/lang/String;
    .param p7, "ignoreTargetSecurity"    # Z
    .param p8, "allowPendingRemoteAnimationRegistryLookup"    # Z

    move-object v1, p0

    move-object v9, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object/from16 v12, p6

    .line 1580
    iget-object v2, v1, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object v3, v9

    move-object v4, v10

    move/from16 v5, p4

    move v6, v11

    move-object v7, v12

    move/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->isActivityRestrictionStartByPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;IILjava/lang/String;Z)Z

    move-result v0

    .line 1582
    .local v0, "abort":Z
    iget-object v2, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v7, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move v4, v11

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v0, v2

    .line 1586
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1587
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1588
    .local v2, "className":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/NubiaSelfStartUtil;->getInstance()Lcom/android/server/am/NubiaSelfStartUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/NubiaSelfStartUtil;->firstBootGetAllowPkgNames()V

    .line 1589
    invoke-static {}, Lcom/android/server/am/NubiaSelfStartUtil;->getInstance()Lcom/android/server/am/NubiaSelfStartUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/am/NubiaSelfStartUtil;->isInActivityBlackList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1590
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NBSelfStart] in activity blacklist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    or-int/lit8 v0, v0, 0x1

    .line 1597
    .end local v2    # "className":Ljava/lang/String;
    :cond_0
    move/from16 v2, p4

    invoke-direct {v1, v9, v12, v11, v2}, Lcom/android/server/am/ActivityStarter;->isAllowedStartActivity(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    or-int/2addr v0, v3

    .line 1600
    iget-object v3, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 1601
    .local v3, "km":Landroid/app/KeyguardManager;
    iget-object v4, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1602
    invoke-direct {v1}, Lcom/android/server/am/ActivityStarter;->isScreenOn()Z

    move-result v4

    .line 1603
    .local v4, "isScreenOn":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v4, :cond_2

    .line 1604
    :cond_1
    invoke-direct {v1, v9, v12, v11}, Lcom/android/server/am/ActivityStarter;->isAllowStartActivityWhenLockScreenOn(Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    or-int/2addr v0, v5

    .line 1609
    :cond_2
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1610
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1611
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_5

    const-string v6, "com.tencent.mm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com.tencent.mobileqq"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1612
    :cond_3
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 1613
    .local v6, "className":Ljava/lang/String;
    if-eqz v6, :cond_5

    const-string v7, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "com.tencent.av.ui.VChatActivity"

    .line 1614
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "com.tencent.av.ui.VideoInviteFull"

    .line 1615
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1616
    :cond_4
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->isAllowStartActivityInGameKeys()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    or-int/2addr v0, v7

    .line 1622
    .end local v0    # "abort":Z
    .end local v6    # "className":Ljava/lang/String;
    .local v5, "abort":Z
    :cond_5
    move v5, v0

    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_6

    .line 1626
    :try_start_0
    invoke-virtual {v9}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    .line 1627
    .local v0, "watchIntent":Landroid/content/Intent;
    iget-object v6, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v7, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v0, v7}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    .line 1631
    .end local v0    # "watchIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1629
    :catch_0
    move-exception v0

    .line 1633
    :cond_6
    :goto_0
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Applock: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " abort = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    return v5
.end method

.method private willBeAbortLaterForAppTimeLock(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;IILjava/lang/String;ZZ)Z
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "callingPackage"    # Ljava/lang/String;
    .param p7, "ignoreTargetSecurity"    # Z
    .param p8, "allowPendingRemoteAnimationRegistryLookup"    # Z

    move-object v1, p0

    move-object v9, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object/from16 v12, p6

    .line 3282
    iget-object v2, v1, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object v3, v9

    move-object v4, v10

    move/from16 v5, p4

    move v6, v11

    move-object v7, v12

    move/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->isActivityRestrictionStartByPermissionAndTimeLock(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;IILjava/lang/String;Z)Z

    move-result v0

    .line 3284
    .local v0, "abort":Z
    iget-object v2, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v7, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move v4, v11

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v0, v2

    .line 3288
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3289
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 3290
    .local v2, "className":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/NubiaSelfStartUtil;->getInstance()Lcom/android/server/am/NubiaSelfStartUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/NubiaSelfStartUtil;->firstBootGetAllowPkgNames()V

    .line 3291
    invoke-static {}, Lcom/android/server/am/NubiaSelfStartUtil;->getInstance()Lcom/android/server/am/NubiaSelfStartUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/am/NubiaSelfStartUtil;->isInActivityBlackList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3292
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NBSelfStart] in activity blacklist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    or-int/lit8 v0, v0, 0x1

    .line 3299
    .end local v2    # "className":Ljava/lang/String;
    :cond_0
    move/from16 v2, p4

    invoke-direct {v1, v9, v12, v11, v2}, Lcom/android/server/am/ActivityStarter;->isAllowedStartActivity(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    or-int/2addr v0, v3

    .line 3302
    iget-object v3, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 3303
    .local v3, "km":Landroid/app/KeyguardManager;
    iget-object v4, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 3304
    invoke-direct {v1}, Lcom/android/server/am/ActivityStarter;->isScreenOn()Z

    move-result v4

    .line 3305
    .local v4, "isScreenOn":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v4, :cond_2

    .line 3306
    :cond_1
    invoke-direct {v1, v9, v12, v11}, Lcom/android/server/am/ActivityStarter;->isAllowStartActivityWhenLockScreenOn(Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    or-int/2addr v0, v5

    .line 3311
    :cond_2
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 3312
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3313
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_5

    const-string v6, "com.tencent.mm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com.tencent.mobileqq"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3314
    :cond_3
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 3315
    .local v6, "className":Ljava/lang/String;
    if-eqz v6, :cond_5

    const-string v7, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "com.tencent.av.ui.VChatActivity"

    .line 3316
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "com.tencent.av.ui.VideoInviteFull"

    .line 3317
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3318
    :cond_4
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->isAllowStartActivityInGameKeys()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    or-int/2addr v0, v7

    .line 3324
    .end local v0    # "abort":Z
    .end local v6    # "className":Ljava/lang/String;
    .local v5, "abort":Z
    :cond_5
    move v5, v0

    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_6

    .line 3328
    :try_start_0
    invoke-virtual {v9}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    .line 3329
    .local v0, "watchIntent":Landroid/content/Intent;
    iget-object v6, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v7, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v0, v7}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    .line 3333
    .end local v0    # "watchIntent":Landroid/content/Intent;
    goto :goto_0

    .line 3331
    :catch_0
    move-exception v0

    .line 3335
    :cond_6
    :goto_0
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Apptimelock: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " abort = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    return v5
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 3188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3189
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3190
    const-string/jumbo v0, "mCurrentUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3191
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3192
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3193
    const-string/jumbo v0, "mLastStartReason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3194
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3195
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3196
    const-string/jumbo v0, "mLastStartActivityTimeMs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3197
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3198
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3199
    const-string/jumbo v0, "mLastStartActivityResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3200
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3201
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 3202
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 3203
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3204
    const-string/jumbo v2, "mLastStartActivityRecord:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3207
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1

    .line 3208
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3209
    const-string/jumbo v2, "mStartActivity:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3210
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3212
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 3213
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3214
    const-string/jumbo v2, "mIntent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3215
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3217
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_3

    .line 3218
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3219
    const-string/jumbo v2, "mOptions="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3220
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3222
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3223
    const-string/jumbo v2, "mLaunchSingleTop="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3224
    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 3225
    const-string v2, " mLaunchSingleInstance="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3226
    const/4 v2, 0x3

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v2, v4, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 3227
    const-string v2, " mLaunchSingleTask="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3228
    const/4 v2, 0x2

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v2, v4, :cond_6

    move v1, v3

    nop

    :cond_6
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3229
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3230
    const-string/jumbo v1, "mLaunchFlags=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3231
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3232
    const-string v1, " mDoResume="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3233
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3234
    const-string v1, " mAddingToTask="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3235
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3236
    return-void
.end method

.method execute()I
    .locals 43

    .line 517
    move-object/from16 v15, p0

    :try_start_0
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStarter$Request;->mayWait:Z

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v3, v0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v11, v0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v12, v0, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v14, v0, Lcom/android/server/am/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    move-object/from16 v27, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    move/from16 v28, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    move/from16 v29, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v30, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    move-object/from16 v31, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    move/from16 v32, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    move-object/from16 v22, v1

    move-object/from16 v16, v27

    move/from16 v17, v28

    move/from16 v18, v29

    move-object/from16 v19, v30

    move-object/from16 v20, v31

    move/from16 v21, v32

    move-object v1, v15

    move-object v15, v0

    invoke-direct/range {v1 .. v22}, Lcom/android/server/am/ActivityStarter;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ZILcom/android/server/am/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    .line 518
    return v0

    .line 528
    :cond_0
    move-object/from16 v15, p0

    :try_start_1
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v12, v0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v13, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v14, v0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    move/from16 v33, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    move/from16 v34, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    move/from16 v35, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    move-object/from16 v36, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    move/from16 v37, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->componentSpecified:Z

    move/from16 v38, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->outActivity:[Lcom/android/server/am/ActivityRecord;

    move-object/from16 v39, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    move-object/from16 v41, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    move/from16 v42, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    move-object/from16 v26, v1

    move/from16 v16, v33

    move/from16 v17, v34

    move/from16 v18, v35

    move-object/from16 v19, v36

    move/from16 v20, v37

    move/from16 v21, v38

    move-object/from16 v22, v39

    move-object/from16 v23, v40

    move-object/from16 v24, v41

    move/from16 v25, v42

    move-object v1, v15

    move-object v15, v0

    invoke-direct/range {v1 .. v26}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    .line 528
    return v0

    .line 540
    :catchall_0
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method getIntent()Landroid/content/Intent;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3027
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method getStartActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    .line 3271
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 3272
    const-string/jumbo v0, "statusbar"

    .line 3273
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3272
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 3275
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .line 1139
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    return-void

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/am/ActivityRecord;I)V

    .line 1150
    const/4 v0, 0x0

    .line 1151
    .local v0, "startedActivityStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1152
    .local v1, "currentStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_1

    .line 1153
    move-object v0, v1

    goto :goto_0

    .line 1154
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_2

    .line 1155
    move-object v0, p3

    .line 1158
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 1159
    return-void

    .line 1162
    :cond_3
    const v2, 0x10008000

    .line 1163
    .local v2, "clearTaskFlags":I
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v4, 0x10008000

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 1165
    .local v3, "clearedTask":Z
    :goto_1
    const/4 v4, 0x2

    if-eq p2, v4, :cond_5

    const/4 v4, 0x3

    if-eq p2, v4, :cond_5

    if-eqz v3, :cond_6

    .line 1169
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 1175
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 1176
    .local v4, "homeStack":Lcom/android/server/am/ActivityStack;
    if-eqz v4, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1177
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .end local v4    # "homeStack":Lcom/android/server/am/ActivityStack;
    goto :goto_2

    .line 1171
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v4, v3}, Lcom/android/server/am/TaskChangeNotificationController;->notifyPinnedActivityRestartAttempt(Z)V

    .line 1173
    nop

    .line 1182
    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method relatedToPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 504
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 505
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 506
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    nop

    .line 504
    :cond_2
    return v1
.end method

.method reset(Z)V
    .locals 4
    .param p1, "clearRequest"    # Z

    .line 1984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1985
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1986
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 1987
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1989
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 1990
    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1991
    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    .line 1993
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    .line 1995
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 1996
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1997
    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1998
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1999
    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    .line 2001
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 2002
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2003
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 2005
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 2006
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 2007
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 2009
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2010
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 2011
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 2012
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 2013
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2015
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2016
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2018
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    .line 2020
    if-eqz p1, :cond_0

    .line 2021
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter$Request;->reset()V

    .line 2023
    :cond_0
    return-void
.end method

.method set(Lcom/android/server/am/ActivityStarter;)V
    .locals 2
    .param p1, "starter"    # Lcom/android/server/am/ActivityStarter;

    .line 460
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 461
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 462
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 463
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 465
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 466
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 467
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    .line 469
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v1, p1, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v0, v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->set(Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    .line 471
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 472
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 473
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 474
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 475
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    .line 477
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 478
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 479
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 481
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 482
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 483
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 485
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 486
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 487
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 488
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 489
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 491
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 492
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 494
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    .line 496
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, p1, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter$Request;->set(Lcom/android/server/am/ActivityStarter$Request;)V

    .line 497
    return-void
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 3052
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3053
    return-object p0
.end method

.method setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "bOptions"    # Landroid/os/Bundle;

    .line 3122
    invoke-static {p1}, Lcom/android/server/am/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/am/SafeActivityOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "options"    # Lcom/android/server/am/SafeActivityOptions;

    .line 3117
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    .line 3118
    return-object p0
.end method

.method setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "allowLookup"    # Z

    .line 3178
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 3179
    return-object p0
.end method

.method setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "caller"    # Landroid/app/IApplicationThread;

    .line 3036
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 3037
    return-object p0
.end method

.method setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 3097
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 3098
    return-object p0
.end method

.method setCallingPid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "pid"    # I

    .line 3087
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    .line 3088
    return-object p0
.end method

.method setCallingUid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "uid"    # I

    .line 3092
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    .line 3093
    return-object p0
.end method

.method setComponentSpecified(Z)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "componentSpecified"    # Z

    .line 3136
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityStarter$Request;->componentSpecified:Z

    .line 3137
    return-object p0
.end method

.method setEphemeralIntent(Landroid/content/Intent;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3041
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 3042
    return-object p0
.end method

.method setFilterCallingUid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "filterCallingUid"    # I

    .line 3131
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 3132
    return-object p0
.end method

.method setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 3161
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 3162
    return-object p0
.end method

.method setIgnoreTargetSecurity(Z)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "ignoreTargetSecurity"    # Z

    .line 3126
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 3127
    return-object p0
.end method

.method setInTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "inTask"    # Lcom/android/server/am/TaskRecord;

    .line 3146
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    .line 3147
    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3021
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 3022
    return-object p0
.end method

.method setMayWait(I)Lcom/android/server/am/ActivityStarter;
    .locals 2
    .param p1, "userId"    # I

    .line 3171
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStarter$Request;->mayWait:Z

    .line 3172
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    .line 3174
    return-object p0
.end method

.method setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;

    .line 3183
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 3184
    return-object p0
.end method

.method setOutActivity([Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    .line 3141
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->outActivity:[Lcom/android/server/am/ActivityRecord;

    .line 3142
    return-object p0
.end method

.method setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "info"    # Landroid/app/ProfilerInfo;

    .line 3156
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 3157
    return-object p0
.end method

.method setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "pid"    # I

    .line 3102
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    .line 3103
    return-object p0
.end method

.method setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "uid"    # I

    .line 3107
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    .line 3108
    return-object p0
.end method

.method setReason(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 3031
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 3032
    return-object p0
.end method

.method setRequestCode(I)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "requestCode"    # I

    .line 3082
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    .line 3083
    return-object p0
.end method

.method setResolveInfo(Landroid/content/pm/ResolveInfo;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 3057
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3058
    return-object p0
.end method

.method setResolvedType(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 3047
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 3048
    return-object p0
.end method

.method setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "resultTo"    # Landroid/os/IBinder;

    .line 3072
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 3073
    return-object p0
.end method

.method setResultWho(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "resultWho"    # Ljava/lang/String;

    .line 3077
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 3078
    return-object p0
.end method

.method setStartFlags(I)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "startFlags"    # I

    .line 3112
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    .line 3113
    return-object p0
.end method

.method setUserId(I)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "userId"    # I

    .line 3166
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    .line 3167
    return-object p0
.end method

.method setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 3067
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 3068
    return-object p0
.end method

.method setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 3062
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 3063
    return-object p0
.end method

.method setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "result"    # Landroid/app/WaitResult;

    .line 3151
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 3152
    return-object p0
.end method

.method startResolvedActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p9, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    .line 555
    :try_start_0
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/ActivityStarter;->startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    .line 555
    return v0

    .line 558
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2802
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2803
    return-void

    .line 2806
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2807
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->resizeStackWithLaunchBounds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2808
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    goto :goto_0

    .line 2810
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2812
    :goto_0
    return-void
.end method
