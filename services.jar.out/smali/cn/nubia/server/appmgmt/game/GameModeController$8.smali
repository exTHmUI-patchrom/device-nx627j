.class Lcn/nubia/server/appmgmt/game/GameModeController$8;
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

    .line 442
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$8;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 446
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$8;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$500(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$8;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$502(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z

    .line 450
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$8;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController$8;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$500(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v3

    invoke-static {v1, v3, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$600(Lcn/nubia/server/appmgmt/game/GameModeController;ZZ)V

    .line 451
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$8;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController$8;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$500(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v3

    invoke-static {v1, v3, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$700(Lcn/nubia/server/appmgmt/game/GameModeController;ZZ)V

    goto :goto_0

    .line 453
    :cond_0
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 455
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$8;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$2200(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 456
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$8;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$2202(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z

    .line 457
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$8;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1, v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$2302(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z

    goto :goto_0

    .line 459
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 461
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$8;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$300(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$8;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$2400(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 462
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$8;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1, v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$2502(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z

    .line 463
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$8;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$2600(Lcn/nubia/server/appmgmt/game/GameModeController;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    :goto_0
    goto :goto_1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$200()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 469
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void
.end method
