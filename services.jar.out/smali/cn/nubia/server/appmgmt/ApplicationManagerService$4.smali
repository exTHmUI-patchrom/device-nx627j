.class Lcn/nubia/server/appmgmt/ApplicationManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 1571
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$4;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1574
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1575
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1576
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1577
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "cn.nubia.gamepi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$4;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v2, p1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$300(Lcn/nubia/server/appmgmt/ApplicationManagerService;Landroid/content/Context;)V

    .line 1579
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method
