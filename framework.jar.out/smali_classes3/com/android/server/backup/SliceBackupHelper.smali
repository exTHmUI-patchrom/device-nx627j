.class public Lcom/android/server/backup/SliceBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "SliceBackupHelper.java"


# static fields
.field static final BLOB_VERSION:I = 0x1

.field static final DEBUG:Z

.field static final KEY_SLICES:Ljava/lang/String; = "slices"

.field static final TAG:Ljava/lang/String; = "SliceBackupHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-string v0, "SliceBackupHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/backup/SliceBackupHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const-string v0, "slices"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 60
    sget-boolean v0, Lcom/android/server/backup/SliceBackupHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SliceBackupHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got restore of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    const-string v0, "slices"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :try_start_0
    const-string v0, "slice"

    .line 65
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/app/slice/ISliceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/slice/ISliceManager;

    move-result-object v0

    .line 67
    .local v0, "sm":Landroid/app/slice/ISliceManager;
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/app/slice/ISliceManager;->applyRestore([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "sm":Landroid/app/slice/ISliceManager;
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SliceBackupHelper"

    const-string v2, "Couldn\'t communicate with slice manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "newPayload":[B
    const-string v1, "slices"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    :try_start_0
    const-string v1, "slice"

    .line 46
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 45
    invoke-static {v1}, Landroid/app/slice/ISliceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/slice/ISliceManager;

    move-result-object v1

    .line 48
    .local v1, "sm":Landroid/app/slice/ISliceManager;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/slice/ISliceManager;->getBackupPayload(I)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 53
    .end local v1    # "sm":Landroid/app/slice/ISliceManager;
    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SliceBackupHelper"

    const-string v3, "Couldn\'t communicate with slice manager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x0

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v0
.end method
