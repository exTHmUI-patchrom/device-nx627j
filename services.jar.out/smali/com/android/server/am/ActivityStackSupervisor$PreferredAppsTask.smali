.class Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;
.super Landroid/os/AsyncTask;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreferredAppsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .line 5306
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5306
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Void;

    move-object/from16 v0, p0

    .line 5309
    const/4 v1, 0x0

    .line 5310
    .local v1, "res":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 5311
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getMemoryTrimLevel()I

    move-result v2

    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    .line 5312
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/util/BoostFramework;->perfUXEngine_trigger(I)Ljava/lang/String;

    move-result-object v1

    .line 5313
    if-nez v1, :cond_0

    .line 5314
    return-object v3

    .line 5315
    :cond_0
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5316
    .local v2, "p_apps":[Ljava/lang/String;
    array-length v4, v2

    if-eqz v4, :cond_1

    .line 5317
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5318
    .local v4, "apps_l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 5319
    .local v5, "bParams":Landroid/os/Bundle;
    nop

    .line 5321
    const-string/jumbo v6, "start_empty_apps"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5322
    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v5

    invoke-virtual/range {v6 .. v17}, Lcom/android/server/am/ActivityManagerService;->startActivityAsUserEmpty(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    .line 5326
    .end local v2    # "p_apps":[Ljava/lang/String;
    .end local v4    # "apps_l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "bParams":Landroid/os/Bundle;
    :cond_1
    return-object v3
.end method
