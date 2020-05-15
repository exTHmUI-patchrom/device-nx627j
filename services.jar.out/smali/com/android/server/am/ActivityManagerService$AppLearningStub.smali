.class final Lcom/android/server/am/ActivityManagerService$AppLearningStub;
.super Lnubia/os/IAppLearningCallback$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AppLearningStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 30124
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lnubia/os/IAppLearningCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public preLaunchProcess(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 30178
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x400

    .line 30179
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 30178
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 30180
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    return-void

    .line 30181
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1, p1, p2, v0}, Lcom/android/server/am/ActivityManagerService;->access$4000(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30184
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 30182
    :catch_0
    move-exception v0

    .line 30183
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preLaunchProcess error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30185
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public updateAppLearningProcess(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 30126
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$3300(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 30128
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$3400(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;

    .line 30129
    .local v1, "last":Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/android/server/am/ActivityManagerService;->access$3500(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;I)V

    .line 30130
    .end local v1    # "last":Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;
    goto :goto_0

    .line 30132
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$3400(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 30133
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$3400(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 30134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30137
    .local v0, "processList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30138
    .local v1, "preList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityManagerService$PreProcess;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30140
    .local v2, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 30141
    .local v4, "appAdd":Landroid/os/Bundle;
    new-instance v5, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$1;)V

    .line 30142
    .local v5, "key":Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;
    const-string v6, "app_learning_user_id"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;->userId:I

    .line 30143
    const-string v6, "app_learning_package_name"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;->appName:Ljava/lang/String;

    .line 30145
    new-instance v6, Lcom/android/server/am/ActivityManagerService$AppLearningProcessValue;

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v6, v8, v7}, Lcom/android/server/am/ActivityManagerService$AppLearningProcessValue;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$1;)V

    .line 30146
    .local v6, "value":Lcom/android/server/am/ActivityManagerService$AppLearningProcessValue;
    const-string v7, "app_learning_package_adj"

    const/16 v8, 0x3e9

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/server/am/ActivityManagerService$AppLearningProcessValue;->adj:I

    .line 30147
    const-string v7, "app_learning_package_swappness"

    const/16 v8, 0x3c

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/server/am/ActivityManagerService$AppLearningProcessValue;->swappness:I

    .line 30149
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 30150
    .local v7, "bundle":Landroid/os/Bundle;
    const/4 v8, -0x1

    .line 30152
    .local v8, "uid":I
    :try_start_1
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;->appName:Ljava/lang/String;

    iget v11, v5, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;->userId:I

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v9
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v9

    .line 30154
    goto :goto_2

    .line 30153
    :catch_0
    move-exception v9

    .line 30155
    :goto_2
    const-string v9, "app_learning_user_id"

    iget v10, v5, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;->userId:I

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30156
    const-string v9, "app_learning_package_name"

    iget-object v10, v5, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;->appName:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30157
    const-string v9, "app_learning_uid"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30159
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30160
    iget-object v9, v5, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;->appName:Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30161
    new-instance v9, Lcom/android/server/am/ActivityManagerService$PreProcess;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v5, Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;->appName:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v8}, Lcom/android/server/am/ActivityManagerService$PreProcess;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30163
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v9}, Lcom/android/server/am/ActivityManagerService;->access$3400(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashMap;

    move-result-object v9

    monitor-enter v9

    .line 30164
    :try_start_2
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v10}, Lcom/android/server/am/ActivityManagerService;->access$3400(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30165
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30167
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x2

    invoke-static {v9, v5, v10}, Lcom/android/server/am/ActivityManagerService;->access$3500(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;I)V

    .line 30168
    .end local v4    # "appAdd":Landroid/os/Bundle;
    .end local v5    # "key":Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;
    .end local v6    # "value":Lcom/android/server/am/ActivityManagerService$AppLearningProcessValue;
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v8    # "uid":I
    goto/16 :goto_1

    .line 30165
    .restart local v4    # "appAdd":Landroid/os/Bundle;
    .restart local v5    # "key":Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;
    .restart local v6    # "value":Lcom/android/server/am/ActivityManagerService$AppLearningProcessValue;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "uid":I
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 30170
    .end local v4    # "appAdd":Landroid/os/Bundle;
    .end local v5    # "key":Lcom/android/server/am/ActivityManagerService$AppLearningProcessKey;
    .end local v6    # "value":Lcom/android/server/am/ActivityManagerService$AppLearningProcessValue;
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v8    # "uid":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$3700(Lcom/android/server/am/ActivityManagerService;)V

    .line 30171
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$3800(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/NubiaMLockManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/NubiaMLockManager;->updateLockApp(Ljava/util/List;)V

    .line 30172
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3, v1}, Lcom/android/server/am/ActivityManagerService;->access$3900(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)V

    .line 30173
    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->setAppLearningProcessList(Ljava/util/List;)V

    .line 30174
    return-void

    .line 30134
    .end local v0    # "processList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v1    # "preList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityManagerService$PreProcess;>;"
    .end local v2    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public updateListForPreStart(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isAdd"    # Z

    .line 30188
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->access$2600(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)Lcom/android/server/am/ActivityManagerService$PreProcess;

    move-result-object v0

    .line 30189
    .local v0, "process":Lcom/android/server/am/ActivityManagerService$PreProcess;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$4100(Lcom/android/server/am/ActivityManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 30190
    if-eqz p3, :cond_0

    .line 30191
    if-nez v0, :cond_1

    .line 30192
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$4100(Lcom/android/server/am/ActivityManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/ActivityManagerService$PreProcess;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v3, v4, p1, p2}, Lcom/android/server/am/ActivityManagerService$PreProcess;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30197
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 30194
    :cond_0
    if-eqz v0, :cond_1

    .line 30195
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$AppLearningStub;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$4100(Lcom/android/server/am/ActivityManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30197
    :cond_1
    :goto_0
    monitor-exit v1

    .line 30198
    return-void

    .line 30197
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
