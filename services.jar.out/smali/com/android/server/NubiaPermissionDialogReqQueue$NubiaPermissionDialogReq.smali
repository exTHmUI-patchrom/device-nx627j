.class public final Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;
.super Ljava/lang/Object;
.source "NubiaPermissionDialogReqQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NubiaPermissionDialogReqQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NubiaPermissionDialogReq"
.end annotation


# instance fields
.field mHasResult:Z

.field mResult:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;->mHasResult:Z

    return-void
.end method


# virtual methods
.method public get()I
    .locals 3

    .line 49
    monitor-enter p0

    .line 50
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;->mHasResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 52
    const-wide/16 v0, 0x4e20

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 53
    iget-boolean v0, p0, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;->mHasResult:Z

    if-nez v0, :cond_0

    .line 54
    const-string v0, "AppOps"

    const-string v1, "NubiaPermissionDialogReq no set, run fault-tolerant measure"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;->set(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :cond_0
    :goto_1
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AppOps"

    const-string v2, "NubiaPermissionDialogReq get wait InterruptedException"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 61
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    iget v0, p0, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;->mResult:I

    return v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public set(I)V
    .locals 1
    .param p1, "res"    # I

    .line 41
    monitor-enter p0

    .line 42
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;->mHasResult:Z

    .line 43
    iput p1, p0, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;->mResult:I

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
