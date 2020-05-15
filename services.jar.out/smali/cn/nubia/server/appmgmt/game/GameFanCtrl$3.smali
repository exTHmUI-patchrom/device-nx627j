.class Lcn/nubia/server/appmgmt/game/GameFanCtrl$3;
.super Landroid/database/ContentObserver;
.source "GameFanCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GameFanCtrl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GameFanCtrl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/GameFanCtrl;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$3;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$3;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$3;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$100(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "game_fan_auto"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v3}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$602(Lcn/nubia/server/appmgmt/game/GameFanCtrl;Z)Z

    .line 103
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GameFanCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFanAutoObserver isAuto = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$3;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$600(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$3;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$600(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    const-string/jumbo v0, "persist.sys.fan.thermal_auto"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 107
    :cond_2
    const-string/jumbo v0, "persist.sys.fan.thermal_auto"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$3;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$700(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)V

    .line 110
    const-string v0, "GameFanCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAN_AUTO_FAN_PRIORITY data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "persist.sys.fan.thermal_auto"

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method
