.class Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;
.super Landroid/app/backup/IBackupManagerMonitor$Stub;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupManagerMonitorWrapper"
.end annotation


# instance fields
.field final mMonitor:Landroid/app/backup/BackupManagerMonitor;

.field final synthetic this$0:Landroid/app/backup/BackupManager;


# direct methods
.method constructor <init>(Landroid/app/backup/BackupManager;Landroid/app/backup/BackupManagerMonitor;)V
    .locals 0
    .param p2, "monitor"    # Landroid/app/backup/BackupManagerMonitor;

    .line 904
    iput-object p1, p0, Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;->this$0:Landroid/app/backup/BackupManager;

    invoke-direct {p0}, Landroid/app/backup/IBackupManagerMonitor$Stub;-><init>()V

    .line 905
    iput-object p2, p0, Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;->mMonitor:Landroid/app/backup/BackupManagerMonitor;

    .line 906
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

    .line 910
    iget-object v0, p0, Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;->mMonitor:Landroid/app/backup/BackupManagerMonitor;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupManagerMonitor;->onEvent(Landroid/os/Bundle;)V

    .line 911
    return-void
.end method
