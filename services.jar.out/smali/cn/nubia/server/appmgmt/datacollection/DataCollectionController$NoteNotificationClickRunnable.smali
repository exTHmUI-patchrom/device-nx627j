.class Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteNotificationClickRunnable;
.super Ljava/lang/Object;
.source "DataCollectionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteNotificationClickRunnable"
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mTimestamp:J

.field final synthetic this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;Landroid/content/Intent;J)V
    .locals 0
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timestamp"    # J

    .line 1266
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteNotificationClickRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    iput-object p2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteNotificationClickRunnable;->mIntent:Landroid/content/Intent;

    .line 1268
    iput-wide p3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteNotificationClickRunnable;->mTimestamp:J

    .line 1269
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1273
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteNotificationClickRunnable;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1274
    return-void

    .line 1276
    :cond_0
    const-string v0, ""

    .line 1277
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteNotificationClickRunnable;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1278
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    .line 1279
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1281
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1282
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "package_name"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteNotificationClickRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1286
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteNotificationClickRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v3

    const-string/jumbo v4, "notificationcenter_click_notification"

    invoke-interface {v3, v4, v2}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    goto :goto_0

    .line 1287
    :catch_0
    move-exception v3

    .line 1288
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1291
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method
