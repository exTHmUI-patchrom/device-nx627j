.class Lcn/nubia/server/edge/EdgeEventDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "EdgeEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/edge/EdgeEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/edge/EdgeEventDispatcher;


# direct methods
.method constructor <init>(Lcn/nubia/server/edge/EdgeEventDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/edge/EdgeEventDispatcher;

    .line 137
    iput-object p1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher$1;->this$0:Lcn/nubia/server/edge/EdgeEventDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 140
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher$1;->this$0:Lcn/nubia/server/edge/EdgeEventDispatcher;

    const-string/jumbo v2, "showView"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/server/edge/EdgeEventDispatcher;->access$002(Lcn/nubia/server/edge/EdgeEventDispatcher;Z)Z

    .line 149
    :cond_1
    return-void

    .line 141
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method
