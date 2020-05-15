.class public abstract Landroid/app/ClientTransactionHandler;
.super Ljava/lang/Object;
.source "ClientTransactionHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 1
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 54
    invoke-virtual {p1, p0}, Landroid/app/servertransaction/ClientTransaction;->preExecute(Landroid/app/ClientTransactionHandler;)V

    .line 55
    invoke-virtual {p0}, Landroid/app/ClientTransactionHandler;->getTransactionExecutor()Landroid/app/servertransaction/TransactionExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/servertransaction/TransactionExecutor;->execute(Landroid/app/servertransaction/ClientTransaction;)V

    .line 56
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->recycle()V

    .line 57
    return-void
.end method

.method public abstract getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;
.end method

.method public abstract getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;
.end method

.method abstract getTransactionExecutor()Landroid/app/servertransaction/TransactionExecutor;
.end method

.method public abstract handleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V
.end method

.method public abstract handleConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract handleDestroyActivity(Landroid/os/IBinder;ZIZLjava/lang/String;)V
.end method

.method public abstract handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/content/Intent;)Landroid/app/Activity;
.end method

.method public abstract handleMultiWindowModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V
.end method

.method public abstract handleNewIntent(Landroid/os/IBinder;Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract handlePauseActivity(Landroid/os/IBinder;ZZILandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V
.end method

.method public abstract handlePictureInPictureModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V
.end method

.method public abstract handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public abstract handleResumeActivity(Landroid/os/IBinder;ZZLjava/lang/String;)V
.end method

.method public abstract handleSendResult(Landroid/os/IBinder;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public abstract handleStopActivity(Landroid/os/IBinder;ZILandroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V
.end method

.method public abstract handleWindowVisibility(Landroid/os/IBinder;Z)V
.end method

.method public abstract performRestartActivity(Landroid/os/IBinder;Z)V
.end method

.method public abstract prepareRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;I",
            "Landroid/util/MergedConfiguration;",
            "Z)",
            "Landroid/app/ActivityThread$ActivityClientRecord;"
        }
    .end annotation
.end method

.method public abstract reportRelaunch(Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public abstract reportStop(Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 1
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 44
    invoke-virtual {p1, p0}, Landroid/app/servertransaction/ClientTransaction;->preExecute(Landroid/app/ClientTransactionHandler;)V

    .line 45
    const/16 v0, 0x9f

    invoke-virtual {p0, v0, p1}, Landroid/app/ClientTransactionHandler;->sendMessage(ILjava/lang/Object;)V

    .line 46
    return-void
.end method

.method abstract sendMessage(ILjava/lang/Object;)V
.end method

.method public abstract updatePendingConfiguration(Landroid/content/res/Configuration;)V
.end method

.method public abstract updateProcessState(IZ)V
.end method
