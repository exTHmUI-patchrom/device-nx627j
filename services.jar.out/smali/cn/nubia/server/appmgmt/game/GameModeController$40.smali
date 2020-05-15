.class Lcn/nubia/server/appmgmt/game/GameModeController$40;
.super Ljava/lang/Object;
.source "GameModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 2527
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$40;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2530
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$40;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$40;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6300(Lcn/nubia/server/appmgmt/game/GameModeController;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$40;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6200(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$40;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6400(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6202(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z

    .line 2533
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$40;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6200(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$40;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6300(Lcn/nubia/server/appmgmt/game/GameModeController;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 2534
    invoke-static {}, Lcn/nubia/game/GameKeysHelper;->getDefault()Lcn/nubia/game/GameKeysHelper;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$40;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$100(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/game/GameKeysHelper;->readNodeValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2535
    .local v0, "rebootKeyStatus":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2536
    const-string v0, "0"

    .line 2538
    :cond_1
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2539
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "GameModeService"

    const-string/jumbo v2, "screenTurnedOn re-open game keys"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$40;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6202(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z

    goto :goto_1

    .line 2541
    :cond_3
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2542
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$200()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "GameModeService"

    const-string/jumbo v2, "screenTurnedOn close game keys"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    :cond_4
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$40;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6202(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z

    .line 2547
    .end local v0    # "rebootKeyStatus":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$5400()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "GameModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDelay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$40;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6300(Lcn/nubia/server/appmgmt/game/GameModeController;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",gameKeyOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$40;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6200(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    :cond_6
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$40;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6200(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2549
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$40;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6500(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    goto :goto_2

    .line 2551
    :cond_7
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$40;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6600(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    .line 2553
    :goto_2
    return-void
.end method
