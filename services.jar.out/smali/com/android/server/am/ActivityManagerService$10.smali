.class Lcom/android/server/am/ActivityManagerService$10;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 9179
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$10;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    .line 9182
    const-string v0, "android.intent.extra.PACKAGES"

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 9183
    .local v3, "pkgs":[Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 9184
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v15, v3, v6

    .line 9185
    .local v15, "pkg":Ljava/lang/String;
    iget-object v14, v1, Lcom/android/server/am/ActivityManagerService$10;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 9188
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$10;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v15, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 9189
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 9190
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$10;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v15, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 9191
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v7, :cond_0

    iget-boolean v8, v7, Lcom/android/server/am/ProcessRecord;->is2LevelPreStart:Z

    if-eqz v8, :cond_0

    .line 9192
    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityManagerService$10;->setResultCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9193
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 9195
    :cond_0
    :try_start_2
    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$10;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v8, v15}, Lcom/android/server/am/ActivityManagerService;->access$2500(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$10;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8, v15, v9}, Lcom/android/server/am/ActivityManagerService;->access$2600(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)Lcom/android/server/am/ActivityManagerService$PreProcess;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 9196
    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityManagerService$10;->setResultCode(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9197
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 9202
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_1
    goto :goto_1

    .line 9209
    :catchall_0
    move-exception v0

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    goto :goto_2

    .line 9200
    :catch_0
    move-exception v0

    .line 9201
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9204
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$10;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const-string/jumbo v17, "query restart"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v8, v15

    move-object/from16 v18, v14

    move v14, v0

    move-object/from16 v19, v15

    move/from16 v15, v16

    .end local v15    # "pkg":Ljava/lang/String;
    .local v19, "pkg":Ljava/lang/String;
    move-object/from16 v16, v17

    :try_start_5
    invoke-virtual/range {v7 .. v16}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9206
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService$10;->setResultCode(I)V

    .line 9207
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 9209
    :cond_2
    :try_start_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 9184
    .end local v19    # "pkg":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 9209
    .restart local v15    # "pkg":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    .line 9209
    .end local v15    # "pkg":Ljava/lang/String;
    .restart local v19    # "pkg":Ljava/lang/String;
    :goto_2
    :try_start_7
    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 9212
    .end local v19    # "pkg":Ljava/lang/String;
    :cond_3
    return-void
.end method
