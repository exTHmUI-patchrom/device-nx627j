.class Lcom/android/server/pm/PackageManagerService$8;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$finishedReceiver:Landroid/content/IIntentReceiver;

.field final synthetic val$flags:I

.field final synthetic val$instantUserIds:[I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$targetPkg:Ljava/lang/String;

.field final synthetic val$userIds:[I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;[ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 13917
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$8;->val$userIds:[I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$8;->val$action:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$8;->val$pkg:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$8;->val$extras:Landroid/os/Bundle;

    iput p6, p0, Lcom/android/server/pm/PackageManagerService$8;->val$flags:I

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$8;->val$targetPkg:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$8;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$8;->val$instantUserIds:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .line 13921
    move-object/from16 v1, p0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 13922
    .local v0, "am":Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    return-void

    .line 13924
    :cond_0
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$8;->val$userIds:[I

    if-nez v2, :cond_1

    .line 13925
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v2

    .line 13927
    .local v10, "resolvedUserIds":[I
    :goto_0
    move-object v10, v2

    goto :goto_1

    .end local v10    # "resolvedUserIds":[I
    :cond_1
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$8;->val$userIds:[I

    goto :goto_0

    .line 13929
    .restart local v10    # "resolvedUserIds":[I
    :goto_1
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$8;->val$action:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$8;->val$pkg:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$8;->val$extras:Landroid/os/Bundle;

    iget v7, v1, Lcom/android/server/pm/PackageManagerService$8;->val$flags:I

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$8;->val$targetPkg:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$8;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    const/4 v11, 0x0

    move-object v3, v0

    invoke-static/range {v2 .. v11}, Lcom/android/server/pm/PackageManagerService;->access$3100(Lcom/android/server/pm/PackageManagerService;Landroid/app/IActivityManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZ)V

    .line 13931
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$8;->val$instantUserIds:[I

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$8;->val$instantUserIds:[I

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3200()[I

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 13932
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$8;->val$action:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$8;->val$pkg:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$8;->val$extras:Landroid/os/Bundle;

    iget v2, v1, Lcom/android/server/pm/PackageManagerService$8;->val$flags:I

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$8;->val$targetPkg:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$8;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$8;->val$instantUserIds:[I

    const/16 v20, 0x1

    move-object v12, v0

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    invoke-static/range {v11 .. v20}, Lcom/android/server/pm/PackageManagerService;->access$3100(Lcom/android/server/pm/PackageManagerService;Landroid/app/IActivityManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13936
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v10    # "resolvedUserIds":[I
    :cond_2
    goto :goto_2

    .line 13935
    :catch_0
    move-exception v0

    .line 13937
    :goto_2
    return-void
.end method
