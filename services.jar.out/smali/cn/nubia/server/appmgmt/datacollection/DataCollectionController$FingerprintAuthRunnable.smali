.class Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$FingerprintAuthRunnable;
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
    name = "FingerprintAuthRunnable"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mSuccess:Z

.field final synthetic this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "success"    # Z

    .line 1108
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$FingerprintAuthRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1105
    const-string p1, ""

    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$FingerprintAuthRunnable;->mPackageName:Ljava/lang/String;

    .line 1106
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$FingerprintAuthRunnable;->mSuccess:Z

    .line 1109
    iput-object p2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$FingerprintAuthRunnable;->mPackageName:Ljava/lang/String;

    .line 1110
    iput-boolean p3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$FingerprintAuthRunnable;->mSuccess:Z

    .line 1111
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1116
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "event"

    const-string v2, "fingerprint_auth"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    const-string v1, "app_package"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$FingerprintAuthRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const-string v1, "app_name"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$FingerprintAuthRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$FingerprintAuthRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const-string/jumbo v1, "success"

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$FingerprintAuthRunnable;->mSuccess:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1121
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$FingerprintAuthRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1123
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$FingerprintAuthRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v1

    const-string v2, "framework_fingerprint"

    invoke-interface {v1, v2, v0}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    goto :goto_0

    .line 1124
    :catch_0
    move-exception v1

    .line 1125
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1128
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
