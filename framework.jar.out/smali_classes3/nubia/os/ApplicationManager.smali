.class public Lnubia/os/ApplicationManager;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/ApplicationManager$Trigger;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationManager"

.field private static sDumpDebugLog:Z


# instance fields
.field private final mService:Lnubia/os/IApplicationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    return-void
.end method

.method public constructor <init>(Lnubia/os/IApplicationManager;)V
    .locals 0
    .param p1, "service"    # Lnubia/os/IApplicationManager;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    .line 25
    return-void
.end method

.method private static IsAllowDialogShowImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z
    .locals 4
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1100
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1101
    return v0

    .line 1102
    :cond_0
    const-string v1, "com.android.systemui"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1103
    return v0

    .line 1105
    :cond_1
    if-eqz p0, :cond_2

    .line 1107
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->IsAllowDialogShow(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1108
    :catch_0
    move-exception v1

    .line 1109
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ApplicationManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1110
    return v0

    .line 1113
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    return v0
.end method

.method private static IsGameModeRunningImpl(Lnubia/os/IApplicationManager;)Z
    .locals 4
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .line 1074
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1076
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->IsGameModeRunning()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1077
    :catch_0
    move-exception v1

    .line 1078
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ApplicationManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1079
    return v0

    .line 1082
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return v0
.end method

.method private static IsGameModeSubRunningImpl(Lnubia/os/IApplicationManager;I)Z
    .locals 4
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "flag"    # I

    .line 1087
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1089
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->IsGameModeSubRunning(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1090
    :catch_0
    move-exception v1

    .line 1091
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ApplicationManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1092
    return v0

    .line 1095
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return v0
.end method

.method static synthetic access$000(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->allowPartialWakelockImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->allowWakeupAlarmImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z
    .param p6, "x6"    # I
    .param p7, "x7"    # Ljava/lang/String;

    .line 18
    invoke-static/range {p0 .. p7}, Lnubia/os/ApplicationManager;->noteResumingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$10000(Lnubia/os/IApplicationManager;Z)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Z

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteStartCtsTestImpl(Lnubia/os/IApplicationManager;Z)V

    return-void
.end method

.method static synthetic access$10100(Lnubia/os/IApplicationManager;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .line 18
    invoke-static {p0}, Lnubia/os/ApplicationManager;->noteNaviGestureStartedImpl(Lnubia/os/IApplicationManager;)V

    return-void
.end method

.method static synthetic access$10200(Lnubia/os/IApplicationManager;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .line 18
    invoke-static {p0}, Lnubia/os/ApplicationManager;->noteNaviGestureFinalizationImpl(Lnubia/os/IApplicationManager;)V

    return-void
.end method

.method static synthetic access$10300(Lnubia/os/IApplicationManager;II)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 18
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->noteGameMagicVoiceImpl(Lnubia/os/IApplicationManager;II)V

    return-void
.end method

.method static synthetic access$10400(Lnubia/os/IApplicationManager;I)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteUpdateFunctionStateImpl(Lnubia/os/IApplicationManager;I)V

    return-void
.end method

.method static synthetic access$10500(Lnubia/os/IApplicationManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteCreateActivityImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lnubia/os/IApplicationManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteResumedActivityImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;

    .line 18
    invoke-static/range {p0 .. p7}, Lnubia/os/ApplicationManager;->notePausingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteStoppingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteStartingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteRemovingProcessImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lnubia/os/IApplicationManager;I)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteActivityStackRemovedImpl(Lnubia/os/IApplicationManager;I)V

    return-void
.end method

.method static synthetic access$1700(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteResumedAppDieImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lnubia/os/IApplicationManager;Z)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Z

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteAppTransitionAnimationImpl(Lnubia/os/IApplicationManager;Z)V

    return-void
.end method

.method static synthetic access$1900(Lnubia/os/IApplicationManager;Z)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Z

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteStatusBarExpandingImpl(Lnubia/os/IApplicationManager;Z)V

    return-void
.end method

.method static synthetic access$200(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->allowFreezeAppWakeupAlarmImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->allowBackgroundSyncToRunImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->isControlledByMotionDozeImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lnubia/os/IApplicationManager;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .line 18
    invoke-static {p0}, Lnubia/os/ApplicationManager;->isNetAvailableImpl(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lnubia/os/IApplicationManager;Lnubia/os/IFreezeCallback;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Lnubia/os/IFreezeCallback;

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->setFreezeCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/IFreezeCallback;)V

    return-void
.end method

.method static synthetic access$2400(Lnubia/os/IApplicationManager;Lnubia/os/IAppLearningCallback;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Lnubia/os/IAppLearningCallback;

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->setAppLearningCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/IAppLearningCallback;)V

    return-void
.end method

.method static synthetic access$2500(Lnubia/os/IApplicationManager;)Lnubia/os/IAppLearningCallback;
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .line 18
    invoke-static {p0}, Lnubia/os/ApplicationManager;->getAppLearningCallbackImpl(Lnubia/os/IApplicationManager;)Lnubia/os/IAppLearningCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .line 18
    invoke-static/range {p0 .. p5}, Lnubia/os/ApplicationManager;->noteProcessNeedPreLaunchImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method static synthetic access$2700(Lnubia/os/IApplicationManager;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .line 18
    invoke-static {p0}, Lnubia/os/ApplicationManager;->noteGameModeIsRunningImpl(Lnubia/os/IApplicationManager;)V

    return-void
.end method

.method static synthetic access$2800(Lnubia/os/IApplicationManager;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .line 18
    invoke-static {p0}, Lnubia/os/ApplicationManager;->noteGameModeIsStoppedImpl(Lnubia/os/IApplicationManager;)V

    return-void
.end method

.method static synthetic access$2900(Lnubia/os/IApplicationManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/util/List;

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->setAppLearningProcessListImpl(Lnubia/os/IApplicationManager;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->allowAlarmImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lnubia/os/IApplicationManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .line 18
    invoke-static {p0}, Lnubia/os/ApplicationManager;->getCurrentUserLearningProcessImpl(Lnubia/os/IApplicationManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lnubia/os/IApplicationManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->addPackageToPreLaunchBlackListImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lnubia/os/IApplicationManager;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[Z)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # [I
    .param p2, "x2"    # [I
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # [I
    .param p5, "x5"    # [I
    .param p6, "x6"    # [Ljava/lang/String;
    .param p7, "x7"    # [Z

    .line 18
    invoke-static/range {p0 .. p7}, Lnubia/os/ApplicationManager;->noteProcessStatusImpl(Lnubia/os/IApplicationManager;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[Z)V

    return-void
.end method

.method static synthetic access$3300(Lnubia/os/IApplicationManager;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .line 18
    invoke-static {p0}, Lnubia/os/ApplicationManager;->noteProcessStatusChangedImpl(Lnubia/os/IApplicationManager;)V

    return-void
.end method

.method static synthetic access$3400(Lnubia/os/IApplicationManager;I)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteScreenStateChangedImpl(Lnubia/os/IApplicationManager;I)V

    return-void
.end method

.method static synthetic access$3500(Lnubia/os/IApplicationManager;I)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteKeyguardStateChangedImpl(Lnubia/os/IApplicationManager;I)V

    return-void
.end method

.method static synthetic access$3600(Lnubia/os/IApplicationManager;III)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 18
    invoke-static {p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->noteWindowStateChangeImpl(Lnubia/os/IApplicationManager;III)V

    return-void
.end method

.method static synthetic access$3700(Lnubia/os/IApplicationManager;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->noteAddWindowImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lnubia/os/IApplicationManager;I)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteRemoveWindowImpl(Lnubia/os/IApplicationManager;I)V

    return-void
.end method

.method static synthetic access$3900(Lnubia/os/IApplicationManager;I)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->isProcessFrozenImpl(Lnubia/os/IApplicationManager;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->allow3rdPartyPushImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lnubia/os/IApplicationManager;I)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->isProcessRealFrozenImpl(Lnubia/os/IApplicationManager;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lnubia/os/IApplicationManager;I)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->isProcessFrozenByUidImpl(Lnubia/os/IApplicationManager;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lnubia/os/IApplicationManager;I)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->isProcessRealFrozenByUidImpl(Lnubia/os/IApplicationManager;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lnubia/os/IApplicationManager;Ljava/lang/String;I[I)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # [I

    .line 18
    invoke-static {p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->getFrozenProcessStatusImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;I[I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lnubia/os/IApplicationManager;III)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 18
    invoke-static {p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->isNotifyDisplayEventImpl(Lnubia/os/IApplicationManager;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lnubia/os/IApplicationManager;III)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 18
    invoke-static {p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->noteDisplayStateChangedImpl(Lnubia/os/IApplicationManager;III)V

    return-void
.end method

.method static synthetic access$4600(Lnubia/os/IApplicationManager;IIIILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;

    .line 18
    invoke-static/range {p0 .. p6}, Lnubia/os/ApplicationManager;->isAllowedStartFrozenPackageImpl(Lnubia/os/IApplicationManager;IIIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lnubia/os/IApplicationManager;I)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->unfreezeWhenKillImpl(Lnubia/os/IApplicationManager;I)V

    return-void
.end method

.method static synthetic access$4800(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->notifyClipChangedImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lnubia/os/IApplicationManager;ILjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .line 18
    invoke-static {p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->setNetworkFirewallImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lnubia/os/IApplicationManager;Landroid/app/PendingIntent;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->allowDeliverPendingNonWakeupAlarmInScreenOffImpl(Lnubia/os/IApplicationManager;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lnubia/os/IApplicationManager;I)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteScreenStateImpl(Lnubia/os/IApplicationManager;I)V

    return-void
.end method

.method static synthetic access$5100(Lnubia/os/IApplicationManager;I)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteIdleStateImpl(Lnubia/os/IApplicationManager;I)V

    return-void
.end method

.method static synthetic access$5200(Lnubia/os/IApplicationManager;I)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteDisplayPowerModeChangedImpl(Lnubia/os/IApplicationManager;I)V

    return-void
.end method

.method static synthetic access$5300(Lnubia/os/IApplicationManager;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 18
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->noteAppInactiveImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$5400(Lnubia/os/IApplicationManager;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # J
    .param p8, "x7"    # Z

    .line 18
    invoke-static/range {p0 .. p8}, Lnubia/os/ApplicationManager;->noteAppForegroundImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method static synthetic access$5500(Lnubia/os/IApplicationManager;ILjava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # J

    .line 18
    invoke-static/range {p0 .. p6}, Lnubia/os/ApplicationManager;->noteAppBackgroundImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$5600(Lnubia/os/IApplicationManager;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteAppExitImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteAppExitReasonImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lnubia/os/IApplicationManager;IIJ)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteStartMusicImpl(Lnubia/os/IApplicationManager;IIJ)V

    return-void
.end method

.method static synthetic access$5900(Lnubia/os/IApplicationManager;IIJ)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteEndMusicImpl(Lnubia/os/IApplicationManager;IIJ)V

    return-void
.end method

.method static synthetic access$600(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;J)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Lnubia/os/ITaskCallback;
    .param p2, "x2"    # J

    .line 18
    invoke-static {p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->registerCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;J)V

    return-void
.end method

.method static synthetic access$6000(Lnubia/os/IApplicationManager;II)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 18
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->notePlayMusicToColorfullightImpl(Lnubia/os/IApplicationManager;II)V

    return-void
.end method

.method static synthetic access$6100(Lnubia/os/IApplicationManager;II)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 18
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->noteEndMusicToColorfullightImpl(Lnubia/os/IApplicationManager;II)V

    return-void
.end method

.method static synthetic access$6200(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # J
    .param p7, "x6"    # J

    .line 18
    invoke-static/range {p0 .. p8}, Lnubia/os/ApplicationManager;->noteStartGpsImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$6300(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # J
    .param p7, "x6"    # J

    .line 18
    invoke-static/range {p0 .. p8}, Lnubia/os/ApplicationManager;->noteEndGpsImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$6400(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # J
    .param p7, "x6"    # J

    .line 18
    invoke-static/range {p0 .. p8}, Lnubia/os/ApplicationManager;->noteStartNetworkPositionImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$6500(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # J
    .param p7, "x6"    # J

    .line 18
    invoke-static/range {p0 .. p8}, Lnubia/os/ApplicationManager;->noteEndNetworkPositionImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$6600(Lnubia/os/IApplicationManager;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .line 18
    invoke-static {p0}, Lnubia/os/ApplicationManager;->isUsbInstallSwitchOnImpl(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lnubia/os/IApplicationManager;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->installEventImpl(Lnubia/os/IApplicationManager;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$6800(Lnubia/os/IApplicationManager;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->uninstallEventImpl(Lnubia/os/IApplicationManager;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$6900(Lnubia/os/IApplicationManager;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->grantPermissionDialogClickImpl(Lnubia/os/IApplicationManager;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Lnubia/os/ITaskCallback;
    .param p2, "x2"    # J
    .param p4, "x3"    # Landroid/os/Bundle;

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->registerCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$7000(Lnubia/os/IApplicationManager;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->smallPermissionDialogClickImpl(Lnubia/os/IApplicationManager;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$7100(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteActionMutexImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$7200(Lnubia/os/IApplicationManager;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcn/nubia/mutex/IMutexCallback;

    .line 18
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->registerActionMutexCallbackImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V

    return-void
.end method

.method static synthetic access$7300(Lnubia/os/IApplicationManager;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcn/nubia/mutex/IMutexCallback;

    .line 18
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->unregisterActionMutexCallbackImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V

    return-void
.end method

.method static synthetic access$7400(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->checkActionAllowedImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Lnubia/os/IApplicationManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->checkAllowedGetActionNameImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7600(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->getActionStateImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7700(Lnubia/os/IApplicationManager;[Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # [Landroid/os/Bundle;

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteGPSReceiversImpl(Lnubia/os/IApplicationManager;[Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$7800(Lnubia/os/IApplicationManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .line 18
    invoke-static {p0}, Lnubia/os/ApplicationManager;->getForegroundPackageNameImpl(Lnubia/os/IApplicationManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7900(Lnubia/os/IApplicationManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .line 18
    invoke-static {p0}, Lnubia/os/ApplicationManager;->getGameLauncherAppNameListImpl(Lnubia/os/IApplicationManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Lnubia/os/ITaskCallback;

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->unregisterCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;)V

    return-void
.end method

.method static synthetic access$8000()Z
    .locals 1

    .line 18
    sget-boolean v0, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    return v0
.end method

.method static synthetic access$8100(Lnubia/os/IApplicationManager;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->getApplicationRecondImpl(Lnubia/os/IApplicationManager;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8200(Lnubia/os/IApplicationManager;)I
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .line 18
    invoke-static {p0}, Lnubia/os/ApplicationManager;->getGameModeImpl(Lnubia/os/IApplicationManager;)I

    move-result v0

    return v0
.end method

.method static synthetic access$8300(Lnubia/os/IApplicationManager;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .line 18
    invoke-static {p0}, Lnubia/os/ApplicationManager;->IsGameModeRunningImpl(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8400(Lnubia/os/IApplicationManager;I)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->IsGameModeSubRunningImpl(Lnubia/os/IApplicationManager;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8500(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->IsAllowDialogShowImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8600(Lnubia/os/IApplicationManager;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .line 18
    invoke-static {p0}, Lnubia/os/ApplicationManager;->isAllowStartActivityInGameKeysImpl(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Lnubia/os/IApplicationManager;Z)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Z

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->startOrStopGameBoxImp(Lnubia/os/IApplicationManager;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8800(Lnubia/os/IApplicationManager;J)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # J

    .line 18
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->startGameBoxIfGamekeyOnImp(Lnubia/os/IApplicationManager;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Lnubia/os/IApplicationManager;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .line 18
    invoke-static {p0}, Lnubia/os/ApplicationManager;->isGameAppOnForegroundImpl(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lnubia/os/IApplicationManager;I)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->updateHighlightsCoordinateImpl(Lnubia/os/IApplicationManager;I)V

    return-void
.end method

.method static synthetic access$9000(Lnubia/os/IApplicationManager;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .line 18
    invoke-static {p0}, Lnubia/os/ApplicationManager;->isGameKeyOnImp(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9100(Lnubia/os/IApplicationManager;ILjava/lang/String;ILjava/lang/String;JZ)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # J
    .param p7, "x6"    # Z

    .line 18
    invoke-static/range {p0 .. p7}, Lnubia/os/ApplicationManager;->noteAppUsingCameraImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;ILjava/lang/String;JZ)V

    return-void
.end method

.method static synthetic access$9200(Lnubia/os/IApplicationManager;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J

    .line 18
    invoke-static/range {p0 .. p5}, Lnubia/os/ApplicationManager;->noteAppAnrCrashImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$9300(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # J
    .param p7, "x5"    # Ljava/lang/String;

    .line 18
    invoke-static/range {p0 .. p7}, Lnubia/os/ApplicationManager;->noteThreadLagImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$9400(Lnubia/os/IApplicationManager;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 18
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->noteWakeUpImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$9500(Lnubia/os/IApplicationManager;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 18
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->noteKillExceptionBackgroundAppImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$9600(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->noteStartActivityImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9700(Lnubia/os/IApplicationManager;Z)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Z

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->notifyGameSwitchChangedImpl(Lnubia/os/IApplicationManager;Z)V

    return-void
.end method

.method static synthetic access$9800(Lnubia/os/IApplicationManager;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .line 18
    invoke-static {p0}, Lnubia/os/ApplicationManager;->isOpen4DNodeImpl(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9900(Lnubia/os/IApplicationManager;Z)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Z

    .line 18
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->change4DNodeImpl(Lnubia/os/IApplicationManager;Z)V

    return-void
.end method

.method private static addPackageToPreLaunchBlackListImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 492
    if-eqz p0, :cond_0

    .line 494
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->addPackageToPreLaunchBlackList(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 497
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static allow3rdPartyPushImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;

    .line 172
    if-eqz p0, :cond_0

    .line 174
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->allow3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 177
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static allowAlarmImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 159
    if-eqz p0, :cond_0

    .line 161
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->allowAlarm(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 164
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static allowBackgroundSyncToRunImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 363
    if-eqz p0, :cond_0

    .line 365
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->allowBackgroundSyncToRun(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 368
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static allowDeliverPendingNonWakeupAlarmInScreenOffImpl(Lnubia/os/IApplicationManager;Landroid/app/PendingIntent;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 186
    if-eqz p0, :cond_0

    .line 188
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 191
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static allowFreezeAppWakeupAlarmImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 146
    if-eqz p0, :cond_0

    .line 148
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->allowFreezeAppWakeupAlarm(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static allowPartialWakelockImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 120
    if-eqz p0, :cond_0

    .line 122
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->allowPartialWakelock(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 125
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static allowWakeupAlarmImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 133
    if-eqz p0, :cond_0

    .line 135
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->allowWakeupAlarm(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 138
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static change4DNodeImpl(Lnubia/os/IApplicationManager;Z)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "isOpen"    # Z

    .line 1337
    if-eqz p0, :cond_0

    .line 1339
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->change4DNode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    goto :goto_0

    .line 1340
    :catch_0
    move-exception v0

    .line 1341
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 1342
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1346
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static checkActionAllowedImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "actname"    # Ljava/lang/String;

    .line 977
    if-eqz p0, :cond_0

    .line 979
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->checkActionAllowed(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 984
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static checkAllowedGetActionNameImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "actname"    # Ljava/lang/String;

    .line 989
    if-eqz p0, :cond_0

    .line 991
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->checkAllowedGetActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 996
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getActionStateImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "actname"    # Ljava/lang/String;

    .line 1001
    if-eqz p0, :cond_0

    .line 1003
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->getActionState(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1008
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getAppLearningCallbackImpl(Lnubia/os/IApplicationManager;)Lnubia/os/IAppLearningCallback;
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .line 422
    if-eqz p0, :cond_0

    .line 424
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->getAppLearningCallback()Lnubia/os/IAppLearningCallback;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 427
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getApplicationRecondImpl(Lnubia/os/IApplicationManager;I)Ljava/util/List;
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnubia/os/IApplicationManager;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1049
    if-eqz p0, :cond_0

    .line 1051
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->getApplicationRecond(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1056
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getCurrentUserLearningProcessImpl(Lnubia/os/IApplicationManager;)Ljava/util/List;
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .line 479
    if-eqz p0, :cond_0

    .line 481
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->getCurrentUserLearningProcess()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 484
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getForegroundPackageNameImpl(Lnubia/os/IApplicationManager;)Ljava/util/List;
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnubia/os/IApplicationManager;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1023
    if-eqz p0, :cond_0

    .line 1025
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->getForegroundPackageName()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 1028
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1031
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getFrozenProcessStatusImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;I[I)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "status"    # [I

    .line 633
    if-eqz p0, :cond_0

    .line 635
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lnubia/os/IApplicationManager;->getFrozenProcessStatus(Ljava/lang/String;I[I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 638
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getGameLauncherAppNameListImpl(Lnubia/os/IApplicationManager;)Ljava/util/List;
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnubia/os/IApplicationManager;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1035
    if-eqz p0, :cond_0

    .line 1037
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->getGameLauncherAppNameList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1038
    :catch_0
    move-exception v0

    .line 1039
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 1040
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1044
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getGameModeImpl(Lnubia/os/IApplicationManager;)I
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .line 1062
    if-eqz p0, :cond_0

    .line 1064
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->getGameMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1067
    sget v1, Lcn/nubia/game/GameModeHelper;->DEFAULT_GAME_MODE:I

    return v1

    .line 1070
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget v0, Lcn/nubia/game/GameModeHelper;->DEFAULT_GAME_MODE:I

    return v0
.end method

.method private static grantPermissionDialogClickImpl(Lnubia/os/IApplicationManager;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 921
    if-eqz p0, :cond_0

    .line 923
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->grantPermissionDialogClick(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    goto :goto_0

    .line 924
    :catch_0
    move-exception v0

    .line 925
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 926
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 929
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static installEventImpl(Lnubia/os/IApplicationManager;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 899
    if-eqz p0, :cond_0

    .line 901
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->installEvent(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    goto :goto_0

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 904
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 907
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static isAllowStartActivityInGameKeysImpl(Lnubia/os/IApplicationManager;)Z
    .locals 4
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .line 1118
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 1120
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->isAllowStartActivityInGameKeys()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1121
    :catch_0
    move-exception v1

    .line 1122
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ApplicationManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1123
    return v0

    .line 1126
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return v0
.end method

.method private static isAllowedStartFrozenPackageImpl(Lnubia/os/IApplicationManager;IIIILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "reqCode"    # I
    .param p2, "subCode"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "argStr1"    # Ljava/lang/String;
    .param p6, "argStr2"    # Ljava/lang/String;

    .line 671
    if-eqz p0, :cond_0

    .line 673
    :try_start_0
    invoke-interface/range {p0 .. p6}, Lnubia/os/IApplicationManager;->isAllowedStartFrozenPackage(IIIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 676
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 679
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isControlledByMotionDozeImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 376
    if-eqz p0, :cond_0

    .line 378
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->isControlledByMotionDoze(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 381
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isGameAppOnForegroundImpl(Lnubia/os/IApplicationManager;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .line 1144
    if-eqz p0, :cond_0

    .line 1146
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->isGameAppOnForeground()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1149
    const/4 v1, 0x0

    return v1

    .line 1152
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isGameKeyOnImp(Lnubia/os/IApplicationManager;)Z
    .locals 4
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .line 1168
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 1170
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->isGameKeyOn()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1171
    :catch_0
    move-exception v1

    .line 1172
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ApplicationManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1173
    return v0

    .line 1176
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return v0
.end method

.method private static isNetAvailableImpl(Lnubia/os/IApplicationManager;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .line 389
    if-eqz p0, :cond_0

    .line 391
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->getNetAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 394
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isNotifyDisplayEventImpl(Lnubia/os/IApplicationManager;III)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I
    .param p2, "state"    # I
    .param p3, "displayId"    # I

    .line 645
    if-eqz p0, :cond_0

    .line 647
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lnubia/os/IApplicationManager;->isNotifyDisplayEvent(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 650
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isOpen4DNodeImpl(Lnubia/os/IApplicationManager;)Z
    .locals 4
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .line 1324
    const/4 v0, 0x0

    .line 1325
    .local v0, "isOpen":Z
    if-eqz p0, :cond_0

    .line 1327
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->isOpen4DNode()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1331
    goto :goto_0

    .line 1328
    :catch_0
    move-exception v1

    .line 1329
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v2, :cond_0

    .line 1330
    const-string v2, "ApplicationManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1333
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return v0
.end method

.method private static isProcessFrozenByUidImpl(Lnubia/os/IApplicationManager;I)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I

    .line 609
    if-eqz p0, :cond_0

    .line 611
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->isProcessFrozenByUid(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 614
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 617
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isProcessFrozenImpl(Lnubia/os/IApplicationManager;I)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I

    .line 586
    if-eqz p0, :cond_0

    .line 588
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->isProcessFrozen(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 591
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isProcessRealFrozenByUidImpl(Lnubia/os/IApplicationManager;I)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I

    .line 621
    if-eqz p0, :cond_0

    .line 623
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->isProcessRealFrozenByUid(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 626
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isProcessRealFrozenImpl(Lnubia/os/IApplicationManager;I)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I

    .line 598
    if-eqz p0, :cond_0

    .line 600
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->isProcessRealFrozen(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 603
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 606
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isUsbInstallSwitchOnImpl(Lnubia/os/IApplicationManager;)Z
    .locals 4
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .line 1181
    const/4 v0, 0x1

    .line 1182
    .local v0, "isSwitchOn":Z
    if-eqz p0, :cond_0

    .line 1184
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->isUsbInstallSwitchOn()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1187
    goto :goto_0

    .line 1185
    :catch_0
    move-exception v1

    .line 1186
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ApplicationManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1189
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return v0
.end method

.method private static noteActionMutexImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "isOpen"    # Z
    .param p4, "isSave"    # Z

    .line 944
    if-eqz p0, :cond_0

    .line 946
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->noteActionMutex(Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    goto :goto_0

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 951
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteActivityStackRemovedImpl(Lnubia/os/IApplicationManager;I)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "stackId"    # I

    .line 318
    if-eqz p0, :cond_0

    .line 320
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteActivityStackRemoved(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 323
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteAddWindowImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 564
    if-eqz p0, :cond_0

    .line 566
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lnubia/os/IApplicationManager;->noteAddWindow(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 569
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteAppAnrCrashImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .line 1245
    if-eqz p0, :cond_0

    .line 1247
    :try_start_0
    invoke-interface/range {p0 .. p5}, Lnubia/os/IApplicationManager;->noteAppAnrCrash(Ljava/lang/String;ILjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    goto :goto_0

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 1250
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1253
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteAppBackgroundImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;ILjava/lang/String;J)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "timestamp"    # J

    .line 768
    if-eqz p0, :cond_0

    .line 770
    :try_start_0
    invoke-interface/range {p0 .. p6}, Lnubia/os/IApplicationManager;->noteAppBackground(ILjava/lang/String;ILjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    goto :goto_0

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 773
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 776
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteAppExitImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;

    .line 780
    if-eqz p0, :cond_0

    .line 782
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->noteAppExit(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    goto :goto_0

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 785
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteAppExitReasonImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    .line 792
    if-eqz p0, :cond_0

    .line 794
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->noteAppExitReason(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    goto :goto_0

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 797
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteAppForegroundImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "timestamp"    # J
    .param p8, "isColdLaunch"    # Z

    .line 756
    if-eqz p0, :cond_0

    .line 758
    :try_start_0
    invoke-interface/range {p0 .. p8}, Lnubia/os/IApplicationManager;->noteAppForeground(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 761
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 764
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteAppInactiveImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z

    .line 744
    if-eqz p0, :cond_0

    .line 746
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->noteAppInactive(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 749
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteAppTransitionAnimationImpl(Lnubia/os/IApplicationManager;Z)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "execute"    # Z

    .line 341
    if-eqz p0, :cond_0

    .line 343
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteAppTransitionAnimation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 346
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteAppUsingCameraImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;ILjava/lang/String;JZ)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "timestamp"    # J
    .param p7, "isLaunch"    # Z

    .line 1234
    if-eqz p0, :cond_0

    .line 1236
    :try_start_0
    invoke-interface/range {p0 .. p7}, Lnubia/os/IApplicationManager;->noteAppUsingCamera(ILjava/lang/String;ILjava/lang/String;JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    goto :goto_0

    .line 1237
    :catch_0
    move-exception v0

    .line 1238
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 1239
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1242
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteCreateActivityImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1406
    if-eqz p0, :cond_0

    .line 1408
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteCreateActivity(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1413
    goto :goto_0

    .line 1409
    :catch_0
    move-exception v0

    .line 1410
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 1411
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1415
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteDisplayPowerModeChangedImpl(Lnubia/os/IApplicationManager;I)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "mode"    # I

    .line 734
    if-eqz p0, :cond_0

    .line 736
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteDisplayPowerModeChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    goto :goto_0

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 739
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 742
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteDisplayStateChangedImpl(Lnubia/os/IApplicationManager;III)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I
    .param p2, "state"    # I
    .param p3, "displayId"    # I

    .line 657
    if-eqz p0, :cond_0

    .line 659
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lnubia/os/IApplicationManager;->noteDisplayStateChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    goto :goto_0

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 662
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static noteEdgeGestureImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "gesture"    # Ljava/lang/String;

    .line 1214
    if-eqz p0, :cond_0

    .line 1216
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteEdgeGesture(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    goto :goto_0

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1221
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteEndGpsImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "interval"    # J
    .param p7, "timestamp"    # J

    .line 864
    if-eqz p0, :cond_0

    .line 866
    :try_start_0
    invoke-interface/range {p0 .. p8}, Lnubia/os/IApplicationManager;->noteEndGps(IILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    goto :goto_0

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 869
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteEndMusicImpl(Lnubia/os/IApplicationManager;IIJ)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "timestamp"    # J

    .line 816
    if-eqz p0, :cond_0

    .line 818
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->noteEndMusic(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    goto :goto_0

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 821
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 824
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteEndMusicToColorfullightImpl(Lnubia/os/IApplicationManager;II)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 840
    if-eqz p0, :cond_0

    .line 842
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->noteEndMusicToColorfullight(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    goto :goto_0

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 845
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 848
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteEndNetworkPositionImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "interval"    # J
    .param p7, "timestamp"    # J

    .line 888
    if-eqz p0, :cond_0

    .line 890
    :try_start_0
    invoke-interface/range {p0 .. p8}, Lnubia/os/IApplicationManager;->noteEndNetworkPosition(IILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    goto :goto_0

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 893
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 896
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static noteFingerprintAuthImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .line 1224
    if-eqz p0, :cond_0

    .line 1226
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->noteFingerprintAuth(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    goto :goto_0

    .line 1227
    :catch_0
    move-exception v0

    .line 1228
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1231
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteGPSReceiversImpl(Lnubia/os/IApplicationManager;[Landroid/os/Bundle;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "GPSReceivers"    # [Landroid/os/Bundle;

    .line 1012
    if-eqz p0, :cond_0

    .line 1014
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteGPSReceivers([Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    goto :goto_0

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 1017
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1020
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteGameMagicVoiceImpl(Lnubia/os/IApplicationManager;II)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "type"    # I
    .param p2, "pid"    # I

    .line 1383
    if-eqz p0, :cond_0

    .line 1385
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->noteGameMagicVoice(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1389
    goto :goto_0

    .line 1386
    :catch_0
    move-exception v0

    .line 1387
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 1388
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1391
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteGameModeIsRunningImpl(Lnubia/os/IApplicationManager;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .line 446
    if-eqz p0, :cond_0

    .line 448
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->noteGameModeIsRunning()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 451
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteGameModeIsStoppedImpl(Lnubia/os/IApplicationManager;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .line 457
    if-eqz p0, :cond_0

    .line 459
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->noteGameModeIsStopped()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 462
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteIdleStateImpl(Lnubia/os/IApplicationManager;I)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "state"    # I

    .line 724
    if-eqz p0, :cond_0

    .line 726
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteIdleState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    goto :goto_0

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 729
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteKeyguardStateChangedImpl(Lnubia/os/IApplicationManager;I)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "state"    # I

    .line 540
    if-eqz p0, :cond_0

    .line 542
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteKeyguardStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 545
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteKillExceptionBackgroundAppImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;I)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1289
    if-eqz p0, :cond_0

    .line 1291
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->noteKillExceptionBackgroundApp(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1295
    goto :goto_0

    .line 1292
    :catch_0
    move-exception v0

    .line 1293
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 1294
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1297
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteNaviGestureFinalizationImpl(Lnubia/os/IApplicationManager;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .line 1372
    if-eqz p0, :cond_0

    .line 1374
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->noteNaviGestureFinalization()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    goto :goto_0

    .line 1375
    :catch_0
    move-exception v0

    .line 1376
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 1377
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1380
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteNaviGestureStartedImpl(Lnubia/os/IApplicationManager;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .line 1361
    if-eqz p0, :cond_0

    .line 1363
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->noteNaviGestureStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    goto :goto_0

    .line 1364
    :catch_0
    move-exception v0

    .line 1365
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 1366
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1369
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static noteNotificationClickImpl(Lnubia/os/IApplicationManager;Landroid/content/Intent;J)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "timestamp"    # J

    .line 1268
    if-eqz p0, :cond_0

    .line 1270
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lnubia/os/IApplicationManager;->noteNotificationClick(Landroid/content/Intent;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    goto :goto_0

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1275
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static notePausingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "visible"    # Z
    .param p6, "topActivityPackageName"    # Ljava/lang/String;
    .param p7, "topActivity"    # Ljava/lang/String;

    .line 269
    if-eqz p0, :cond_0

    .line 271
    :try_start_0
    invoke-interface/range {p0 .. p7}, Lnubia/os/IApplicationManager;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 274
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static notePlayMusicToColorfullightImpl(Lnubia/os/IApplicationManager;II)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 828
    if-eqz p0, :cond_0

    .line 830
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->notePlayMusicToColorfullight(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    goto :goto_0

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 833
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 836
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteProcessNeedPreLaunchImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "isBg"    # Z
    .param p5, "is2LevelLaunch"    # Z

    .line 435
    if-eqz p0, :cond_0

    .line 437
    :try_start_0
    invoke-interface/range {p0 .. p5}, Lnubia/os/IApplicationManager;->noteProcessNeedPreLaunch(Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 440
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteProcessStatusChangedImpl(Lnubia/os/IApplicationManager;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .line 517
    if-eqz p0, :cond_0

    .line 519
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->noteProcessStatusChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 522
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteProcessStatusImpl(Lnubia/os/IApplicationManager;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[Z)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # [I
    .param p2, "uid"    # [I
    .param p3, "packageNames"    # [Ljava/lang/String;
    .param p4, "adj"    # [I
    .param p5, "reasonPid"    # [I
    .param p6, "reasonPackageNames"    # [Ljava/lang/String;
    .param p7, "isExecService"    # [Z

    .line 506
    if-eqz p0, :cond_0

    .line 508
    :try_start_0
    invoke-interface/range {p0 .. p7}, Lnubia/os/IApplicationManager;->noteProcessStatus([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 511
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteRemoveWindowImpl(Lnubia/os/IApplicationManager;I)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I

    .line 575
    if-eqz p0, :cond_0

    .line 577
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteRemoveWindow(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 580
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteRemovingProcessImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;

    .line 306
    if-eqz p0, :cond_0

    .line 308
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->noteRemovingProcess(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 311
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteResumedActivityImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 256
    if-eqz p0, :cond_0

    .line 258
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteResumedActivity(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 261
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteResumedAppDieImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 330
    if-eqz p0, :cond_0

    .line 332
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 335
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteResumingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z
    .param p6, "pid"    # I
    .param p7, "processName"    # Ljava/lang/String;

    .line 245
    if-eqz p0, :cond_0

    .line 247
    :try_start_0
    invoke-interface/range {p0 .. p7}, Lnubia/os/IApplicationManager;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 250
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteScreenStateChangedImpl(Lnubia/os/IApplicationManager;I)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "state"    # I

    .line 529
    if-eqz p0, :cond_0

    .line 531
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteScreenStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 534
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteScreenStateImpl(Lnubia/os/IApplicationManager;I)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "state"    # I

    .line 713
    if-eqz p0, :cond_0

    .line 715
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    goto :goto_0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 718
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 721
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static noteSetUserIsMonkeyImpl(Lnubia/os/IApplicationManager;Z)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "userIsMonkey"    # Z

    .line 1194
    if-eqz p0, :cond_0

    .line 1196
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteSetUserIsMonkey(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    goto :goto_0

    .line 1197
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1201
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteStartActivityImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortComponentName"    # Ljava/lang/String;

    .line 1300
    if-eqz p0, :cond_0

    .line 1302
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->noteStartActivity(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    goto :goto_0

    .line 1303
    :catch_0
    move-exception v0

    .line 1304
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 1305
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1309
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteStartCtsTestImpl(Lnubia/os/IApplicationManager;Z)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "isStartCts"    # Z

    .line 1350
    if-eqz p0, :cond_0

    .line 1352
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteStartCtsTest(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    goto :goto_0

    .line 1353
    :catch_0
    move-exception v0

    .line 1354
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 1355
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1358
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteStartGpsImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "interval"    # J
    .param p7, "timestamp"    # J

    .line 852
    if-eqz p0, :cond_0

    .line 854
    :try_start_0
    invoke-interface/range {p0 .. p8}, Lnubia/os/IApplicationManager;->noteStartGps(IILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    goto :goto_0

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 857
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 860
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteStartMusicImpl(Lnubia/os/IApplicationManager;IIJ)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "timestamp"    # J

    .line 804
    if-eqz p0, :cond_0

    .line 806
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->noteStartMusic(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    goto :goto_0

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 809
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 812
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteStartNetworkPositionImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "interval"    # J
    .param p7, "timestamp"    # J

    .line 876
    if-eqz p0, :cond_0

    .line 878
    :try_start_0
    invoke-interface/range {p0 .. p8}, Lnubia/os/IApplicationManager;->noteStartNetworkPosition(IILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    goto :goto_0

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 881
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 884
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteStartingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "hostingType"    # Ljava/lang/String;

    .line 294
    if-eqz p0, :cond_0

    .line 296
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 299
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteStatusBarExpandingImpl(Lnubia/os/IApplicationManager;Z)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "expanding"    # Z

    .line 352
    if-eqz p0, :cond_0

    .line 354
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteStatusBarExpanding(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 357
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteStoppingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 281
    if-eqz p0, :cond_0

    .line 283
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 286
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteThreadLagImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "tid"    # J
    .param p5, "delay"    # J
    .param p7, "reason"    # Ljava/lang/String;

    .line 1256
    if-eqz p0, :cond_0

    .line 1258
    :try_start_0
    invoke-interface/range {p0 .. p7}, Lnubia/os/IApplicationManager;->noteThreadLag(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    goto :goto_0

    .line 1259
    :catch_0
    move-exception v0

    .line 1260
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 1261
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1264
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteUpdateFunctionStateImpl(Lnubia/os/IApplicationManager;I)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "parameter"    # I

    .line 1394
    if-eqz p0, :cond_0

    .line 1396
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteUpdateFunctionState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1401
    goto :goto_0

    .line 1397
    :catch_0
    move-exception v0

    .line 1398
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 1399
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1403
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteWakeUpImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;I)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1278
    if-eqz p0, :cond_0

    .line 1280
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->noteWakeUp(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    goto :goto_0

    .line 1281
    :catch_0
    move-exception v0

    .line 1282
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 1283
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1286
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteWindowStateChangeImpl(Lnubia/os/IApplicationManager;III)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I
    .param p2, "windowId"    # I
    .param p3, "state"    # I

    .line 552
    if-eqz p0, :cond_0

    .line 554
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lnubia/os/IApplicationManager;->noteWindowStateChange(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 557
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static notifyClipChangedImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 693
    if-eqz p0, :cond_0

    .line 695
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->notifyClipChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 698
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 701
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static notifyGameSwitchChangedImpl(Lnubia/os/IApplicationManager;Z)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "gameSwitch"    # Z

    .line 1313
    if-eqz p0, :cond_0

    .line 1315
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->notifyGameSwitchChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1319
    goto :goto_0

    .line 1316
    :catch_0
    move-exception v0

    .line 1317
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 1318
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1321
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static registerActionMutexCallbackImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Lcn/nubia/mutex/IMutexCallback;

    .line 955
    if-eqz p0, :cond_0

    .line 957
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->registerActionMutexCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    goto :goto_0

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 962
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static registerCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;J)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "cb"    # Lnubia/os/ITaskCallback;
    .param p2, "flag"    # J

    .line 199
    if-eqz p0, :cond_0

    .line 201
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lnubia/os/IApplicationManager;->registerCallback(Lnubia/os/ITaskCallback;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 204
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static registerCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "cb"    # Lnubia/os/ITaskCallback;
    .param p2, "flag"    # J
    .param p4, "filter"    # Landroid/os/Bundle;

    .line 210
    if-eqz p0, :cond_0

    .line 212
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->registerCallbackWithFilter(Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static registerFreezeChangeCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/IFreezeChangeCallback;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "callback"    # Lnubia/os/IFreezeChangeCallback;

    .line 1204
    if-eqz p0, :cond_0

    .line 1206
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->registerFreezeChangeCallback(Lnubia/os/IFreezeChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    goto :goto_0

    .line 1207
    :catch_0
    move-exception v0

    .line 1208
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1211
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static setAppLearningCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/IAppLearningCallback;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "callback"    # Lnubia/os/IAppLearningCallback;

    .line 411
    if-eqz p0, :cond_0

    .line 413
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->setAppLearningCallback(Lnubia/os/IAppLearningCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 416
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static setAppLearningProcessListImpl(Lnubia/os/IApplicationManager;Ljava/util/List;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "processList"    # Ljava/util/List;

    .line 468
    if-eqz p0, :cond_0

    .line 470
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->setAppLearningProcessList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 473
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static setFreezeCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/IFreezeCallback;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "callback"    # Lnubia/os/IFreezeCallback;

    .line 400
    if-eqz p0, :cond_0

    .line 402
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->setFreezeCallback(Lnubia/os/IFreezeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 405
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static setNetworkFirewallImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Z)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enableNetwork"    # Z

    .line 703
    if-eqz p0, :cond_0

    .line 705
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lnubia/os/IApplicationManager;->setNetworkFirewall(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    goto :goto_0

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 708
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static smallPermissionDialogClickImpl(Lnubia/os/IApplicationManager;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 932
    if-eqz p0, :cond_0

    .line 934
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->smallPermissionDialogClick(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    goto :goto_0

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 937
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 940
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static startGameBoxIfGamekeyOnImp(Lnubia/os/IApplicationManager;J)Z
    .locals 4
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "delay"    # J

    .line 1156
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 1158
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->startGameBoxIfGamekeyOn(J)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1159
    :catch_0
    move-exception v1

    .line 1160
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ApplicationManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1161
    return v0

    .line 1164
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return v0
.end method

.method private static startOrStopGameBoxImp(Lnubia/os/IApplicationManager;Z)Z
    .locals 4
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "gameSwitch"    # Z

    .line 1131
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 1133
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->startOrStopGameBox(Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1134
    :catch_0
    move-exception v1

    .line 1135
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ApplicationManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1136
    return v0

    .line 1139
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return v0
.end method

.method private static unfreezeWhenKillImpl(Lnubia/os/IApplicationManager;I)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I

    .line 682
    if-eqz p0, :cond_0

    .line 684
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->unfreezeWhenKill(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 687
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static uninstallEventImpl(Lnubia/os/IApplicationManager;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 910
    if-eqz p0, :cond_0

    .line 912
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->uninstallEvent(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    goto :goto_0

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 915
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 918
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static unregisterActionMutexCallbackImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Lcn/nubia/mutex/IMutexCallback;

    .line 966
    if-eqz p0, :cond_0

    .line 968
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->unregisterActionMutexCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    goto :goto_0

    .line 969
    :catch_0
    move-exception v0

    .line 970
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 973
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static unregisterCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "cb"    # Lnubia/os/ITaskCallback;

    .line 221
    if-eqz p0, :cond_0

    .line 223
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->unregisterCallback(Lnubia/os/ITaskCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 226
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static updateHighlightsCoordinateImpl(Lnubia/os/IApplicationManager;I)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "gameType"    # I

    .line 232
    if-eqz p0, :cond_0

    .line 234
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->updateHighlightsCoordinate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 237
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public allow3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->allow3rdPartyPushImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public allowAlarm(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->allowAlarmImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public allowBackgroundSyncToRun(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->allowBackgroundSyncToRunImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 48
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->allowDeliverPendingNonWakeupAlarmInScreenOffImpl(Lnubia/os/IApplicationManager;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method public allowFreezeAppWakeupAlarm(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->allowFreezeAppWakeupAlarmImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public allowPartialWakelock(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->allowPartialWakelockImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public allowWakeupAlarm(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->allowWakeupAlarmImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getNetAvailable()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->isNetAvailableImpl(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method public isControlledByMotionDoze(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->isControlledByMotionDozeImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public noteActivityStackRemoved(I)V
    .locals 1
    .param p1, "stackId"    # I

    .line 88
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->noteActivityStackRemovedImpl(Lnubia/os/IApplicationManager;I)V

    .line 89
    return-void
.end method

.method public noteAppTransitionAnimation(Z)V
    .locals 1
    .param p1, "execute"    # Z

    .line 96
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->noteAppTransitionAnimationImpl(Lnubia/os/IApplicationManager;Z)V

    .line 97
    return-void
.end method

.method public noteGPSReceivers([Landroid/os/Bundle;)V
    .locals 1
    .param p1, "GPSReceivers"    # [Landroid/os/Bundle;

    .line 116
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->noteGPSReceiversImpl(Lnubia/os/IApplicationManager;[Landroid/os/Bundle;)V

    .line 117
    return-void
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "visible"    # Z
    .param p6, "topActivityPackageName"    # Ljava/lang/String;
    .param p7, "topActivity"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lnubia/os/ApplicationManager;->notePausingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public noteRemovingProcess(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteRemovingProcessImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteResumedAppDieImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z
    .param p6, "pid"    # I
    .param p7, "processName"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lnubia/os/ApplicationManager;->noteResumingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 69
    return-void
.end method

.method public noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "hostingType"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteStartingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public noteStatusBarExpanding(Z)V
    .locals 1
    .param p1, "expanding"    # Z

    .line 100
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->noteStatusBarExpandingImpl(Lnubia/os/IApplicationManager;Z)V

    .line 101
    return-void
.end method

.method public noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteStoppingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public registerCallback(Lnubia/os/ITaskCallback;J)V
    .locals 1
    .param p1, "cb"    # Lnubia/os/ITaskCallback;
    .param p2, "flag"    # J

    .line 52
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2, p3}, Lnubia/os/ApplicationManager;->registerCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;J)V

    .line 53
    return-void
.end method

.method public registerCallback(Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V
    .locals 1
    .param p1, "cb"    # Lnubia/os/ITaskCallback;
    .param p2, "flag"    # J
    .param p4, "filter"    # Landroid/os/Bundle;

    .line 56
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->registerCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method public unregisterCallback(Lnubia/os/ITaskCallback;)V
    .locals 1
    .param p1, "cb"    # Lnubia/os/ITaskCallback;

    .line 60
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->unregisterCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;)V

    .line 61
    return-void
.end method

.method public updateHighlightsCoordinate(I)V
    .locals 1
    .param p1, "gameType"    # I

    .line 64
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->updateHighlightsCoordinateImpl(Lnubia/os/IApplicationManager;I)V

    .line 65
    return-void
.end method
