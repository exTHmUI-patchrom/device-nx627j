.class Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingActivityLaunch"
.end annotation


# instance fields
.field final callerApp:Lcom/android/server/am/ProcessRecord;

.field final r:Lcom/android/server/am/ActivityRecord;

.field final sourceRecord:Lcom/android/server/am/ActivityRecord;

.field final stack:Lcom/android/server/am/ActivityStack;

.field final startFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "_r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "_sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "_startFlags"    # I
    .param p4, "_stack"    # Lcom/android/server/am/ActivityStack;
    .param p5, "_callerApp"    # Lcom/android/server/am/ProcessRecord;

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    .line 616
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 617
    iput p3, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    .line 618
    iput-object p4, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->stack:Lcom/android/server/am/ActivityStack;

    .line 619
    iput-object p5, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 620
    return-void
.end method


# virtual methods
.method sendErrorResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->scheduleCrash(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :cond_0
    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception scheduling crash of failed activity launcher sourceRecord="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
