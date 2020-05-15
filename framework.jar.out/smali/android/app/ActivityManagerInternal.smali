.class public abstract Landroid/app/ActivityManagerInternal;
.super Ljava/lang/Object;
.source "ActivityManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManagerInternal$ScreenObserver;,
        Landroid/app/ActivityManagerInternal$SleepToken;
    }
.end annotation


# static fields
.field public static final APP_TRANSITION_RECENTS_ANIM:I = 0x5

.field public static final APP_TRANSITION_SNAPSHOT:I = 0x4

.field public static final APP_TRANSITION_SPLASH_SCREEN:I = 0x1

.field public static final APP_TRANSITION_TIMEOUT:I = 0x3

.field public static final APP_TRANSITION_WINDOWS_DRAWN:I = 0x2

.field public static final ASSIST_KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final ASSIST_KEY_DATA:Ljava/lang/String; = "data"

.field public static final ASSIST_KEY_RECEIVER_EXTRAS:Ljava/lang/String; = "receiverExtras"

.field public static final ASSIST_KEY_STRUCTURE:Ljava/lang/String; = "structure"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;
.end method

.method public abstract canStartMoreUsers()Z
.end method

.method public abstract cancelRecentsAnimation(Z)V
.end method

.method public abstract checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract clearSavedANRState()V
.end method

.method public abstract dumpsysInfo()V
.end method

.method public abstract enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getCurResumeActivity()Ljava/lang/String;
.end method

.method public abstract getHomeActivityForUser(I)Landroid/content/ComponentName;
.end method

.method public abstract getHomeIntent()Landroid/content/Intent;
.end method

.method public abstract getMaxRunningUsers()I
.end method

.method public abstract getMemoryStateForProcesses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ProcessMemoryState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTopVisibleActivities()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUidProcessState(I)I
.end method

.method public abstract grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;I)V
.end method

.method public abstract hasRunningActivity(ILjava/lang/String;)Z
.end method

.method public abstract isCallerRecents(I)Z
.end method

.method public abstract isRecentsComponentHomeActivity(I)Z
.end method

.method public abstract isResumePkg(IILjava/lang/String;)Z
.end method

.method public abstract isRuntimeRestarted()Z
.end method

.method public abstract isSystemReady()Z
.end method

.method public abstract isUidActive(I)Z
.end method

.method public abstract killForegroundAppsForUser(I)V
.end method

.method public abstract notifyActiveVoiceInteractionServiceChanged(Landroid/content/ComponentName;)V
.end method

.method public abstract notifyAppTransitionCancelled()V
.end method

.method public abstract notifyAppTransitionFinished()V
.end method

.method public abstract notifyAppTransitionStarting(Landroid/util/SparseIntArray;J)V
.end method

.method public abstract notifyDefaultDisplaySizeChanged()V
.end method

.method public abstract notifyDockedStackMinimizedChanged(Z)V
.end method

.method public abstract notifyKeyguardFlagsChanged(Ljava/lang/Runnable;)V
.end method

.method public abstract notifyKeyguardTrustedChanged()V
.end method

.method public abstract notifyNetworkPolicyRulesUpdated(IJ)V
.end method

.method public abstract onLocalVoiceInteractionStarted(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
.end method

.method public abstract onUserRemoved(I)V
.end method

.method public abstract onWakefulnessChanged(I)V
.end method

.method public abstract registerScreenObserver(Landroid/app/ActivityManagerInternal$ScreenObserver;)V
.end method

.method public abstract saveANRState(Ljava/lang/String;)V
.end method

.method public abstract setAllowAppSwitches(Ljava/lang/String;II)V
.end method

.method public abstract setDeviceIdleWhitelist([I[I)V
.end method

.method public abstract setFocusedActivity(Landroid/os/IBinder;)V
.end method

.method public abstract setHasOverlayUi(IZ)V
.end method

.method public abstract setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;J)V
.end method

.method public abstract setRunningRemoteAnimation(IZ)V
.end method

.method public abstract setSwitchingFromSystemUserMessage(Ljava/lang/String;)V
.end method

.method public abstract setSwitchingToSystemUserMessage(Ljava/lang/String;)V
.end method

.method public abstract setVr2dDisplayId(I)V
.end method

.method public abstract startActivitiesAsPackage(Ljava/lang/String;I[Landroid/content/Intent;Landroid/os/Bundle;)I
.end method

.method public abstract startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;I)I
.end method

.method public abstract startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Z
.end method

.method public abstract updateDeviceIdleTempWhitelist([IIZ)V
.end method

.method public abstract updatePersistentConfigurationForUser(Landroid/content/res/Configuration;I)V
.end method
