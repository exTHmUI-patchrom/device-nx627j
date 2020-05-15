.class final Lcom/android/server/AppOpsService$AskRunnable;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AskRunnable"
.end annotation


# instance fields
.field final code:I

.field final op:Lcom/android/server/AppOpsService$Op;

.field final packageName:Ljava/lang/String;

.field final request:Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

.field final synthetic this$0:Lcom/android/server/AppOpsService;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/AppOpsService$Op;Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p6, "request"    # Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    .line 1832
    iput-object p1, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    .line 1833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1834
    iput p2, p0, Lcom/android/server/AppOpsService$AskRunnable;->code:I

    .line 1835
    iput p3, p0, Lcom/android/server/AppOpsService$AskRunnable;->uid:I

    .line 1836
    iput-object p4, p0, Lcom/android/server/AppOpsService$AskRunnable;->packageName:Ljava/lang/String;

    .line 1837
    iput-object p5, p0, Lcom/android/server/AppOpsService$AskRunnable;->op:Lcom/android/server/AppOpsService$Op;

    .line 1838
    iput-object p6, p0, Lcom/android/server/AppOpsService$AskRunnable;->request:Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    .line 1839
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1843
    const/4 v0, 0x0

    .line 1844
    .local v0, "permDialog":Lcom/android/server/NubiaBasePermissionDialog;
    iget-object v1, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v1

    .line 1845
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsService$AskRunnable;->op:Lcom/android/server/AppOpsService$Op;

    iget-object v2, v2, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/NubiaPermissionDialogReqQueue;

    iget-object v3, p0, Lcom/android/server/AppOpsService$AskRunnable;->request:Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    invoke-virtual {v2, v3}, Lcom/android/server/NubiaPermissionDialogReqQueue;->register(Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;)V

    .line 1846
    iget-object v2, p0, Lcom/android/server/AppOpsService$AskRunnable;->op:Lcom/android/server/AppOpsService$Op;

    iget-object v2, v2, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/NubiaPermissionDialogReqQueue;

    invoke-virtual {v2}, Lcom/android/server/NubiaPermissionDialogReqQueue;->getDialog()Lcom/android/server/NubiaBasePermissionDialog;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1847
    iget-object v2, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    sget-object v3, Lcom/android/server/AppOpsService;->OP_CHECK_AT_APP_START:[I

    iget v4, p0, Lcom/android/server/AppOpsService$AskRunnable;->code:I

    invoke-static {v2, v3, v4}, Lcom/android/server/AppOpsService;->access$200(Lcom/android/server/AppOpsService;[II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1848
    new-instance v2, Lcom/android/server/NubiaPermissionAsyncDialog;

    iget-object v3, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    iget-object v4, v3, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    iget v6, p0, Lcom/android/server/AppOpsService$AskRunnable;->code:I

    iget v7, p0, Lcom/android/server/AppOpsService$AskRunnable;->uid:I

    iget-object v8, p0, Lcom/android/server/AppOpsService$AskRunnable;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/AppOpsService$AskRunnable;->op:Lcom/android/server/AppOpsService$Op;

    iget-object v9, v3, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/NubiaPermissionDialogReqQueue;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/NubiaPermissionAsyncDialog;-><init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/NubiaPermissionDialogReqQueue;)V

    move-object v0, v2

    goto :goto_0

    .line 1851
    :cond_0
    new-instance v2, Lcom/android/server/NubiaPermissionDialog;

    iget-object v3, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    iget-object v4, v3, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    iget v6, p0, Lcom/android/server/AppOpsService$AskRunnable;->code:I

    iget v7, p0, Lcom/android/server/AppOpsService$AskRunnable;->uid:I

    iget-object v8, p0, Lcom/android/server/AppOpsService$AskRunnable;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/AppOpsService$AskRunnable;->op:Lcom/android/server/AppOpsService$Op;

    iget-object v9, v3, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/NubiaPermissionDialogReqQueue;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/NubiaPermissionDialog;-><init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/NubiaPermissionDialogReqQueue;)V

    move-object v0, v2

    .line 1854
    :goto_0
    iget-object v2, p0, Lcom/android/server/AppOpsService$AskRunnable;->op:Lcom/android/server/AppOpsService$Op;

    iget-object v2, v2, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/NubiaPermissionDialogReqQueue;

    invoke-virtual {v2, v0}, Lcom/android/server/NubiaPermissionDialogReqQueue;->setDialog(Lcom/android/server/NubiaBasePermissionDialog;)V

    .line 1855
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating dialog box code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/AppOpsService$AskRunnable;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/AppOpsService$AskRunnable;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/AppOpsService$AskRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1858
    if-eqz v0, :cond_2

    .line 1859
    invoke-virtual {v0}, Lcom/android/server/NubiaBasePermissionDialog;->show()V

    .line 1860
    const-string v1, "AppOps"

    const-string v2, "Show dialog box"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_2
    return-void

    .line 1857
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
