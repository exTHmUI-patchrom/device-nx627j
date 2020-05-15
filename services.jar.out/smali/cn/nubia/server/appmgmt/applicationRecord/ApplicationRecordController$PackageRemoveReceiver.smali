.class Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$PackageRemoveReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationRecordController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageRemoveReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;)V
    .locals 2

    .line 435
    iput-object p1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$PackageRemoveReceiver;->this$0:Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 436
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 437
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 439
    invoke-static {p1}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->access$100(Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 440
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->access$202(Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;Z)Z

    .line 441
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 445
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    const-string v1, "ApplicationRecordService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive ACTION_PACKAGE_REMOVED, packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$PackageRemoveReceiver;->this$0:Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->access$300(Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$PackageRemoveReceiver;->this$0:Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->access$402(Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;Z)Z

    .line 451
    :cond_0
    return-void
.end method
