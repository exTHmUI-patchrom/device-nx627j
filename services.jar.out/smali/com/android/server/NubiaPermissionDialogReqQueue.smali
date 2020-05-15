.class public Lcom/android/server/NubiaPermissionDialogReqQueue;
.super Ljava/lang/Object;
.source "NubiaPermissionDialogReqQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;
    }
.end annotation


# static fields
.field static final GET_WAIT_MAX:I = 0x4e20

.field static final TAG:Ljava/lang/String; = "AppOps"


# instance fields
.field private mDialog:Lcom/android/server/NubiaBasePermissionDialog;

.field private resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NubiaPermissionDialogReqQueue;->mDialog:Lcom/android/server/NubiaBasePermissionDialog;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NubiaPermissionDialogReqQueue;->resultList:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method public getDialog()Lcom/android/server/NubiaBasePermissionDialog;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialogReqQueue;->mDialog:Lcom/android/server/NubiaBasePermissionDialog;

    return-object v0
.end method

.method public notifyAll(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 84
    monitor-enter p0

    .line 85
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialogReqQueue;->resultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialogReqQueue;->resultList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    .line 87
    .local v0, "res":Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;
    invoke-virtual {v0, p1}, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;->set(I)V

    .line 88
    iget-object v2, p0, Lcom/android/server/NubiaPermissionDialogReqQueue;->resultList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 89
    .end local v0    # "res":Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;
    goto :goto_0

    .line 90
    :cond_0
    monitor-exit p0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public register(Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;)V
    .locals 1
    .param p1, "res"    # Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialogReqQueue;->resultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    monitor-exit p0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDialog(Lcom/android/server/NubiaBasePermissionDialog;)V
    .locals 0
    .param p1, "mDialog"    # Lcom/android/server/NubiaBasePermissionDialog;

    .line 36
    iput-object p1, p0, Lcom/android/server/NubiaPermissionDialogReqQueue;->mDialog:Lcom/android/server/NubiaBasePermissionDialog;

    .line 37
    return-void
.end method
