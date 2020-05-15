.class final Lcom/android/server/AppOpsService$NoDialogRunnable;
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
    name = "NoDialogRunnable"
.end annotation


# instance fields
.field final code:I

.field final packageName:Ljava/lang/String;

.field final request:Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

.field final switchCode:I

.field final synthetic this$0:Lcom/android/server/AppOpsService;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "request"    # Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    .line 1879
    iput-object p1, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->this$0:Lcom/android/server/AppOpsService;

    .line 1880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1881
    iput p2, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->code:I

    .line 1882
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->switchCode:I

    .line 1883
    iput p3, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->uid:I

    .line 1884
    iput-object p4, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->packageName:Ljava/lang/String;

    .line 1885
    iput-object p5, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->request:Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    .line 1886
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1890
    iget v0, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->code:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    .line 1891
    .local v0, "permission":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->this$0:Lcom/android/server/AppOpsService;

    iget-object v2, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->uid:I

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/AppOpsService;->access$300(Lcom/android/server/AppOpsService;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 1892
    .local v1, "opPermissionGranted":Z
    const/4 v2, 0x0

    .line 1893
    .local v2, "switchPermissionGranted":Z
    iget v3, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->code:I

    iget v4, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->switchCode:I

    if-ne v3, v4, :cond_0

    .line 1894
    move v2, v1

    goto :goto_0

    .line 1896
    :cond_0
    iget-object v3, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->this$0:Lcom/android/server/AppOpsService;

    iget v4, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->switchCode:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->uid:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/AppOpsService;->access$300(Lcom/android/server/AppOpsService;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 1898
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1913
    :cond_1
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not granted permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    iget-object v4, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->request:Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    invoke-virtual {v4, v3}, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;->set(I)V

    goto/16 :goto_4

    .line 1899
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->this$0:Lcom/android/server/AppOpsService;

    iget v5, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->code:I

    invoke-static {v4, v5}, Lcom/android/server/AppOpsService;->access$400(Lcom/android/server/AppOpsService;I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 1900
    iget-object v4, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->this$0:Lcom/android/server/AppOpsService;

    iget v6, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->uid:I

    iget-object v7, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->packageName:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Lcom/android/server/AppOpsService;->access$500(Lcom/android/server/AppOpsService;ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1901
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_4

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x17

    if-ge v6, v7, :cond_3

    goto :goto_2

    .line 1905
    :cond_3
    const-string v3, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " granted permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    iget-object v3, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->request:Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    invoke-virtual {v3, v5}, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;->set(I)V

    .line 1906
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_3

    .line 1902
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    :goto_2
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " granted permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " but targetSdkVersion < 23 !"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    iget-object v5, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->request:Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    invoke-virtual {v5, v3}, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;->set(I)V

    .line 1908
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_3
    goto :goto_4

    .line 1909
    :cond_5
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " uid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->uid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " granted permission "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    iget-object v3, p0, Lcom/android/server/AppOpsService$NoDialogRunnable;->request:Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    invoke-virtual {v3, v5}, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;->set(I)V

    .line 1916
    :goto_4
    return-void
.end method
