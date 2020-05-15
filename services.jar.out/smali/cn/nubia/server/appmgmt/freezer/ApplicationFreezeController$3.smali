.class Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$3;
.super Ljava/lang/Object;
.source "ApplicationFreezeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 126
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$3;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$3;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$200(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Lnubia/os/IFreezeCallback;

    move-result-object v0

    invoke-interface {v0}, Lnubia/os/IFreezeCallback;->getProcessStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
