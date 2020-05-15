.class Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;
.super Landroid/app/backup/IBackupManagerMonitor$Stub;
.source "RestoreSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/RestoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupManagerMonitorWrapper"
.end annotation


# instance fields
.field final mMonitor:Landroid/app/backup/BackupManagerMonitor;

.field final synthetic this$0:Landroid/app/backup/RestoreSession;


# direct methods
.method constructor <init>(Landroid/app/backup/RestoreSession;Landroid/app/backup/BackupManagerMonitor;)V
    .locals 0
    .param p2, "monitor"    # Landroid/app/backup/BackupManagerMonitor;

    .line 340
    iput-object p1, p0, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;->this$0:Landroid/app/backup/RestoreSession;

    invoke-direct {p0}, Landroid/app/backup/IBackupManagerMonitor$Stub;-><init>()V

    .line 341
    iput-object p2, p0, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;->mMonitor:Landroid/app/backup/BackupManagerMonitor;

    .line 342
    return-void
.end method


# virtual methods
.method public onEvent(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "event"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;->mMonitor:Landroid/app/backup/BackupManagerMonitor;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupManagerMonitor;->onEvent(Landroid/os/Bundle;)V

    .line 347
    return-void
.end method
