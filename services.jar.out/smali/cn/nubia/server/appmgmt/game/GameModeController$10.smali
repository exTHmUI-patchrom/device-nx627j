.class Lcn/nubia/server/appmgmt/game/GameModeController$10;
.super Landroid/content/BroadcastReceiver;
.source "GameModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GameModeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 482
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$10;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 485
    if-eqz p2, :cond_0

    .line 486
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$10;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$400(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    .line 487
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$10;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0, p2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$2800(Lcn/nubia/server/appmgmt/game/GameModeController;Landroid/content/Intent;)V

    .line 489
    :cond_0
    return-void
.end method
