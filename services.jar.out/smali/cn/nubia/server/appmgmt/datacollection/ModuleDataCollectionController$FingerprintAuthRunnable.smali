.class Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$FingerprintAuthRunnable;
.super Ljava/lang/Object;
.source "ModuleDataCollectionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerprintAuthRunnable"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mSuccess:Z

.field final synthetic this$0:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "success"    # Z

    .line 94
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$FingerprintAuthRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string p1, ""

    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$FingerprintAuthRunnable;->mPackageName:Ljava/lang/String;

    .line 92
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$FingerprintAuthRunnable;->mSuccess:Z

    .line 95
    iput-object p2, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$FingerprintAuthRunnable;->mPackageName:Ljava/lang/String;

    .line 96
    iput-boolean p3, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$FingerprintAuthRunnable;->mSuccess:Z

    .line 97
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "com.tencent.mm"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$FingerprintAuthRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.eg.android.AlipayGphone"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$FingerprintAuthRunnable;->mPackageName:Ljava/lang/String;

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$FingerprintAuthRunnable;->mSuccess:Z

    if-eqz v1, :cond_2

    .line 104
    const-string/jumbo v1, "pkgName"

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "event"

    const-string v2, "fingerprint_pay"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 107
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 109
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$FingerprintAuthRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$FingerprintAuthRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->access$100(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;)Landroid/os/Messenger;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 110
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController$FingerprintAuthRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->access$100(Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_1
    goto :goto_0

    .line 112
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 116
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method
