.class Lcn/nubia/server/policy/edge/GestureSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "GestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/GestureSettings;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/GestureSettings;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/GestureSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .line 88
    iput-object p1, p0, Lcn/nubia/server/policy/edge/GestureSettings$1;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 92
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 93
    const-string/jumbo v1, "package"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cn.nubia.edge"

    .line 95
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettings$1;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/GestureSettings;->access$000(Lcn/nubia/server/policy/edge/GestureSettings;)V

    .line 99
    :cond_0
    return-void
.end method
