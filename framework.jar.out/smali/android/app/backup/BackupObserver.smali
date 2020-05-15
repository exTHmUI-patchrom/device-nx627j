.class public abstract Landroid/app/backup/BackupObserver;
.super Ljava/lang/Object;
.source "BackupObserver.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backupFinished(I)V
    .locals 0
    .param p1, "status"    # I

    .line 58
    return-void
.end method

.method public onResult(Ljava/lang/String;I)V
    .locals 0
    .param p1, "currentBackupPackage"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 48
    return-void
.end method

.method public onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .locals 0
    .param p1, "currentBackupPackage"    # Ljava/lang/String;
    .param p2, "backupProgress"    # Landroid/app/backup/BackupProgress;

    .line 37
    return-void
.end method
