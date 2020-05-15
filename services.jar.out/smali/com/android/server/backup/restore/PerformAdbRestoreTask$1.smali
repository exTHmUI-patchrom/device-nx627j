.class Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;
.super Ljava/lang/Object;
.source "PerformAdbRestoreTask.java"

# interfaces
.implements Lcom/android/server/backup/utils/BytesReadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/restore/PerformAdbRestoreTask;->restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/restore/PerformAdbRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/restore/PerformAdbRestoreTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    .line 439
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;->this$0:Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBytesRead(J)V
    .locals 1
    .param p1, "bytesRead"    # J

    .line 442
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;->this$0:Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    invoke-static {v0, p1, p2}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->access$014(Lcom/android/server/backup/restore/PerformAdbRestoreTask;J)J

    .line 443
    return-void
.end method
