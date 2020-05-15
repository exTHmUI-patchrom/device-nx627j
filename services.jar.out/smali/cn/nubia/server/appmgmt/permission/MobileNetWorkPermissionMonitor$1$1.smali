.class Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1$1;
.super Ljava/lang/Object;
.source "MobileNetWorkPermissionMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;

    .line 79
    iput-object p1, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1$1;->this$1:Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1$1;->this$1:Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;

    iget-object v0, v0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;->this$0:Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1$1;->this$1:Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;

    iget-object v1, v1, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor$1;->this$0:Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->access$100(Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;->access$300(Lcn/nubia/server/appmgmt/permission/MobileNetWorkPermissionMonitor;Ljava/lang/String;)V

    .line 83
    return-void
.end method
