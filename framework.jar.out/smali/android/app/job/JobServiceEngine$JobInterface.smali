.class final Landroid/app/job/JobServiceEngine$JobInterface;
.super Landroid/app/job/IJobService$Stub;
.source "JobServiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobServiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobInterface"
.end annotation


# instance fields
.field final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/job/JobServiceEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/job/JobServiceEngine;)V
    .locals 1
    .param p1, "service"    # Landroid/app/job/JobServiceEngine;

    .line 69
    invoke-direct {p0}, Landroid/app/job/IJobService$Stub;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    .line 71
    return-void
.end method


# virtual methods
.method public startJob(Landroid/app/job/JobParameters;)V
    .locals 3
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobServiceEngine;

    .line 76
    .local v0, "service":Landroid/app/job/JobServiceEngine;
    if-eqz v0, :cond_0

    .line 77
    iget-object v1, v0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 78
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 80
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public stopJob(Landroid/app/job/JobParameters;)V
    .locals 3
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobServiceEngine;

    .line 85
    .local v0, "service":Landroid/app/job/JobServiceEngine;
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, v0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 87
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 89
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method
